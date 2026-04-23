from django.core.mail import send_mail
from Swostitech_Acadix import settings
import random

def generate_otp():
    return str(random.randint(100000, 999999))

def send_otp_email(email, otp):
    recipient_email = (email or "").strip()
    sender_email = (getattr(settings, 'DEFAULT_FROM_EMAIL', None) or getattr(settings, 'EMAIL_HOST_USER', None) or "").strip()

    if not recipient_email or '@' not in recipient_email:
        raise ValueError("No valid recipient email address is registered for this account.")

    if not sender_email or '@' not in sender_email:
        raise ValueError("Email sender address is not configured. Set DEFAULT_FROM_EMAIL or EMAIL_HOST_USER.")

    send_mail(
        subject="Password Reset OTP",
        message=f"Your OTP is {otp}. Valid for 5 minutes.",
        from_email=sender_email,
        recipient_list=[recipient_email],
        fail_silently=False,
    )