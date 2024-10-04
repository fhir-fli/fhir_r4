import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CapabilityStatement {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirCode kind;
  final PrimitiveElement kindElement;
  final List<FhirCanonical> instantiates;
  final List<FhirCanonical> imports;
  final CapabilityStatementSoftware software;
  final CapabilityStatementImplementation implementation;
  final FhirCode fhirVersion;
  final PrimitiveElement fhirVersionElement;
  final List<FhirCode> format;
  final List<PrimitiveElement> formatElement;
  final List<FhirCode> patchFormat;
  final List<PrimitiveElement> patchFormatElement;
  final List<FhirCanonical> implementationGuide;
  final List<CapabilityStatementRest> rest;
  final List<CapabilityStatementMessaging> messaging;
  final List<CapabilityStatementDocument> document;
  const CapabilityStatement({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.kind,
    required this.kindElement,
    required this.instantiates,
    required this.imports,
    required this.software,
    required this.implementation,
    required this.fhirVersion,
    required this.fhirVersionElement,
    required this.format,
    required this.formatElement,
    required this.patchFormat,
    required this.patchFormatElement,
    required this.implementationGuide,
    required this.rest,
    required this.messaging,
    required this.document,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementSoftware {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String version;
  final PrimitiveElement versionElement;
  final FhirDateTime releaseDate;
  final PrimitiveElement releaseDateElement;
  const CapabilityStatementSoftware({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.version,
    required this.versionElement,
    required this.releaseDate,
    required this.releaseDateElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementImplementation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirUrl url;
  final PrimitiveElement urlElement;
  final Reference custodian;
  const CapabilityStatementImplementation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.description,
    required this.descriptionElement,
    required this.url,
    required this.urlElement,
    required this.custodian,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementRest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  final CapabilityStatementSecurity security;
  final List<CapabilityStatementResource> resource;
  final List<CapabilityStatementInteraction1> interaction;
  final List<CapabilityStatementSearchParam> searchParam;
  final List<CapabilityStatementOperation> operation;
  final List<FhirCanonical> compartment;
  const CapabilityStatementRest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.documentation,
    required this.documentationElement,
    required this.security,
    required this.resource,
    required this.interaction,
    required this.searchParam,
    required this.operation,
    required this.compartment,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementSecurity {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean cors;
  final PrimitiveElement corsElement;
  final List<CodeableConcept> service;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  const CapabilityStatementSecurity({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.cors,
    required this.corsElement,
    required this.service,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementResource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCanonical profile;
  final List<FhirCanonical> supportedProfile;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  final List<CapabilityStatementInteraction> interaction;
  final FhirCode versioning;
  final PrimitiveElement versioningElement;
  final FhirBoolean readHistory;
  final PrimitiveElement readHistoryElement;
  final FhirBoolean updateCreate;
  final PrimitiveElement updateCreateElement;
  final FhirBoolean conditionalCreate;
  final PrimitiveElement conditionalCreateElement;
  final FhirCode conditionalRead;
  final PrimitiveElement conditionalReadElement;
  final FhirBoolean conditionalUpdate;
  final PrimitiveElement conditionalUpdateElement;
  final FhirCode conditionalDelete;
  final PrimitiveElement conditionalDeleteElement;
  final List<FhirCode> referencePolicy;
  final List<PrimitiveElement> referencePolicyElement;
  final List<String> searchInclude;
  final List<PrimitiveElement> searchIncludeElement;
  final List<String> searchRevInclude;
  final List<PrimitiveElement> searchRevIncludeElement;
  final List<CapabilityStatementSearchParam> searchParam;
  final List<CapabilityStatementOperation> operation;
  const CapabilityStatementResource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.profile,
    required this.supportedProfile,
    required this.documentation,
    required this.documentationElement,
    required this.interaction,
    required this.versioning,
    required this.versioningElement,
    required this.readHistory,
    required this.readHistoryElement,
    required this.updateCreate,
    required this.updateCreateElement,
    required this.conditionalCreate,
    required this.conditionalCreateElement,
    required this.conditionalRead,
    required this.conditionalReadElement,
    required this.conditionalUpdate,
    required this.conditionalUpdateElement,
    required this.conditionalDelete,
    required this.conditionalDeleteElement,
    required this.referencePolicy,
    required this.referencePolicyElement,
    required this.searchInclude,
    required this.searchIncludeElement,
    required this.searchRevInclude,
    required this.searchRevIncludeElement,
    required this.searchParam,
    required this.operation,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  const CapabilityStatementInteraction({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementSearchParam {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCanonical definition;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  const CapabilityStatementSearchParam({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.definition,
    required this.type,
    required this.typeElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementOperation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCanonical definition;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  const CapabilityStatementOperation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.definition,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  const CapabilityStatementInteraction1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.documentation,
    required this.documentationElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementMessaging {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CapabilityStatementEndpoint> endpoint;
  final FhirUnsignedInt reliableCache;
  final PrimitiveElement reliableCacheElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  final List<CapabilityStatementSupportedMessage> supportedMessage;
  const CapabilityStatementMessaging({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.endpoint,
    required this.reliableCache,
    required this.reliableCacheElement,
    required this.documentation,
    required this.documentationElement,
    required this.supportedMessage,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementEndpoint {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding protocol;
  final FhirUrl address;
  final PrimitiveElement addressElement;
  const CapabilityStatementEndpoint({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.protocol,
    required this.address,
    required this.addressElement,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementSupportedMessage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirCanonical definition;
  const CapabilityStatementSupportedMessage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.definition,
  });
}

@Data()
@JsonCodable()
class CapabilityStatementDocument {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirMarkdown documentation;
  final PrimitiveElement documentationElement;
  final FhirCanonical profile;
  const CapabilityStatementDocument({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.documentation,
    required this.documentationElement,
    required this.profile,
  });
}


