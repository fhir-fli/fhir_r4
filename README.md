# fhir_r4
R4b Version of the FHIR Specification

## Updated Package
- This was originally multiple different packages, and each package supported all FHIR versions. This became too big and broke [pub.dev](pub.dev). I have therefore grouped them together by FHIR version instead of by functionality.
- This library now contains
    - [fhir](lib/src/fhir/README.md)
    - [fhir_at_rest](lib/src/fhir_at_rest/README.md)
    - [fhir_auth](lib/src/fhir_auth/README.md)
    - [fhir_bulk](lib/src/fhir_bulk/README.md)
    - [fhir_db](lib/src/fhir_db/README.md)
    - [fhir_path](lib/src/fhir_path/README.md)
    - [fhir_yaml](lib/src/fhir_yaml/README.md)

- Follow the links for the individual README files.

## Say Hello

- As all parts of this are new (FHIR, Flutter, using the two together), I'd love to hear from you if you're working in this space. Open to PR, suggestions or requests. You can email me at <grey@fhirfli.dev>. Or, feel free to [join our Slack!](https://join.slack.com/t/fhir-fli/shared_invite/zt-ofv2cycm-9yjdMj8a~zXp7nDBeB_sNQ).

A Dart/Flutter package for working with FHIR® resources. FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.
