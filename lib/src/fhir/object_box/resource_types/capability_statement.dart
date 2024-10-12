// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCapabilityStatement {
  ObjectBoxCapabilityStatement({
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
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  List<String>? instantiates;
  ToMany<ObjectBoxElement>? instantiatesElement = ToMany<ObjectBoxElement>();
  List<String>? imports;
  ToMany<ObjectBoxElement>? importsElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCapabilityStatementSoftware>? software =
      ToOne<ObjectBoxCapabilityStatementSoftware>();
  ToOne<ObjectBoxCapabilityStatementImplementation>? implementation =
      ToOne<ObjectBoxCapabilityStatementImplementation>();
  String fhirVersion;
  ToOne<ObjectBoxElement>? fhirVersionElement = ToOne<ObjectBoxElement>();
  List<String> format;
  ToMany<ObjectBoxElement>? formatElement = ToMany<ObjectBoxElement>();
  List<String>? patchFormat;
  ToMany<ObjectBoxElement>? patchFormatElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementRest>? rest =
      ToMany<ObjectBoxCapabilityStatementRest>();
  ToMany<ObjectBoxCapabilityStatementMessaging>? messaging =
      ToMany<ObjectBoxCapabilityStatementMessaging>();
  ToMany<ObjectBoxCapabilityStatementDocument>? document =
      ToMany<ObjectBoxCapabilityStatementDocument>();
}

@Entity()
class ObjectBoxCapabilityStatementSoftware {
  ObjectBoxCapabilityStatementSoftware({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? releaseDate;
  ToOne<ObjectBoxElement>? releaseDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementImplementation {
  ObjectBoxCapabilityStatementImplementation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? custodian = ToOne<ObjectBoxReference>();
  List<String>? implementationGuide;
  ToMany<ObjectBoxElement>? implementationGuideElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementRest {
  ObjectBoxCapabilityStatementRest({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCapabilityStatementSecurity>? security =
      ToOne<ObjectBoxCapabilityStatementSecurity>();
  ToMany<ObjectBoxCapabilityStatementResource>? resource =
      ToMany<ObjectBoxCapabilityStatementResource>();
  ToMany<ObjectBoxCapabilityStatementInteraction>? interaction =
      ToMany<ObjectBoxCapabilityStatementInteraction>();
  ToMany<ObjectBoxCapabilityStatementSearchParam>? searchParam =
      ToMany<ObjectBoxCapabilityStatementSearchParam>();
  ToMany<ObjectBoxCapabilityStatementOperation>? operation =
      ToMany<ObjectBoxCapabilityStatementOperation>();
  List<String>? compartment;
  ToMany<ObjectBoxElement>? compartmentElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSecurity {
  ObjectBoxCapabilityStatementSecurity({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? cors;
  ToOne<ObjectBoxElement>? corsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? service =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementResource {
  ObjectBoxCapabilityStatementResource({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
  List<String>? supportedProfile;
  ToMany<ObjectBoxElement>? supportedProfileElement =
      ToMany<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementInteraction>? interaction =
      ToMany<ObjectBoxCapabilityStatementInteraction>();
  String? versioning;
  ToOne<ObjectBoxElement>? versioningElement = ToOne<ObjectBoxElement>();
  bool? readHistory;
  ToOne<ObjectBoxElement>? readHistoryElement = ToOne<ObjectBoxElement>();
  bool? updateCreate;
  ToOne<ObjectBoxElement>? updateCreateElement = ToOne<ObjectBoxElement>();
  bool? conditionalCreate;
  ToOne<ObjectBoxElement>? conditionalCreateElement = ToOne<ObjectBoxElement>();
  String? conditionalRead;
  ToOne<ObjectBoxElement>? conditionalReadElement = ToOne<ObjectBoxElement>();
  bool? conditionalUpdate;
  ToOne<ObjectBoxElement>? conditionalUpdateElement = ToOne<ObjectBoxElement>();
  String? conditionalDelete;
  ToOne<ObjectBoxElement>? conditionalDeleteElement = ToOne<ObjectBoxElement>();
  List<String>? referencePolicy;
  ToMany<ObjectBoxElement>? referencePolicyElement = ToMany<ObjectBoxElement>();
  List<String>? searchInclude;
  ToMany<ObjectBoxElement>? searchIncludeElement = ToMany<ObjectBoxElement>();
  List<String>? searchRevInclude;
  ToMany<ObjectBoxElement>? searchRevIncludeElement =
      ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementSearchParam>? searchParam =
      ToMany<ObjectBoxCapabilityStatementSearchParam>();
  ToMany<ObjectBoxCapabilityStatementOperation>? operation =
      ToMany<ObjectBoxCapabilityStatementOperation>();
}

@Entity()
class ObjectBoxCapabilityStatementInteraction {
  ObjectBoxCapabilityStatementInteraction({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSearchParam {
  ObjectBoxCapabilityStatementSearchParam({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementOperation {
  ObjectBoxCapabilityStatementOperation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementInteraction1 {
  ObjectBoxCapabilityStatementInteraction1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementMessaging {
  ObjectBoxCapabilityStatementMessaging({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCapabilityStatementEndpoint>? endpoint =
      ToMany<ObjectBoxCapabilityStatementEndpoint>();
  int? reliableCache;
  ToOne<ObjectBoxElement>? reliableCacheElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementSupportedMessage>? supportedMessage =
      ToMany<ObjectBoxCapabilityStatementSupportedMessage>();
}

@Entity()
class ObjectBoxCapabilityStatementEndpoint {
  ObjectBoxCapabilityStatementEndpoint({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> protocol = ToOne<ObjectBoxCoding>();
  String address;
  ToOne<ObjectBoxElement>? addressElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSupportedMessage {
  ObjectBoxCapabilityStatementSupportedMessage({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String definition;
  ToOne<ObjectBoxElement>? definitionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementDocument {
  ObjectBoxCapabilityStatementDocument({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
  String profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
}
