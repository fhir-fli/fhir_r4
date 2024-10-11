import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class RegulatedAuthorization extends Resource {
  RegulatedAuthorization({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.subject,
    this.type,
    this.description,
    this.region,
    this.status,
    this.statusDate,
    this.validityPeriod,
    this.indication,
    this.intendedUse,
    this.basis,
    this.holder,
    this.regulator,
    this.case_,
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
  ToMany<Reference>? subject = ToMany<Reference>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? description;
  ToMany<CodeableConcept>? region = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  String? statusDate;
  ToOne<Period>? validityPeriod = ToOne<Period>();
  ToOne<CodeableReference>? indication = ToOne<CodeableReference>();
  ToOne<CodeableConcept>? intendedUse = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? basis = ToMany<CodeableConcept>();
  ToOne<Reference>? holder = ToOne<Reference>();
  ToOne<Reference>? regulator = ToOne<Reference>();
  ToOne<RegulatedAuthorizationCase>? case_ =
      ToOne<RegulatedAuthorizationCase>();
}

@Entity()
class RegulatedAuthorizationCase {
  RegulatedAuthorizationCase({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.type,
    this.status,
    this.datePeriod,
    this.dateDateTime,
    this.application,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? status = ToOne<CodeableConcept>();
  ToOne<Period>? datePeriod = ToOne<Period>();
  String? dateDateTime;
  ToMany<RegulatedAuthorizationCase>? application =
      ToMany<RegulatedAuthorizationCase>();
}
