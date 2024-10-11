import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Observation extends Resource {
  Observation({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.category,
    required this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveInstant,
    this.issued,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueDateTime,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToMany<Reference>? focus = ToMany<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? effectiveDateTime;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToOne<Timing>? effectiveTiming = ToOne<Timing>();
  String? effectiveInstant;
  String? issued;
  ToMany<Reference>? performer = ToMany<Reference>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  String? valueString;
  bool? valueBoolean;
  int? valueInteger;
  ToOne<Range>? valueRange = ToOne<Range>();
  ToOne<Ratio>? valueRatio = ToOne<Ratio>();
  ToOne<SampledData>? valueSampledData = ToOne<SampledData>();
  String? valueTime;
  String? valueDateTime;
  ToOne<Period>? valuePeriod = ToOne<Period>();
  ToOne<CodeableConcept>? dataAbsentReason = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? interpretation = ToMany<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? method = ToOne<CodeableConcept>();
  ToOne<Reference>? specimen = ToOne<Reference>();
  ToOne<Reference>? device = ToOne<Reference>();
  ToMany<ObservationReferenceRange>? referenceRange =
      ToMany<ObservationReferenceRange>();
  ToMany<Reference>? hasMember = ToMany<Reference>();
  ToMany<Reference>? derivedFrom = ToMany<Reference>();
  ToMany<ObservationComponent>? component = ToMany<ObservationComponent>();
}

@Entity()
class ObservationReferenceRange {
  ObservationReferenceRange({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Quantity>? low = ToOne<Quantity>();
  ToOne<Quantity>? high = ToOne<Quantity>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? appliesTo = ToMany<CodeableConcept>();
  ToOne<Range>? age = ToOne<Range>();
  String? text;
}

@Entity()
class ObservationComponent {
  ObservationComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueBoolean,
    this.valueInteger,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueDateTime,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  String? valueString;
  bool? valueBoolean;
  int? valueInteger;
  ToOne<Range>? valueRange = ToOne<Range>();
  ToOne<Ratio>? valueRatio = ToOne<Ratio>();
  ToOne<SampledData>? valueSampledData = ToOne<SampledData>();
  String? valueTime;
  String? valueDateTime;
  ToOne<Period>? valuePeriod = ToOne<Period>();
  ToOne<CodeableConcept>? dataAbsentReason = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? interpretation = ToMany<CodeableConcept>();
  ToMany<ObservationReferenceRange>? referenceRange =
      ToMany<ObservationReferenceRange>();
}
