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
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime date;
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
  final FhirCode kind;
  final Element? kindElement;
  final List<FhirCanonical>? instantiates;
  final List<Element>? instantiatesElement;
  final List<FhirCanonical>? imports;
  final List<Element>? importsElement;
  final CapabilityStatementSoftware? software;
  final CapabilityStatementImplementation? implementation;
  final FhirCode fhirVersion;
  final Element? fhirVersionElement;
  final List<FhirCode> format;
  final List<Element>? formatElement;
  final List<FhirCode>? patchFormat;
  final List<Element>? patchFormatElement;
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
  }) : super(resourceType: R4ResourceType.CapabilityStatement);

  @override
  CapabilityStatement clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementSoftware extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirDateTime? releaseDate;
  final Element? releaseDateElement;

  CapabilityStatementSoftware({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
    this.releaseDate,
    this.releaseDateElement,
  });

  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementImplementation extends BackboneElement {
  final FhirString description;
  final Element? descriptionElement;
  final FhirUrl? url;
  final Element? urlElement;
  final Reference? custodian;
  final List<FhirCanonical>? implementationGuide;
  final List<Element>? implementationGuideElement;

  CapabilityStatementImplementation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
    this.custodian,
    this.implementationGuide,
    this.implementationGuideElement,
  });

  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementRest extends BackboneElement {
  final FhirCode mode;
  final Element? modeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final CapabilityStatementSecurity? security;
  final List<CapabilityStatementResource>? resource;
  final List<CapabilityStatementInteraction>? interaction;
  final List<CapabilityStatementSearchParam>? searchParam;
  final List<CapabilityStatementOperation>? operation;
  final List<FhirCanonical>? compartment;
  final List<Element>? compartmentElement;

  CapabilityStatementRest({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementSecurity extends BackboneElement {
  final FhirBoolean? cors;
  final Element? corsElement;
  final List<CodeableConcept>? service;
  final FhirMarkdown? description;
  final Element? descriptionElement;

  CapabilityStatementSecurity({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.cors,
    this.corsElement,
    this.service,
    this.description,
    this.descriptionElement,
  });

  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementResource extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final List<FhirCanonical>? supportedProfile;
  final List<Element>? supportedProfileElement;
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementSearchParam extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirCanonical? definition;
  final Element? definitionElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementSearchParam({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.definition,
    this.definitionElement,
    required this.type,
    this.typeElement,
    this.documentation,
    this.documentationElement,
  });

  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementOperation extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirCanonical definition;
  final Element? definitionElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementOperation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    required this.definition,
    this.definitionElement,
    this.documentation,
    this.documentationElement,
  });

  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementInteraction extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;

  CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementMessaging extends BackboneElement {
  final List<CapabilityStatementEndpoint>? endpoint;
  final FhirUnsignedInt? reliableCache;
  final Element? reliableCacheElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final List<CapabilityStatementSupportedMessage>? supportedMessage;

  CapabilityStatementMessaging({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.endpoint,
    this.reliableCache,
    this.reliableCacheElement,
    this.documentation,
    this.documentationElement,
    this.supportedMessage,
  });

  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementEndpoint extends BackboneElement {
  final Coding protocol;
  final FhirUrl address;
  final Element? addressElement;

  CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    this.addressElement,
  });

  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementSupportedMessage extends BackboneElement {
  final FhirCode mode;
  final Element? modeElement;
  final FhirCanonical definition;
  final Element? definitionElement;

  CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    required this.definition,
    this.definitionElement,
  });

  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CapabilityStatementDocument extends BackboneElement {
  final FhirCode mode;
  final Element? modeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final FhirCanonical profile;
  final Element? profileElement;

  CapabilityStatementDocument({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.documentation,
    this.documentationElement,
    required this.profile,
    this.profileElement,
  });

  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
}
