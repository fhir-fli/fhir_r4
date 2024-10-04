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
}


