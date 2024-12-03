// ignore_for_file: public_member_api_docs, one_member_abstracts

import 'package:fhir_r4/fhir_r4.dart';

/// Expands a ValueSet with the given parameters
abstract class ValueSetExpander {
  ValueSetExpansionOutcome expand(ValueSet source, Parameters parameters);
}

/// Enum for terminology service error classes
enum TerminologyServiceErrorClass {
  unknown,
  noService,
  serverError,
  valueSetUnsupported,
  codeSystemUnsupported,
  blockedByOptions;

  /// Checks if the error is infrastructure-related
  bool isInfrastructure() {
    return this == TerminologyServiceErrorClass.noService ||
        this == TerminologyServiceErrorClass.serverError ||
        this == TerminologyServiceErrorClass.valueSetUnsupported;
  }
}

/// Class representing the outcome of a ValueSet expansion
class ValueSetExpansionOutcome {
  ValueSetExpansionOutcome(ValueSet this.valueSet)
      : error = null,
        errorClass = null,
        txLink = null,
        allErrors = [];

  ValueSetExpansionOutcome.withError(
    this.valueSet,
    this.error,
    this.errorClass,
  )   : txLink = null,
        allErrors = error != null ? [error] : [];

  ValueSetExpansionOutcome.fromChecker(
    String this.error,
    TerminologyServiceErrorClass this.errorClass,
  )   : valueSet = null,
        txLink = null,
        allErrors = [error];

  ValueSetExpansionOutcome.withErrors(
    String this.error,
    TerminologyServiceErrorClass this.errorClass,
    List<String> errList,
  )   : valueSet = null,
        txLink = null,
        allErrors = [...errList, if (!errList.contains(error)) error];

  final ValueSet? valueSet;
  final String? error;
  final TerminologyServiceErrorClass? errorClass;
  final String? txLink;
  final List<String> allErrors;

  bool isOk() {
    return (allErrors.isEmpty || (allErrors.length == 1)) && error == null;
  }
}
