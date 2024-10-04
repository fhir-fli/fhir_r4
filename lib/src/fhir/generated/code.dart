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
  const CodeSystem({
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
    required this.caseSensitive,
    required this.caseSensitiveElement,
    required this.valueSet,
    required this.hierarchyMeaning,
    required this.hierarchyMeaningElement,
    required this.compositional,
    required this.compositionalElement,
    required this.versionNeeded,
    required this.versionNeededElement,
    required this.content,
    required this.contentElement,
    required this.supplements,
    required this.count,
    required this.countElement,
    required this.filter,
    required this.property,
    required this.concept,
  });
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
  const CodeSystemFilter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.description,
    required this.descriptionElement,
    required this.operator_,
    required this.operatorElement,
    required this.value,
    required this.valueElement,
  });
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
  const CodeSystemProperty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.uri,
    required this.uriElement,
    required this.description,
    required this.descriptionElement,
    required this.type,
    required this.typeElement,
  });
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
  const CodeSystemConcept({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.definition,
    required this.definitionElement,
    required this.designation,
    required this.property,
    required this.concept,
  });
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
  const CodeSystemDesignation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.language,
    required this.languageElement,
    required this.use,
    required this.value,
    required this.valueElement,
  });
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
  const CodeSystemProperty1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.valueCode,
    required this.valueCodeElement,
    required this.valueCoding,
    required this.valueString,
    required this.valueStringElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
  });
}


