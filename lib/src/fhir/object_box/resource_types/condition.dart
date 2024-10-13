// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCondition {
  ObjectBoxCondition({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    ObjectBoxCodeableConcept? clinicalStatus,
    ObjectBoxCodeableConcept? verificationStatus,
    List<ObjectBoxCodeableConcept>? category,
    ObjectBoxCodeableConcept? severity,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxCodeableConcept>? bodySite,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.onsetDateTime,
    ObjectBoxElement? onsetDateTimeElement,
    ObjectBoxAge? onsetAge,
    ObjectBoxPeriod? onsetPeriod,
    ObjectBoxRange? onsetRange,
    this.onsetString,
    ObjectBoxElement? onsetStringElement,
    this.abatementDateTime,
    ObjectBoxElement? abatementDateTimeElement,
    ObjectBoxAge? abatementAge,
    ObjectBoxPeriod? abatementPeriod,
    ObjectBoxRange? abatementRange,
    this.abatementString,
    ObjectBoxElement? abatementStringElement,
    this.recordedDate,
    ObjectBoxElement? recordedDateElement,
    ObjectBoxReference? recorder,
    ObjectBoxReference? asserter,
    List<ObjectBoxConditionStage>? stage,
    List<ObjectBoxConditionEvidence>? evidence,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.clinicalStatus.target = clinicalStatus;
    this.verificationStatus.target = verificationStatus;
    this.category.addAll(category ?? []);
    this.severity.target = severity;
    this.code.target = code;
    this.bodySite.addAll(bodySite ?? []);
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.onsetDateTimeElement.target = onsetDateTimeElement;
    this.onsetAge.target = onsetAge;
    this.onsetPeriod.target = onsetPeriod;
    this.onsetRange.target = onsetRange;
    this.onsetStringElement.target = onsetStringElement;
    this.abatementDateTimeElement.target = abatementDateTimeElement;
    this.abatementAge.target = abatementAge;
    this.abatementPeriod.target = abatementPeriod;
    this.abatementRange.target = abatementRange;
    this.abatementStringElement.target = abatementStringElement;
    this.recordedDateElement.target = recordedDateElement;
    this.recorder.target = recorder;
    this.asserter.target = asserter;
    this.stage.addAll(stage ?? []);
    this.evidence.addAll(evidence ?? []);
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> clinicalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> verificationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> severity = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? onsetDateTime;
  ToOne<ObjectBoxElement> onsetDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> onsetPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange> onsetRange = ToOne<ObjectBoxRange>();
  String? onsetString;
  ToOne<ObjectBoxElement> onsetStringElement = ToOne<ObjectBoxElement>();
  String? abatementDateTime;
  ToOne<ObjectBoxElement> abatementDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> abatementAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> abatementPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange> abatementRange = ToOne<ObjectBoxRange>();
  String? abatementString;
  ToOne<ObjectBoxElement> abatementStringElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement> recordedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> asserter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxConditionStage> stage = ToMany<ObjectBoxConditionStage>();
  ToMany<ObjectBoxConditionEvidence> evidence =
      ToMany<ObjectBoxConditionEvidence>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxConditionStage {
  ObjectBoxConditionStage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? summary,
    List<ObjectBoxReference>? assessment,
    ObjectBoxCodeableConcept? type,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.summary.target = summary;
    this.assessment.addAll(assessment ?? []);
    this.type.target = type;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> summary = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> assessment = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxConditionEvidence {
  ObjectBoxConditionEvidence({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxReference>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.addAll(code ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> detail = ToMany<ObjectBoxReference>();
}
