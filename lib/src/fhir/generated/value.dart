import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ValueSet {
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
  final FhirBoolean immutable;
  final PrimitiveElement immutableElement;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final ValueSetCompose compose;
  final ValueSetExpansion expansion;
  const ValueSet({
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
    required this.immutable,
    required this.immutableElement,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.compose,
    required this.expansion,
  });
}

@Data()
@JsonCodable()
class ValueSetCompose {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDate lockedDate;
  final PrimitiveElement lockedDateElement;
  final FhirBoolean inactive;
  final PrimitiveElement inactiveElement;
  final List<ValueSetInclude> include;
  final List<ValueSetInclude> exclude;
  const ValueSetCompose({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.lockedDate,
    required this.lockedDateElement,
    required this.inactive,
    required this.inactiveElement,
    required this.include,
    required this.exclude,
  });
}

@Data()
@JsonCodable()
class ValueSetInclude {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement systemElement;
  final String version;
  final PrimitiveElement versionElement;
  final List<ValueSetConcept> concept;
  final List<ValueSetFilter> filter;
  final List<FhirCanonical> valueSet;
  const ValueSetInclude({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.system,
    required this.systemElement,
    required this.version,
    required this.versionElement,
    required this.concept,
    required this.filter,
    required this.valueSet,
  });
}

@Data()
@JsonCodable()
class ValueSetConcept {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final List<ValueSetDesignation> designation;
  const ValueSetConcept({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.designation,
  });
}

@Data()
@JsonCodable()
class ValueSetDesignation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Coding use;
  final String value;
  final PrimitiveElement valueElement;
  const ValueSetDesignation({
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
class ValueSetFilter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode property;
  final PrimitiveElement propertyElement;
  final FhirCode op;
  final PrimitiveElement opElement;
  final String value;
  final PrimitiveElement valueElement;
  const ValueSetFilter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.property,
    required this.propertyElement,
    required this.op,
    required this.opElement,
    required this.value,
    required this.valueElement,
  });
}

@Data()
@JsonCodable()
class ValueSetExpansion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri identifier;
  final PrimitiveElement identifierElement;
  final FhirDateTime timestamp;
  final PrimitiveElement timestampElement;
  final FhirInteger total;
  final PrimitiveElement totalElement;
  final FhirInteger offset;
  final PrimitiveElement offsetElement;
  final List<ValueSetParameter> parameter;
  final List<ValueSetContains> contains;
  const ValueSetExpansion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.identifierElement,
    required this.timestamp,
    required this.timestampElement,
    required this.total,
    required this.totalElement,
    required this.offset,
    required this.offsetElement,
    required this.parameter,
    required this.contains,
  });
}

@Data()
@JsonCodable()
class ValueSetParameter {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement nameElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final String valueCode;
  final PrimitiveElement valueCodeElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  const ValueSetParameter({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.nameElement,
    required this.valueString,
    required this.valueStringElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueInteger,
    required this.valueIntegerElement,
    required this.valueDecimal,
    required this.valueDecimalElement,
    required this.valueUri,
    required this.valueUriElement,
    required this.valueCode,
    required this.valueCodeElement,
    required this.valueDateTime,
    required this.valueDateTimeElement,
  });
}

@Data()
@JsonCodable()
class ValueSetContains {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri system;
  final PrimitiveElement systemElement;
  final FhirBoolean abstract_;
  final PrimitiveElement abstractElement;
  final FhirBoolean inactive;
  final PrimitiveElement inactiveElement;
  final String version;
  final PrimitiveElement versionElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final String display;
  final PrimitiveElement displayElement;
  final List<ValueSetDesignation> designation;
  final List<ValueSetContains> contains;
  const ValueSetContains({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.system,
    required this.systemElement,
    required this.abstract_,
    required this.abstractElement,
    required this.inactive,
    required this.inactiveElement,
    required this.version,
    required this.versionElement,
    required this.code,
    required this.codeElement,
    required this.display,
    required this.displayElement,
    required this.designation,
    required this.contains,
  });
}


