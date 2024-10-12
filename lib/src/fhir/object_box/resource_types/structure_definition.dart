// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxStructureDefinition {
  ObjectBoxStructureDefinition({
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
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.keyword,
    this.fhirVersion,
    this.fhirVersionElement,
    this.mapping,
    required this.kind,
    this.kindElement,
    required this.abstract_,
    this.abstractElement,
    this.context,
    required this.type,
    this.typeElement,
    this.baseDefinition,
    this.baseDefinitionElement,
    this.derivation,
    this.derivationElement,
    this.snapshot,
    this.differential,
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
  String url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCoding>? keyword = ToMany<ObjectBoxCoding>();
  String? fhirVersion;
  ToOne<ObjectBoxElement>? fhirVersionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureDefinitionMapping>? mapping =
      ToMany<ObjectBoxStructureDefinitionMapping>();
  String kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  bool abstract_;
  ToOne<ObjectBoxElement>? abstractElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxStructureDefinitionContext>? context =
      ToMany<ObjectBoxStructureDefinitionContext>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? baseDefinition;
  ToOne<ObjectBoxElement>? baseDefinitionElement = ToOne<ObjectBoxElement>();
  String? derivation;
  ToOne<ObjectBoxElement>? derivationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxStructureDefinitionSnapshot>? snapshot =
      ToOne<ObjectBoxStructureDefinitionSnapshot>();
  ToOne<ObjectBoxStructureDefinitionDifferential>? differential =
      ToOne<ObjectBoxStructureDefinitionDifferential>();
}

@Entity()
class ObjectBoxStructureDefinitionMapping {
  ObjectBoxStructureDefinitionMapping({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.identity,
    this.identityElement,
    this.uri,
    this.uriElement,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String identity;
  ToOne<ObjectBoxElement>? identityElement = ToOne<ObjectBoxElement>();
  String? uri;
  ToOne<ObjectBoxElement>? uriElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureDefinitionContext {
  ObjectBoxStructureDefinitionContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    required this.expression,
    this.expressionElement,
    this.contextInvariant,
    this.contextInvariantElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  List<String>? contextInvariant;
  ToMany<ObjectBoxElement>? contextInvariantElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxStructureDefinitionSnapshot {
  ObjectBoxStructureDefinitionSnapshot({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinition> element =
      ToMany<ObjectBoxElementDefinition>();
}

@Entity()
class ObjectBoxStructureDefinitionDifferential {
  ObjectBoxStructureDefinitionDifferential({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxElementDefinition> element =
      ToMany<ObjectBoxElementDefinition>();
}
