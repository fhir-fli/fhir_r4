import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

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
  final List<Extension> extension;
  final List<Extension> modifierExtension;
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
  const Observation({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    this.status,
    this.Status,
    this.category,
    required this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveDateTime,
    this.EffectiveDateTime,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveInstant,
    this.EffectiveInstant,
    this.issued,
    this.Issued,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.ValueString,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueInteger,
    this.ValueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.ValueTime,
    this.valueDateTime,
    this.ValueDateTime,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.note,
    this.bodySite,
    this.method,
    this.specimen,
    this.device,
    this.referenceRange,
    this.hasMember,
    this.derivedFrom,
    this.component,
  });
}
