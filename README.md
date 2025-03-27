# Fhir R4

Install via `dart pub add`:

```sh
dart pub add fhir_r4
```

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

---

## Continuous Integration 🤖

Fhir R4 comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
