from django.core.management.base import BaseCommand
from Acadix.models import Bank
from Acadix.models import Organization, Branch


class Command(BaseCommand):
    help = 'Populate all major Indian banks into the database'

    def add_arguments(self, parser):
        parser.add_argument(
            '--org-id',
            type=int,
            help='Organization ID to populate banks for',
        )
        parser.add_argument(
            '--branch-id',
            type=int,
            help='Branch ID to populate banks for',
        )

    def handle(self, *args, **options):
        # Major banks of India
        indian_banks = [
            'State Bank of India',
            'Bank of Baroda',
            'Punjab National Bank',
            'Canara Bank',
            'Union Bank of India',
            'Bank of India',
            'Indian Bank',
            'Central Bank of India',
            'Indian Overseas Bank', 
            'UCO Bank',
            'Bank of Maharashtra',
            'Punjab & Sind Bank',
            'HDFC Bank',
            'ICICI Bank',
            'Axis Bank',
            'Kotak Mahindra Bank',
            'IndusInd Bank',
            'Yes Bank',
            'IDFC FIRST Bank',
            'Federal Bank',
            'Bandhan Bank',
            'RBL Bank',
            'AU Small Finance Bank',
            'Ujjivan Small Finance Bank',
            'Equitas Small Finance Bank',
            'ESAF Small Finance Bank',
            'HSBC',
            'Citibank',
            'Standard Chartered',
            'Deutsche Bank',
            'DBS Bank',
        ]

        org_id = options.get('org_id')
        branch_id = options.get('branch_id')

        if not org_id or not branch_id:
            # Get all organizations and branches
            organizations = Organization.objects.filter(is_active=True)
            if not organizations.exists():
                self.stdout.write(
                    self.style.ERROR('No active organizations found. Please create an organization first.')
                )
                return

            total_created = 0
            for org in organizations:
                branches = Branch.objects.filter(organization=org, is_active=True)
                if not branches.exists():
                    self.stdout.write(
                        self.style.WARNING(f'No active branches found for organization: {org.organization_code}')
                    )
                    continue

                for branch in branches:
                    created = self._populate_banks_for_org_branch(org, branch, indian_banks)
                    total_created += created

            self.stdout.write(
                self.style.SUCCESS(f'\n✓ Successfully populated {total_created} new banks!')
            )
        else:
            # Get specific organization and branch
            try:
                org = Organization.objects.get(id=org_id, is_active=True)
                branch = Branch.objects.get(id=branch_id, organization=org, is_active=True)
                created_count = self._populate_banks_for_org_branch(org, branch, indian_banks)
                self.stdout.write(
                    self.style.SUCCESS(f'\n✓ Successfully created {created_count} new banks!')
                )
            except Organization.DoesNotExist:
                self.stdout.write(self.style.ERROR(f'Organization with ID {org_id} not found.'))
            except Branch.DoesNotExist:
                self.stdout.write(self.style.ERROR(f'Branch with ID {branch_id} not found.'))

    def _populate_banks_for_org_branch(self, organization, branch, indian_banks):
        """Helper method to populate banks for a specific organization and branch"""
        created_count = 0

        for bank_name in indian_banks:
            # Check if bank already exists
            bank_exists = Bank.objects.filter(
                organization=organization,
                branch=branch,
                bank_name=bank_name,
            ).exists()

            if not bank_exists:
                Bank.objects.create(
                    organization=organization,
                    branch=branch,
                    bank_name=bank_name,
                    is_active=True,
                )
                created_count += 1

        return created_count
