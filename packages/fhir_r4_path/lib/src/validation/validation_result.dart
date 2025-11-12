// ignore_for_file: avoid_positional_boolean_parameters, avoid_returning_this
// ignore_for_file: avoid_print

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// ValidationResult
class ValidationResult {
  /// Constructor for a generic [ValidationResult].
  ValidationResult({
    this.system,
    this.definition,
    this.display,
    this.severity,
    this.message,
    this.errorClass,
    this.txLink,
  });

  /// Constructor for an error result.
  ValidationResult.error({
    required this.message,
    this.errorClass,
  }) : severity = IssueSeverity.error;

  /// Constructor for a successful validation result.
  ValidationResult.success({
    this.system,
    this.definition,
    this.message,
    this.txLink,
  }) : severity = IssueSeverity.information;

  /// The associated concept definition.
  CodeSystemConcept? definition;

  /// The system URL.
  String? system;

  /// The display name of the validated concept.
  String? display;

  /// The severity of the validation result.
  IssueSeverity? severity;

  /// The validation message.
  String? message;

  /// The error classification.
  TerminologyServiceErrorClass? errorClass;

  /// The transaction link.
  String? txLink;

  /// Returns whether the validation result is acceptable.
  bool get isOk {
    return severity == null ||
        severity == IssueSeverity.information ||
        severity == IssueSeverity.warning;
  }

  /// Retrieves the display name of the validated concept.
  String? getDisplay() {
    return definition?.display?.valueString;
  }

  /// Retrieves the code of the validated concept.
  String? getCode() {
    return definition?.code.valueString;
  }

  /// Retrieves the definition of the validated concept.
  String? getDefinition() {
    return definition?.definition?.valueString;
  }

  /// Returns the associated concept definition.
  CodeSystemConcept? asConceptDefinition() => definition;

  /// Indicates whether the error was caused by the absence of a terminology
  /// service.
  bool isNoService() {
    return errorClass == TerminologyServiceErrorClass.noservice;
  }

  /// Returns the instance as a [Coding], if applicable.
  Coding? asCoding() {
    if (isOk && definition != null) {
      return Coding(
        system: system == null ? null : FhirUri(system),
        code: definition?.code,
        display: definition?.display,
      );
    }
    return null;
  }

  @override
  String toString() {
    return 'ValidationResult [definition=$definition, system=$system, '
        'severity=$severity, message=$message, errorClass=$errorClass, '
        'txLink=$txLink]';
  }
}

/// Classifies different types of errors that can occur during terminology
/// services operations.
