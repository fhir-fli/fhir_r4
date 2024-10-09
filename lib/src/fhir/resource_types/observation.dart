import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Observation);

  @override
  String get fhirType => 'Observation';

  @Id()
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
  final ObservationStatus status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] =
          partOf!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (focus != null && focus!.isNotEmpty) {
      json['focus'] = focus!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (effectiveDateTime?.value != null) {
      json['effectiveDateTime'] = effectiveDateTime!.value;
    }
    if (effectiveDateTimeElement != null) {
      json['_effectiveDateTime'] = effectiveDateTimeElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (effectiveTiming != null) {
      json['effectiveTiming'] = effectiveTiming!.toJson();
    }
    if (effectiveInstant?.value != null) {
      json['effectiveInstant'] = effectiveInstant!.value;
    }
    if (effectiveInstantElement != null) {
      json['_effectiveInstant'] = effectiveInstantElement!.toJson();
    }
    if (issued?.value != null) {
      json['issued'] = issued!.value;
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] =
          performer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }
    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (dataAbsentReason != null) {
      json['dataAbsentReason'] = dataAbsentReason!.toJson();
    }
    if (interpretation != null && interpretation!.isNotEmpty) {
      json['interpretation'] = interpretation!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (specimen != null) {
      json['specimen'] = specimen!.toJson();
    }
    if (device != null) {
      json['device'] = device!.toJson();
    }
    if (referenceRange != null && referenceRange!.isNotEmpty) {
      json['referenceRange'] = referenceRange!
          .map<dynamic>((ObservationReferenceRange v) => v.toJson())
          .toList();
    }
    if (hasMember != null && hasMember!.isNotEmpty) {
      json['hasMember'] =
          hasMember!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] =
          derivedFrom!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (component != null && component!.isNotEmpty) {
      json['component'] = component!
          .map<dynamic>((ObservationComponent v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory Observation.fromJson(Map<String, dynamic> json) {
    return Observation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status:
          ObservationStatus.fromJson(json['status'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime(json['effectiveDateTime'])
          : null,
      effectiveDateTimeElement: json['_effectiveDateTime'] != null
          ? Element.fromJson(json['_effectiveDateTime'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      effectiveTiming: json['effectiveTiming'] != null
          ? Timing.fromJson(json['effectiveTiming'] as Map<String, dynamic>)
          : null,
      effectiveInstant: json['effectiveInstant'] != null
          ? FhirInstant(json['effectiveInstant'])
          : null,
      effectiveInstantElement: json['_effectiveInstant'] != null
          ? Element.fromJson(json['_effectiveInstant'] as Map<String, dynamic>)
          : null,
      issued: json['issued'] != null ? FhirInstant(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>)
          : null,
      interpretation: json['interpretation'] != null
          ? (json['interpretation'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      specimen: json['specimen'] != null
          ? Reference.fromJson(json['specimen'] as Map<String, dynamic>)
          : null,
      device: json['device'] != null
          ? Reference.fromJson(json['device'] as Map<String, dynamic>)
          : null,
      referenceRange: json['referenceRange'] != null
          ? (json['referenceRange'] as List<dynamic>)
              .map<ObservationReferenceRange>((dynamic v) =>
                  ObservationReferenceRange.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      hasMember: json['hasMember'] != null
          ? (json['hasMember'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<ObservationComponent>((dynamic v) =>
                  ObservationComponent.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Observation clone() => throw UnimplementedError();
  @override
  Observation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    ObservationStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Observation.fromYaml(dynamic yaml) => yaml is String
      ? Observation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Observation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Observation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Observation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Observation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ObservationReferenceRange';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (low != null) {
      json['low'] = low!.toJson();
    }
    if (high != null) {
      json['high'] = high!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (appliesTo != null && appliesTo!.isNotEmpty) {
      json['appliesTo'] =
          appliesTo!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (age != null) {
      json['age'] = age!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory ObservationReferenceRange.fromJson(Map<String, dynamic> json) {
    return ObservationReferenceRange(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      low: json['low'] != null
          ? Quantity.fromJson(json['low'] as Map<String, dynamic>)
          : null,
      high: json['high'] != null
          ? Quantity.fromJson(json['high'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      appliesTo: json['appliesTo'] != null
          ? (json['appliesTo'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      age: json['age'] != null
          ? Range.fromJson(json['age'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ObservationReferenceRange clone() => throw UnimplementedError();
  @override
  ObservationReferenceRange copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ObservationReferenceRange.fromYaml(dynamic yaml) => yaml is String
      ? ObservationReferenceRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ObservationReferenceRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ObservationReferenceRange cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ObservationReferenceRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationReferenceRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ObservationComponent';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }
    if (valueRatio != null) {
      json['valueRatio'] = valueRatio!.toJson();
    }
    if (valueSampledData != null) {
      json['valueSampledData'] = valueSampledData!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valuePeriod != null) {
      json['valuePeriod'] = valuePeriod!.toJson();
    }
    if (dataAbsentReason != null) {
      json['dataAbsentReason'] = dataAbsentReason!.toJson();
    }
    if (interpretation != null && interpretation!.isNotEmpty) {
      json['interpretation'] = interpretation!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (referenceRange != null && referenceRange!.isNotEmpty) {
      json['referenceRange'] = referenceRange!
          .map<dynamic>((ObservationReferenceRange v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ObservationComponent.fromJson(Map<String, dynamic> json) {
    return ObservationComponent(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(json['valueRange'] as Map<String, dynamic>)
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>)
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(json['valuePeriod'] as Map<String, dynamic>)
          : null,
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>)
          : null,
      interpretation: json['interpretation'] != null
          ? (json['interpretation'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      referenceRange: json['referenceRange'] != null
          ? (json['referenceRange'] as List<dynamic>)
              .map<ObservationReferenceRange>((dynamic v) =>
                  ObservationReferenceRange.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ObservationComponent clone() => throw UnimplementedError();
  @override
  ObservationComponent copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ObservationComponent.fromYaml(dynamic yaml) => yaml is String
      ? ObservationComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ObservationComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ObservationComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ObservationComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
