import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CapabilityStatement extends Resource {
  CapabilityStatement({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.version,
    this.name,
    this.title,
    required this.status,
    this.experimental,
    required this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    required this.kind,
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    required this.fhirVersion,
    required this.format,
    this.patchFormat,
    this.rest,
    this.messaging,
    this.document,
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
  String? url;
  String? version;
  String? name;
  String? title;
  String status;
  bool? experimental;
  String date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String kind;
  List<String>? instantiates;
  List<String>? imports;
  ToOne<CapabilityStatementSoftware>? software =
      ToOne<CapabilityStatementSoftware>();
  ToOne<CapabilityStatementImplementation>? implementation =
      ToOne<CapabilityStatementImplementation>();
  String fhirVersion;
  List<String> format;
  List<String>? patchFormat;
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
    this.version,
    this.releaseDate,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? version;
  String? releaseDate;
}

@Entity()
class CapabilityStatementImplementation {
  CapabilityStatementImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.url,
    this.custodian,
    this.implementationGuide,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String description;
  String? url;
  ToOne<Reference>? custodian = ToOne<Reference>();
  List<String>? implementationGuide;
}

@Entity()
class CapabilityStatementRest {
  CapabilityStatementRest({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.documentation,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  String? documentation;
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
}

@Entity()
class CapabilityStatementSecurity {
  CapabilityStatementSecurity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.cors,
    this.service,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? cors;
  ToMany<CodeableConcept>? service = ToMany<CodeableConcept>();
  String? description;
}

@Entity()
class CapabilityStatementResource {
  CapabilityStatementResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.profile,
    this.supportedProfile,
    this.documentation,
    this.interaction,
    this.versioning,
    this.readHistory,
    this.updateCreate,
    this.conditionalCreate,
    this.conditionalRead,
    this.conditionalUpdate,
    this.conditionalDelete,
    this.referencePolicy,
    this.searchInclude,
    this.searchRevInclude,
    this.searchParam,
    this.operation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String? profile;
  List<String>? supportedProfile;
  String? documentation;
  ToMany<CapabilityStatementInteraction>? interaction =
      ToMany<CapabilityStatementInteraction>();
  String? versioning;
  bool? readHistory;
  bool? updateCreate;
  bool? conditionalCreate;
  String? conditionalRead;
  bool? conditionalUpdate;
  String? conditionalDelete;
  List<String>? referencePolicy;
  List<String>? searchInclude;
  List<String>? searchRevInclude;
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
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? documentation;
}

@Entity()
class CapabilityStatementSearchParam {
  CapabilityStatementSearchParam({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.definition,
    required this.type,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String? definition;
  String type;
  String? documentation;
}

@Entity()
class CapabilityStatementOperation {
  CapabilityStatementOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    required this.definition,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  String definition;
  String? documentation;
}

@Entity()
class CapabilityStatementInteraction1 {
  CapabilityStatementInteraction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.documentation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  String? documentation;
}

@Entity()
class CapabilityStatementMessaging {
  CapabilityStatementMessaging({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.documentation,
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
  String? documentation;
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Coding> protocol = ToOne<Coding>();
  String address;
}

@Entity()
class CapabilityStatementSupportedMessage {
  CapabilityStatementSupportedMessage({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    required this.definition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  String definition;
}

@Entity()
class CapabilityStatementDocument {
  CapabilityStatementDocument({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.documentation,
    required this.profile,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  String? documentation;
  String profile;
}
