// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSearchParameter {
  ObjectBoxSearchParameter({
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
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
    this.derivedFrom,
    ObjectBoxElement? derivedFromElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    required this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    required this.code,
    ObjectBoxElement? codeElement,
    required this.base,
    List<ObjectBoxElement>? baseElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.xpath,
    ObjectBoxElement? xpathElement,
    this.xpathUsage,
    ObjectBoxElement? xpathUsageElement,
    this.target,
    List<ObjectBoxElement>? targetElement,
    this.multipleOr,
    ObjectBoxElement? multipleOrElement,
    this.multipleAnd,
    ObjectBoxElement? multipleAndElement,
    this.comparator,
    List<ObjectBoxElement>? comparatorElement,
    this.modifier,
    List<ObjectBoxElement>? modifierElement,
    this.chain,
    List<ObjectBoxElement>? chainElement,
    List<ObjectBoxSearchParameterComponent>? component,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.derivedFromElement.target = derivedFromElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.codeElement.target = codeElement;
    this.baseElement.addAll(baseElement ?? []);
    this.typeElement.target = typeElement;
    this.expressionElement.target = expressionElement;
    this.xpathElement.target = xpathElement;
    this.xpathUsageElement.target = xpathUsageElement;
    this.targetElement.addAll(targetElement ?? []);
    this.multipleOrElement.target = multipleOrElement;
    this.multipleAndElement.target = multipleAndElement;
    this.comparatorElement.addAll(comparatorElement ?? []);
    this.modifierElement.addAll(modifierElement ?? []);
    this.chainElement.addAll(chainElement ?? []);
    this.component.addAll(component ?? []);
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
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? derivedFrom;
  ToOne<ObjectBoxElement> derivedFromElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  List<String> base;
  ToMany<ObjectBoxElement> baseElement = ToMany<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? xpath;
  ToOne<ObjectBoxElement> xpathElement = ToOne<ObjectBoxElement>();
  String? xpathUsage;
  ToOne<ObjectBoxElement> xpathUsageElement = ToOne<ObjectBoxElement>();
  List<String>? target;
  ToMany<ObjectBoxElement> targetElement = ToMany<ObjectBoxElement>();
  bool? multipleOr;
  ToOne<ObjectBoxElement> multipleOrElement = ToOne<ObjectBoxElement>();
  bool? multipleAnd;
  ToOne<ObjectBoxElement> multipleAndElement = ToOne<ObjectBoxElement>();
  List<String>? comparator;
  ToMany<ObjectBoxElement> comparatorElement = ToMany<ObjectBoxElement>();
  List<String>? modifier;
  ToMany<ObjectBoxElement> modifierElement = ToMany<ObjectBoxElement>();
  List<String>? chain;
  ToMany<ObjectBoxElement> chainElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxSearchParameterComponent> component =
      ToMany<ObjectBoxSearchParameterComponent>();
}

@Entity()
class ObjectBoxSearchParameterComponent {
  ObjectBoxSearchParameterComponent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.definition,
    ObjectBoxElement? definitionElement,
    required this.expression,
    ObjectBoxElement? expressionElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.definitionElement.target = definitionElement;
    this.expressionElement.target = expressionElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  String expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
}
