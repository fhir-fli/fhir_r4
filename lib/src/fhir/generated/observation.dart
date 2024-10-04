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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final Reference subject;
  final List<Reference> focus;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final Timing effectiveTiming;
  final String effectiveInstant;
  final PrimitiveElement EffectiveInstant;
  final FhirInstant issued;
  final PrimitiveElement Issued;
  final List<Reference> performer;
  final Quantity valueQuantity;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final Range valueRange;
  final Ratio valueRatio;
  final SampledData valueSampledData;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Quantity low;
  final Quantity high;
  final CodeableConcept type;
  final List<CodeableConcept> appliesTo;
  final Range age;
  final String text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class ObservationComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final Quantity valueQuantity;
  final CodeableConcept valueCodeableConcept;
  final String valueString;
  final PrimitiveElement ValueString;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final Range valueRange;
  final Ratio valueRatio;
  final SampledData valueSampledData;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Identifier> identifier;
  final List<FhirCode> permittedDataType;
  final List<PrimitiveElement> PermittedDataType;
  final FhirBoolean multipleResultsAllowed;
  final PrimitiveElement MultipleResultsAllowed;
  final CodeableConcept method;
  final String preferredReportName;
  final PrimitiveElement PreferredReportName;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept customaryUnit;
  final CodeableConcept unit;
  final FhirDecimal conversionFactor;
  final PrimitiveElement ConversionFactor;
  final FhirInteger decimalPrecision;
  final PrimitiveElement DecimalPrecision;
}

@Data()
@JsonCodable()
class ObservationDefinitionQualifiedInterval {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode category;
  final PrimitiveElement Category;
  final Range range;
  final CodeableConcept context;
  final List<CodeableConcept> appliesTo;
  final FhirCode gender;
  final PrimitiveElement Gender;
  final Range age;
  final Range gestationalAge;
  final String condition;
  final PrimitiveElement Condition;
}


