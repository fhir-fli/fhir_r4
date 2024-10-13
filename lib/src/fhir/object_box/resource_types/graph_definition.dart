// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxGraphDefinition {
  ObjectBoxGraphDefinition({
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
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
    ObjectBoxElement? nameElement,
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
    required this.start,
    ObjectBoxElement? startElement,
    this.profile,
    ObjectBoxElement? profileElement,
    List<ObjectBoxGraphDefinitionLink>? link,
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
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.startElement.target = startElement;
    this.profileElement.target = profileElement;
    this.link.addAll(link ?? []);
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
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
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
  String start;
  ToOne<ObjectBoxElement> startElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxGraphDefinitionLink> link =
      ToMany<ObjectBoxGraphDefinitionLink>();
}

@Entity()
class ObjectBoxGraphDefinitionLink {
  ObjectBoxGraphDefinitionLink({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.path,
    ObjectBoxElement? pathElement,
    this.sliceName,
    ObjectBoxElement? sliceNameElement,
    this.min,
    ObjectBoxElement? minElement,
    this.max,
    ObjectBoxElement? maxElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxGraphDefinitionTarget>? target,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.pathElement.target = pathElement;
    this.sliceNameElement.target = sliceNameElement;
    this.minElement.target = minElement;
    this.maxElement.target = maxElement;
    this.descriptionElement.target = descriptionElement;
    this.target.addAll(target ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  String? sliceName;
  ToOne<ObjectBoxElement> sliceNameElement = ToOne<ObjectBoxElement>();
  int? min;
  ToOne<ObjectBoxElement> minElement = ToOne<ObjectBoxElement>();
  String? max;
  ToOne<ObjectBoxElement> maxElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxGraphDefinitionTarget> target =
      ToMany<ObjectBoxGraphDefinitionTarget>();
}

@Entity()
class ObjectBoxGraphDefinitionTarget {
  ObjectBoxGraphDefinitionTarget({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    this.params,
    ObjectBoxElement? paramsElement,
    this.profile,
    ObjectBoxElement? profileElement,
    List<ObjectBoxGraphDefinitionCompartment>? compartment,
    List<ObjectBoxGraphDefinitionLink>? link,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.paramsElement.target = paramsElement;
    this.profileElement.target = profileElement;
    this.compartment.addAll(compartment ?? []);
    this.link.addAll(link ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? params;
  ToOne<ObjectBoxElement> paramsElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxGraphDefinitionCompartment> compartment =
      ToMany<ObjectBoxGraphDefinitionCompartment>();
  ToMany<ObjectBoxGraphDefinitionLink> link =
      ToMany<ObjectBoxGraphDefinitionLink>();
}

@Entity()
class ObjectBoxGraphDefinitionCompartment {
  ObjectBoxGraphDefinitionCompartment({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.use,
    ObjectBoxElement? useElement,
    required this.code,
    ObjectBoxElement? codeElement,
    required this.rule,
    ObjectBoxElement? ruleElement,
    this.expression,
    ObjectBoxElement? expressionElement,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.useElement.target = useElement;
    this.codeElement.target = codeElement;
    this.ruleElement.target = ruleElement;
    this.expressionElement.target = expressionElement;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String use;
  ToOne<ObjectBoxElement> useElement = ToOne<ObjectBoxElement>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String rule;
  ToOne<ObjectBoxElement> ruleElement = ToOne<ObjectBoxElement>();
  String? expression;
  ToOne<ObjectBoxElement> expressionElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}
