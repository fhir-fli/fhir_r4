import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CapabilityStatementEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CapabilityStatement';

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

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  List<String>? instantiates;

  List<String>? imports;

  @ToOne()
  CapabilityStatementSoftwareEntity? software;

  @ToOne()
  CapabilityStatementImplementationEntity? implementation;

  String? fhirVersion;

  @ToOne()
  PrimitiveElementEntity? fhirVersionElement;

  List<String>? format;

  @ToMany()
  List<PrimitiveElementEntity>? formatElement;

  List<String>? patchFormat;

  @ToMany()
  List<PrimitiveElementEntity>? patchFormatElement;

  List<String>? implementationGuide;

  @ToMany()
  List<CapabilityStatementRestEntity>? rest;

  @ToMany()
  List<CapabilityStatementMessagingEntity>? messaging;

  @ToMany()
  List<CapabilityStatementDocumentEntity>? document;
}

class CapabilityStatementSoftwareEntity {
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

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? releaseDate;

  @ToOne()
  PrimitiveElementEntity? releaseDateElement;
}

class CapabilityStatementImplementationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToOne()
  ReferenceEntity? custodian;
}

class CapabilityStatementRestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  @ToOne()
  CapabilityStatementSecurityEntity? security;

  @ToMany()
  List<CapabilityStatementResourceEntity>? resource;

  @ToMany()
  List<CapabilityStatementInteraction1Entity>? interaction;

  @ToMany()
  List<CapabilityStatementSearchParamEntity>? searchParam;

  @ToMany()
  List<CapabilityStatementOperationEntity>? operation;

  List<String>? compartment;
}

class CapabilityStatementSecurityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? cors;

  @ToOne()
  PrimitiveElementEntity? corsElement;

  @ToMany()
  List<CodeableConceptEntity>? service;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

class CapabilityStatementResourceEntity {
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

  List<String>? supportedProfile;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  @ToMany()
  List<CapabilityStatementInteractionEntity>? interaction;

  String? versioning;

  @ToOne()
  PrimitiveElementEntity? versioningElement;

  bool? readHistory;

  @ToOne()
  PrimitiveElementEntity? readHistoryElement;

  bool? updateCreate;

  @ToOne()
  PrimitiveElementEntity? updateCreateElement;

  bool? conditionalCreate;

  @ToOne()
  PrimitiveElementEntity? conditionalCreateElement;

  String? conditionalRead;

  @ToOne()
  PrimitiveElementEntity? conditionalReadElement;

  bool? conditionalUpdate;

  @ToOne()
  PrimitiveElementEntity? conditionalUpdateElement;

  String? conditionalDelete;

  @ToOne()
  PrimitiveElementEntity? conditionalDeleteElement;

  List<String>? referencePolicy;

  @ToMany()
  List<PrimitiveElementEntity>? referencePolicyElement;

  List<String>? searchInclude;

  @ToMany()
  List<PrimitiveElementEntity>? searchIncludeElement;

  List<String>? searchRevInclude;

  @ToMany()
  List<PrimitiveElementEntity>? searchRevIncludeElement;

  @ToMany()
  List<CapabilityStatementSearchParamEntity>? searchParam;

  @ToMany()
  List<CapabilityStatementOperationEntity>? operation;
}

class CapabilityStatementInteractionEntity {
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

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class CapabilityStatementSearchParamEntity {
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

  String? definition;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class CapabilityStatementOperationEntity {
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

  String? definition;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class CapabilityStatementInteraction1Entity {
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

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class CapabilityStatementMessagingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CapabilityStatementEndpointEntity>? endpoint;

  int? reliableCache;

  @ToOne()
  PrimitiveElementEntity? reliableCacheElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  @ToMany()
  List<CapabilityStatementSupportedMessageEntity>? supportedMessage;
}

class CapabilityStatementEndpointEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodingEntity? protocol;

  String? address;

  @ToOne()
  PrimitiveElementEntity? addressElement;
}

class CapabilityStatementSupportedMessageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? definition;
}

class CapabilityStatementDocumentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  String? profile;
}
