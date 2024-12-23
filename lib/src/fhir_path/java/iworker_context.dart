// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4/src/fhir_path/java/java.dart';

abstract class IWorkerContext {
  List<StructureDefinition> getStructures();

  List<StructureDefinition> allStructures();

  List<String> getResourceNames();

  String getVersion();

  StructureDefinition? fetchTypeDefinition(String typeName);

  T? fetchResource<T extends Resource>(String? uri);

  String formatMessagePlural(
    int pl,
    String theMessage,
    List<dynamic> theMessageArguments,
  );

  String formatMessage(String theMessage, List<dynamic> theMessageArguments);

  UcumService? get ucumService;

  ValidationResult validateCode(
    ValidationOptions options,
    Coding code,
    ValueSet vs,
  );

  String getOverrideVersionNs();
}

class ValidationResult {
  ValidationResult({
    this.definition,
    this.system,
    this.severity,
    this.message,
    this.errorClass,
    this.txLink,
  });

  CodeSystemConcept? definition;
  String? system;
  IssueSeverity? severity;
  String? message;
  TerminologyServiceErrorClass? errorClass;
  String? txLink;

  @override
  String toString() {
    return 'ValidationResult [definition=$definition, '
        'system=$system, severity=$severity, message=$message, '
        'errorClass=$errorClass, txLink=$txLink]';
  }

  bool isOk() {
    return severity == null ||
        severity == IssueSeverity.information ||
        severity == IssueSeverity.warning;
  }

  String? getDisplay() => definition?.display?.value;

  String getCode() => definition?.code.value ?? '';

  String getDefinition() => definition?.definition?.value ?? '';

  CodeSystemConcept asConceptDefinition() => definition!;

  bool isNoService() {
    return errorClass == TerminologyServiceErrorClass.noservice;
  }

  bool hasMessage() {
    return message != null;
  }

  Coding? asCoding() {
    if (isOk() && definition != null && definition?.code.value != null) {
      return Coding(
        system: system == null ? null : FhirUri(system),
        code: definition?.code.value == null
            ? null
            : FhirCode(definition!.code.value),
        display: definition?.display?.value == null
            ? null
            : FhirString(definition!.display!.value),
      );
    } else {
      return null;
    }
  }
}

enum TerminologyServiceErrorClass {
  unknown,
  noservice,
  serverError,
  valueSetUnsupported,
  codeSystemUnsupported,
  blockedByOptions;

  bool isInfrastructure() {
    return this == TerminologyServiceErrorClass.noservice ||
        this == TerminologyServiceErrorClass.serverError ||
        this == TerminologyServiceErrorClass.valueSetUnsupported;
  }
}
