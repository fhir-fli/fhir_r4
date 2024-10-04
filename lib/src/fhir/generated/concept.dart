import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ConceptMap {
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
  final Identifier identifier;
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
  final String sourceUri;
  final PrimitiveElement SourceUri;
  final String sourceCanonical;
  final PrimitiveElement SourceCanonical;
  final String targetUri;
  final PrimitiveElement TargetUri;
  final String targetCanonical;
  final PrimitiveElement TargetCanonical;
  final List<ConceptMapGroup> group;
}

@Data()
@JsonCodable()
class ConceptMapGroup {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri source;
  final PrimitiveElement Source;
  final String sourceVersion;
  final PrimitiveElement SourceVersion;
  final FhirUri target;
  final PrimitiveElement Target;
  final String targetVersion;
  final PrimitiveElement TargetVersion;
  final List<ConceptMapElement> element;
  final ConceptMapUnmapped unmapped;
}

@Data()
@JsonCodable()
class ConceptMapElement {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final List<ConceptMapTarget> target;
}

@Data()
@JsonCodable()
class ConceptMapTarget {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirCode equivalence;
  final PrimitiveElement Equivalence;
  final String comment;
  final PrimitiveElement Comment;
  final List<ConceptMapDependsOn> dependsOn;
  final List<ConceptMapDependsOn> product;
}

@Data()
@JsonCodable()
class ConceptMapDependsOn {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri property;
  final PrimitiveElement Property;
  final FhirCanonical system;
  final String value;
  final PrimitiveElement Value;
  final String display;
  final PrimitiveElement Display;
}

@Data()
@JsonCodable()
class ConceptMapUnmapped {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirCode code;
  final PrimitiveElement Code;
  final String display;
  final PrimitiveElement Display;
  final FhirCanonical url;
}


