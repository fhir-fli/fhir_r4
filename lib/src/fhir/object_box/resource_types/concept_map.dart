// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxConceptMap {
  ObjectBoxConceptMap({
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
    ObjectBoxIdentifier? identifier,
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
    this.sourceUri,
    ObjectBoxElement? sourceUriElement,
    this.sourceCanonical,
    ObjectBoxElement? sourceCanonicalElement,
    this.targetUri,
    ObjectBoxElement? targetUriElement,
    this.targetCanonical,
    ObjectBoxElement? targetCanonicalElement,
    List<ObjectBoxConceptMapGroup>? group,
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
    this.identifier.target = identifier;
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
    this.sourceUriElement.target = sourceUriElement;
    this.sourceCanonicalElement.target = sourceCanonicalElement;
    this.targetUriElement.target = targetUriElement;
    this.targetCanonicalElement.target = targetCanonicalElement;
    this.group.addAll(group ?? []);
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
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
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
  String? sourceUri;
  ToOne<ObjectBoxElement> sourceUriElement = ToOne<ObjectBoxElement>();
  String? sourceCanonical;
  ToOne<ObjectBoxElement> sourceCanonicalElement = ToOne<ObjectBoxElement>();
  String? targetUri;
  ToOne<ObjectBoxElement> targetUriElement = ToOne<ObjectBoxElement>();
  String? targetCanonical;
  ToOne<ObjectBoxElement> targetCanonicalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapGroup> group = ToMany<ObjectBoxConceptMapGroup>();
}

@Entity()
class ObjectBoxConceptMapGroup {
  ObjectBoxConceptMapGroup({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.source,
    ObjectBoxElement? sourceElement,
    this.sourceVersion,
    ObjectBoxElement? sourceVersionElement,
    this.target,
    ObjectBoxElement? targetElement,
    this.targetVersion,
    ObjectBoxElement? targetVersionElement,
    List<ObjectBoxConceptMapElement>? element,
    ObjectBoxConceptMapUnmapped? unmapped,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sourceElement.target = sourceElement;
    this.sourceVersionElement.target = sourceVersionElement;
    this.targetElement.target = targetElement;
    this.targetVersionElement.target = targetVersionElement;
    this.element.addAll(element ?? []);
    this.unmapped.target = unmapped;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  String? sourceVersion;
  ToOne<ObjectBoxElement> sourceVersionElement = ToOne<ObjectBoxElement>();
  String? target;
  ToOne<ObjectBoxElement> targetElement = ToOne<ObjectBoxElement>();
  String? targetVersion;
  ToOne<ObjectBoxElement> targetVersionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapElement> element =
      ToMany<ObjectBoxConceptMapElement>();
  ToOne<ObjectBoxConceptMapUnmapped> unmapped =
      ToOne<ObjectBoxConceptMapUnmapped>();
}

@Entity()
class ObjectBoxConceptMapElement {
  ObjectBoxConceptMapElement({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    List<ObjectBoxConceptMapTarget>? target,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.target.addAll(target ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapTarget> target =
      ToMany<ObjectBoxConceptMapTarget>();
}

@Entity()
class ObjectBoxConceptMapTarget {
  ObjectBoxConceptMapTarget({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    required this.equivalence,
    ObjectBoxElement? equivalenceElement,
    this.comment,
    ObjectBoxElement? commentElement,
    List<ObjectBoxConceptMapDependsOn>? dependsOn,
    List<ObjectBoxConceptMapDependsOn>? product,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.equivalenceElement.target = equivalenceElement;
    this.commentElement.target = commentElement;
    this.dependsOn.addAll(dependsOn ?? []);
    this.product.addAll(product ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  String equivalence;
  ToOne<ObjectBoxElement> equivalenceElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement> commentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapDependsOn> dependsOn =
      ToMany<ObjectBoxConceptMapDependsOn>();
  ToMany<ObjectBoxConceptMapDependsOn> product =
      ToMany<ObjectBoxConceptMapDependsOn>();
}

@Entity()
class ObjectBoxConceptMapDependsOn {
  ObjectBoxConceptMapDependsOn({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.property,
    ObjectBoxElement? propertyElement,
    this.system,
    ObjectBoxElement? systemElement,
    required this.value,
    ObjectBoxElement? valueElement,
    this.display,
    ObjectBoxElement? displayElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.propertyElement.target = propertyElement;
    this.systemElement.target = systemElement;
    this.valueElement.target = valueElement;
    this.displayElement.target = displayElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String property;
  ToOne<ObjectBoxElement> propertyElement = ToOne<ObjectBoxElement>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxConceptMapUnmapped {
  ObjectBoxConceptMapUnmapped({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    this.url,
    ObjectBoxElement? urlElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.urlElement.target = urlElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
}
