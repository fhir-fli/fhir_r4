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
}


