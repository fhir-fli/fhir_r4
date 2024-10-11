import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CodeSystem extends Resource {
  CodeSystem({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
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
    this.caseSensitive,
    this.valueSet,
    this.hierarchyMeaning,
    this.compositional,
    this.versionNeeded,
    required this.content,
    this.supplements,
    this.count,
    this.filter,
    this.property,
    this.concept,
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
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
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
  bool? caseSensitive;
  String? valueSet;
  String? hierarchyMeaning;
  bool? compositional;
  bool? versionNeeded;
  String content;
  String? supplements;
  int? count;
  ToMany<CodeSystemFilter>? filter = ToMany<CodeSystemFilter>();
  ToMany<CodeSystemProperty>? property = ToMany<CodeSystemProperty>();
  ToMany<CodeSystemConcept>? concept = ToMany<CodeSystemConcept>();
}

@Entity()
class CodeSystemFilter {
  CodeSystemFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.description,
    required this.operator_,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? description;
  List<String> operator_;
  String value;
}

@Entity()
class CodeSystemProperty {
  CodeSystemProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.uri,
    this.description,
    required this.type,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? uri;
  String? description;
  String type;
}

@Entity()
class CodeSystemConcept {
  CodeSystemConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.display,
    this.definition,
    this.designation,
    this.property,
    this.concept,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? display;
  String? definition;
  ToMany<CodeSystemDesignation>? designation = ToMany<CodeSystemDesignation>();
  ToMany<CodeSystemProperty>? property = ToMany<CodeSystemProperty>();
  ToMany<CodeSystemConcept>? concept = ToMany<CodeSystemConcept>();
}

@Entity()
class CodeSystemDesignation {
  CodeSystemDesignation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.language,
    this.use,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? language;
  ToOne<Coding>? use = ToOne<Coding>();
  String value;
}

@Entity()
class CodeSystemProperty1 {
  CodeSystemProperty1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueCode,
    this.valueCoding,
    this.valueString,
    this.valueInteger,
    this.valueBoolean,
    this.valueDateTime,
    this.valueDecimal,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? valueCode;
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  String? valueString;
  int? valueInteger;
  bool? valueBoolean;
  String? valueDateTime;
  double? valueDecimal;
}
