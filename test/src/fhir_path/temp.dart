import 'package:fhir_r4/fhir_r4.dart';

void main() {
  final string = FhirString(
    'Hello',
    element: Element(
      extension_: [
        FhirExtension(
          url: 'http://example.org/extension'.toFhirString,
          valueX: 'World'.toFhirString,
        ),
      ],
    ),
  );
  final number = FhirDecimal(
    3.14,
    element: Element(
      extension_: [
        FhirExtension(
          url: 'http://example.org/extension'.toFhirString,
          valueX: 42.toFhirDecimal,
        ),
      ],
    ),
  );
  final dateTime = FhirDateTime.fromString(
    '2021-01-01T00:00:00Z',
    element: Element(
      extension_: [
        FhirExtension(
          url: 'http://example.org/extension'.toFhirString,
          valueX: 'World'.toFhirString,
        ),
      ],
    ),
  );
  print('string: ${string.extension_}');
  print('number: ${number.extension_}');
  print('dateTime: ${dateTime.extension_}');
}
