import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ImplementationGuide extends Resource {
  ImplementationGuide({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.version,
    required this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    required this.packageId,
    this.license,
    required this.fhirVersion,
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
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String url;
  String? version;
  String name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? copyright;
  String packageId;
  String? license;
  List<String> fhirVersion;
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
    this.packageId,
    this.version,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String uri;
  String? packageId;
  String? version;
}

@Entity()
class ImplementationGuideGlobal {
  ImplementationGuideGlobal({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String profile;
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
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? description;
}

@Entity()
class ImplementationGuideResource {
  ImplementationGuideResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.name,
    this.description,
    this.exampleBoolean,
    this.exampleCanonical,
    this.groupingId,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> reference = ToOne<Reference>();
  List<String>? fhirVersion;
  String? name;
  String? description;
  bool? exampleBoolean;
  String? exampleCanonical;
  String? groupingId;
}

@Entity()
class ImplementationGuidePage {
  ImplementationGuidePage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.nameUrl,
    this.nameReference,
    required this.title,
    required this.generation,
    this.page,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? nameUrl;
  ToOne<Reference>? nameReference = ToOne<Reference>();
  String title;
  String generation;
  ToMany<ImplementationGuidePage>? page = ToMany<ImplementationGuidePage>();
}

@Entity()
class ImplementationGuideParameter {
  ImplementationGuideParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String value;
}

@Entity()
class ImplementationGuideTemplate {
  ImplementationGuideTemplate({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    required this.source,
    this.scope,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String source;
  String? scope;
}

@Entity()
class ImplementationGuideManifest {
  ImplementationGuideManifest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.rendering,
    required this.resource,
    this.page,
    this.image,
    this.other,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? rendering;
  ToMany<ImplementationGuideResource> resource =
      ToMany<ImplementationGuideResource>();
  ToMany<ImplementationGuidePage>? page = ToMany<ImplementationGuidePage>();
  List<String>? image;
  List<String>? other;
}

@Entity()
class ImplementationGuideResource1 {
  ImplementationGuideResource1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleCanonical,
    this.relativePath,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference> reference = ToOne<Reference>();
  bool? exampleBoolean;
  String? exampleCanonical;
  String? relativePath;
}

@Entity()
class ImplementationGuidePage1 {
  ImplementationGuidePage1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.title,
    this.anchor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? title;
  List<String>? anchor;
}
