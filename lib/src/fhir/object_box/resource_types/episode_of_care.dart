// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEpisodeOfCare {
  ObjectBoxEpisodeOfCare({
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
    List<ObjectBoxEpisodeOfCareStatusHistory>? statusHistory,
    List<ObjectBoxCodeableConcept>? type,
    List<ObjectBoxEpisodeOfCareDiagnosis>? diagnosis,
    ObjectBoxReference? patient,
    ObjectBoxReference? managingOrganization,
    ObjectBoxPeriod? period,
    List<ObjectBoxReference>? referralRequest,
    ObjectBoxReference? careManager,
    List<ObjectBoxReference>? team,
    List<ObjectBoxReference>? account,
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
    this.statusHistory.addAll(statusHistory ?? []);
    this.type.addAll(type ?? []);
    this.diagnosis.addAll(diagnosis ?? []);
    this.patient.target = patient;
    this.managingOrganization.target = managingOrganization;
    this.period.target = period;
    this.referralRequest.addAll(referralRequest ?? []);
    this.careManager.target = careManager;
    this.team.addAll(team ?? []);
    this.account.addAll(account ?? []);
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
  ToMany<ObjectBoxEpisodeOfCareStatusHistory> statusHistory =
      ToMany<ObjectBoxEpisodeOfCareStatusHistory>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxEpisodeOfCareDiagnosis> diagnosis =
      ToMany<ObjectBoxEpisodeOfCareDiagnosis>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> managingOrganization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxReference> referralRequest = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> careManager = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> team = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> account = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEpisodeOfCareStatusHistory {
  ObjectBoxEpisodeOfCareStatusHistory({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.statusElement.target = statusElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEpisodeOfCareDiagnosis {
  ObjectBoxEpisodeOfCareDiagnosis({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? condition,
    ObjectBoxCodeableConcept? role,
    this.rank,
    ObjectBoxElement? rankElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.condition.target = condition;
    this.role.target = role;
    this.rankElement.target = rankElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> condition = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  int? rank;
  ToOne<ObjectBoxElement> rankElement = ToOne<ObjectBoxElement>();
}
