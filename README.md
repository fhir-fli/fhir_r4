# fhir_r4
R4b Version of the FHIR Specification

## Big Update, Breaking changes for 0.3.0-1

~~### Macros~~
~~- So I'm going to start using Macros for this version. This requires a higher dart version ```sdk: ">=3.5.0-152 <4.0.0"```~~ No I'm not. They're not quite ready for production yet. But there are still some breaking changes. 
- No more freezed. I really liked freezed, but it doesn't play nicely with some other code generators. 
- Speaking of which, since I'm already generating most of the class, I went ahead and generated ```toJson/fromJson``` and ```==```, no external code generation packages (as always, please let me know about mistakes)
- All of the serializable methods and copyWith should still work as before. 
- Many more enums were incorporated than previously. I think this makes it easier to use, but it does make it less flexible. If you have a field with a value that is not allowed by the current enum, please let me know and I'll look into it.

### Primitives
- I'm including all of the Primitives back in this package
- I'm going to include a FhirString, for standardization and because it's helpful in some other packages like fhir-mapping. I'm going to try and include almost all of the usual string functions so you should be able to work with it almost like you would a normal String in dart. 

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
