import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ImplementationGuide extends DomainResource {
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
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirId? packageId;
  final Element? packageIdElement;
  final FhirCode? license;
  final Element? licenseElement;
  final List<FhirCode>? fhirVersion;
  final List<Element>? fhirVersionElement;
  final List<ImplementationGuideDependsOn>? dependsOn;
  final List<ImplementationGuideGlobal>? global;
  final ImplementationGuideDefinition? definition;
  final ImplementationGuideManifest? manifest;

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
    this.copyright,
    this.copyrightElement,
    this.packageId,
    this.packageIdElement,
    this.license,
    this.licenseElement,
    this.fhirVersion,
    this.fhirVersionElement,
    this.dependsOn,
    this.global,
    this.definition,
    this.manifest,
  }): super(resourceType: R4ResourceType.ImplementationGuide);

@override
ImplementationGuide clone() => this;

}


@Data()
@JsonCodable()
class ImplementationGuideDependsOn {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCanonical uri;
  final FhirId? packageId;
  final Element? packageIdElement;
  final FhirString? version;
  final Element? versionElement;

  ImplementationGuideDependsOn({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.uri,
    this.packageId,
    this.packageIdElement,
    this.version,
    this.versionElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideGlobal {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirCanonical profile;

  ImplementationGuideGlobal({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    required this.profile,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideDefinition {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ImplementationGuideGrouping>? grouping;
  final List<ImplementationGuideResource> resource;
  final ImplementationGuidePage? page;
  final List<ImplementationGuideParameter>? parameter;
  final List<ImplementationGuideTemplate>? template;

  ImplementationGuideDefinition({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.grouping,
    required this.resource,
    this.page,
    this.parameter,
    this.template,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideGrouping {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;

  ImplementationGuideGrouping({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.description,
    this.descriptionElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideResource {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference reference;
  final List<FhirCode>? fhirVersion;
  final List<Element>? fhirVersionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? description;
  final Element? descriptionElement;
  final bool? exampleBoolean;
  final Element? exampleBooleanElement;
  final FhirString? exampleCanonical;
  final Element? exampleCanonicalElement;
  final FhirId? groupingId;
  final Element? groupingIdElement;

  ImplementationGuideResource({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}


@Data()
@JsonCodable()
class ImplementationGuidePage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? nameUrl;
  final Element? nameUrlElement;
  final Reference? nameReference;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? generation;
  final Element? generationElement;
  final List<ImplementationGuidePage>? page;

  ImplementationGuidePage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.nameUrl,
    this.nameUrlElement,
    this.nameReference,
    this.title,
    this.titleElement,
    this.generation,
    this.generationElement,
    this.page,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideParameter {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? value;
  final Element? valueElement;

  ImplementationGuideParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.value,
    this.valueElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideTemplate {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? source;
  final Element? sourceElement;
  final FhirString? scope;
  final Element? scopeElement;

  ImplementationGuideTemplate({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.source,
    this.sourceElement,
    this.scope,
    this.scopeElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideManifest {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUrl? rendering;
  final Element? renderingElement;
  final List<ImplementationGuideResource1> resource;
  final List<ImplementationGuidePage1>? page;
  final List<FhirString>? image;
  final List<Element>? imageElement;
  final List<FhirString>? other;
  final List<Element>? otherElement;

  ImplementationGuideManifest({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.rendering,
    this.renderingElement,
    required this.resource,
    this.page,
    this.image,
    this.imageElement,
    this.other,
    this.otherElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuideResource1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference reference;
  final bool? exampleBoolean;
  final Element? exampleBooleanElement;
  final FhirString? exampleCanonical;
  final Element? exampleCanonicalElement;
  final FhirUrl? relativePath;
  final Element? relativePathElement;

  ImplementationGuideResource1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.reference,
    this.exampleBoolean,
    this.exampleBooleanElement,
    this.exampleCanonical,
    this.exampleCanonicalElement,
    this.relativePath,
    this.relativePathElement,
  });

}


@Data()
@JsonCodable()
class ImplementationGuidePage1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirString>? anchor;
  final List<Element>? anchorElement;

  ImplementationGuidePage1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.anchor,
    this.anchorElement,
  });

}



