import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImplementationGuide extends DomainResource {
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
  final List<BackboneElement>? dependsOn;
  final List<BackboneElement>? global;
  final BackboneElement? definition;
  final List<BackboneElement>? grouping;
  final List<BackboneElement> resource;
  final BackboneElement? page;
  final List<BackboneElement>? parameter;
  final List<BackboneElement>? template;
  final BackboneElement? manifest;
  final List<BackboneElement> resource;
  final List<BackboneElement>? page;

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
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
    this.manifest,
    required this.resource,
    this.page,
  }) : super(resourceType: R4ResourceType.ImplementationGuide);

@override
ImplementationGuide clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideDependsOn extends BackboneElement {
  final FhirCanonical uri;
  final Element? uriElement;
  final FhirId? packageId;
  final Element? packageIdElement;
  final FhirString? version;
  final Element? versionElement;

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

@override
ImplementationGuideDependsOn clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideGlobal extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final FhirCanonical profile;
  final Element? profileElement;

  ImplementationGuideGlobal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    required this.profile,
this.profileElement,
  });

@override
ImplementationGuideGlobal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideDefinition extends BackboneElement {

  ImplementationGuideDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
  });

@override
ImplementationGuideDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideGrouping extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;

  ImplementationGuideGrouping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
this.nameElement,
    this.description,
this.descriptionElement,
  });

@override
ImplementationGuideGrouping clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideResource extends BackboneElement {
  final Reference reference;
  final List<FhirCode>? fhirVersion;
  final List<Element>? fhirVersionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirBoolean? exampleFhirBoolean;
  final Element? exampleFhirBooleanElement;
  final FhirCanonical? exampleFhirCanonical;
  final Element? exampleFhirCanonicalElement;
  final FhirId? groupingId;
  final Element? groupingIdElement;

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
    this.exampleFhirBoolean,
this.exampleFhirBooleanElement,
    this.exampleFhirCanonical,
this.exampleFhirCanonicalElement,
    this.groupingId,
this.groupingIdElement,
  });

@override
ImplementationGuideResource clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuidePage extends BackboneElement {
  final FhirUrl nameFhirUrl;
  final Element? nameFhirUrlElement;
  final Reference nameReference;
  final FhirString title;
  final Element? titleElement;
  final FhirCode generation;
  final Element? generationElement;
  final List<dynamic>? page;

  ImplementationGuidePage({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.nameFhirUrl,
this.nameFhirUrlElement,
    required this.nameReference,
    required this.title,
this.titleElement,
    required this.generation,
this.generationElement,
    this.page,
  });

@override
ImplementationGuidePage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideParameter extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirString value;
  final Element? valueElement;

  ImplementationGuideParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    required this.value,
this.valueElement,
  });

@override
ImplementationGuideParameter clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideTemplate extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final FhirString source;
  final Element? sourceElement;
  final FhirString? scope;
  final Element? scopeElement;

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

@override
ImplementationGuideTemplate clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideManifest extends BackboneElement {
  final FhirUrl? rendering;
  final Element? renderingElement;
  final List<FhirString>? image;
  final List<Element>? imageElement;
  final List<FhirString>? other;
  final List<Element>? otherElement;

  ImplementationGuideManifest({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.rendering,
this.renderingElement,
    this.image,
this.imageElement,
    this.other,
this.otherElement,
  });

@override
ImplementationGuideManifest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuideResource extends BackboneElement {
  final Reference reference;
  final FhirBoolean? exampleFhirBoolean;
  final Element? exampleFhirBooleanElement;
  final FhirCanonical? exampleFhirCanonical;
  final Element? exampleFhirCanonicalElement;
  final FhirUrl? relativePath;
  final Element? relativePathElement;

  ImplementationGuideResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.reference,
    this.exampleFhirBoolean,
this.exampleFhirBooleanElement,
    this.exampleFhirCanonical,
this.exampleFhirCanonicalElement,
    this.relativePath,
this.relativePathElement,
  });

@override
ImplementationGuideResource clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ImplementationGuidePage extends BackboneElement {
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirString>? anchor;
  final List<Element>? anchorElement;

  ImplementationGuidePage({
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

@override
ImplementationGuidePage clone() => throw UnimplementedError();
}

