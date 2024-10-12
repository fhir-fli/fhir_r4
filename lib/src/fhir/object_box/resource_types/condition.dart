// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCondition {
  ObjectBoxCondition({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.abatementDateTime,
    this.abatementDateTimeElement,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.abatementStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept>? clinicalStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? verificationStatus =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? severity = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? onsetDateTime;
  ToOne<ObjectBoxElement>? onsetDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? onsetPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange>? onsetRange = ToOne<ObjectBoxRange>();
  String? onsetString;
  ToOne<ObjectBoxElement>? onsetStringElement = ToOne<ObjectBoxElement>();
  String? abatementDateTime;
  ToOne<ObjectBoxElement>? abatementDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? abatementAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? abatementPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange>? abatementRange = ToOne<ObjectBoxRange>();
  String? abatementString;
  ToOne<ObjectBoxElement>? abatementStringElement = ToOne<ObjectBoxElement>();
  String? recordedDate;
  ToOne<ObjectBoxElement>? recordedDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? asserter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxConditionStage>? stage = ToMany<ObjectBoxConditionStage>();
  ToMany<ObjectBoxConditionEvidence>? evidence =
      ToMany<ObjectBoxConditionEvidence>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxConditionStage {
  ObjectBoxConditionStage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? summary = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? assessment = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxConditionEvidence {
  ObjectBoxConditionEvidence({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? detail = ToMany<ObjectBoxReference>();
}
