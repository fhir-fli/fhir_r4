import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class CapabilityStatement extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CapabilityStatement clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementSoftware extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirDateTime? releaseDate;
  final Element? releaseDateElement;
  @override
  CapabilityStatementSoftware clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementImplementation extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString description;
  final Element? descriptionElement;
  final FhirUrl? url;
  final Element? urlElement;
  final Reference? custodian;
  final List<FhirCanonical>? implementationGuide;
  final List<Element>? implementationGuideElement;
  @override
  CapabilityStatementImplementation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementRest extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CapabilityStatementRest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementSecurity extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean? cors;
  final Element? corsElement;
  final List<CodeableConcept>? service;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  @override
  CapabilityStatementSecurity clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementResource extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CapabilityStatementResource clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementInteraction extends BackboneElement {
  CapabilityStatementInteraction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementInteraction clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementSearchParam extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirCanonical? definition;
  final Element? definitionElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementSearchParam clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementOperation extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirCanonical definition;
  final Element? definitionElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementOperation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementInteraction1 extends BackboneElement {
  CapabilityStatementInteraction1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  @override
  CapabilityStatementInteraction1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementMessaging extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CapabilityStatementEndpoint>? endpoint;
  final FhirUnsignedInt? reliableCache;
  final Element? reliableCacheElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final List<CapabilityStatementSupportedMessage>? supportedMessage;
  @override
  CapabilityStatementMessaging clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementEndpoint extends BackboneElement {
  CapabilityStatementEndpoint({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.protocol,
    required this.address,
    this.addressElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Coding protocol;
  final FhirUrl address;
  final Element? addressElement;
  @override
  CapabilityStatementEndpoint clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementSupportedMessage extends BackboneElement {
  CapabilityStatementSupportedMessage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    required this.definition,
    this.definitionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode mode;
  final Element? modeElement;
  final FhirCanonical definition;
  final Element? definitionElement;
  @override
  CapabilityStatementSupportedMessage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CapabilityStatementDocument extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode mode;
  final Element? modeElement;
  final FhirMarkdown? documentation;
  final Element? documentationElement;
  final FhirCanonical profile;
  final Element? profileElement;
  @override
  CapabilityStatementDocument clone() => throw UnimplementedError();
}
