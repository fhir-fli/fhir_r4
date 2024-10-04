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
  const ConceptMap({
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
    required this.identifier,
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
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.sourceUri,
    required this.sourceUriElement,
    required this.sourceCanonical,
    required this.sourceCanonicalElement,
    required this.targetUri,
    required this.targetUriElement,
    required this.targetCanonical,
    required this.targetCanonicalElement,
    required this.group,
  });
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
  const ConceptMapGroup({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.source,
    required this.sourceElement,
    required this.sourceVersion,
    required this.sourceVersionElement,
    required this.target,
    required this.targetElement,
    required this.targetVersion,
    required this.targetVersionElement,
    required this.element,
    required this.unmapped,
  });
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
  const ConceptMapElement({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.target,
  });
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
  const ConceptMapTarget({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.equivalence,
    required this.equivalenceElement,
    required this.comment,
    required this.commentElement,
    required this.dependsOn,
    required this.product,
  });
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
  const ConceptMapDependsOn({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.property,
    required this.propertyElement,
    required this.system,
    required this.value,
    required this.valueElement,
    required this.display,
    required this.displayElement,
  });
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
  const ConceptMapUnmapped({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.url,
  });
}


