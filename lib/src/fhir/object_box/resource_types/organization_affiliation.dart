// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxOrganizationAffiliation {
  ObjectBoxOrganizationAffiliation({
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
    this.active,
    ObjectBoxElement? activeElement,
    ObjectBoxPeriod? period,
    ObjectBoxReference? organization,
    ObjectBoxReference? participatingOrganization,
    List<ObjectBoxReference>? network,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxCodeableConcept>? specialty,
    List<ObjectBoxReference>? location,
    List<ObjectBoxReference>? healthcareService,
    List<ObjectBoxContactPoint>? telecom,
    List<ObjectBoxReference>? endpoint,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.activeElement.target = activeElement;
    this.period.target = period;
    this.organization.target = organization;
    this.participatingOrganization.target = participatingOrganization;
    this.network.addAll(network ?? []);
    this.code.addAll(code ?? []);
    this.specialty.addAll(specialty ?? []);
    this.location.addAll(location ?? []);
    this.healthcareService.addAll(healthcareService ?? []);
    this.telecom.addAll(telecom ?? []);
    this.endpoint.addAll(endpoint ?? []);
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
  bool? active;
  ToOne<ObjectBoxElement> activeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> participatingOrganization =
      ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> network = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> specialty =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> location = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> healthcareService = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxReference> endpoint = ToMany<ObjectBoxReference>();
}
