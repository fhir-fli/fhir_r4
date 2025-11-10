// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes,
// ignore_for_file: constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// The result of a ValueSet expansion
class ValueSetExpansionOutcome {
  /// Create a new value set expansion outcome with expanded ValueSet
  ValueSetExpansionOutcome(this.valueSet)
      : error = null,
        errorClass = null;

  /// Create a new value set expansion outcome with an error
  ValueSetExpansionOutcome.withError(
    this.valueSet,
    this.error,
    this.errorClass,
  ) {
    if (error != null) allErrors.add(error!);
  }

  /// Create a new value set expansion outcome from a service error
  ValueSetExpansionOutcome.fromService(
    this.error,
    this.errorClass,
  ) : valueSet = null {
    if (error != null) allErrors.add(error!);
  }

  /// Create a new value set expansion outcome from a service error list
  ValueSetExpansionOutcome.fromErrorList(
    this.error,
    this.errorClass,
    List<String> errors,
  ) : valueSet = null {
    allErrors.addAll(errors);
    if (error != null && !allErrors.contains(error)) {
      allErrors.add(error!);
    }
  }

  /// The expanded value set
  final ValueSet? valueSet;

  /// The error message
  final String? error;

  /// The error class
  final TerminologyServiceErrorClass? errorClass;

  /// The link to the transaction (for external terminology services)
  String? txLink;

  /// The list of all errors
  final List<String> allErrors = [];

  /// Check if the outcome is ok
  bool get isOk => allErrors.isEmpty && error == null;
}
