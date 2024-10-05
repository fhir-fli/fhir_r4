import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class CapabilityStatement extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirCode? kind;
  final Element? kindElement;
  final List<FhirCanonical>? instantiates;
  final List<FhirCanonical>? imports;
  final CapabilityStatementSoftware? software;
  final CapabilityStatementImplementation? implementation;
  final FhirCode? fhirVersion;
  final Element? fhirVersionElement;
  final List<FhirCode>? format;
  final List<Element>? formatElement;
  final List<FhirCode>? patchFormat;
  final List<Element>? patchFormatElement;
  final List<FhirCanonical>? implementationGuide;
  final List<CapabilityStatementRest>? rest;
  final List<CapabilityStatementMessaging>? messaging;
  final List<CapabilityStatementDocument>? document;

  CapabilityStatement({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
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
    this.kind,
    this.kindElement,
    this.instantiates,
    this.imports,
    this.software,
    this.implementation,
    this.fhirVersion,
    this.fhirVersionElement,
    this.format,
    this.formatElement,
    this.patchFormat,
    this.patchFormatElement,
    this.implementationGuide,
    this.rest,
    this.messaging,
    this.document,
  }): super(resourceType: R4ResourceType.CapabilityStatement);

@override
CapabilityStatement clone() => this;

}


@Data()
@JsonCodable()
class CapabilityStatementSoftware {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirDateTime? releaseDate;
  final Element? releaseDateElement;

  CapabilityStatementSoftware({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.version,
    this.versionElement,
    this.releaseDate,
    this.releaseDateElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementImplementation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirUrl? url;
  final Element? urlElement;
  final Reference? custodian;

  CapabilityStatementImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
    this.custodian,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementRest {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final CapabilityStatementSecurity? security;
  final List<CapabilityStatementResource>? resource;
  final List<CapabilityStatementInteraction1>? interaction;
  final List<CapabilityStatementSearchParam>? searchParam;
  final List<CapabilityStatementOperation>? operation;
  final List<FhirCanonical>? compartment;

  CapabilityStatementRest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    this.security,
    this.resource,
    this.interaction,
    this.searchParam,
    this.operation,
    this.compartment,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementSecurity {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? cors;
  final Element? corsElement;
  final List<CodeableConcept>? service;
  final FhirMarkdown? description;
  final Element? descriptionElement;

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

}


@Data()
@JsonCodable()
class CapabilityStatementResource {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirCanonical? profile;
  final List<FhirCanonical>? supportedProfile;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final List<CapabilityStatementInteraction>? interaction;
  final FhirCode? versioning;
  final Element? versioningElement;
  final FhirBoolean? readHistory;
  final Element? readHistoryElement;
  final FhirBoolean? updateCreate;
  final Element? updateCreateElement;
  final FhirBoolean? conditionalCreate;
  final Element? conditionalCreateElement;
  final FhirCode? conditionalRead;
  final Element? conditionalReadElement;
  final FhirBoolean? conditionalUpdate;
  final Element? conditionalUpdateElement;
  final FhirCode? conditionalDelete;
  final Element? conditionalDeleteElement;
  final List<FhirCode>? referencePolicy;
  final List<Element>? referencePolicyElement;
  final List<FhirString>? searchInclude;
  final List<Element>? searchIncludeElement;
  final List<FhirString>? searchRevInclude;
  final List<Element>? searchRevIncludeElement;
  final List<CapabilityStatementSearchParam>? searchParam;
  final List<CapabilityStatementOperation>? operation;

  CapabilityStatementResource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.profile,
    this.supportedProfile,
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

}


@Data()
@JsonCodable()
class CapabilityStatementInteraction {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementInteraction({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementSearchParam {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirCanonical? definition;
  final FhirCode? type;
  final Element? typeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementSearchParam({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.definition,
    this.type,
    this.typeElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementOperation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirCanonical definition;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementOperation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    required this.definition,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementInteraction1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementInteraction1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementMessaging {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CapabilityStatementEndpoint>? endpoint;
  final FhirUnsignedInt? reliableCache;
  final Element? reliableCacheElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final List<CapabilityStatementSupportedMessage>? supportedMessage;

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

}


@Data()
@JsonCodable()
class CapabilityStatementEndpoint {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Coding protocol;
  final FhirUrl? address;
  final Element? addressElement;

  CapabilityStatementEndpoint({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.protocol,
    this.address,
    this.addressElement,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementSupportedMessage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirCanonical definition;

  CapabilityStatementSupportedMessage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    required this.definition,
  });

}


@Data()
@JsonCodable()
class CapabilityStatementDocument {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final FhirCanonical profile;

  CapabilityStatementDocument({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    required this.profile,
  });

}



