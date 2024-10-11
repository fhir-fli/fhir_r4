import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class GraphDefinition extends Resource {
  GraphDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.version,
    required this.name,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    required this.start,
    this.profile,
    this.link,
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
  String? url;
  String? version;
  String name;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String start;
  String? profile;
  ToMany<GraphDefinitionLink>? link = ToMany<GraphDefinitionLink>();
}

@Entity()
class GraphDefinitionLink {
  GraphDefinitionLink({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.path,
    this.sliceName,
    this.min,
    this.max,
    this.description,
    this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? path;
  String? sliceName;
  int? min;
  String? max;
  String? description;
  ToMany<GraphDefinitionTarget>? target = ToMany<GraphDefinitionTarget>();
}

@Entity()
class GraphDefinitionTarget {
  GraphDefinitionTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.params,
    this.profile,
    this.compartment,
    this.link,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String? params;
  String? profile;
  ToMany<GraphDefinitionCompartment>? compartment =
      ToMany<GraphDefinitionCompartment>();
  ToMany<GraphDefinitionLink>? link = ToMany<GraphDefinitionLink>();
}

@Entity()
class GraphDefinitionCompartment {
  GraphDefinitionCompartment({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.use,
    required this.code,
    required this.rule,
    this.expression,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String use;
  String code;
  String rule;
  String? expression;
  String? description;
}
