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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final Identifier identifier;
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
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final String sourceUri;
  final PrimitiveElement sourceUriElement;
  final String sourceCanonical;
  final PrimitiveElement sourceCanonicalElement;
  final String targetUri;
  final PrimitiveElement targetUriElement;
  final String targetCanonical;
  final PrimitiveElement targetCanonicalElement;
  final List<ConceptMapGroup> group;
}

@Data()
@JsonCodable()
class ConceptMapGroup {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri source;
  final PrimitiveElement sourceElement;
  final String sourceVersion;
  final PrimitiveElement sourceVersionElement;
  final FhirUri target;
  final PrimitiveElement targetElement;
  final String targetVersion;
  final PrimitiveElement targetVersionElement;
  final List<ConceptMapElement> element;
  final ConceptMapUnmapped unmapped;
}

@Data()
@JsonCodable()
class ConceptMapElement {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final List<ConceptMapTarget> target;
}

@Data()
@JsonCodable()
class ConceptMapTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final FhirCode equivalence;
  final PrimitiveElement equivalenceElement;
  final String comment;
  final PrimitiveElement commentElement;
  final List<ConceptMapDependsOn> dependsOn;
  final List<ConceptMapDependsOn> product;
}

@Data()
@JsonCodable()
class ConceptMapDependsOn {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri property;
  final PrimitiveElement propertyElement;
  final FhirCanonical system;
  final String value;
  final PrimitiveElement valueElement;
  final String display;
  final PrimitiveElement displayElement;
}

@Data()
@JsonCodable()
class ConceptMapUnmapped {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final FhirCanonical url;
}


