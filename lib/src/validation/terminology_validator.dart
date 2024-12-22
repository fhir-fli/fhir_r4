import 'package:fhir_r4/fhir_r4.dart';

/// Terminology Validator Class
class TerminologyValidator {
  /// Constructor
  TerminologyValidator(this.validationSupport);

  /// Validation Support
  final ValidationSupport validationSupport;

  /// Validate a code against a ValueSet
  Future<ValidationMessage?> validateCodeAgainstValueSet(
    String code,
    String system,
    String valueSetUrl,
  ) async {
    final valueSet = await validationSupport.fetchValueSet(valueSetUrl);
    if (valueSet == null) {
      return ValidationMessage(
        severity: Severity.error,
        message: 'ValueSet not found: $valueSetUrl',
      );
    }

    final codes = valueSet['codes'] as List<dynamic>? ?? [];
    final matchingCode = codes.firstWhere(
      (entry) =>
          (entry as Map<String, dynamic>)['code'] == code &&
          entry['system'] == system,
      orElse: () => null,
    );

    if (matchingCode == null) {
      return ValidationMessage(
        severity: Severity.error,
        message:
            'Code $code with system $system is not in ValueSet $valueSetUrl',
      );
    }

    return null; // No error
  }
}
