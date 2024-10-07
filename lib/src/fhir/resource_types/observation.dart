import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Observation] /// Measurements and simple assertions made about a patient, device or other
/// subject.
class Observation extends DomainResource {
  Observation({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.subject,
    this.focus,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.effectiveTiming,
    this.effectiveInstant,
    this.effectiveInstantElement,
    this.issued,
    this.issuedElement,
    this.performer,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueTimeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
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
  }) : super(resourceType: R4ResourceType.Observation);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this observation.
  final List<Identifier>? identifier;

  /// [basedOn] /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event. For example, a MedicationRequest may require a patient to have
  /// laboratory test performed before it is dispensed.
  final List<Reference>? basedOn;

  /// [partOf] /// A larger event of which this particular Observation is a component or step.
  /// For example, an observation as part of a procedure.
  final List<Reference>? partOf;

  /// [status] /// The status of the result value.
  final FhirCode status;
  final Element? statusElement;

  /// [category] /// A code that classifies the general type of observation being made.
  final List<CodeableConcept>? category;

  /// [code] /// Describes what was observed. Sometimes this is called the observation
  /// "name".
  final CodeableConcept code;

  /// [subject] /// The patient, or group of patients, location, or device this observation is
  /// about and into whose record the observation is placed. If the actual focus
  /// of the observation is different from the subject (or a sample of, part, or
  /// region of the subject), the `focus` element or the `code` itself specifies
  /// the actual focus of the observation.
  final Reference? subject;

  /// [focus] /// The actual focus of an observation when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record. The focus of an observation could also be an existing
  /// condition, an intervention, the subject's diet, another observation of the
  /// subject, or a body structure such as tumor or implanted device. An example
  /// use case would be using the Observation resource to capture whether the
  /// mother is trained to change her child's tracheostomy tube. In this example,
  /// the child is the patient of record and the mother is the focus.
  final List<Reference>? focus;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// during which this observation is made.
  final Reference? encounter;

  /// [effectiveDateTime] /// The time or time-period the observed value is asserted as being true. For
  /// biological subjects - e.g. human patients - this is usually called the
  /// "physiologically relevant time". This is usually either the time of the
  /// procedure or of specimen collection, but very often the source of the
  /// date/time is not known, only the date/time itself.
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The time or time-period the observed value is asserted as being true. For
  /// biological subjects - e.g. human patients - this is usually called the
  /// "physiologically relevant time". This is usually either the time of the
  /// procedure or of specimen collection, but very often the source of the
  /// date/time is not known, only the date/time itself.
  final Period? effectivePeriod;

  /// [effectiveTiming] /// The time or time-period the observed value is asserted as being true. For
  /// biological subjects - e.g. human patients - this is usually called the
  /// "physiologically relevant time". This is usually either the time of the
  /// procedure or of specimen collection, but very often the source of the
  /// date/time is not known, only the date/time itself.
  final Timing? effectiveTiming;

  /// [effectiveInstant] /// The time or time-period the observed value is asserted as being true. For
  /// biological subjects - e.g. human patients - this is usually called the
  /// "physiologically relevant time". This is usually either the time of the
  /// procedure or of specimen collection, but very often the source of the
  /// date/time is not known, only the date/time itself.
  final FhirInstant? effectiveInstant;
  final Element? effectiveInstantElement;

  /// [issued] /// The date and time this version of the observation was made available to
  /// providers, typically after the results have been reviewed and verified.
  final FhirInstant? issued;
  final Element? issuedElement;

  /// [performer] /// Who was responsible for asserting the observed value as "true".
  final List<Reference>? performer;

  /// [valueQuantity] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Quantity? valueQuantity;

  /// [valueCodeableConcept] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueBoolean] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueInteger] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueRange] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Range? valueRange;

  /// [valueRatio] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Ratio? valueRatio;

  /// [valueSampledData] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final SampledData? valueSampledData;

  /// [valueTime] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueDateTime] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valuePeriod] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Period? valuePeriod;

  /// [dataAbsentReason] /// Provides a reason why the expected value in the element
  /// Observation.value[x] is missing.
  final CodeableConcept? dataAbsentReason;

  /// [interpretation] /// A categorical assessment of an observation value. For example, high, low,
  /// normal.
  final List<CodeableConcept>? interpretation;

  /// [note] /// Comments about the observation or the results.
  final List<Annotation>? note;

  /// [bodySite] /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  final CodeableConcept? bodySite;

  /// [method] /// Indicates the mechanism used to perform the observation.
  final CodeableConcept? method;

  /// [specimen] /// The specimen that was used when this observation was made.
  final Reference? specimen;

  /// [device] /// The device used to generate the observation data.
  final Reference? device;

  /// [referenceRange] /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range. Multiple reference ranges are interpreted as an "OR". In
  /// other words, to represent two distinct target populations, two
  /// `referenceRange` elements would be used.
  final List<ObservationReferenceRange>? referenceRange;

  /// [hasMember] /// This observation is a group observation (e.g. a battery, a panel of tests,
  /// a set of vital sign measurements) that includes the target as a member of
  /// the group.
  final List<Reference>? hasMember;

  /// [derivedFrom] /// The target resource that represents a measurement from which this
  /// observation value is derived. For example, a calculated anion gap or a
  /// fetal measurement based on an ultrasound image.
  final List<Reference>? derivedFrom;

  /// [component] /// Some observations have multiple component observations. These component
  /// observations are expressed as separate code value pairs that share the same
  /// attributes. Examples include systolic and diastolic component observations
  /// for blood pressure measurement and multiple component observations for
  /// genetics observations.
  final List<ObservationComponent>? component;
  @override
  Observation clone() => throw UnimplementedError();
  Observation copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    List<Reference>? focus,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    Timing? effectiveTiming,
    FhirInstant? effectiveInstant,
    Element? effectiveInstantElement,
    FhirInstant? issued,
    Element? issuedElement,
    List<Reference>? performer,
    Quantity? valueQuantity,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    Range? valueRange,
    Ratio? valueRatio,
    SampledData? valueSampledData,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    Period? valuePeriod,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<Annotation>? note,
    CodeableConcept? bodySite,
    CodeableConcept? method,
    Reference? specimen,
    Reference? device,
    List<ObservationReferenceRange>? referenceRange,
    List<Reference>? hasMember,
    List<Reference>? derivedFrom,
    List<ObservationComponent>? component,
  }) {
    return Observation(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      encounter: encounter ?? this.encounter,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      effectiveTiming: effectiveTiming ?? this.effectiveTiming,
      effectiveInstant: effectiveInstant ?? this.effectiveInstant,
      effectiveInstantElement:
          effectiveInstantElement ?? this.effectiveInstantElement,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      performer: performer ?? this.performer,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      interpretation: interpretation ?? this.interpretation,
      note: note ?? this.note,
      bodySite: bodySite ?? this.bodySite,
      method: method ?? this.method,
      specimen: specimen ?? this.specimen,
      device: device ?? this.device,
      referenceRange: referenceRange ?? this.referenceRange,
      hasMember: hasMember ?? this.hasMember,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      component: component ?? this.component,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ObservationReferenceRange] /// Guidance on how to interpret the value by comparison to a normal or
/// recommended range. Multiple reference ranges are interpreted as an "OR". In
/// other words, to represent two distinct target populations, two
/// `referenceRange` elements would be used.
class ObservationReferenceRange extends BackboneElement {
  ObservationReferenceRange({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [low] /// The value of the low bound of the reference range. The low bound of the
  /// reference range endpoint is inclusive of the value (e.g. reference range is
  /// >=5 - <=9). If the low bound is omitted, it is assumed to be meaningless
  /// (e.g. reference range is <=2.3).
  final Quantity? low;

  /// [high] /// The value of the high bound of the reference range. The high bound of the
  /// reference range endpoint is inclusive of the value (e.g. reference range is
  /// >=5 - <=9). If the high bound is omitted, it is assumed to be meaningless
  /// (e.g. reference range is >= 2.3).
  final Quantity? high;

  /// [type] /// Codes to indicate the what part of the targeted reference population it
  /// applies to. For example, the normal or therapeutic range.
  final CodeableConcept? type;

  /// [appliesTo] /// Codes to indicate the target population this reference range applies to.
  /// For example, a reference range may be based on the normal population or a
  /// particular sex or race. Multiple `appliesTo` are interpreted as an "AND" of
  /// the target populations. For example, to represent a target population of
  /// African American females, both a code of female and a code for African
  /// American would be used.
  final List<CodeableConcept>? appliesTo;

  /// [age] /// The age at which this reference range is applicable. This is a neonatal age
  /// (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [text] /// Text based reference range in an observation which may be used when a
  /// quantitative range is not appropriate for an observation. An example would
  /// be a reference value of "Negative" or a list or table of "normals".
  final FhirString? text;
  final Element? textElement;
  @override
  ObservationReferenceRange clone() => throw UnimplementedError();
  ObservationReferenceRange copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? low,
    Quantity? high,
    CodeableConcept? type,
    List<CodeableConcept>? appliesTo,
    Range? age,
    FhirString? text,
    Element? textElement,
  }) {
    return ObservationReferenceRange(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      low: low ?? this.low,
      high: high ?? this.high,
      type: type ?? this.type,
      appliesTo: appliesTo ?? this.appliesTo,
      age: age ?? this.age,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ObservationComponent] /// Some observations have multiple component observations. These component
/// observations are expressed as separate code value pairs that share the same
/// attributes. Examples include systolic and diastolic component observations
/// for blood pressure measurement and multiple component observations for
/// genetics observations.
class ObservationComponent extends BackboneElement {
  ObservationComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueQuantity,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueRange,
    this.valueRatio,
    this.valueSampledData,
    this.valueTime,
    this.valueTimeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valuePeriod,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Describes what was observed. Sometimes this is called the observation
  /// "code".
  final CodeableConcept code;

  /// [valueQuantity] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Quantity? valueQuantity;

  /// [valueCodeableConcept] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueBoolean] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueInteger] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueRange] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Range? valueRange;

  /// [valueRatio] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Ratio? valueRatio;

  /// [valueSampledData] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final SampledData? valueSampledData;

  /// [valueTime] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueDateTime] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valuePeriod] /// The information determined as a result of making the observation, if the
  /// information has a simple value.
  final Period? valuePeriod;

  /// [dataAbsentReason] /// Provides a reason why the expected value in the element
  /// Observation.component.value[x] is missing.
  final CodeableConcept? dataAbsentReason;

  /// [interpretation] /// A categorical assessment of an observation value. For example, high, low,
  /// normal.
  final List<CodeableConcept>? interpretation;

  /// [referenceRange] /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range.
  final List<ObservationReferenceRange>? referenceRange;
  @override
  ObservationComponent clone() => throw UnimplementedError();
  ObservationComponent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    Quantity? valueQuantity,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    Range? valueRange,
    Ratio? valueRatio,
    SampledData? valueSampledData,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    Period? valuePeriod,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<ObservationReferenceRange>? referenceRange,
  }) {
    return ObservationComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valuePeriod: valuePeriod ?? this.valuePeriod,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      interpretation: interpretation ?? this.interpretation,
      referenceRange: referenceRange ?? this.referenceRange,
    );
  }
}
