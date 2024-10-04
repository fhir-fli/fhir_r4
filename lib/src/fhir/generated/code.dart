import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CodeSystem {
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
  final List<Identifier> identifier;
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
  final FhirBoolean caseSensitive;
  final PrimitiveElement caseSensitiveElement;
  final FhirCanonical valueSet;
  final FhirCode hierarchyMeaning;
  final PrimitiveElement hierarchyMeaningElement;
  final FhirBoolean compositional;
  final PrimitiveElement compositionalElement;
  final FhirBoolean versionNeeded;
  final PrimitiveElement versionNeededElement;
  final FhirCode content;
  final PrimitiveElement contentElement;
  final FhirCanonical supplements;
  final FhirUnsignedInt count;
  final PrimitiveElement countElement;
  final List<CodeSystemFilter> filter;
  final List<CodeSystemProperty> property;
  final List<CodeSystemConcept> concept;
}

@Data()
@JsonCodable()
class CodeSystemFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<FhirCode> operator_;
  final List<PrimitiveElement> operatorElement;
  final String value;
  final PrimitiveElement valueElement;
}

@Data()
@JsonCodable()
class CodeSystemProperty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirUri uri;
  final PrimitiveElement uriElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
}

@Data()
@JsonCodable()
class CodeSystemConcept {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final String definition;
  final PrimitiveElement definitionElement;
  final List<CodeSystemDesignation> designation;
  final List<CodeSystemProperty1> property;
  final List<CodeSystemConcept> concept;
}

@Data()
@JsonCodable()
class CodeSystemDesignation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Coding use;
  final String value;
  final PrimitiveElement valueElement;
}

@Data()
@JsonCodable()
class CodeSystemProperty1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final Coding valueCoding;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
}


