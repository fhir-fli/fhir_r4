import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class StructureDefinition extends Resource {
  StructureDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.keyword,
    this.fhirVersion,
    this.mapping,
    required this.kind,
    required this.abstract_,
    this.context,
    required this.type,
    this.baseDefinition,
    this.derivation,
    this.snapshot,
    this.differential,
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
  String url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  ToMany<Coding>? keyword = ToMany<Coding>();
  String? fhirVersion;
  ToMany<StructureDefinitionMapping>? mapping =
      ToMany<StructureDefinitionMapping>();
  String kind;
  bool abstract_;
  ToMany<StructureDefinitionContext>? context =
      ToMany<StructureDefinitionContext>();
  String type;
  String? baseDefinition;
  String? derivation;
  ToOne<StructureDefinitionSnapshot>? snapshot =
      ToOne<StructureDefinitionSnapshot>();
  ToOne<StructureDefinitionDifferential>? differential =
      ToOne<StructureDefinitionDifferential>();
}

@Entity()
class StructureDefinitionMapping {
  StructureDefinitionMapping({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.identity,
    this.uri,
    this.name,
    this.comment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String identity;
  String? uri;
  String? name;
  String? comment;
}

@Entity()
class StructureDefinitionContext {
  StructureDefinitionContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.expression,
    this.contextInvariant,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String expression;
  List<String>? contextInvariant;
}

@Entity()
class StructureDefinitionSnapshot {
  StructureDefinitionSnapshot({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ElementDefinition> element = ToMany<ElementDefinition>();
}

@Entity()
class StructureDefinitionDifferential {
  StructureDefinitionDifferential({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ElementDefinition> element = ToMany<ElementDefinition>();
}
