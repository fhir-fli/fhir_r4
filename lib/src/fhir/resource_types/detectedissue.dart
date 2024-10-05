import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DetectedIssue extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept? code;
  final FhirCode? severity;
  final Element? severityElement;
  final Reference? patient;
  final FhirString? identifiedDateTime;
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
    this.status,
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
  }): super(resourceType: R4ResourceType.DetectedIssue);

@override
DetectedIssue clone() => this;

}


@Data()
@JsonCodable()
class DetectedIssueEvidence {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? code;
  final List<Reference>? detail;

  DetectedIssueEvidence({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.detail,
  });

}


@Data()
@JsonCodable()
class DetectedIssueMitigation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept action;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? author;

  DetectedIssueMitigation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
    this.date,
    this.dateElement,
    this.author,
  });

}



