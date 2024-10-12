// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEpisodeOfCare {
  ObjectBoxEpisodeOfCare({
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
    this.statusHistory,
    this.type,
    this.diagnosis,
    required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
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
  ToMany<ObjectBoxEpisodeOfCareStatusHistory>? statusHistory =
      ToMany<ObjectBoxEpisodeOfCareStatusHistory>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxEpisodeOfCareDiagnosis>? diagnosis =
      ToMany<ObjectBoxEpisodeOfCareDiagnosis>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? managingOrganization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference>? referralRequest = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? careManager = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? team = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? account = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEpisodeOfCareStatusHistory {
  ObjectBoxEpisodeOfCareStatusHistory({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.status,
    this.statusElement,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEpisodeOfCareDiagnosis {
  ObjectBoxEpisodeOfCareDiagnosis({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.condition,
    this.role,
    this.rank,
    this.rankElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> condition = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
  int? rank;
  ToOne<ObjectBoxElement>? rankElement = ToOne<ObjectBoxElement>();
}
