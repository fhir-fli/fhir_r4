// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCodeSystem {
  ObjectBoxCodeSystem({
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
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
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
    this.caseSensitive,
    ObjectBoxElement? caseSensitiveElement,
    this.valueSet,
    ObjectBoxElement? valueSetElement,
    this.hierarchyMeaning,
    ObjectBoxElement? hierarchyMeaningElement,
    this.compositional,
    ObjectBoxElement? compositionalElement,
    this.versionNeeded,
    ObjectBoxElement? versionNeededElement,
    required this.content,
    ObjectBoxElement? contentElement,
    this.supplements,
    ObjectBoxElement? supplementsElement,
    this.count,
    ObjectBoxElement? countElement,
    List<ObjectBoxCodeSystemFilter>? filter,
    List<ObjectBoxCodeSystemProperty>? property,
    List<ObjectBoxCodeSystemConcept>? concept,
  }) {
    this.id.target = id;
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
    this.caseSensitiveElement.target = caseSensitiveElement;
    this.valueSetElement.target = valueSetElement;
    this.hierarchyMeaningElement.target = hierarchyMeaningElement;
    this.compositionalElement.target = compositionalElement;
    this.versionNeededElement.target = versionNeededElement;
    this.contentElement.target = contentElement;
    this.supplementsElement.target = supplementsElement;
    this.countElement.target = countElement;
    this.filter.addAll(filter ?? []);
    this.property.addAll(property ?? []);
    this.concept.addAll(concept ?? []);
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
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
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
  bool? caseSensitive;
  ToOne<ObjectBoxElement> caseSensitiveElement = ToOne<ObjectBoxElement>();
  String? valueSet;
  ToOne<ObjectBoxElement> valueSetElement = ToOne<ObjectBoxElement>();
  String? hierarchyMeaning;
  ToOne<ObjectBoxElement> hierarchyMeaningElement = ToOne<ObjectBoxElement>();
  bool? compositional;
  ToOne<ObjectBoxElement> compositionalElement = ToOne<ObjectBoxElement>();
  bool? versionNeeded;
  ToOne<ObjectBoxElement> versionNeededElement = ToOne<ObjectBoxElement>();
  String content;
  ToOne<ObjectBoxElement> contentElement = ToOne<ObjectBoxElement>();
  String? supplements;
  ToOne<ObjectBoxElement> supplementsElement = ToOne<ObjectBoxElement>();
  int? count;
  ToOne<ObjectBoxElement> countElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeSystemFilter> filter =
      ToMany<ObjectBoxCodeSystemFilter>();
  ToMany<ObjectBoxCodeSystemProperty> property =
      ToMany<ObjectBoxCodeSystemProperty>();
  ToMany<ObjectBoxCodeSystemConcept> concept =
      ToMany<ObjectBoxCodeSystemConcept>();
}

@Entity()
class ObjectBoxCodeSystemFilter {
  ObjectBoxCodeSystemFilter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    required this.operator_,
    List<ObjectBoxElement>? operatorElement,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.descriptionElement.target = descriptionElement;
    this.operatorElement.addAll(operatorElement ?? []);
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  List<String> operator_;
  ToMany<ObjectBoxElement> operatorElement = ToMany<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCodeSystemProperty {
  ObjectBoxCodeSystemProperty({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.uri,
    ObjectBoxElement? uriElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    required this.type,
    ObjectBoxElement? typeElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.uriElement.target = uriElement;
    this.descriptionElement.target = descriptionElement;
    this.typeElement.target = typeElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCodeSystemConcept {
  ObjectBoxCodeSystemConcept({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    this.definition,
    ObjectBoxElement? definitionElement,
    List<ObjectBoxCodeSystemDesignation>? designation,
    List<ObjectBoxCodeSystemProperty>? property,
    List<ObjectBoxCodeSystemConcept>? concept,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.definitionElement.target = definitionElement;
    this.designation.addAll(designation ?? []);
    this.property.addAll(property ?? []);
    this.concept.addAll(concept ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeSystemDesignation> designation =
      ToMany<ObjectBoxCodeSystemDesignation>();
  ToMany<ObjectBoxCodeSystemProperty> property =
      ToMany<ObjectBoxCodeSystemProperty>();
  ToMany<ObjectBoxCodeSystemConcept> concept =
      ToMany<ObjectBoxCodeSystemConcept>();
}

@Entity()
class ObjectBoxCodeSystemDesignation {
  ObjectBoxCodeSystemDesignation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxCoding? use,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.languageElement.target = languageElement;
    this.use.target = use;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> use = ToOne<ObjectBoxCoding>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCodeSystemProperty1 {
  ObjectBoxCodeSystemProperty1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.valueCode,
    ObjectBoxElement? valueCodeElement,
    ObjectBoxCoding? valueCoding,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.valueCodeElement.target = valueCodeElement;
    this.valueCoding.target = valueCoding;
    this.valueStringElement.target = valueStringElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
    this.valueDecimalElement.target = valueDecimalElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement> valueCodeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> valueCoding = ToOne<ObjectBoxCoding>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
}
