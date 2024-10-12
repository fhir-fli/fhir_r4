// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxImplementationGuide {
  ObjectBoxImplementationGuide({
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
    this.copyright,
    this.copyrightElement,
    required this.packageId,
    this.packageIdElement,
    this.license,
    this.licenseElement,
    required this.fhirVersion,
    this.fhirVersionElement,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
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
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String packageId;
  ToOne<ObjectBoxElement>? packageIdElement = ToOne<ObjectBoxElement>();
  String? license;
  ToOne<ObjectBoxElement>? licenseElement = ToOne<ObjectBoxElement>();
  List<String> fhirVersion;
  ToMany<ObjectBoxElement>? fhirVersionElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuideDependsOn>? dependsOn =
      ToMany<ObjectBoxImplementationGuideDependsOn>();
  ToMany<ObjectBoxImplementationGuideGlobal>? global =
      ToMany<ObjectBoxImplementationGuideGlobal>();
  ToOne<ObjectBoxImplementationGuideDefinition>? definition =
      ToOne<ObjectBoxImplementationGuideDefinition>();
  ToOne<ObjectBoxImplementationGuideManifest>? manifest =
      ToOne<ObjectBoxImplementationGuideManifest>();
}

@Entity()
class ObjectBoxImplementationGuideDependsOn {
  ObjectBoxImplementationGuideDependsOn({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uri,
    this.uriElement,
    this.packageId,
    this.packageIdElement,
    this.version,
    this.versionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String uri;
  ToOne<ObjectBoxElement>? uriElement = ToOne<ObjectBoxElement>();
  String? packageId;
  ToOne<ObjectBoxElement>? packageIdElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideGlobal {
  ObjectBoxImplementationGuideGlobal({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    required this.profile,
    this.profileElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideDefinition {
  ObjectBoxImplementationGuideDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxImplementationGuideGrouping>? grouping =
      ToMany<ObjectBoxImplementationGuideGrouping>();
  ToMany<ObjectBoxImplementationGuideResource> resource =
      ToMany<ObjectBoxImplementationGuideResource>();
  ToOne<ObjectBoxImplementationGuidePage>? page =
      ToOne<ObjectBoxImplementationGuidePage>();
  ToMany<ObjectBoxImplementationGuideParameter>? parameter =
      ToMany<ObjectBoxImplementationGuideParameter>();
  ToMany<ObjectBoxImplementationGuideTemplate>? template =
      ToMany<ObjectBoxImplementationGuideTemplate>();
}

@Entity()
class ObjectBoxImplementationGuideGrouping {
  ObjectBoxImplementationGuideGrouping({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideResource {
  ObjectBoxImplementationGuideResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.fhirVersionElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.groupingId,
    this.groupingIdElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  List<String>? fhirVersion;
  ToMany<ObjectBoxElement>? fhirVersionElement = ToMany<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  bool? exampleBoolean;
  ToOne<ObjectBoxElement>? exampleBooleanElement = ToOne<ObjectBoxElement>();
  String? exampleCanonical;
  ToOne<ObjectBoxElement>? exampleCanonicalElement = ToOne<ObjectBoxElement>();
  String? groupingId;
  ToOne<ObjectBoxElement>? groupingIdElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuidePage {
  ObjectBoxImplementationGuidePage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.nameUrl,
    this.nameUrlElement,
    this.nameReference,
    required this.title,
    this.titleElement,
    required this.generation,
    this.generationElement,
    this.page,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? nameUrl;
  ToOne<ObjectBoxElement>? nameUrlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? nameReference = ToOne<ObjectBoxReference>();
  String title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String generation;
  ToOne<ObjectBoxElement>? generationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuidePage>? page =
      ToMany<ObjectBoxImplementationGuidePage>();
}

@Entity()
class ObjectBoxImplementationGuideParameter {
  ObjectBoxImplementationGuideParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideTemplate {
  ObjectBoxImplementationGuideTemplate({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    required this.source,
    this.sourceElement,
    this.scope,
    this.scopeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  String? scope;
  ToOne<ObjectBoxElement>? scopeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideManifest {
  ObjectBoxImplementationGuideManifest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.rendering,
    this.renderingElement,
    required this.resource,
    this.page,
    this.image,
    this.imageElement,
    this.other,
    this.otherElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? rendering;
  ToOne<ObjectBoxElement>? renderingElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxImplementationGuideResource> resource =
      ToMany<ObjectBoxImplementationGuideResource>();
  ToMany<ObjectBoxImplementationGuidePage>? page =
      ToMany<ObjectBoxImplementationGuidePage>();
  List<String>? image;
  ToMany<ObjectBoxElement>? imageElement = ToMany<ObjectBoxElement>();
  List<String>? other;
  ToMany<ObjectBoxElement>? otherElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuideResource1 {
  ObjectBoxImplementationGuideResource1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.relativePath,
    this.relativePathElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  bool? exampleBoolean;
  ToOne<ObjectBoxElement>? exampleBooleanElement = ToOne<ObjectBoxElement>();
  String? exampleCanonical;
  ToOne<ObjectBoxElement>? exampleCanonicalElement = ToOne<ObjectBoxElement>();
  String? relativePath;
  ToOne<ObjectBoxElement>? relativePathElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxImplementationGuidePage1 {
  ObjectBoxImplementationGuidePage1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.anchor,
    this.anchorElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  List<String>? anchor;
  ToMany<ObjectBoxElement>? anchorElement = ToMany<ObjectBoxElement>();
}
