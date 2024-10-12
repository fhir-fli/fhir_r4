// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFamilyMemberHistory {
  ObjectBoxFamilyMemberHistory({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    required this.status,
    this.statusElement,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.dateElement,
    this.name,
    this.nameElement,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.bornDateElement,
    this.bornString,
    this.bornStringElement,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.ageStringElement,
    this.estimatedAge,
    this.estimatedAgeElement,
    this.deceasedBoolean,
    this.deceasedBooleanElement,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.deceasedDateElement,
    this.deceasedString,
    this.deceasedStringElement,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? sex = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod>? bornPeriod = ToOne<ObjectBoxPeriod>();
  String? bornDate;
  ToOne<ObjectBoxElement>? bornDateElement = ToOne<ObjectBoxElement>();
  String? bornString;
  ToOne<ObjectBoxElement>? bornStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? ageAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange>? ageRange = ToOne<ObjectBoxRange>();
  String? ageString;
  ToOne<ObjectBoxElement>? ageStringElement = ToOne<ObjectBoxElement>();
  bool? estimatedAge;
  ToOne<ObjectBoxElement>? estimatedAgeElement = ToOne<ObjectBoxElement>();
  bool? deceasedBoolean;
  ToOne<ObjectBoxElement>? deceasedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? deceasedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange>? deceasedRange = ToOne<ObjectBoxRange>();
  String? deceasedDate;
  ToOne<ObjectBoxElement>? deceasedDateElement = ToOne<ObjectBoxElement>();
  String? deceasedString;
  ToOne<ObjectBoxElement>? deceasedStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxFamilyMemberHistoryCondition>? condition =
      ToMany<ObjectBoxFamilyMemberHistoryCondition>();
}

@Entity()
class ObjectBoxFamilyMemberHistoryCondition {
  ObjectBoxFamilyMemberHistoryCondition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.contributedToDeathElement,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.onsetStringElement,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? outcome = ToOne<ObjectBoxCodeableConcept>();
  bool? contributedToDeath;
  ToOne<ObjectBoxElement>? contributedToDeathElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange>? onsetRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxPeriod>? onsetPeriod = ToOne<ObjectBoxPeriod>();
  String? onsetString;
  ToOne<ObjectBoxElement>? onsetStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}
