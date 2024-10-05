import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class OperationOutcome extends DomainResource {
  final List<OperationOutcomeIssue> issue;

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
  }): super(resourceType: R4ResourceType.OperationOutcome);

@override
OperationOutcome clone() => this;

}


@Data()
@JsonCodable()
class OperationOutcomeIssue {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? severity;
  final Element? severityElement;
  final FhirCode? code;
  final Element? codeElement;
  final CodeableConcept? details;
  final FhirString? diagnostics;
  final Element? diagnosticsElement;
  final List<FhirString>? location;
  final List<Element>? locationElement;
  final List<FhirString>? expression;
  final List<Element>? expressionElement;

  OperationOutcomeIssue({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.severity,
    this.severityElement,
    this.code,
    this.codeElement,
    this.details,
    this.diagnostics,
    this.diagnosticsElement,
    this.location,
    this.locationElement,
    this.expression,
    this.expressionElement,
  });

}



