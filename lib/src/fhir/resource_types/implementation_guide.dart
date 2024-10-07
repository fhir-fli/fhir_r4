import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class ImplementationGuide extends DomainResource {
  ImplementationGuide({
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
    required this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
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
    this.copyright,
    this.copyrightElement,
    required this.packageId,
    this.packageIdElement,
    this.license,
    this.licenseElement,
    required this.fhirVersion,
    this.fhirVersionElement,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
  }) : super(resourceType: R4ResourceType.ImplementationGuide);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode status;
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
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirId packageId;
  final Element? packageIdElement;
  final FhirCode? license;
  final Element? licenseElement;
  final List<FhirCode> fhirVersion;
  final List<Element>? fhirVersionElement;
  final List<ImplementationGuideDependsOn>? dependsOn;
  final List<ImplementationGuideGlobal>? global;
  final ImplementationGuideDefinition? definition;
  final ImplementationGuideManifest? manifest;
  @override
  ImplementationGuide clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideDependsOn extends BackboneElement {
  ImplementationGuideDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.uri,
    this.uriElement,
    this.packageId,
    this.packageIdElement,
    this.version,
    this.versionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCanonical uri;
  final Element? uriElement;
  final FhirId? packageId;
  final Element? packageIdElement;
  final FhirString? version;
  final Element? versionElement;
  @override
  ImplementationGuideDependsOn clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideGlobal extends BackboneElement {
  ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.profile,
    this.profileElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirCanonical profile;
  final Element? profileElement;
  @override
  ImplementationGuideGlobal clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideDefinition extends BackboneElement {
  ImplementationGuideDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<ImplementationGuideGrouping>? grouping;
  final List<ImplementationGuideResource> resource;
  final ImplementationGuidePage? page;
  final List<ImplementationGuideParameter>? parameter;
  final List<ImplementationGuideTemplate>? template;
  @override
  ImplementationGuideDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideGrouping extends BackboneElement {
  ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  @override
  ImplementationGuideGrouping clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideResource extends BackboneElement {
  ImplementationGuideResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.fhirVersion,
    this.fhirVersionElement,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.groupingId,
    this.groupingIdElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference reference;
  final List<FhirCode>? fhirVersion;
  final List<Element>? fhirVersionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBoolean? exampleBoolean;
  final Element? exampleBooleanElement;
  final FhirCanonical? exampleCanonical;
  final Element? exampleCanonicalElement;
  final FhirId? groupingId;
  final Element? groupingIdElement;
  @override
  ImplementationGuideResource clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuidePage extends BackboneElement {
  ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nameUrl,
    this.nameUrlElement,
    required this.nameReference,
    required this.title,
    this.titleElement,
    required this.generation,
    this.generationElement,
    this.page,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUrl nameUrl;
  final Element? nameUrlElement;
  final Reference nameReference;
  final FhirString title;
  final Element? titleElement;
  final FhirCode generation;
  final Element? generationElement;
  final List<ImplementationGuidePage>? page;
  @override
  ImplementationGuidePage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideParameter extends BackboneElement {
  ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final FhirString value;
  final Element? valueElement;
  @override
  ImplementationGuideParameter clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideTemplate extends BackboneElement {
  ImplementationGuideTemplate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.source,
    this.sourceElement,
    this.scope,
    this.scopeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final FhirString source;
  final Element? sourceElement;
  final FhirString? scope;
  final Element? scopeElement;
  @override
  ImplementationGuideTemplate clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideManifest extends BackboneElement {
  ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
    this.renderingElement,
    required this.resource,
    this.page,
    this.image,
    this.imageElement,
    this.other,
    this.otherElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUrl? rendering;
  final Element? renderingElement;
  final List<ImplementationGuideResource> resource;
  final List<ImplementationGuidePage>? page;
  final List<FhirString>? image;
  final List<Element>? imageElement;
  final List<FhirString>? other;
  final List<Element>? otherElement;
  @override
  ImplementationGuideManifest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuideResource1 extends BackboneElement {
  ImplementationGuideResource1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.relativePath,
    this.relativePathElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference reference;
  final FhirBoolean? exampleBoolean;
  final Element? exampleBooleanElement;
  final FhirCanonical? exampleCanonical;
  final Element? exampleCanonicalElement;
  final FhirUrl? relativePath;
  final Element? relativePathElement;
  @override
  ImplementationGuideResource1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ImplementationGuidePage1 extends BackboneElement {
  ImplementationGuidePage1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.anchor,
    this.anchorElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirString>? anchor;
  final List<Element>? anchorElement;
  @override
  ImplementationGuidePage1 clone() => throw UnimplementedError();
}
