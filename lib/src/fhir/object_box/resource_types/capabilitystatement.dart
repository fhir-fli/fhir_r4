import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class CapabilityStatement extends Resource {
  CapabilityStatement({
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
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    required this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    required this.kind,
    this.kindElement,
    this.instantiates,
    this.instantiatesElement,
    this.imports,
    this.importsElement,
    this.software,
    this.implementation,
    required this.fhirVersion,
    this.fhirVersionElement,
    required this.format,
    this.formatElement,
    this.patchFormat,
    this.patchFormatElement,
    this.rest,
    this.messaging,
    this.document,
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
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String kind;
  ToOne<Element>? kindElement = ToOne<Element>();
  List<String>? instantiates;
  ToMany<Element>? instantiatesElement = ToMany<Element>();
  List<String>? imports;
  ToMany<Element>? importsElement = ToMany<Element>();
  ToOne<CapabilityStatementSoftware>? software =
      ToOne<CapabilityStatementSoftware>();
  ToOne<CapabilityStatementImplementation>? implementation =
      ToOne<CapabilityStatementImplementation>();
  String fhirVersion;
  ToOne<Element>? fhirVersionElement = ToOne<Element>();
  List<String> format;
  ToMany<Element>? formatElement = ToMany<Element>();
  List<String>? patchFormat;
  ToMany<Element>? patchFormatElement = ToMany<Element>();
  ToMany<CapabilityStatementRest>? rest = ToMany<CapabilityStatementRest>();
  ToMany<CapabilityStatementMessaging>? messaging =
      ToMany<CapabilityStatementMessaging>();
  ToMany<CapabilityStatementDocument>? document =
      ToMany<CapabilityStatementDocument>();
}

@Entity()
class CapabilityStatementSoftware {
  CapabilityStatementSoftware({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
    this.releaseDate,
    this.releaseDateElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? releaseDate;
  ToOne<Element>? releaseDateElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementImplementation {
  CapabilityStatementImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
    this.custodian,
    this.implementationGuide,
    this.implementationGuideElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToOne<Reference>? custodian = ToOne<Reference>();
  List<String>? implementationGuide;
  ToMany<Element>? implementationGuideElement = ToMany<Element>();
}

@Entity()
class CapabilityStatementRest {
  CapabilityStatementRest({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
    this.compartmentElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  ToOne<Element>? modeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  ToOne<CapabilityStatementSecurity>? security =
      ToOne<CapabilityStatementSecurity>();
  ToMany<CapabilityStatementResource>? resource =
      ToMany<CapabilityStatementResource>();
  ToMany<CapabilityStatementInteraction>? interaction =
      ToMany<CapabilityStatementInteraction>();
  ToMany<CapabilityStatementSearchParam>? searchParam =
      ToMany<CapabilityStatementSearchParam>();
  ToMany<CapabilityStatementOperation>? operation =
      ToMany<CapabilityStatementOperation>();
  List<String>? compartment;
  ToMany<Element>? compartmentElement = ToMany<Element>();
}

@Entity()
class CapabilityStatementSecurity {
  CapabilityStatementSecurity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.cors,
    this.corsElement,
    this.service,
    this.description,
    this.descriptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? cors;
  ToOne<Element>? corsElement = ToOne<Element>();
  ToMany<CodeableConcept>? service = ToMany<CodeableConcept>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementResource {
  CapabilityStatementResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.profile,
    this.profileElement,
    this.supportedProfile,
    this.supportedProfileElement,
    this.documentation,
    this.documentationElement,
    this.interaction,
    this.versioning,
    this.versioningElement,
    this.readHistory,
    this.readHistoryElement,
    this.updateCreate,
    this.updateCreateElement,
    this.conditionalCreate,
    this.conditionalCreateElement,
    this.conditionalRead,
    this.conditionalReadElement,
    this.conditionalUpdate,
    this.conditionalUpdateElement,
    this.conditionalDelete,
    this.conditionalDeleteElement,
    this.referencePolicy,
    this.referencePolicyElement,
    this.searchInclude,
    this.searchIncludeElement,
    this.searchRevInclude,
    this.searchRevIncludeElement,
    this.searchParam,
    this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? profile;
  ToOne<Element>? profileElement = ToOne<Element>();
  List<String>? supportedProfile;
  ToMany<Element>? supportedProfileElement = ToMany<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  ToMany<CapabilityStatementInteraction>? interaction =
      ToMany<CapabilityStatementInteraction>();
  String? versioning;
  ToOne<Element>? versioningElement = ToOne<Element>();
  bool? readHistory;
  ToOne<Element>? readHistoryElement = ToOne<Element>();
  bool? updateCreate;
  ToOne<Element>? updateCreateElement = ToOne<Element>();
  bool? conditionalCreate;
  ToOne<Element>? conditionalCreateElement = ToOne<Element>();
  String? conditionalRead;
  ToOne<Element>? conditionalReadElement = ToOne<Element>();
  bool? conditionalUpdate;
  ToOne<Element>? conditionalUpdateElement = ToOne<Element>();
  String? conditionalDelete;
  ToOne<Element>? conditionalDeleteElement = ToOne<Element>();
  List<String>? referencePolicy;
  ToMany<Element>? referencePolicyElement = ToMany<Element>();
  List<String>? searchInclude;
  ToMany<Element>? searchIncludeElement = ToMany<Element>();
  List<String>? searchRevInclude;
  ToMany<Element>? searchRevIncludeElement = ToMany<Element>();
  ToMany<CapabilityStatementSearchParam>? searchParam =
      ToMany<CapabilityStatementSearchParam>();
  ToMany<CapabilityStatementOperation>? operation =
      ToMany<CapabilityStatementOperation>();
}

@Entity()
class CapabilityStatementInteraction {
  CapabilityStatementInteraction({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementSearchParam {
  CapabilityStatementSearchParam({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.definition,
    this.definitionElement,
    required this.type,
    this.typeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
  String type;
  ToOne<Element>? typeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementOperation {
  CapabilityStatementOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    required this.definition,
    this.definitionElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementInteraction1 {
  CapabilityStatementInteraction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementMessaging {
  CapabilityStatementMessaging({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.reliableCacheElement,
    this.documentation,
    this.documentationElement,
    this.supportedMessage,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CapabilityStatementEndpoint>? endpoint =
      ToMany<CapabilityStatementEndpoint>();
  int? reliableCache;
  ToOne<Element>? reliableCacheElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  ToMany<CapabilityStatementSupportedMessage>? supportedMessage =
      ToMany<CapabilityStatementSupportedMessage>();
}

@Entity()
class CapabilityStatementEndpoint {
  CapabilityStatementEndpoint({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.protocol,
    required this.address,
    this.addressElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding> protocol = ToOne<Coding>();
  String address;
  ToOne<Element>? addressElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementSupportedMessage {
  CapabilityStatementSupportedMessage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.modeElement,
    required this.definition,
    this.definitionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  ToOne<Element>? modeElement = ToOne<Element>();
  String definition;
  ToOne<Element>? definitionElement = ToOne<Element>();
}

@Entity()
class CapabilityStatementDocument {
  CapabilityStatementDocument({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    required this.profile,
    this.profileElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  ToOne<Element>? modeElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
  String profile;
  ToOne<Element>? profileElement = ToOne<Element>();
}
