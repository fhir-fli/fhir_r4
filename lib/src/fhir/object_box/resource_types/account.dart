import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Account extends Resource {
  Account({
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
    this.type,
    this.name,
    this.subject,
    this.servicePeriod,
    this.coverage,
    this.owner,
    this.description,
    this.guarantor,
    this.partOf,
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
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? name;
  ToMany<Reference>? subject = ToMany<Reference>();
  ToOne<Period>? servicePeriod = ToOne<Period>();
  ToMany<AccountCoverage>? coverage = ToMany<AccountCoverage>();
  ToOne<Reference>? owner = ToOne<Reference>();
  String? description;
  ToMany<AccountGuarantor>? guarantor = ToMany<AccountGuarantor>();
  ToOne<Reference>? partOf = ToOne<Reference>();
}

@Entity()
class AccountCoverage {
  AccountCoverage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.coverage,
    this.priority,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> coverage = ToOne<Reference>();
  int? priority;
}

@Entity()
class AccountGuarantor {
  AccountGuarantor({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.party,
    this.onHold,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> party = ToOne<Reference>();
  bool? onHold;
  ToOne<Period>? period = ToOne<Period>();
}
