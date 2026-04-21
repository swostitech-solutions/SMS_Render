export const normalizeFeeElementOptions = (result) => {
  const list = Array.isArray(result) ? result : result?.data;

  if (!Array.isArray(list)) return [];

  return list
    .filter((element) => element && element.id)
    .map((element) => ({
      value: element.id,
      label:
        element.elementDescription ||
        element.element_description ||
        element.element_name ||
        "N/A",
      name: element.element_name || "",
    }));
};
