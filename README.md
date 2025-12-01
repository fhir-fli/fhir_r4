# Fhir R4

## fhir_r4
R4b Version of the FHIR Specification

### Big Update, Breaking changes for 0.3.0-1

- No more freezed. I really liked freezed, but it doesn't play nicely with some other code generators. 
- Speaking of which, since I'm already generating most of the class, I went ahead and generated ```toJson/fromJson``` and ```==```, no external code generation packages (as always, please let me know about mistakes)
- All of the serializable methods and copyWith should still work as before. 
- With the exception that I couldn't think of a good way to clear a field by passing null, so I created a new function that clears only the fields you specificall say.
- Many more enums were incorporated than previously. I think this makes it easier to use, but it does make it less flexible. If you have a field with a value that is not allowed by the current enum, please let me know and I'll look into it.
- I've moved the Primitive back into this package
- Newly included FhirString, for standardization and because it's helpful in some other packages like fhir-mapping. I'm going to try and include almost all of the usual string functions so you should be able to work with it almost like you would a normal String in dart. 
- Primitives are much stricter than previously. They will throw an error if you try and have a value that is improperly formatted.
- I'm also integrating the Element associated with the Primitive into the Primitive itself (this is closer to the original FHIR and XML version)
- You should still be able to work with the the same as previously, but you can also access the Element associated. This does mean there may be times where a Primitive's value is null but the Element is not
- Enums are going to follow this same pattern. As an Enum is essentially an enumerated Code value in FHIR, they also need to be associated with an Element, so the same rules are going to apply.

## Updated Package
- This was originally multiple different packages, and each package supported all FHIR versions. This became too big and broke [pub.dev](pub.dev). I have therefore grouped them together by FHIR version instead of by functionality.
- This library now contains
    - [fhir_r4](https://fhir-fli.github.io/fhir_fli_documentation/docs/core/fhir_r4)
    - [fhir_r4_at_rest](https://fhir-fli.github.io/fhir_fli_documentation/docs/at_rest/fhir_r4_at_rest)
    - [fhir_r4_db](https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_db)
    - [fhir_r4_bulk](https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_bulk)
    - [fhir_r4_path](https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_path)
    - [fhir_r4_mapping](https://fhir-fli.github.io/fhir_fli_documentation/docs/fhir_r4_mapping)

- Follow the links for the individual README files.

## Say Hello

- As all parts of this are new (FHIR, Flutter, using the two together), I'd love to hear from you if you're working in this space. Open to PR, suggestions or requests. You can email me at <grey.fhirfli@gmail.com>. Or, feel free to [join our Slack!](https://join.slack.com/t/fhir-fli/shared_invite/zt-ofv2cycm-9yjdMj8a~zXp7nDBeB_sNQ).

A Dart/Flutter package for working with FHIR® resources. FHIR® is the registered trademark of HL7 and is used with the permission of HL7. Use of the FHIR trademark does not constitute endorsement of this product by HL7.

https://github.com/WorldHealthOrganization/smart-immunizations/blob/main/input/maps/IMMZ.C4.QRToPatient.fml