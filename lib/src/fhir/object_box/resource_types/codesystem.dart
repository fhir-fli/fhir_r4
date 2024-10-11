import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CodeSystem extends Resource {
  CodeSystem({
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
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.caseSensitive,
    this.caseSensitiveElement,
    this.valueSet,
    this.valueSetElement,
    this.hierarchyMeaning,
    this.hierarchyMeaningElement,
    this.compositional,
    this.compositionalElement,
    this.versionNeeded,
    this.versionNeededElement,
    required this.content,
    this.contentElement,
    this.supplements,
    this.supplementsElement,
    this.count,
    this.countElement,
    this.filter,
    this.property,
    this.concept,
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
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  bool? caseSensitive;
  ToOne<Element>? caseSensitiveElement = ToOne<Element>();
  String? valueSet;
  ToOne<Element>? valueSetElement = ToOne<Element>();
  String? hierarchyMeaning;
  ToOne<Element>? hierarchyMeaningElement = ToOne<Element>();
  bool? compositional;
  ToOne<Element>? compositionalElement = ToOne<Element>();
  bool? versionNeeded;
  ToOne<Element>? versionNeededElement = ToOne<Element>();
  String content;
  ToOne<Element>? contentElement = ToOne<Element>();
  String? supplements;
  ToOne<Element>? supplementsElement = ToOne<Element>();
  int? count;
  ToOne<Element>? countElement = ToOne<Element>();
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
    this.codeElement,
    this.description,
    this.descriptionElement,
    required this.operator_,
    this.operatorElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  List<String> operator_;
  ToMany<Element>? operatorElement = ToMany<Element>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class CodeSystemProperty {
  CodeSystemProperty({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.uri,
    this.uriElement,
    this.description,
    this.descriptionElement,
    required this.type,
    this.typeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? uri;
  ToOne<Element>? uriElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
}

@Entity()
class CodeSystemConcept {
  CodeSystemConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.definition,
    this.definitionElement,
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
  ToOne<Element>? codeElement = ToOne<Element>();
  String? display;
  ToOne<Element>? displayElement = ToOne<Element>();
  String? definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
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
class CodeSystemProperty1 {
  CodeSystemProperty1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueCoding,
    this.valueString,
    this.valueStringElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueDecimal,
    this.valueDecimalElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? valueCode;
  ToOne<Element>? valueCodeElement = ToOne<Element>();
  ToOne<Coding>? valueCoding = ToOne<Coding>();
  String? valueString;
  ToOne<Element>? valueStringElement = ToOne<Element>();
  int? valueInteger;
  ToOne<Element>? valueIntegerElement = ToOne<Element>();
  bool? valueBoolean;
  ToOne<Element>? valueBooleanElement = ToOne<Element>();
  String? valueDateTime;
  ToOne<Element>? valueDateTimeElement = ToOne<Element>();
  double? valueDecimal;
  ToOne<Element>? valueDecimalElement = ToOne<Element>();
}
