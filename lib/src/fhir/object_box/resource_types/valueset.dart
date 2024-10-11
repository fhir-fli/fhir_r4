import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ValueSet extends Resource {
  ValueSet({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
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
    this.immutable,
    this.immutableElement,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.compose,
    this.expansion,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  bool? immutable;
  ToOne<Element>? immutableElement = ToOne<Element>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
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
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? lockedDate;
  ToOne<Element>? lockedDateElement = ToOne<Element>();
  bool? inactive;
  ToOne<Element>? inactiveElement = ToOne<Element>();
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
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  ToMany<ValueSetConcept>? concept = ToMany<ValueSetConcept>();
  ToMany<ValueSetFilter>? filter = ToMany<ValueSetFilter>();
  List<String>? valueSet;
  ToMany<Element>? valueSetElement = ToMany<Element>();
}

@Entity()
class ValueSetConcept {
  ValueSetConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
  ToMany<ValueSetDesignation>? designation = ToMany<ValueSetDesignation>();
}

@Entity()
class ValueSetDesignation {
  ValueSetDesignation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Coding>? use = ToOne<Coding>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class ValueSetFilter {
  ValueSetFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.property,
    this.propertyElement,
    required this.op,
    this.opElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String property;
  ToOne<Element>? propertyElement = ToOne<Element>();
  String op;
  ToOne<Element>? opElement = ToOne<Element>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class ValueSetExpansion {
  ValueSetExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.identifierElement,
    required this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? identifier;
  ToOne<Element>? identifierElement = ToOne<Element>();
  String timestamp;
  ToOne<Element>? timestampElement = ToOne<Element>();
  int? total;
  ToOne<Element>? totalElement = ToOne<Element>();
  int? offset;
  ToOne<Element>? offsetElement = ToOne<Element>();
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
    this.nameElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueUri,
    this.valueUriElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  double? valueDecimal;
  ToOne<Element>? valueDecimalElement = ToOne<Element>();
  String? valueUri;
  ToOne<Element>? valueUriElement = ToOne<Element>();
  String? valueCode;
  ToOne<Element>? valueCodeElement = ToOne<Element>();
  String? valueDateTime;
  ToOne<Element>? valueDateTimeElement = ToOne<Element>();
}

@Entity()
class ValueSetContains {
  ValueSetContains({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.systemElement,
    this.abstract_,
    this.abstractElement,
    this.inactive,
    this.inactiveElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? system;
  ToOne<Element>? systemElement = ToOne<Element>();
  bool? abstract_;
  ToOne<Element>? abstractElement = ToOne<Element>();
  bool? inactive;
  ToOne<Element>? inactiveElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
  ToMany<ValueSetDesignation>? designation = ToMany<ValueSetDesignation>();
  ToMany<ValueSetContains>? contains = ToMany<ValueSetContains>();
}
