enum SupportedMimeType {
  fhir_json,
  json_fhir,
  json,
  x_www_form_urlencoded,
}

/// Map to convert from an Enum to a String
const Map<SupportedMimeType, String> SupportedMimeTypeEnumMap =
    <SupportedMimeType, String>{
  SupportedMimeType.fhir_json: 'application/fhir+json',
  SupportedMimeType.json_fhir: 'application/json+fhir',
  SupportedMimeType.json: 'application/json',
  SupportedMimeType.x_www_form_urlencoded: 'application/x-www-form-urlencoded',
};
