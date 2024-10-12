// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunization {
  ObjectBoxImmunization({
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
    required this.status,
    this.statusElement,
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrenceString,
    this.occurrenceStringElement,
    this.recorded,
    this.recordedElement,
    this.primarySource,
    this.primarySourceElement,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
    this.isSubpotentElement,
    this.subpotentReason,
    this.education,
    this.programEligibility,
    this.fundingSource,
    this.reaction,
    this.protocolApplied,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> vaccineCode =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  String? occurrenceString;
  ToOne<ObjectBoxElement>? occurrenceStringElement = ToOne<ObjectBoxElement>();
  String? recorded;
  ToOne<ObjectBoxElement>? recordedElement = ToOne<ObjectBoxElement>();
  bool? primarySource;
  ToOne<ObjectBoxElement>? primarySourceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? reportOrigin =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? manufacturer = ToOne<ObjectBoxReference>();
  String? lotNumber;
  ToOne<ObjectBoxElement>? lotNumberElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement>? expirationDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? site = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? route = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? doseQuantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxImmunizationPerformer>? performer =
      ToMany<ObjectBoxImmunizationPerformer>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  bool? isSubpotent;
  ToOne<ObjectBoxElement>? isSubpotentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? subpotentReason =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationEducation>? education =
      ToMany<ObjectBoxImmunizationEducation>();
  ToMany<ObjectBoxCodeableConcept>? programEligibility =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? fundingSource =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationReaction>? reaction =
      ToMany<ObjectBoxImmunizationReaction>();
  ToMany<ObjectBoxImmunizationProtocolApplied>? protocolApplied =
      ToMany<ObjectBoxImmunizationProtocolApplied>();
}

@Entity()
class ObjectBoxImmunizationPerformer {
  ObjectBoxImmunizationPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? function_ =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxImmunizationEducation {
  ObjectBoxImmunizationEducation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.documentType,
    this.documentTypeElement,
    this.reference,
    this.referenceElement,
    this.publicationDate,
    this.publicationDateElement,
    this.presentationDate,
    this.presentationDateElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? documentType;
  ToOne<ObjectBoxElement>? documentTypeElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement>? referenceElement = ToOne<ObjectBoxElement>();
  String? publicationDate;
  ToOne<ObjectBoxElement>? publicationDateElement = ToOne<ObjectBoxElement>();
  String? presentationDate;
  ToOne<ObjectBoxElement>? presentationDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImmunizationReaction {
  ObjectBoxImmunizationReaction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.dateElement,
    this.detail,
    this.reported,
    this.reportedElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? detail = ToOne<ObjectBoxReference>();
  bool? reported;
  ToOne<ObjectBoxElement>? reportedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImmunizationProtocolApplied {
  ObjectBoxImmunizationProtocolApplied({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.series,
    this.seriesElement,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.doseNumberPositiveIntElement,
    this.doseNumberString,
    this.doseNumberStringElement,
    this.seriesDosesPositiveInt,
    this.seriesDosesPositiveIntElement,
    this.seriesDosesString,
    this.seriesDosesStringElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? series;
  ToOne<ObjectBoxElement>? seriesElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? authority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? targetDisease =
      ToMany<ObjectBoxCodeableConcept>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement>? doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement>? doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement>? seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement>? seriesDosesStringElement = ToOne<ObjectBoxElement>();
}
