// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxSearchParameter {
  ObjectBoxSearchParameter({
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
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.derivedFrom,
    this.derivedFromElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    required this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    required this.code,
    this.codeElement,
    required this.base,
    this.baseElement,
    required this.type,
    this.typeElement,
    this.expression,
    this.expressionElement,
    this.xpath,
    this.xpathElement,
    this.xpathUsage,
    this.xpathUsageElement,
    this.target,
    this.targetElement,
    this.multipleOr,
    this.multipleOrElement,
    this.multipleAnd,
    this.multipleAndElement,
    this.comparator,
    this.comparatorElement,
    this.modifier,
    this.modifierElement,
    this.chain,
    this.chainElement,
    this.component,
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
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? derivedFrom;
  ToOne<ObjectBoxElement>? derivedFromElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  List<String> base;
  ToMany<ObjectBoxElement>? baseElement = ToMany<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
  String? xpath;
  ToOne<ObjectBoxElement>? xpathElement = ToOne<ObjectBoxElement>();
  String? xpathUsage;
  ToOne<ObjectBoxElement>? xpathUsageElement = ToOne<ObjectBoxElement>();
  List<String>? target;
  ToMany<ObjectBoxElement>? targetElement = ToMany<ObjectBoxElement>();
  bool? multipleOr;
  ToOne<ObjectBoxElement>? multipleOrElement = ToOne<ObjectBoxElement>();
  bool? multipleAnd;
  ToOne<ObjectBoxElement>? multipleAndElement = ToOne<ObjectBoxElement>();
  List<String>? comparator;
  ToMany<ObjectBoxElement>? comparatorElement = ToMany<ObjectBoxElement>();
  List<String>? modifier;
  ToMany<ObjectBoxElement>? modifierElement = ToMany<ObjectBoxElement>();
  List<String>? chain;
  ToMany<ObjectBoxElement>? chainElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxSearchParameterComponent>? component =
      ToMany<ObjectBoxSearchParameterComponent>();
}

@Entity()
class ObjectBoxSearchParameterComponent {
  ObjectBoxSearchParameterComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.definition,
    this.definitionElement,
    required this.expression,
    this.expressionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
  String expression;
  ToOne<ObjectBoxElement>? expressionElement = ToOne<ObjectBoxElement>();
}
