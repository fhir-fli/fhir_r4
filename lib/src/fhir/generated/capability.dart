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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirCode kind;
  final PrimitiveElement Kind;
  final List<FhirCanonical> instantiates;
  final List<FhirCanonical> imports;
  final CapabilityStatementSoftware software;
  final CapabilityStatementImplementation implementation;
  final FhirCode fhirVersion;
  final PrimitiveElement FhirVersion;
  final List<FhirCode> format;
  final List<PrimitiveElement> Format;
  final List<FhirCode> patchFormat;
  final List<PrimitiveElement> PatchFormat;
  final List<FhirCanonical> implementationGuide;
  final List<CapabilityStatementRest> rest;
  final List<CapabilityStatementMessaging> messaging;
  final List<CapabilityStatementDocument> document;
}

@Data()
@JsonCodable()
class CapabilityStatementSoftware {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String version;
  final PrimitiveElement Version;
  final FhirDateTime releaseDate;
  final PrimitiveElement ReleaseDate;
}

@Data()
@JsonCodable()
class CapabilityStatementImplementation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String description;
  final PrimitiveElement Description;
  final FhirUrl url;
  final PrimitiveElement Url;
  final Reference custodian;
}

@Data()
@JsonCodable()
class CapabilityStatementRest {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean cors;
  final PrimitiveElement Cors;
  final List<CodeableConcept> service;
  final FhirMarkdown description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class CapabilityStatementResource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical profile;
  final List<FhirCanonical> supportedProfile;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final List<CapabilityStatementInteraction> interaction;
  final FhirCode versioning;
  final PrimitiveElement Versioning;
  final FhirBoolean readHistory;
  final PrimitiveElement ReadHistory;
  final FhirBoolean updateCreate;
  final PrimitiveElement UpdateCreate;
  final FhirBoolean conditionalCreate;
  final PrimitiveElement ConditionalCreate;
  final FhirCode conditionalRead;
  final PrimitiveElement ConditionalRead;
  final FhirBoolean conditionalUpdate;
  final PrimitiveElement ConditionalUpdate;
  final FhirCode conditionalDelete;
  final PrimitiveElement ConditionalDelete;
  final List<FhirCode> referencePolicy;
  final List<PrimitiveElement> ReferencePolicy;
  final List<String> searchInclude;
  final List<PrimitiveElement> SearchInclude;
  final List<String> searchRevInclude;
  final List<PrimitiveElement> SearchRevInclude;
  final List<CapabilityStatementSearchParam> searchParam;
  final List<CapabilityStatementOperation> operation;
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class CapabilityStatementSearchParam {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical definition;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class CapabilityStatementOperation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical definition;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
}

@Data()
@JsonCodable()
class CapabilityStatementMessaging {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CapabilityStatementEndpoint> endpoint;
  final FhirUnsignedInt reliableCache;
  final PrimitiveElement ReliableCache;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final List<CapabilityStatementSupportedMessage> supportedMessage;
}

@Data()
@JsonCodable()
class CapabilityStatementEndpoint {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Coding protocol;
  final FhirUrl address;
  final PrimitiveElement Address;
}

@Data()
@JsonCodable()
class CapabilityStatementSupportedMessage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirCanonical definition;
}

@Data()
@JsonCodable()
class CapabilityStatementDocument {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirMarkdown documentation;
  final PrimitiveElement Documentation;
  final FhirCanonical profile;
}


