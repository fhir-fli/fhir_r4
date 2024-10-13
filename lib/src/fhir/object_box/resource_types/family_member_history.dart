// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxFamilyMemberHistory {
  ObjectBoxFamilyMemberHistory({
    this.id,
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
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? dataAbsentReason,
    ObjectBoxReference? patient,
    this.date,
    ObjectBoxElement? dateElement,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? relationship,
    ObjectBoxCodeableConcept? sex,
    ObjectBoxPeriod? bornPeriod,
    this.bornDate,
    ObjectBoxElement? bornDateElement,
    this.bornString,
    ObjectBoxElement? bornStringElement,
    ObjectBoxAge? ageAge,
    ObjectBoxRange? ageRange,
    this.ageString,
    ObjectBoxElement? ageStringElement,
    this.estimatedAge,
    ObjectBoxElement? estimatedAgeElement,
    this.deceasedBoolean,
    ObjectBoxElement? deceasedBooleanElement,
    ObjectBoxAge? deceasedAge,
    ObjectBoxRange? deceasedRange,
    this.deceasedDate,
    ObjectBoxElement? deceasedDateElement,
    this.deceasedString,
    ObjectBoxElement? deceasedStringElement,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxFamilyMemberHistoryCondition>? condition,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.statusElement.target = statusElement;
    this.dataAbsentReason.target = dataAbsentReason;
    this.patient.target = patient;
    this.dateElement.target = dateElement;
    this.nameElement.target = nameElement;
    this.relationship.target = relationship;
    this.sex.target = sex;
    this.bornPeriod.target = bornPeriod;
    this.bornDateElement.target = bornDateElement;
    this.bornStringElement.target = bornStringElement;
    this.ageAge.target = ageAge;
    this.ageRange.target = ageRange;
    this.ageStringElement.target = ageStringElement;
    this.estimatedAgeElement.target = estimatedAgeElement;
    this.deceasedBooleanElement.target = deceasedBooleanElement;
    this.deceasedAge.target = deceasedAge;
    this.deceasedRange.target = deceasedRange;
    this.deceasedDateElement.target = deceasedDateElement;
    this.deceasedStringElement.target = deceasedStringElement;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
    this.condition.addAll(condition ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> dataAbsentReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> relationship =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> sex = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxPeriod> bornPeriod = ToOne<ObjectBoxPeriod>();
  String? bornDate;
  ToOne<ObjectBoxElement> bornDateElement = ToOne<ObjectBoxElement>();
  String? bornString;
  ToOne<ObjectBoxElement> bornStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> ageAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange> ageRange = ToOne<ObjectBoxRange>();
  String? ageString;
  ToOne<ObjectBoxElement> ageStringElement = ToOne<ObjectBoxElement>();
  bool? estimatedAge;
  ToOne<ObjectBoxElement> estimatedAgeElement = ToOne<ObjectBoxElement>();
  bool? deceasedBoolean;
  ToOne<ObjectBoxElement> deceasedBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> deceasedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange> deceasedRange = ToOne<ObjectBoxRange>();
  String? deceasedDate;
  ToOne<ObjectBoxElement> deceasedDateElement = ToOne<ObjectBoxElement>();
  String? deceasedString;
  ToOne<ObjectBoxElement> deceasedStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxFamilyMemberHistoryCondition> condition =
      ToMany<ObjectBoxFamilyMemberHistoryCondition>();
}

@Entity()
class ObjectBoxFamilyMemberHistoryCondition {
  ObjectBoxFamilyMemberHistoryCondition({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? outcome,
    this.contributedToDeath,
    ObjectBoxElement? contributedToDeathElement,
    ObjectBoxAge? onsetAge,
    ObjectBoxRange? onsetRange,
    ObjectBoxPeriod? onsetPeriod,
    this.onsetString,
    ObjectBoxElement? onsetStringElement,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.outcome.target = outcome;
    this.contributedToDeathElement.target = contributedToDeathElement;
    this.onsetAge.target = onsetAge;
    this.onsetRange.target = onsetRange;
    this.onsetPeriod.target = onsetPeriod;
    this.onsetStringElement.target = onsetStringElement;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> outcome = ToOne<ObjectBoxCodeableConcept>();
  bool? contributedToDeath;
  ToOne<ObjectBoxElement> contributedToDeathElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> onsetAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange> onsetRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxPeriod> onsetPeriod = ToOne<ObjectBoxPeriod>();
  String? onsetString;
  ToOne<ObjectBoxElement> onsetStringElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}
