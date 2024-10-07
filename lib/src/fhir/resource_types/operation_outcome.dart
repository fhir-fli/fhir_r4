import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class OperationOutcome extends DomainResource {
  OperationOutcome({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.issue,
  }) : super(resourceType: R4ResourceType.OperationOutcome);

  final List<OperationOutcomeIssue> issue;
  @override
  OperationOutcome clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class OperationOutcomeIssue extends BackboneElement {
  OperationOutcomeIssue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.severity,
    this.severityElement,
    required this.code,
    this.codeElement,
    this.details,
    this.diagnostics,
    this.diagnosticsElement,
    this.location,
    this.locationElement,
    this.expression,
    this.expressionElement,
  });

  final FhirCode severity;
  final Element? severityElement;
  final FhirCode code;
  final Element? codeElement;
  final CodeableConcept? details;
  final FhirString? diagnostics;
  final Element? diagnosticsElement;
  final List<FhirString>? location;
  final List<Element>? locationElement;
  final List<FhirString>? expression;
  final List<Element>? expressionElement;
  @override
  OperationOutcomeIssue clone() => throw UnimplementedError();
}
