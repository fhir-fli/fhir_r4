// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImplementationGuide {
  ObjectBoxImplementationGuide({
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
    required this.url,
    ObjectBoxElement? urlElement,
    this.version,
    ObjectBoxElement? versionElement,
    required this.name,
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
    this.copyright,
    ObjectBoxElement? copyrightElement,
    required this.packageId,
    ObjectBoxElement? packageIdElement,
    this.license,
    ObjectBoxElement? licenseElement,
    required this.fhirVersion,
    List<ObjectBoxElement>? fhirVersionElement,
    List<ObjectBoxImplementationGuideDependsOn>? dependsOn,
    List<ObjectBoxImplementationGuideGlobal>? global,
    ObjectBoxImplementationGuideDefinition? definition,
    ObjectBoxImplementationGuideManifest? manifest,
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
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.copyrightElement.target = copyrightElement;
    this.packageIdElement.target = packageIdElement;
    this.licenseElement.target = licenseElement;
    this.fhirVersionElement.addAll(fhirVersionElement ?? []);
    this.dependsOn.addAll(dependsOn ?? []);
    this.global.addAll(global ?? []);
    this.definition.target = definition;
    this.manifest.target = manifest;
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
  String url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String name;
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
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String packageId;
  ToOne<ObjectBoxElement> packageIdElement = ToOne<ObjectBoxElement>();
  String? license;
  ToOne<ObjectBoxElement> licenseElement = ToOne<ObjectBoxElement>();
  List<String> fhirVersion;
  ToMany<ObjectBoxElement> fhirVersionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuideDependsOn> dependsOn =
      ToMany<ObjectBoxImplementationGuideDependsOn>();
  ToMany<ObjectBoxImplementationGuideGlobal> global =
      ToMany<ObjectBoxImplementationGuideGlobal>();
  ToOne<ObjectBoxImplementationGuideDefinition> definition =
      ToOne<ObjectBoxImplementationGuideDefinition>();
  ToOne<ObjectBoxImplementationGuideManifest> manifest =
      ToOne<ObjectBoxImplementationGuideManifest>();
}

@Entity()
class ObjectBoxImplementationGuideDependsOn {
  ObjectBoxImplementationGuideDependsOn({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.uri,
    ObjectBoxElement? uriElement,
    this.packageId,
    ObjectBoxElement? packageIdElement,
    this.version,
    ObjectBoxElement? versionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.uriElement.target = uriElement;
    this.packageIdElement.target = packageIdElement;
    this.versionElement.target = versionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  String? packageId;
  ToOne<ObjectBoxElement> packageIdElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideGlobal {
  ObjectBoxImplementationGuideGlobal({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    required this.profile,
    ObjectBoxElement? profileElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.profileElement.target = profileElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideDefinition {
  ObjectBoxImplementationGuideDefinition({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxImplementationGuideGrouping>? grouping,
    List<ObjectBoxImplementationGuideResource>? resource,
    ObjectBoxImplementationGuidePage? page,
    List<ObjectBoxImplementationGuideParameter>? parameter,
    List<ObjectBoxImplementationGuideTemplate>? template,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.grouping.addAll(grouping ?? []);
    this.resource.addAll(resource ?? []);
    this.page.target = page;
    this.parameter.addAll(parameter ?? []);
    this.template.addAll(template ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxImplementationGuideGrouping> grouping =
      ToMany<ObjectBoxImplementationGuideGrouping>();
  ToMany<ObjectBoxImplementationGuideResource> resource =
      ToMany<ObjectBoxImplementationGuideResource>();
  ToOne<ObjectBoxImplementationGuidePage> page =
      ToOne<ObjectBoxImplementationGuidePage>();
  ToMany<ObjectBoxImplementationGuideParameter> parameter =
      ToMany<ObjectBoxImplementationGuideParameter>();
  ToMany<ObjectBoxImplementationGuideTemplate> template =
      ToMany<ObjectBoxImplementationGuideTemplate>();
}

@Entity()
class ObjectBoxImplementationGuideGrouping {
  ObjectBoxImplementationGuideGrouping({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideResource {
  ObjectBoxImplementationGuideResource({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? reference,
    this.fhirVersion,
    List<ObjectBoxElement>? fhirVersionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.exampleBoolean,
    ObjectBoxElement? exampleBooleanElement,
    this.exampleCanonical,
    ObjectBoxElement? exampleCanonicalElement,
    this.groupingId,
    ObjectBoxElement? groupingIdElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.reference.target = reference;
    this.fhirVersionElement.addAll(fhirVersionElement ?? []);
    this.nameElement.target = nameElement;
    this.descriptionElement.target = descriptionElement;
    this.exampleBooleanElement.target = exampleBooleanElement;
    this.exampleCanonicalElement.target = exampleCanonicalElement;
    this.groupingIdElement.target = groupingIdElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  List<String>? fhirVersion;
  ToMany<ObjectBoxElement> fhirVersionElement = ToMany<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  bool? exampleBoolean;
  ToOne<ObjectBoxElement> exampleBooleanElement = ToOne<ObjectBoxElement>();
  String? exampleCanonical;
  ToOne<ObjectBoxElement> exampleCanonicalElement = ToOne<ObjectBoxElement>();
  String? groupingId;
  ToOne<ObjectBoxElement> groupingIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuidePage {
  ObjectBoxImplementationGuidePage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.nameUrl,
    ObjectBoxElement? nameUrlElement,
    ObjectBoxReference? nameReference,
    required this.title,
    ObjectBoxElement? titleElement,
    required this.generation,
    ObjectBoxElement? generationElement,
    List<ObjectBoxImplementationGuidePage>? page,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameUrlElement.target = nameUrlElement;
    this.nameReference.target = nameReference;
    this.titleElement.target = titleElement;
    this.generationElement.target = generationElement;
    this.page.addAll(page ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? nameUrl;
  ToOne<ObjectBoxElement> nameUrlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> nameReference = ToOne<ObjectBoxReference>();
  String title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String generation;
  ToOne<ObjectBoxElement> generationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuidePage> page =
      ToMany<ObjectBoxImplementationGuidePage>();
}

@Entity()
class ObjectBoxImplementationGuideParameter {
  ObjectBoxImplementationGuideParameter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
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
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideTemplate {
  ObjectBoxImplementationGuideTemplate({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    required this.source,
    ObjectBoxElement? sourceElement,
    this.scope,
    ObjectBoxElement? scopeElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.sourceElement.target = sourceElement;
    this.scopeElement.target = scopeElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String source;
  ToOne<ObjectBoxElement> sourceElement = ToOne<ObjectBoxElement>();
  String? scope;
  ToOne<ObjectBoxElement> scopeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideManifest {
  ObjectBoxImplementationGuideManifest({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.rendering,
    ObjectBoxElement? renderingElement,
    List<ObjectBoxImplementationGuideResource>? resource,
    List<ObjectBoxImplementationGuidePage>? page,
    this.image,
    List<ObjectBoxElement>? imageElement,
    this.other,
    List<ObjectBoxElement>? otherElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.renderingElement.target = renderingElement;
    this.resource.addAll(resource ?? []);
    this.page.addAll(page ?? []);
    this.imageElement.addAll(imageElement ?? []);
    this.otherElement.addAll(otherElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? rendering;
  ToOne<ObjectBoxElement> renderingElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuideResource> resource =
      ToMany<ObjectBoxImplementationGuideResource>();
  ToMany<ObjectBoxImplementationGuidePage> page =
      ToMany<ObjectBoxImplementationGuidePage>();
  List<String>? image;
  ToMany<ObjectBoxElement> imageElement = ToMany<ObjectBoxElement>();
  List<String>? other;
  ToMany<ObjectBoxElement> otherElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideResource1 {
  ObjectBoxImplementationGuideResource1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? reference,
    this.exampleBoolean,
    ObjectBoxElement? exampleBooleanElement,
    this.exampleCanonical,
    ObjectBoxElement? exampleCanonicalElement,
    this.relativePath,
    ObjectBoxElement? relativePathElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.reference.target = reference;
    this.exampleBooleanElement.target = exampleBooleanElement;
    this.exampleCanonicalElement.target = exampleCanonicalElement;
    this.relativePathElement.target = relativePathElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  bool? exampleBoolean;
  ToOne<ObjectBoxElement> exampleBooleanElement = ToOne<ObjectBoxElement>();
  String? exampleCanonical;
  ToOne<ObjectBoxElement> exampleCanonicalElement = ToOne<ObjectBoxElement>();
  String? relativePath;
  ToOne<ObjectBoxElement> relativePathElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuidePage1 {
  ObjectBoxImplementationGuidePage1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.anchor,
    List<ObjectBoxElement>? anchorElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.anchorElement.addAll(anchorElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  List<String>? anchor;
  ToMany<ObjectBoxElement> anchorElement = ToMany<ObjectBoxElement>();
}
