import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ImplementationGuide extends Resource {
  ImplementationGuide({
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
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String name;
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
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String packageId;
  ToOne<Element>? packageIdElement = ToOne<Element>();
  String? license;
  ToOne<Element>? licenseElement = ToOne<Element>();
  List<String> fhirVersion;
  ToMany<Element>? fhirVersionElement = ToMany<Element>();
  ToMany<ImplementationGuideDependsOn>? dependsOn =
      ToMany<ImplementationGuideDependsOn>();
  ToMany<ImplementationGuideGlobal>? global =
      ToMany<ImplementationGuideGlobal>();
  ToOne<ImplementationGuideDefinition>? definition =
      ToOne<ImplementationGuideDefinition>();
  ToOne<ImplementationGuideManifest>? manifest =
      ToOne<ImplementationGuideManifest>();
}

@Entity()
class ImplementationGuideDependsOn {
  ImplementationGuideDependsOn({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String uri;
  ToOne<Element>? uriElement = ToOne<Element>();
  String? packageId;
  ToOne<Element>? packageIdElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
}

@Entity()
class ImplementationGuideGlobal {
  ImplementationGuideGlobal({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String profile;
  ToOne<Element>? profileElement = ToOne<Element>();
}

@Entity()
class ImplementationGuideDefinition {
  ImplementationGuideDefinition({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ImplementationGuideGrouping>? grouping =
      ToMany<ImplementationGuideGrouping>();
  ToMany<ImplementationGuideResource> resource =
      ToMany<ImplementationGuideResource>();
  ToOne<ImplementationGuidePage>? page = ToOne<ImplementationGuidePage>();
  ToMany<ImplementationGuideParameter>? parameter =
      ToMany<ImplementationGuideParameter>();
  ToMany<ImplementationGuideTemplate>? template =
      ToMany<ImplementationGuideTemplate>();
}

@Entity()
class ImplementationGuideGrouping {
  ImplementationGuideGrouping({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
}

@Entity()
class ImplementationGuideResource {
  ImplementationGuideResource({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> reference = ToOne<Reference>();
  List<String>? fhirVersion;
  ToMany<Element>? fhirVersionElement = ToMany<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  bool? exampleBoolean;
  ToOne<Element>? exampleBooleanElement = ToOne<Element>();
  String? exampleCanonical;
  ToOne<Element>? exampleCanonicalElement = ToOne<Element>();
  String? groupingId;
  ToOne<Element>? groupingIdElement = ToOne<Element>();
}

@Entity()
class ImplementationGuidePage {
  ImplementationGuidePage({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? nameUrl;
  ToOne<Element>? nameUrlElement = ToOne<Element>();
  ToOne<Reference>? nameReference = ToOne<Reference>();
  String title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String generation;
  ToOne<Element>? generationElement = ToOne<Element>();
  ToMany<ImplementationGuidePage>? page = ToMany<ImplementationGuidePage>();
}

@Entity()
class ImplementationGuideParameter {
  ImplementationGuideParameter({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
}

@Entity()
class ImplementationGuideTemplate {
  ImplementationGuideTemplate({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String source;
  ToOne<Element>? sourceElement = ToOne<Element>();
  String? scope;
  ToOne<Element>? scopeElement = ToOne<Element>();
}

@Entity()
class ImplementationGuideManifest {
  ImplementationGuideManifest({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? rendering;
  ToOne<Element>? renderingElement = ToOne<Element>();
  ToMany<ImplementationGuideResource> resource =
      ToMany<ImplementationGuideResource>();
  ToMany<ImplementationGuidePage>? page = ToMany<ImplementationGuidePage>();
  List<String>? image;
  ToMany<Element>? imageElement = ToMany<Element>();
  List<String>? other;
  ToMany<Element>? otherElement = ToMany<Element>();
}

@Entity()
class ImplementationGuideResource1 {
  ImplementationGuideResource1({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> reference = ToOne<Reference>();
  bool? exampleBoolean;
  ToOne<Element>? exampleBooleanElement = ToOne<Element>();
  String? exampleCanonical;
  ToOne<Element>? exampleCanonicalElement = ToOne<Element>();
  String? relativePath;
  ToOne<Element>? relativePathElement = ToOne<Element>();
}

@Entity()
class ImplementationGuidePage1 {
  ImplementationGuidePage1({
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
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  List<String>? anchor;
  ToMany<Element>? anchorElement = ToMany<Element>();
}
