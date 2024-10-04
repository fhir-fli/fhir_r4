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
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirId packageId;
  final PrimitiveElement PackageId;
  final FhirCode license;
  final PrimitiveElement License;
  final List<FhirCode> fhirVersion;
  final List<PrimitiveElement> FhirVersion;
  final List<ImplementationGuideDependsOn> dependsOn;
  final List<ImplementationGuideGlobal> global;
  final ImplementationGuideDefinition definition;
  final ImplementationGuideManifest manifest;
}

@Data()
@JsonCodable()
class ImplementationGuideDependsOn {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical uri;
  final FhirId packageId;
  final PrimitiveElement PackageId;
  final String version;
  final PrimitiveElement Version;
}

@Data()
@JsonCodable()
class ImplementationGuideGlobal {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical profile;
}

@Data()
@JsonCodable()
class ImplementationGuideDefinition {
  final String id;
  final List<FhirExtension> extension;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
}

@Data()
@JsonCodable()
class ImplementationGuideResource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final List<FhirCode> fhirVersion;
  final List<PrimitiveElement> FhirVersion;
  final String name;
  final PrimitiveElement Name;
  final String description;
  final PrimitiveElement Description;
  final bool exampleBoolean;
  final PrimitiveElement ExampleBoolean;
  final String exampleCanonical;
  final PrimitiveElement ExampleCanonical;
  final FhirId groupingId;
  final PrimitiveElement GroupingId;
}

@Data()
@JsonCodable()
class ImplementationGuidePage {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String nameUrl;
  final PrimitiveElement NameUrl;
  final Reference nameReference;
  final String title;
  final PrimitiveElement Title;
  final FhirCode generation;
  final PrimitiveElement Generation;
  final List<ImplementationGuidePage> page;
}

@Data()
@JsonCodable()
class ImplementationGuideParameter {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String value;
  final PrimitiveElement Value;
}

@Data()
@JsonCodable()
class ImplementationGuideTemplate {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String source;
  final PrimitiveElement Source;
  final String scope;
  final PrimitiveElement Scope;
}

@Data()
@JsonCodable()
class ImplementationGuideManifest {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUrl rendering;
  final PrimitiveElement Rendering;
  final List<ImplementationGuideResource1> resource;
  final List<ImplementationGuidePage1> page;
  final List<String> image;
  final List<PrimitiveElement> Image;
  final List<String> other;
  final List<PrimitiveElement> Other;
}

@Data()
@JsonCodable()
class ImplementationGuideResource1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final bool exampleBoolean;
  final PrimitiveElement ExampleBoolean;
  final String exampleCanonical;
  final PrimitiveElement ExampleCanonical;
  final FhirUrl relativePath;
  final PrimitiveElement RelativePath;
}

@Data()
@JsonCodable()
class ImplementationGuidePage1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final List<String> anchor;
  final List<PrimitiveElement> Anchor;
}


