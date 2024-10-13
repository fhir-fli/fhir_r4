// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCapabilityStatement {
  ObjectBoxCapabilityStatement({
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
    required this.date,
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
    required this.kind,
    ObjectBoxElement? kindElement,
    this.instantiates,
    List<ObjectBoxElement>? instantiatesElement,
    this.imports,
    List<ObjectBoxElement>? importsElement,
    ObjectBoxCapabilityStatementSoftware? software,
    ObjectBoxCapabilityStatementImplementation? implementation,
    required this.fhirVersion,
    ObjectBoxElement? fhirVersionElement,
    required this.format,
    List<ObjectBoxElement>? formatElement,
    this.patchFormat,
    List<ObjectBoxElement>? patchFormatElement,
    List<ObjectBoxCapabilityStatementRest>? rest,
    List<ObjectBoxCapabilityStatementMessaging>? messaging,
    List<ObjectBoxCapabilityStatementDocument>? document,
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
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.kindElement.target = kindElement;
    this.instantiatesElement.addAll(instantiatesElement ?? []);
    this.importsElement.addAll(importsElement ?? []);
    this.software.target = software;
    this.implementation.target = implementation;
    this.fhirVersionElement.target = fhirVersionElement;
    this.formatElement.addAll(formatElement ?? []);
    this.patchFormatElement.addAll(patchFormatElement ?? []);
    this.rest.addAll(rest ?? []);
    this.messaging.addAll(messaging ?? []);
    this.document.addAll(document ?? []);
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
  String date;
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
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  List<String>? instantiates;
  ToMany<ObjectBoxElement> instantiatesElement = ToMany<ObjectBoxElement>();
  List<String>? imports;
  ToMany<ObjectBoxElement> importsElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCapabilityStatementSoftware> software =
      ToOne<ObjectBoxCapabilityStatementSoftware>();
  ToOne<ObjectBoxCapabilityStatementImplementation> implementation =
      ToOne<ObjectBoxCapabilityStatementImplementation>();
  String fhirVersion;
  ToOne<ObjectBoxElement> fhirVersionElement = ToOne<ObjectBoxElement>();
  List<String> format;
  ToMany<ObjectBoxElement> formatElement = ToMany<ObjectBoxElement>();
  List<String>? patchFormat;
  ToMany<ObjectBoxElement> patchFormatElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementRest> rest =
      ToMany<ObjectBoxCapabilityStatementRest>();
  ToMany<ObjectBoxCapabilityStatementMessaging> messaging =
      ToMany<ObjectBoxCapabilityStatementMessaging>();
  ToMany<ObjectBoxCapabilityStatementDocument> document =
      ToMany<ObjectBoxCapabilityStatementDocument>();
}

@Entity()
class ObjectBoxCapabilityStatementSoftware {
  ObjectBoxCapabilityStatementSoftware({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.version,
    ObjectBoxElement? versionElement,
    this.releaseDate,
    ObjectBoxElement? releaseDateElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.versionElement.target = versionElement;
    this.releaseDateElement.target = releaseDateElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? releaseDate;
  ToOne<ObjectBoxElement> releaseDateElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementImplementation {
  ObjectBoxCapabilityStatementImplementation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.description,
    ObjectBoxElement? descriptionElement,
    this.url,
    ObjectBoxElement? urlElement,
    ObjectBoxReference? custodian,
    this.implementationGuide,
    List<ObjectBoxElement>? implementationGuideElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.urlElement.target = urlElement;
    this.custodian.target = custodian;
    this.implementationGuideElement.addAll(implementationGuideElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> custodian = ToOne<ObjectBoxReference>();
  List<String>? implementationGuide;
  ToMany<ObjectBoxElement> implementationGuideElement =
      ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementRest {
  ObjectBoxCapabilityStatementRest({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    ObjectBoxCapabilityStatementSecurity? security,
    List<ObjectBoxCapabilityStatementResource>? resource,
    List<ObjectBoxCapabilityStatementInteraction>? interaction,
    List<ObjectBoxCapabilityStatementSearchParam>? searchParam,
    List<ObjectBoxCapabilityStatementOperation>? operation,
    this.compartment,
    List<ObjectBoxElement>? compartmentElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.documentationElement.target = documentationElement;
    this.security.target = security;
    this.resource.addAll(resource ?? []);
    this.interaction.addAll(interaction ?? []);
    this.searchParam.addAll(searchParam ?? []);
    this.operation.addAll(operation ?? []);
    this.compartmentElement.addAll(compartmentElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCapabilityStatementSecurity> security =
      ToOne<ObjectBoxCapabilityStatementSecurity>();
  ToMany<ObjectBoxCapabilityStatementResource> resource =
      ToMany<ObjectBoxCapabilityStatementResource>();
  ToMany<ObjectBoxCapabilityStatementInteraction> interaction =
      ToMany<ObjectBoxCapabilityStatementInteraction>();
  ToMany<ObjectBoxCapabilityStatementSearchParam> searchParam =
      ToMany<ObjectBoxCapabilityStatementSearchParam>();
  ToMany<ObjectBoxCapabilityStatementOperation> operation =
      ToMany<ObjectBoxCapabilityStatementOperation>();
  List<String>? compartment;
  ToMany<ObjectBoxElement> compartmentElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSecurity {
  ObjectBoxCapabilityStatementSecurity({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.cors,
    ObjectBoxElement? corsElement,
    List<ObjectBoxCodeableConcept>? service,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.corsElement.target = corsElement;
    this.service.addAll(service ?? []);
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? cors;
  ToOne<ObjectBoxElement> corsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> service = ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementResource {
  ObjectBoxCapabilityStatementResource({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    this.profile,
    ObjectBoxElement? profileElement,
    this.supportedProfile,
    List<ObjectBoxElement>? supportedProfileElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    List<ObjectBoxCapabilityStatementInteraction>? interaction,
    this.versioning,
    ObjectBoxElement? versioningElement,
    this.readHistory,
    ObjectBoxElement? readHistoryElement,
    this.updateCreate,
    ObjectBoxElement? updateCreateElement,
    this.conditionalCreate,
    ObjectBoxElement? conditionalCreateElement,
    this.conditionalRead,
    ObjectBoxElement? conditionalReadElement,
    this.conditionalUpdate,
    ObjectBoxElement? conditionalUpdateElement,
    this.conditionalDelete,
    ObjectBoxElement? conditionalDeleteElement,
    this.referencePolicy,
    List<ObjectBoxElement>? referencePolicyElement,
    this.searchInclude,
    List<ObjectBoxElement>? searchIncludeElement,
    this.searchRevInclude,
    List<ObjectBoxElement>? searchRevIncludeElement,
    List<ObjectBoxCapabilityStatementSearchParam>? searchParam,
    List<ObjectBoxCapabilityStatementOperation>? operation,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.profileElement.target = profileElement;
    this.supportedProfileElement.addAll(supportedProfileElement ?? []);
    this.documentationElement.target = documentationElement;
    this.interaction.addAll(interaction ?? []);
    this.versioningElement.target = versioningElement;
    this.readHistoryElement.target = readHistoryElement;
    this.updateCreateElement.target = updateCreateElement;
    this.conditionalCreateElement.target = conditionalCreateElement;
    this.conditionalReadElement.target = conditionalReadElement;
    this.conditionalUpdateElement.target = conditionalUpdateElement;
    this.conditionalDeleteElement.target = conditionalDeleteElement;
    this.referencePolicyElement.addAll(referencePolicyElement ?? []);
    this.searchIncludeElement.addAll(searchIncludeElement ?? []);
    this.searchRevIncludeElement.addAll(searchRevIncludeElement ?? []);
    this.searchParam.addAll(searchParam ?? []);
    this.operation.addAll(operation ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
  List<String>? supportedProfile;
  ToMany<ObjectBoxElement> supportedProfileElement = ToMany<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementInteraction> interaction =
      ToMany<ObjectBoxCapabilityStatementInteraction>();
  String? versioning;
  ToOne<ObjectBoxElement> versioningElement = ToOne<ObjectBoxElement>();
  bool? readHistory;
  ToOne<ObjectBoxElement> readHistoryElement = ToOne<ObjectBoxElement>();
  bool? updateCreate;
  ToOne<ObjectBoxElement> updateCreateElement = ToOne<ObjectBoxElement>();
  bool? conditionalCreate;
  ToOne<ObjectBoxElement> conditionalCreateElement = ToOne<ObjectBoxElement>();
  String? conditionalRead;
  ToOne<ObjectBoxElement> conditionalReadElement = ToOne<ObjectBoxElement>();
  bool? conditionalUpdate;
  ToOne<ObjectBoxElement> conditionalUpdateElement = ToOne<ObjectBoxElement>();
  String? conditionalDelete;
  ToOne<ObjectBoxElement> conditionalDeleteElement = ToOne<ObjectBoxElement>();
  List<String>? referencePolicy;
  ToMany<ObjectBoxElement> referencePolicyElement = ToMany<ObjectBoxElement>();
  List<String>? searchInclude;
  ToMany<ObjectBoxElement> searchIncludeElement = ToMany<ObjectBoxElement>();
  List<String>? searchRevInclude;
  ToMany<ObjectBoxElement> searchRevIncludeElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementSearchParam> searchParam =
      ToMany<ObjectBoxCapabilityStatementSearchParam>();
  ToMany<ObjectBoxCapabilityStatementOperation> operation =
      ToMany<ObjectBoxCapabilityStatementOperation>();
}

@Entity()
class ObjectBoxCapabilityStatementInteraction {
  ObjectBoxCapabilityStatementInteraction({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSearchParam {
  ObjectBoxCapabilityStatementSearchParam({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.definition,
    ObjectBoxElement? definitionElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.definitionElement.target = definitionElement;
    this.typeElement.target = typeElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementOperation {
  ObjectBoxCapabilityStatementOperation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    required this.definition,
    ObjectBoxElement? definitionElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.definitionElement.target = definitionElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementInteraction1 {
  ObjectBoxCapabilityStatementInteraction1({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementMessaging {
  ObjectBoxCapabilityStatementMessaging({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCapabilityStatementEndpoint>? endpoint,
    this.reliableCache,
    ObjectBoxElement? reliableCacheElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    List<ObjectBoxCapabilityStatementSupportedMessage>? supportedMessage,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.endpoint.addAll(endpoint ?? []);
    this.reliableCacheElement.target = reliableCacheElement;
    this.documentationElement.target = documentationElement;
    this.supportedMessage.addAll(supportedMessage ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCapabilityStatementEndpoint> endpoint =
      ToMany<ObjectBoxCapabilityStatementEndpoint>();
  int? reliableCache;
  ToOne<ObjectBoxElement> reliableCacheElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCapabilityStatementSupportedMessage> supportedMessage =
      ToMany<ObjectBoxCapabilityStatementSupportedMessage>();
}

@Entity()
class ObjectBoxCapabilityStatementEndpoint {
  ObjectBoxCapabilityStatementEndpoint({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCoding? protocol,
    required this.address,
    ObjectBoxElement? addressElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.protocol.target = protocol;
    this.addressElement.target = addressElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCoding> protocol = ToOne<ObjectBoxCoding>();
  String address;
  ToOne<ObjectBoxElement> addressElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementSupportedMessage {
  ObjectBoxCapabilityStatementSupportedMessage({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.mode,
    ObjectBoxElement? modeElement,
    required this.definition,
    ObjectBoxElement? definitionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.definitionElement.target = definitionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String definition;
  ToOne<ObjectBoxElement> definitionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCapabilityStatementDocument {
  ObjectBoxCapabilityStatementDocument({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.mode,
    ObjectBoxElement? modeElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
    required this.profile,
    ObjectBoxElement? profileElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.modeElement.target = modeElement;
    this.documentationElement.target = documentationElement;
    this.profileElement.target = profileElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
  String profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
}
