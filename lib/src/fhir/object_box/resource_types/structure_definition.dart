// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxStructureDefinition {
  ObjectBoxStructureDefinition({
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
    required this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    List<ObjectBoxCoding>? keyword,
    this.fhirVersion,
    ObjectBoxElement? fhirVersionElement,
    List<ObjectBoxStructureDefinitionMapping>? mapping,
    required this.kind,
    ObjectBoxElement? kindElement,
    required this.abstract_,
    ObjectBoxElement? abstractElement,
    List<ObjectBoxStructureDefinitionContext>? context,
    required this.type,
    ObjectBoxElement? typeElement,
    this.baseDefinition,
    ObjectBoxElement? baseDefinitionElement,
    this.derivation,
    ObjectBoxElement? derivationElement,
    ObjectBoxStructureDefinitionSnapshot? snapshot,
    ObjectBoxStructureDefinitionDifferential? differential,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.keyword.addAll(keyword ?? []);
    this.fhirVersionElement.target = fhirVersionElement;
    this.mapping.addAll(mapping ?? []);
    this.kindElement.target = kindElement;
    this.abstractElement.target = abstractElement;
    this.context.addAll(context ?? []);
    this.typeElement.target = typeElement;
    this.baseDefinitionElement.target = baseDefinitionElement;
    this.derivationElement.target = derivationElement;
    this.snapshot.target = snapshot;
    this.differential.target = differential;
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
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding> keyword = ToMany<ObjectBoxCoding>();
  String? fhirVersion;
  ToOne<ObjectBoxElement> fhirVersionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureDefinitionMapping> mapping =
      ToMany<ObjectBoxStructureDefinitionMapping>();
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  bool abstract_;
  ToOne<ObjectBoxElement> abstractElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureDefinitionContext> context =
      ToMany<ObjectBoxStructureDefinitionContext>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? baseDefinition;
  ToOne<ObjectBoxElement> baseDefinitionElement = ToOne<ObjectBoxElement>();
  String? derivation;
  ToOne<ObjectBoxElement> derivationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxStructureDefinitionSnapshot> snapshot =
      ToOne<ObjectBoxStructureDefinitionSnapshot>();
  ToOne<ObjectBoxStructureDefinitionDifferential> differential =
      ToOne<ObjectBoxStructureDefinitionDifferential>();
}

@Entity()
class ObjectBoxStructureDefinitionMapping {
  ObjectBoxStructureDefinitionMapping({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.identity,
    ObjectBoxElement? identityElement,
    this.uri,
    ObjectBoxElement? uriElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.comment,
    ObjectBoxElement? commentElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identityElement.target = identityElement;
    this.uriElement.target = uriElement;
    this.nameElement.target = nameElement;
    this.commentElement.target = commentElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String identity;
  ToOne<ObjectBoxElement> identityElement = ToOne<ObjectBoxElement>();
  String? uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureDefinitionContext {
  ObjectBoxStructureDefinitionContext({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.expression,
    ObjectBoxElement? expressionElement,
    this.contextInvariant,
    List<ObjectBoxElement>? contextInvariantElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.expressionElement.target = expressionElement;
    this.contextInvariantElement.addAll(contextInvariantElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  List<String>? contextInvariant;
  ToMany<ObjectBoxElement> contextInvariantElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureDefinitionSnapshot {
  ObjectBoxStructureDefinitionSnapshot({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxElementDefinition>? element,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.element.addAll(element ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinition> element =
      ToMany<ObjectBoxElementDefinition>();
}

@Entity()
class ObjectBoxStructureDefinitionDifferential {
  ObjectBoxStructureDefinitionDifferential({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxElementDefinition>? element,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.element.addAll(element ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinition> element =
      ToMany<ObjectBoxElementDefinition>();
}
