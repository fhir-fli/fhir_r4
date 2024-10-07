import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DetectedIssue] /// Indicates an actual or potential clinical issue with or between one or more
/// active or proposed clinical actions for a patient; e.g. Drug-drug
/// interaction, Ineffective treatment frequency, Procedure-condition conflict,
/// etc.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier associated with the detected issue record.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the status of the detected issue.
  final FhirCode status;
  final Element? statusElement;

  /// [code] /// Identifies the general type of issue identified.
  final CodeableConcept? code;

  /// [severity] /// Indicates the degree of importance associated with the identified issue
  /// based on the potential impact on the patient.
  final FhirCode? severity;
  final Element? severityElement;

  /// [patient] /// Indicates the patient whose record the detected issue is associated with.
  final Reference? patient;

  /// [identifiedDateTime] /// The date or period when the detected issue was initially identified.
  final FhirDateTime? identifiedDateTime;
  final Element? identifiedDateTimeElement;

  /// [identifiedPeriod] /// The date or period when the detected issue was initially identified.
  final Period? identifiedPeriod;

  /// [author] /// Individual or device responsible for the issue being raised. For example, a
  /// decision support application or a pharmacist conducting a medication
  /// review.
  final Reference? author;

  /// [implicated] /// Indicates the resource representing the current activity or proposed
  /// activity that is potentially problematic.
  final List<Reference>? implicated;

  /// [evidence] /// Supporting evidence or manifestations that provide the basis for
  /// identifying the detected issue such as a GuidanceResponse or MeasureReport.
  final List<DetectedIssueEvidence>? evidence;

  /// [detail] /// A textual explanation of the detected issue.
  final FhirString? detail;
  final Element? detailElement;

  /// [reference] /// The literature, knowledge-base or similar reference that describes the
  /// propensity for the detected issue identified.
  final FhirUri? reference;
  final Element? referenceElement;

  /// [mitigation] /// Indicates an action that has been taken or is committed to reduce or
  /// eliminate the likelihood of the risk identified by the detected issue from
  /// manifesting. Can also reflect an observation of known mitigating factors
  /// that may reduce/eliminate the need for any action.
  final List<DetectedIssueMitigation>? mitigation;
  @override
  DetectedIssue clone() => throw UnimplementedError();
  DetectedIssue copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? code,
    FhirCode? severity,
    Element? severityElement,
    Reference? patient,
    FhirDateTime? identifiedDateTime,
    Element? identifiedDateTimeElement,
    Period? identifiedPeriod,
    Reference? author,
    List<Reference>? implicated,
    List<DetectedIssueEvidence>? evidence,
    FhirString? detail,
    Element? detailElement,
    FhirUri? reference,
    Element? referenceElement,
    List<DetectedIssueMitigation>? mitigation,
  }) {
    return DetectedIssue(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      code: code ?? this.code,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      patient: patient ?? this.patient,
      identifiedDateTime: identifiedDateTime ?? this.identifiedDateTime,
      identifiedDateTimeElement:
          identifiedDateTimeElement ?? this.identifiedDateTimeElement,
      identifiedPeriod: identifiedPeriod ?? this.identifiedPeriod,
      author: author ?? this.author,
      implicated: implicated ?? this.implicated,
      evidence: evidence ?? this.evidence,
      detail: detail ?? this.detail,
      detailElement: detailElement ?? this.detailElement,
      reference: reference ?? this.reference,
      referenceElement: referenceElement ?? this.referenceElement,
      mitigation: mitigation ?? this.mitigation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DetectedIssueEvidence] /// Supporting evidence or manifestations that provide the basis for
/// identifying the detected issue such as a GuidanceResponse or MeasureReport.
class DetectedIssueEvidence extends BackboneElement {
  DetectedIssueEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A manifestation that led to the recording of this detected issue.
  final List<CodeableConcept>? code;

  /// [detail] /// Links to resources that constitute evidence for the detected issue such as
  /// a GuidanceResponse or MeasureReport.
  final List<Reference>? detail;
  @override
  DetectedIssueEvidence clone() => throw UnimplementedError();
  DetectedIssueEvidence copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
  }) {
    return DetectedIssueEvidence(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DetectedIssueMitigation] /// Indicates an action that has been taken or is committed to reduce or
/// eliminate the likelihood of the risk identified by the detected issue from
/// manifesting. Can also reflect an observation of known mitigating factors
/// that may reduce/eliminate the need for any action.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [action] /// Describes the action that was taken or the observation that was made that
  /// reduces/eliminates the risk associated with the identified issue.
  final CodeableConcept action;

  /// [date] /// Indicates when the mitigating action was documented.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [author] /// Identifies the practitioner who determined the mitigation and takes
  /// responsibility for the mitigation step occurring.
  final Reference? author;
  @override
  DetectedIssueMitigation clone() => throw UnimplementedError();
  DetectedIssueMitigation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    FhirDateTime? date,
    Element? dateElement,
    Reference? author,
  }) {
    return DetectedIssueMitigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      action: action ?? this.action,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      author: author ?? this.author,
    );
  }
}
