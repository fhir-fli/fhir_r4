import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class DetectedIssue extends DomainResource {
  DetectedIssue({
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
    this.identifier,
    required this.status,
    this.statusElement,
    this.code,
    this.severity,
    this.severityElement,
    this.patient,
    this.identifiedDateTime,
    this.identifiedDateTimeElement,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.detailElement,
    this.reference,
    this.referenceElement,
    this.mitigation,
  }) : super(resourceType: R4ResourceType.DetectedIssue);

  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? code;
  final FhirCode? severity;
  final Element? severityElement;
  final Reference? patient;
  final FhirDateTime? identifiedDateTime;
  final Element? identifiedDateTimeElement;
  final Period? identifiedPeriod;
  final Reference? author;
  final List<Reference>? implicated;
  final List<DetectedIssueEvidence>? evidence;
  final FhirString? detail;
  final Element? detailElement;
  final FhirUri? reference;
  final Element? referenceElement;
  final List<DetectedIssueMitigation>? mitigation;
  @override
  DetectedIssue clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DetectedIssueEvidence extends BackboneElement {
  DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

  final List<CodeableConcept>? code;
  final List<Reference>? detail;
  @override
  DetectedIssueEvidence clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class DetectedIssueMitigation extends BackboneElement {
  DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
    this.dateElement,
    this.author,
  });

  final CodeableConcept action;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? author;
  @override
  DetectedIssueMitigation clone() => throw UnimplementedError();
}
