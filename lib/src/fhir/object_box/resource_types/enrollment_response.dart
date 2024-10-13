// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEnrollmentResponse {
  ObjectBoxEnrollmentResponse({
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
    this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? request,
    this.outcome,
    ObjectBoxElement? outcomeElement,
    this.disposition,
    ObjectBoxElement? dispositionElement,
    this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? organization,
    ObjectBoxReference? requestProvider,
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
    this.request.target = request;
    this.outcomeElement.target = outcomeElement;
    this.dispositionElement.target = dispositionElement;
    this.createdElement.target = createdElement;
    this.organization.target = organization;
    this.requestProvider.target = requestProvider;
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
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  String? outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement> dispositionElement = ToOne<ObjectBoxElement>();
  String? created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> requestProvider = ToOne<ObjectBoxReference>();
}
