import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Observation {
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
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final Reference subject;
  final List<Reference> focus;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement effectiveDateTimeElement;
  final Period effectivePeriod;
  final Timing effectiveTiming;
  final String effectiveInstant;
  final PrimitiveElement effectiveInstantElement;
  final FhirInstant issued;
  final PrimitiveElement issuedElement;
  final List<Reference> performer;
  final Quantity valueQuantity;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final Range valueRange;
  final Ratio valueRatio;
  final SampledData valueSampledData;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final Period valuePeriod;
  final CodeableConcept dataAbsentReason;
  final List<CodeableConcept> interpretation;
  final List<Annotation> note;
  final CodeableConcept bodySite;
  final CodeableConcept method;
  final Reference specimen;
  final Reference device;
  final List<ObservationReferenceRange> referenceRange;
  final List<Reference> hasMember;
  final List<Reference> derivedFrom;
  final List<ObservationComponent> component;
}

@Data()
@JsonCodable()
class ObservationReferenceRange {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Quantity low;
  final Quantity high;
  final CodeableConcept type;
  final List<CodeableConcept> appliesTo;
  final Range age;
  final String text;
  final PrimitiveElement textElement;
}

@Data()
@JsonCodable()
class ObservationComponent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity valueQuantity;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final Range valueRange;
  final Ratio valueRatio;
  final SampledData valueSampledData;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final Period valuePeriod;
  final CodeableConcept dataAbsentReason;
  final List<CodeableConcept> interpretation;
  final List<ObservationReferenceRange> referenceRange;
}

@Data()
@JsonCodable()
class ObservationDefinition {
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
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Identifier> identifier;
  final List<FhirCode> permittedDataType;
  final List<PrimitiveElement> permittedDataTypeElement;
  final FhirBoolean multipleResultsAllowed;
  final PrimitiveElement multipleResultsAllowedElement;
  final CodeableConcept method;
  final String preferredReportName;
  final PrimitiveElement preferredReportNameElement;
  final ObservationDefinitionQuantitativeDetails quantitativeDetails;
  final List<ObservationDefinitionQualifiedInterval> qualifiedInterval;
  final Reference validCodedValueSet;
  final Reference normalCodedValueSet;
  final Reference abnormalCodedValueSet;
  final Reference criticalCodedValueSet;
}

@Data()
@JsonCodable()
class ObservationDefinitionQuantitativeDetails {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept customaryUnit;
  final CodeableConcept unit;
  final FhirDecimal conversionFactor;
  final PrimitiveElement conversionFactorElement;
  final FhirInteger decimalPrecision;
  final PrimitiveElement decimalPrecisionElement;
}

@Data()
@JsonCodable()
class ObservationDefinitionQualifiedInterval {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode category;
  final PrimitiveElement categoryElement;
  final Range range;
  final CodeableConcept context;
  final List<CodeableConcept> appliesTo;
  final FhirCode gender;
  final PrimitiveElement genderElement;
  final Range age;
  final Range gestationalAge;
  final String condition;
  final PrimitiveElement conditionElement;
}


