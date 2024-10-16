import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Observation]
/// Measurements and simple assertions made about a patient, device or
/// other subject.
class Observation extends DomainResource {
  /// Primary constructor for [Observation]

  Observation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Observation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Observation.fromJson(Map<String, dynamic> json) {
    return Observation(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ObservationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['effectiveDateTime'],
              '_value': json['_effectiveDateTime'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      effectiveTiming: json['effectiveTiming'] != null
          ? Timing.fromJson(
              json['effectiveTiming'] as Map<String, dynamic>,
            )
          : null,
      effectiveInstant: json['effectiveInstant'] != null
          ? FhirInstant.fromJson({
              'value': json['effectiveInstant'],
              '_value': json['_effectiveInstant'],
            })
          : null,
      issued: json['issued'] != null
          ? FhirInstant.fromJson({
              'value': json['issued'],
              '_value': json['_issued'],
            })
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>,
            )
          : null,
      interpretation: json['interpretation'] != null
          ? (json['interpretation'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(
              json['bodySite'] as Map<String, dynamic>,
            )
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      specimen: json['specimen'] != null
          ? Reference.fromJson(
              json['specimen'] as Map<String, dynamic>,
            )
          : null,
      device: json['device'] != null
          ? Reference.fromJson(
              json['device'] as Map<String, dynamic>,
            )
          : null,
      referenceRange: json['referenceRange'] != null
          ? (json['referenceRange'] as List<dynamic>)
              .map<ObservationReferenceRange>(
                (v) => ObservationReferenceRange.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      hasMember: json['hasMember'] != null
          ? (json['hasMember'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      component: json['component'] != null
          ? (json['component'] as List<dynamic>)
              .map<ObservationComponent>(
                (v) => ObservationComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Observation] from a [String]
  /// or [YamlMap] object
  factory Observation.fromYaml(dynamic yaml) => yaml is String
      ? Observation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Observation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Observation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Observation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Observation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Observation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Observation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this observation.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A plan, proposal or order that is fulfilled in whole or in part by this
  /// event. For example, a MedicationRequest may require a patient to have
  /// laboratory test performed before it is dispensed.
  final List<Reference>? basedOn;

  /// [partOf]
  /// A larger event of which this particular Observation is a component or
  /// step. For example, an observation as part of a procedure.
  final List<Reference>? partOf;

  /// [status]
  /// The status of the result value.
  final ObservationStatus status;

  /// [category]
  /// A code that classifies the general type of observation being made.
  final List<CodeableConcept>? category;

  /// [code]
  /// Describes what was observed. Sometimes this is called the observation
  /// "name".
  final CodeableConcept code;

  /// [subject]
  /// The patient, or group of patients, location, or device this observation
  /// is about and into whose record the observation is placed. If the actual
  /// focus of the observation is different from the subject (or a sample of,
  /// part, or region of the subject), the `focus` element or the `code`
  /// itself specifies the actual focus of the observation.
  final Reference? subject;

  /// [focus]
  /// The actual focus of an observation when it is not the patient of record
  /// representing something or someone associated with the patient such as a
  /// spouse, parent, fetus, or donor. For example, fetus observations in a
  /// mother's record. The focus of an observation could also be an existing
  /// condition, an intervention, the subject's diet, another observation of
  /// the subject, or a body structure such as tumor or implanted device. An
  /// example use case would be using the Observation resource to capture
  /// whether the mother is trained to change her child's tracheostomy tube.
  /// In this example, the child is the patient of record and the mother is
  /// the focus.
  final List<Reference>? focus;

  /// [encounter]
  /// The healthcare event (e.g. a patient and healthcare provider
  /// interaction) during which this observation is made.
  final Reference? encounter;

  /// [effectiveDateTime]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  final FhirDateTime? effectiveDateTime;

  /// [effectivePeriod]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  final Period? effectivePeriod;

  /// [effectiveTiming]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  final Timing? effectiveTiming;

  /// [effectiveInstant]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  final FhirInstant? effectiveInstant;

  /// [issued]
  /// The date and time this version of the observation was made available to
  /// providers, typically after the results have been reviewed and verified.
  final FhirInstant? issued;

  /// [performer]
  /// Who was responsible for asserting the observed value as "true".
  final List<Reference>? performer;

  /// [valueQuantity]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Quantity? valueQuantity;

  /// [valueCodeableConcept]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirString? valueString;

  /// [valueBoolean]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirBoolean? valueBoolean;

  /// [valueInteger]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirInteger? valueInteger;

  /// [valueRange]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Range? valueRange;

  /// [valueRatio]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Ratio? valueRatio;

  /// [valueSampledData]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final SampledData? valueSampledData;

  /// [valueTime]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirTime? valueTime;

  /// [valueDateTime]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirDateTime? valueDateTime;

  /// [valuePeriod]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Period? valuePeriod;

  /// [dataAbsentReason]
  /// Provides a reason why the expected value in the element
  /// Observation.value[x] is missing.
  final CodeableConcept? dataAbsentReason;

  /// [interpretation]
  /// A categorical assessment of an observation value. For example, high,
  /// low, normal.
  final List<CodeableConcept>? interpretation;

  /// [note]
  /// Comments about the observation or the results.
  final List<Annotation>? note;

  /// [bodySite]
  /// Indicates the site on the subject's body where the observation was made
  /// (i.e. the target site).
  final CodeableConcept? bodySite;

  /// [method]
  /// Indicates the mechanism used to perform the observation.
  final CodeableConcept? method;

  /// [specimen]
  /// The specimen that was used when this observation was made.
  final Reference? specimen;

  /// [device]
  /// The device used to generate the observation data.
  final Reference? device;

  /// [referenceRange]
  /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range. Multiple reference ranges are interpreted as an
  /// "OR". In other words, to represent two distinct target populations, two
  /// `referenceRange` elements would be used.
  final List<ObservationReferenceRange>? referenceRange;

  /// [hasMember]
  /// This observation is a group observation (e.g. a battery, a panel of
  /// tests, a set of vital sign measurements) that includes the target as a
  /// member of the group.
  final List<Reference>? hasMember;

  /// [derivedFrom]
  /// The target resource that represents a measurement from which this
  /// observation value is derived. For example, a calculated anion gap or a
  /// fetal measurement based on an ultrasound image.
  final List<Reference>? derivedFrom;

  /// [component]
  /// Some observations have multiple component observations. These component
  /// observations are expressed as separate code value pairs that share the
  /// same attributes. Examples include systolic and diastolic component
  /// observations for blood pressure measurement and multiple component
  /// observations for genetics observations.
  final List<ObservationComponent>? component;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson9 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson10 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson12 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    final fieldJson13 = code.toJson();
    json['code'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_code'] = fieldJson13['_value'];
    }

    if (subject != null) {
      final fieldJson14 = subject!.toJson();
      json['subject'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_subject'] = fieldJson14['_value'];
      }
    }

    if (focus != null && focus!.isNotEmpty) {
      final fieldJson15 = focus!.map((e) => e.toJson()).toList();
      json['focus'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_focus'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (encounter != null) {
      final fieldJson16 = encounter!.toJson();
      json['encounter'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_encounter'] = fieldJson16['_value'];
      }
    }

    if (effectiveDateTime != null) {
      final fieldJson17 = effectiveDateTime!.toJson();
      json['effectiveDateTime'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_effectiveDateTime'] = fieldJson17['_value'];
      }
    }

    if (effectivePeriod != null) {
      final fieldJson18 = effectivePeriod!.toJson();
      json['effectivePeriod'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_effectivePeriod'] = fieldJson18['_value'];
      }
    }

    if (effectiveTiming != null) {
      final fieldJson19 = effectiveTiming!.toJson();
      json['effectiveTiming'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_effectiveTiming'] = fieldJson19['_value'];
      }
    }

    if (effectiveInstant != null) {
      final fieldJson20 = effectiveInstant!.toJson();
      json['effectiveInstant'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_effectiveInstant'] = fieldJson20['_value'];
      }
    }

    if (issued != null) {
      final fieldJson21 = issued!.toJson();
      json['issued'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_issued'] = fieldJson21['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson22 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    if (valueQuantity != null) {
      final fieldJson23 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_valueQuantity'] = fieldJson23['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson24 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson24['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson25 = valueString!.toJson();
      json['valueString'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_valueString'] = fieldJson25['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson26 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_valueBoolean'] = fieldJson26['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson27 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_valueInteger'] = fieldJson27['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson28 = valueRange!.toJson();
      json['valueRange'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_valueRange'] = fieldJson28['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson29 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_valueRatio'] = fieldJson29['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson30 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_valueSampledData'] = fieldJson30['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson31 = valueTime!.toJson();
      json['valueTime'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_valueTime'] = fieldJson31['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson32 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_valueDateTime'] = fieldJson32['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson33 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_valuePeriod'] = fieldJson33['_value'];
      }
    }

    if (dataAbsentReason != null) {
      final fieldJson34 = dataAbsentReason!.toJson();
      json['dataAbsentReason'] = fieldJson34['value'];
      if (fieldJson34['_value'] != null) {
        json['_dataAbsentReason'] = fieldJson34['_value'];
      }
    }

    if (interpretation != null && interpretation!.isNotEmpty) {
      final fieldJson35 = interpretation!.map((e) => e.toJson()).toList();
      json['interpretation'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_interpretation'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson36 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null) {
      final fieldJson37 = bodySite!.toJson();
      json['bodySite'] = fieldJson37['value'];
      if (fieldJson37['_value'] != null) {
        json['_bodySite'] = fieldJson37['_value'];
      }
    }

    if (method != null) {
      final fieldJson38 = method!.toJson();
      json['method'] = fieldJson38['value'];
      if (fieldJson38['_value'] != null) {
        json['_method'] = fieldJson38['_value'];
      }
    }

    if (specimen != null) {
      final fieldJson39 = specimen!.toJson();
      json['specimen'] = fieldJson39['value'];
      if (fieldJson39['_value'] != null) {
        json['_specimen'] = fieldJson39['_value'];
      }
    }

    if (device != null) {
      final fieldJson40 = device!.toJson();
      json['device'] = fieldJson40['value'];
      if (fieldJson40['_value'] != null) {
        json['_device'] = fieldJson40['_value'];
      }
    }

    if (referenceRange != null && referenceRange!.isNotEmpty) {
      final fieldJson41 = referenceRange!.map((e) => e.toJson()).toList();
      json['referenceRange'] = fieldJson41.map((e) => e['value']).toList();
      if (fieldJson41.any((e) => e['_value'] != null)) {
        json['_referenceRange'] = fieldJson41.map((e) => e['_value']).toList();
      }
    }

    if (hasMember != null && hasMember!.isNotEmpty) {
      final fieldJson42 = hasMember!.map((e) => e.toJson()).toList();
      json['hasMember'] = fieldJson42.map((e) => e['value']).toList();
      if (fieldJson42.any((e) => e['_value'] != null)) {
        json['_hasMember'] = fieldJson42.map((e) => e['_value']).toList();
      }
    }

    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      final fieldJson43 = derivedFrom!.map((e) => e.toJson()).toList();
      json['derivedFrom'] = fieldJson43.map((e) => e['value']).toList();
      if (fieldJson43.any((e) => e['_value'] != null)) {
        json['_derivedFrom'] = fieldJson43.map((e) => e['_value']).toList();
      }
    }

    if (component != null && component!.isNotEmpty) {
      final fieldJson44 = component!.map((e) => e.toJson()).toList();
      json['component'] = fieldJson44.map((e) => e['value']).toList();
      if (fieldJson44.any((e) => e['_value'] != null)) {
        json['_component'] = fieldJson44.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Observation clone() => throw UnimplementedError();
  @override
  Observation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    ObservationStatus? status,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    List<Reference>? focus,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
    Timing? effectiveTiming,
    FhirInstant? effectiveInstant,
    FhirInstant? issued,
    List<Reference>? performer,
    Quantity? valueQuantity,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    FhirBoolean? valueBoolean,
    FhirInteger? valueInteger,
    Range? valueRange,
    Ratio? valueRatio,
    SampledData? valueSampledData,
    FhirTime? valueTime,
    FhirDateTime? valueDateTime,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      focus: focus ?? this.focus,
      encounter: encounter ?? this.encounter,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      effectiveTiming: effectiveTiming ?? this.effectiveTiming,
      effectiveInstant: effectiveInstant ?? this.effectiveInstant,
      issued: issued ?? this.issued,
      performer: performer ?? this.performer,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueInteger: valueInteger ?? this.valueInteger,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueTime: valueTime ?? this.valueTime,
      valueDateTime: valueDateTime ?? this.valueDateTime,
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
}

/// [ObservationReferenceRange]
/// Guidance on how to interpret the value by comparison to a normal or
/// recommended range. Multiple reference ranges are interpreted as an
/// "OR". In other words, to represent two distinct target populations, two
/// `referenceRange` elements would be used.
class ObservationReferenceRange extends BackboneElement {
  /// Primary constructor for [ObservationReferenceRange]

  ObservationReferenceRange({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationReferenceRange.fromJson(Map<String, dynamic> json) {
    return ObservationReferenceRange(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      low: json['low'] != null
          ? Quantity.fromJson(
              json['low'] as Map<String, dynamic>,
            )
          : null,
      high: json['high'] != null
          ? Quantity.fromJson(
              json['high'] as Map<String, dynamic>,
            )
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      appliesTo: json['appliesTo'] != null
          ? (json['appliesTo'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      age: json['age'] != null
          ? Range.fromJson(
              json['age'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
    );
  }

  /// Deserialize [ObservationReferenceRange] from a [String]
  /// or [YamlMap] object
  factory ObservationReferenceRange.fromYaml(dynamic yaml) => yaml is String
      ? ObservationReferenceRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ObservationReferenceRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ObservationReferenceRange cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ObservationReferenceRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationReferenceRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationReferenceRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ObservationReferenceRange';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [low]
  /// The value of the low bound of the reference range. The low bound of the
  /// reference range endpoint is inclusive of the value (e.g. reference
  /// range is >=5 - <=9). If the low bound is omitted, it is assumed to be
  /// meaningless (e.g. reference range is <=2.3).
  final Quantity? low;

  /// [high]
  /// The value of the high bound of the reference range. The high bound of
  /// the reference range endpoint is inclusive of the value (e.g. reference
  /// range is >=5 - <=9). If the high bound is omitted, it is assumed to be
  /// meaningless (e.g. reference range is >= 2.3).
  final Quantity? high;

  /// [type]
  /// Codes to indicate the what part of the targeted reference population it
  /// applies to. For example, the normal or therapeutic range.
  final CodeableConcept? type;

  /// [appliesTo]
  /// Codes to indicate the target population this reference range applies
  /// to. For example, a reference range may be based on the normal
  /// population or a particular sex or race. Multiple `appliesTo` are
  /// interpreted as an "AND" of the target populations. For example, to
  /// represent a target population of African American females, both a code
  /// of female and a code for African American would be used.
  final List<CodeableConcept>? appliesTo;

  /// [age]
  /// The age at which this reference range is applicable. This is a neonatal
  /// age (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [text]
  /// Text based reference range in an observation which may be used when a
  /// quantitative range is not appropriate for an observation. An example
  /// would be a reference value of "Negative" or a list or table of
  /// "normals".
  final FhirString? text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (low != null) {
      final fieldJson3 = low!.toJson();
      json['low'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_low'] = fieldJson3['_value'];
      }
    }

    if (high != null) {
      final fieldJson4 = high!.toJson();
      json['high'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_high'] = fieldJson4['_value'];
      }
    }

    if (type != null) {
      final fieldJson5 = type!.toJson();
      json['type'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_type'] = fieldJson5['_value'];
      }
    }

    if (appliesTo != null && appliesTo!.isNotEmpty) {
      final fieldJson6 = appliesTo!.map((e) => e.toJson()).toList();
      json['appliesTo'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_appliesTo'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (age != null) {
      final fieldJson7 = age!.toJson();
      json['age'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_age'] = fieldJson7['_value'];
      }
    }

    if (text != null) {
      final fieldJson8 = text!.toJson();
      json['text'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_text'] = fieldJson8['_value'];
      }
    }

    return json;
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ObservationComponent]
/// Some observations have multiple component observations. These component
/// observations are expressed as separate code value pairs that share the
/// same attributes. Examples include systolic and diastolic component
/// observations for blood pressure measurement and multiple component
/// observations for genetics observations.
class ObservationComponent extends BackboneElement {
  /// Primary constructor for [ObservationComponent]

  ObservationComponent({
    super.id,
    this.extension_,
    super.modifierExtension,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationComponent.fromJson(Map<String, dynamic> json) {
    return ObservationComponent(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueString: json['valueString'] != null
          ? FhirString.fromJson({
              'value': json['valueString'],
              '_value': json['_valueString'],
            })
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger.fromJson({
              'value': json['valueInteger'],
              '_value': json['_valueInteger'],
            })
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueRatio: json['valueRatio'] != null
          ? Ratio.fromJson(
              json['valueRatio'] as Map<String, dynamic>,
            )
          : null,
      valueSampledData: json['valueSampledData'] != null
          ? SampledData.fromJson(
              json['valueSampledData'] as Map<String, dynamic>,
            )
          : null,
      valueTime: json['valueTime'] != null
          ? FhirTime.fromJson({
              'value': json['valueTime'],
              '_value': json['_valueTime'],
            })
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['valueDateTime'],
              '_value': json['_valueDateTime'],
            })
          : null,
      valuePeriod: json['valuePeriod'] != null
          ? Period.fromJson(
              json['valuePeriod'] as Map<String, dynamic>,
            )
          : null,
      dataAbsentReason: json['dataAbsentReason'] != null
          ? CodeableConcept.fromJson(
              json['dataAbsentReason'] as Map<String, dynamic>,
            )
          : null,
      interpretation: json['interpretation'] != null
          ? (json['interpretation'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referenceRange: json['referenceRange'] != null
          ? (json['referenceRange'] as List<dynamic>)
              .map<ObservationReferenceRange>(
                (v) => ObservationReferenceRange.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ObservationComponent] from a [String]
  /// or [YamlMap] object
  factory ObservationComponent.fromYaml(dynamic yaml) => yaml is String
      ? ObservationComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ObservationComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ObservationComponent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ObservationComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ObservationComponent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// Describes what was observed. Sometimes this is called the observation
  /// "code".
  final CodeableConcept code;

  /// [valueQuantity]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Quantity? valueQuantity;

  /// [valueCodeableConcept]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final CodeableConcept? valueCodeableConcept;

  /// [valueString]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirString? valueString;

  /// [valueBoolean]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirBoolean? valueBoolean;

  /// [valueInteger]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirInteger? valueInteger;

  /// [valueRange]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Range? valueRange;

  /// [valueRatio]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Ratio? valueRatio;

  /// [valueSampledData]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final SampledData? valueSampledData;

  /// [valueTime]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirTime? valueTime;

  /// [valueDateTime]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final FhirDateTime? valueDateTime;

  /// [valuePeriod]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final Period? valuePeriod;

  /// [dataAbsentReason]
  /// Provides a reason why the expected value in the element
  /// Observation.component.value[x] is missing.
  final CodeableConcept? dataAbsentReason;

  /// [interpretation]
  /// A categorical assessment of an observation value. For example, high,
  /// low, normal.
  final List<CodeableConcept>? interpretation;

  /// [referenceRange]
  /// Guidance on how to interpret the value by comparison to a normal or
  /// recommended range.
  final List<ObservationReferenceRange>? referenceRange;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    final fieldJson3 = code.toJson();
    json['code'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_code'] = fieldJson3['_value'];
    }

    if (valueQuantity != null) {
      final fieldJson4 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueQuantity'] = fieldJson4['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson5 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson5['_value'];
      }
    }

    if (valueString != null) {
      final fieldJson6 = valueString!.toJson();
      json['valueString'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueString'] = fieldJson6['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson7 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueBoolean'] = fieldJson7['_value'];
      }
    }

    if (valueInteger != null) {
      final fieldJson8 = valueInteger!.toJson();
      json['valueInteger'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_valueInteger'] = fieldJson8['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson9 = valueRange!.toJson();
      json['valueRange'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_valueRange'] = fieldJson9['_value'];
      }
    }

    if (valueRatio != null) {
      final fieldJson10 = valueRatio!.toJson();
      json['valueRatio'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_valueRatio'] = fieldJson10['_value'];
      }
    }

    if (valueSampledData != null) {
      final fieldJson11 = valueSampledData!.toJson();
      json['valueSampledData'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_valueSampledData'] = fieldJson11['_value'];
      }
    }

    if (valueTime != null) {
      final fieldJson12 = valueTime!.toJson();
      json['valueTime'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_valueTime'] = fieldJson12['_value'];
      }
    }

    if (valueDateTime != null) {
      final fieldJson13 = valueDateTime!.toJson();
      json['valueDateTime'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_valueDateTime'] = fieldJson13['_value'];
      }
    }

    if (valuePeriod != null) {
      final fieldJson14 = valuePeriod!.toJson();
      json['valuePeriod'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_valuePeriod'] = fieldJson14['_value'];
      }
    }

    if (dataAbsentReason != null) {
      final fieldJson15 = dataAbsentReason!.toJson();
      json['dataAbsentReason'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_dataAbsentReason'] = fieldJson15['_value'];
      }
    }

    if (interpretation != null && interpretation!.isNotEmpty) {
      final fieldJson16 = interpretation!.map((e) => e.toJson()).toList();
      json['interpretation'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_interpretation'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (referenceRange != null && referenceRange!.isNotEmpty) {
      final fieldJson17 = referenceRange!.map((e) => e.toJson()).toList();
      json['referenceRange'] = fieldJson17.map((e) => e['value']).toList();
      if (fieldJson17.any((e) => e['_value'] != null)) {
        json['_referenceRange'] = fieldJson17.map((e) => e['_value']).toList();
      }
    }

    return json;
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
    FhirBoolean? valueBoolean,
    FhirInteger? valueInteger,
    Range? valueRange,
    Ratio? valueRatio,
    SampledData? valueSampledData,
    FhirTime? valueTime,
    FhirDateTime? valueDateTime,
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
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueInteger: valueInteger ?? this.valueInteger,
      valueRange: valueRange ?? this.valueRange,
      valueRatio: valueRatio ?? this.valueRatio,
      valueSampledData: valueSampledData ?? this.valueSampledData,
      valueTime: valueTime ?? this.valueTime,
      valueDateTime: valueDateTime ?? this.valueDateTime,
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
}
