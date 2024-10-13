// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImmunization {
  ObjectBoxImmunization({
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    ObjectBoxCodeableConcept? vaccineCode,
    ObjectBoxReference? patient,
    ObjectBoxReference? encounter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    this.occurrenceString,
    ObjectBoxElement? occurrenceStringElement,
    this.recorded,
    ObjectBoxElement? recordedElement,
    this.primarySource,
    ObjectBoxElement? primarySourceElement,
    ObjectBoxCodeableConcept? reportOrigin,
    ObjectBoxReference? location,
    ObjectBoxReference? manufacturer,
    this.lotNumber,
    ObjectBoxElement? lotNumberElement,
    this.expirationDate,
    ObjectBoxElement? expirationDateElement,
    ObjectBoxCodeableConcept? site,
    ObjectBoxCodeableConcept? route,
    ObjectBoxQuantity? doseQuantity,
    List<ObjectBoxImmunizationPerformer>? performer,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    this.isSubpotent,
    ObjectBoxElement? isSubpotentElement,
    List<ObjectBoxCodeableConcept>? subpotentReason,
    List<ObjectBoxImmunizationEducation>? education,
    List<ObjectBoxCodeableConcept>? programEligibility,
    ObjectBoxCodeableConcept? fundingSource,
    List<ObjectBoxImmunizationReaction>? reaction,
    List<ObjectBoxImmunizationProtocolApplied>? protocolApplied,
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
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.vaccineCode.target = vaccineCode;
    this.patient.target = patient;
    this.encounter.target = encounter;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrenceStringElement.target = occurrenceStringElement;
    this.recordedElement.target = recordedElement;
    this.primarySourceElement.target = primarySourceElement;
    this.reportOrigin.target = reportOrigin;
    this.location.target = location;
    this.manufacturer.target = manufacturer;
    this.lotNumberElement.target = lotNumberElement;
    this.expirationDateElement.target = expirationDateElement;
    this.site.target = site;
    this.route.target = route;
    this.doseQuantity.target = doseQuantity;
    this.performer.addAll(performer ?? []);
    this.note.addAll(note ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.isSubpotentElement.target = isSubpotentElement;
    this.subpotentReason.addAll(subpotentReason ?? []);
    this.education.addAll(education ?? []);
    this.programEligibility.addAll(programEligibility ?? []);
    this.fundingSource.target = fundingSource;
    this.reaction.addAll(reaction ?? []);
    this.protocolApplied.addAll(protocolApplied ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> vaccineCode =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  String? occurrenceString;
  ToOne<ObjectBoxElement> occurrenceStringElement = ToOne<ObjectBoxElement>();
  String? recorded;
  ToOne<ObjectBoxElement> recordedElement = ToOne<ObjectBoxElement>();
  bool? primarySource;
  ToOne<ObjectBoxElement> primarySourceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> reportOrigin =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> manufacturer = ToOne<ObjectBoxReference>();
  String? lotNumber;
  ToOne<ObjectBoxElement> lotNumberElement = ToOne<ObjectBoxElement>();
  String? expirationDate;
  ToOne<ObjectBoxElement> expirationDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> site = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> route = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> doseQuantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxImmunizationPerformer> performer =
      ToMany<ObjectBoxImmunizationPerformer>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  bool? isSubpotent;
  ToOne<ObjectBoxElement> isSubpotentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> subpotentReason =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationEducation> education =
      ToMany<ObjectBoxImmunizationEducation>();
  ToMany<ObjectBoxCodeableConcept> programEligibility =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> fundingSource =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxImmunizationReaction> reaction =
      ToMany<ObjectBoxImmunizationReaction>();
  ToMany<ObjectBoxImmunizationProtocolApplied> protocolApplied =
      ToMany<ObjectBoxImmunizationProtocolApplied>();
}

@Entity()
class ObjectBoxImmunizationPerformer {
  ObjectBoxImmunizationPerformer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? function_,
    ObjectBoxReference? actor,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.function_.target = function_;
    this.actor.target = actor;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> function_ = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxImmunizationEducation {
  ObjectBoxImmunizationEducation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.documentType,
    ObjectBoxElement? documentTypeElement,
    this.reference,
    ObjectBoxElement? referenceElement,
    this.publicationDate,
    ObjectBoxElement? publicationDateElement,
    this.presentationDate,
    ObjectBoxElement? presentationDateElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.documentTypeElement.target = documentTypeElement;
    this.referenceElement.target = referenceElement;
    this.publicationDateElement.target = publicationDateElement;
    this.presentationDateElement.target = presentationDateElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? documentType;
  ToOne<ObjectBoxElement> documentTypeElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement> referenceElement = ToOne<ObjectBoxElement>();
  String? publicationDate;
  ToOne<ObjectBoxElement> publicationDateElement = ToOne<ObjectBoxElement>();
  String? presentationDate;
  ToOne<ObjectBoxElement> presentationDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImmunizationReaction {
  ObjectBoxImmunizationReaction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? detail,
    this.reported,
    ObjectBoxElement? reportedElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.dateElement.target = dateElement;
    this.detail.target = detail;
    this.reportedElement.target = reportedElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> detail = ToOne<ObjectBoxReference>();
  bool? reported;
  ToOne<ObjectBoxElement> reportedElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImmunizationProtocolApplied {
  ObjectBoxImmunizationProtocolApplied({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.series,
    ObjectBoxElement? seriesElement,
    ObjectBoxReference? authority,
    List<ObjectBoxCodeableConcept>? targetDisease,
    this.doseNumberPositiveInt,
    ObjectBoxElement? doseNumberPositiveIntElement,
    this.doseNumberString,
    ObjectBoxElement? doseNumberStringElement,
    this.seriesDosesPositiveInt,
    ObjectBoxElement? seriesDosesPositiveIntElement,
    this.seriesDosesString,
    ObjectBoxElement? seriesDosesStringElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.seriesElement.target = seriesElement;
    this.authority.target = authority;
    this.targetDisease.addAll(targetDisease ?? []);
    this.doseNumberPositiveIntElement.target = doseNumberPositiveIntElement;
    this.doseNumberStringElement.target = doseNumberStringElement;
    this.seriesDosesPositiveIntElement.target = seriesDosesPositiveIntElement;
    this.seriesDosesStringElement.target = seriesDosesStringElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? series;
  ToOne<ObjectBoxElement> seriesElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> authority = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> targetDisease =
      ToMany<ObjectBoxCodeableConcept>();
  int? doseNumberPositiveInt;
  ToOne<ObjectBoxElement> doseNumberPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? doseNumberString;
  ToOne<ObjectBoxElement> doseNumberStringElement = ToOne<ObjectBoxElement>();
  int? seriesDosesPositiveInt;
  ToOne<ObjectBoxElement> seriesDosesPositiveIntElement =
      ToOne<ObjectBoxElement>();
  String? seriesDosesString;
  ToOne<ObjectBoxElement> seriesDosesStringElement = ToOne<ObjectBoxElement>();
}
