import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DetectedIssue extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? code;
  final FhirCode? severity;
  final Element? severityElement;
  final Reference? patient;
  final FhirDateTime? identifiedFhirDateTime;
  final Element? identifiedFhirDateTimeElement;
  final Period? identifiedPeriod;
  final Reference? author;
  final List<Reference>? implicated;
  final List<BackboneElement>? evidence;
  final FhirString? detail;
  final Element? detailElement;
  final FhirUri? reference;
  final Element? referenceElement;
  final List<BackboneElement>? mitigation;

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
    this.identifiedFhirDateTime,
this.identifiedFhirDateTimeElement,
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

@override
DetectedIssue clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DetectedIssueEvidence extends BackboneElement {
  final List<CodeableConcept>? code;
  final List<Reference>? detail;

  DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

@override
DetectedIssueEvidence clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DetectedIssueMitigation extends BackboneElement {
  final CodeableConcept action;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? author;

  DetectedIssueMitigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.action,
    this.date,
this.dateElement,
    this.author,
  });

@override
DetectedIssueMitigation clone() => throw UnimplementedError();
}
