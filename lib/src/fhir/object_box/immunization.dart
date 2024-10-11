import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Immunization extends Resource {
  Immunization({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.statusReason,
    required this.vaccineCode,
    required this.patient,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceString,
    this.recorded,
    this.primarySource,
    this.reportOrigin,
    this.location,
    this.manufacturer,
    this.lotNumber,
    this.expirationDate,
    this.site,
    this.route,
    this.doseQuantity,
    this.performer,
    this.note,
    this.reasonCode,
    this.reasonReference,
    this.isSubpotent,
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToOne<CodeableConcept> vaccineCode = ToOne<CodeableConcept>();
  ToOne<Reference> patient = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? occurrenceDateTime;
  String? occurrenceString;
  String? recorded;
  bool? primarySource;
  ToOne<CodeableConcept>? reportOrigin = ToOne<CodeableConcept>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToOne<Reference>? manufacturer = ToOne<Reference>();
  String? lotNumber;
  String? expirationDate;
  ToOne<CodeableConcept>? site = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? route = ToOne<CodeableConcept>();
  ToOne<Quantity>? doseQuantity = ToOne<Quantity>();
  ToMany<ImmunizationPerformer>? performer = ToMany<ImmunizationPerformer>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  bool? isSubpotent;
  ToMany<CodeableConcept>? subpotentReason = ToMany<CodeableConcept>();
  ToMany<ImmunizationEducation>? education = ToMany<ImmunizationEducation>();
  ToMany<CodeableConcept>? programEligibility = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? fundingSource = ToOne<CodeableConcept>();
  ToMany<ImmunizationReaction>? reaction = ToMany<ImmunizationReaction>();
  ToMany<ImmunizationProtocolApplied>? protocolApplied =
      ToMany<ImmunizationProtocolApplied>();
}

@Entity()
class ImmunizationPerformer {
  ImmunizationPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? function_ = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
}

@Entity()
class ImmunizationEducation {
  ImmunizationEducation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.documentType,
    this.reference,
    this.publicationDate,
    this.presentationDate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? documentType;
  String? reference;
  String? publicationDate;
  String? presentationDate;
}

@Entity()
class ImmunizationReaction {
  ImmunizationReaction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.detail,
    this.reported,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? date;
  ToOne<Reference>? detail = ToOne<Reference>();
  bool? reported;
}

@Entity()
class ImmunizationProtocolApplied {
  ImmunizationProtocolApplied({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.series,
    this.authority,
    this.targetDisease,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? series;
  ToOne<Reference>? authority = ToOne<Reference>();
  ToMany<CodeableConcept>? targetDisease = ToMany<CodeableConcept>();
  int? doseNumberPositiveInt;
  String? doseNumberString;
  int? seriesDosesPositiveInt;
  String? seriesDosesString;
}
