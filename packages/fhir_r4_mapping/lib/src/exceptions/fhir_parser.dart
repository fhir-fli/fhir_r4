import 'package:fhir_r4/fhir_r4.dart';

/// Exception thrown when there is an error parsing FHIR data.
class FhirParserException extends FHIRException {
  /// Constructs a new [FhirParserException].
  FhirParserException({
    super.message,
    super.cause,
    super.stackTrace,
  });
}
