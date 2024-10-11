import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ValueSet extends Resource {
  ValueSet({
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
    this.immutable,
    this.purpose,
    this.copyright,
    this.compose,
    this.expansion,
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
  bool? immutable;
  String? purpose;
  String? copyright;
  ToOne<ValueSetCompose>? compose = ToOne<ValueSetCompose>();
  ToOne<ValueSetExpansion>? expansion = ToOne<ValueSetExpansion>();
}

@Entity()
class ValueSetCompose {
  ValueSetCompose({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lockedDate,
    this.inactive,
    required this.include,
    this.exclude,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? lockedDate;
  bool? inactive;
  ToMany<ValueSetInclude> include = ToMany<ValueSetInclude>();
  ToMany<ValueSetInclude>? exclude = ToMany<ValueSetInclude>();
}

@Entity()
class ValueSetInclude {
  ValueSetInclude({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.version,
    this.concept,
    this.filter,
    this.valueSet,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? system;
  String? version;
  ToMany<ValueSetConcept>? concept = ToMany<ValueSetConcept>();
  ToMany<ValueSetFilter>? filter = ToMany<ValueSetFilter>();
  List<String>? valueSet;
}

@Entity()
class ValueSetConcept {
  ValueSetConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.display,
    this.designation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? display;
  ToMany<ValueSetDesignation>? designation = ToMany<ValueSetDesignation>();
}

@Entity()
class ValueSetDesignation {
  ValueSetDesignation({
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
class ValueSetFilter {
  ValueSetFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.property,
    required this.op,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String property;
  String op;
  String value;
}

@Entity()
class ValueSetExpansion {
  ValueSetExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.timestamp,
    this.total,
    this.offset,
    this.parameter,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? identifier;
  String timestamp;
  int? total;
  int? offset;
  ToMany<ValueSetParameter>? parameter = ToMany<ValueSetParameter>();
  ToMany<ValueSetContains>? contains = ToMany<ValueSetContains>();
}

@Entity()
class ValueSetParameter {
  ValueSetParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueDecimal,
    this.valueUri,
    this.valueCode,
    this.valueDateTime,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? valueString;
  bool? valueBoolean;
  int? valueInteger;
  double? valueDecimal;
  String? valueUri;
  String? valueCode;
  String? valueDateTime;
}

@Entity()
class ValueSetContains {
  ValueSetContains({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.abstract_,
    this.inactive,
    this.version,
    this.code,
    this.display,
    this.designation,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? system;
  bool? abstract_;
  bool? inactive;
  String? version;
  String? code;
  String? display;
  ToMany<ValueSetDesignation>? designation = ToMany<ValueSetDesignation>();
  ToMany<ValueSetContains>? contains = ToMany<ValueSetContains>();
}
