import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ImplementationGuideEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ImplementationGuide';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? packageId;

  @ToOne()
  PrimitiveElementEntity? packageIdElement;

  String? license;

  @ToOne()
  PrimitiveElementEntity? licenseElement;

  List<String>? fhirVersion;

  @ToMany()
  List<PrimitiveElementEntity>? fhirVersionElement;

  @ToMany()
  List<ImplementationGuideDependsOnEntity>? dependsOn;

  @ToMany()
  List<ImplementationGuideGlobalEntity>? global;

  @ToOne()
  ImplementationGuideDefinitionEntity? definition;

  @ToOne()
  ImplementationGuideManifestEntity? manifest;
}

class ImplementationGuideDependsOnEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? uri;

  String? packageId;

  @ToOne()
  PrimitiveElementEntity? packageIdElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;
}

class ImplementationGuideGlobalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? profile;
}

class ImplementationGuideDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ImplementationGuideGroupingEntity>? grouping;

  @ToMany()
  List<ImplementationGuideResourceEntity>? resource;

  @ToOne()
  ImplementationGuidePageEntity? page;

  @ToMany()
  List<ImplementationGuideParameterEntity>? parameter;

  @ToMany()
  List<ImplementationGuideTemplateEntity>? template;
}

class ImplementationGuideGroupingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class ImplementationGuideResourceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? reference;

  List<String>? fhirVersion;

  @ToMany()
  List<PrimitiveElementEntity>? fhirVersionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  bool? exampleBoolean;

  @ToOne()
  PrimitiveElementEntity? exampleBooleanElement;

  String? exampleCanonical;

  @ToOne()
  PrimitiveElementEntity? exampleCanonicalElement;

  String? groupingId;

  @ToOne()
  PrimitiveElementEntity? groupingIdElement;
}

class ImplementationGuidePageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? nameUrl;

  @ToOne()
  PrimitiveElementEntity? nameUrlElement;

  @ToOne()
  ReferenceEntity? nameReference;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? generation;

  @ToOne()
  PrimitiveElementEntity? generationElement;

  @ToMany()
  List<ImplementationGuidePageEntity>? page;
}

class ImplementationGuideParameterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class ImplementationGuideTemplateEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? source;

  @ToOne()
  PrimitiveElementEntity? sourceElement;

  String? scope;

  @ToOne()
  PrimitiveElementEntity? scopeElement;
}

class ImplementationGuideManifestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? rendering;

  @ToOne()
  PrimitiveElementEntity? renderingElement;

  @ToMany()
  List<ImplementationGuideResource1Entity>? resource;

  @ToMany()
  List<ImplementationGuidePage1Entity>? page;

  List<String>? image;

  @ToMany()
  List<PrimitiveElementEntity>? imageElement;

  List<String>? other;

  @ToMany()
  List<PrimitiveElementEntity>? otherElement;
}

class ImplementationGuideResource1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? reference;

  bool? exampleBoolean;

  @ToOne()
  PrimitiveElementEntity? exampleBooleanElement;

  String? exampleCanonical;

  @ToOne()
  PrimitiveElementEntity? exampleCanonicalElement;

  String? relativePath;

  @ToOne()
  PrimitiveElementEntity? relativePathElement;
}

class ImplementationGuidePage1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  List<String>? anchor;

  @ToMany()
  List<PrimitiveElementEntity>? anchorElement;
}
