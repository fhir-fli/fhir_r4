import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ImplementationGuide {
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
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirId packageId;
  final PrimitiveElement packageIdElement;
  final FhirCode license;
  final PrimitiveElement licenseElement;
  final List<FhirCode> fhirVersion;
  final List<PrimitiveElement> fhirVersionElement;
  final List<ImplementationGuideDependsOn> dependsOn;
  final List<ImplementationGuideGlobal> global;
  final ImplementationGuideDefinition definition;
  final ImplementationGuideManifest manifest;
  const ImplementationGuide({
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
    required this.copyright,
    required this.copyrightElement,
    required this.packageId,
    required this.packageIdElement,
    required this.license,
    required this.licenseElement,
    required this.fhirVersion,
    required this.fhirVersionElement,
    required this.dependsOn,
    required this.global,
    required this.definition,
    required this.manifest,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideDependsOn {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical uri;
  final FhirId packageId;
  final PrimitiveElement packageIdElement;
  final String version;
  final PrimitiveElement versionElement;
  const ImplementationGuideDependsOn({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.uri,
    required this.packageId,
    required this.packageIdElement,
    required this.version,
    required this.versionElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideGlobal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirCanonical profile;
  const ImplementationGuideGlobal({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.profile,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<ImplementationGuideGrouping> grouping;
  final List<ImplementationGuideResource> resource;
  final ImplementationGuidePage page;
  final List<ImplementationGuideParameter> parameter;
  final List<ImplementationGuideTemplate> template;
  const ImplementationGuideDefinition({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.grouping,
    required this.resource,
    required this.page,
    required this.parameter,
    required this.template,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideGrouping {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  const ImplementationGuideGrouping({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideResource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final List<FhirCode> fhirVersion;
  final List<PrimitiveElement> fhirVersionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final bool exampleBoolean;
  final PrimitiveElement exampleBooleanElement;
  final String exampleCanonical;
  final PrimitiveElement exampleCanonicalElement;
  final FhirId groupingId;
  final PrimitiveElement groupingIdElement;
  const ImplementationGuideResource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.reference,
    required this.fhirVersion,
    required this.fhirVersionElement,
    required this.name,
    required this.nameElement,
    required this.description,
    required this.descriptionElement,
    required this.exampleBoolean,
    required this.exampleBooleanElement,
    required this.exampleCanonical,
    required this.exampleCanonicalElement,
    required this.groupingId,
    required this.groupingIdElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuidePage {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String nameUrl;
  final PrimitiveElement nameUrlElement;
  final Reference nameReference;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode generation;
  final PrimitiveElement generationElement;
  final List<ImplementationGuidePage> page;
  const ImplementationGuidePage({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.nameUrl,
    required this.nameUrlElement,
    required this.nameReference,
    required this.title,
    required this.titleElement,
    required this.generation,
    required this.generationElement,
    required this.page,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String value;
  final PrimitiveElement valueElement;
  const ImplementationGuideParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.value,
    required this.valueElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideTemplate {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String source;
  final PrimitiveElement sourceElement;
  final String scope;
  final PrimitiveElement scopeElement;
  const ImplementationGuideTemplate({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.source,
    required this.sourceElement,
    required this.scope,
    required this.scopeElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideManifest {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUrl rendering;
  final PrimitiveElement renderingElement;
  final List<ImplementationGuideResource1> resource;
  final List<ImplementationGuidePage1> page;
  final List<String> image;
  final List<PrimitiveElement> imageElement;
  final List<String> other;
  final List<PrimitiveElement> otherElement;
  const ImplementationGuideManifest({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.rendering,
    required this.renderingElement,
    required this.resource,
    required this.page,
    required this.image,
    required this.imageElement,
    required this.other,
    required this.otherElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuideResource1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final bool exampleBoolean;
  final PrimitiveElement exampleBooleanElement;
  final String exampleCanonical;
  final PrimitiveElement exampleCanonicalElement;
  final FhirUrl relativePath;
  final PrimitiveElement relativePathElement;
  const ImplementationGuideResource1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.reference,
    required this.exampleBoolean,
    required this.exampleBooleanElement,
    required this.exampleCanonical,
    required this.exampleCanonicalElement,
    required this.relativePath,
    required this.relativePathElement,
  });
}

@Data()
@JsonCodable()
class ImplementationGuidePage1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final List<String> anchor;
  final List<PrimitiveElement> anchorElement;
  const ImplementationGuidePage1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.anchor,
    required this.anchorElement,
  });
}


