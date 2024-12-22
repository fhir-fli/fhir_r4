import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Observation]
/// Measurements and simple assertions made about a patient, device or
/// other subject.
class Observation extends DomainResource {
  /// Primary constructor for
  /// [Observation]

  const Observation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
    this.effectiveX,
    this.issued,
    this.performer,
    this.valueX,
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
  }) : super(
          resourceType: R4ResourceType.Observation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Observation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Observation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXObservation>(json, {
        'effectiveDateTime': FhirDateTime.fromJson,
        'effectivePeriod': Period.fromJson,
        'effectiveTiming': Timing.fromJson,
        'effectiveInstant': FhirInstant.fromJson,
      }),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXObservation>(json, {
        'valueQuantity': Quantity.fromJson,
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueString': FhirString.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueInteger': FhirInteger.fromJson,
        'valueRange': Range.fromJson,
        'valueRatio': Ratio.fromJson,
        'valueSampledData': SampledData.fromJson,
        'valueTime': FhirTime.fromJson,
        'valueDateTime': FhirDateTime.fromJson,
        'valuePeriod': Period.fromJson,
      }),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
      ),
      specimen: JsonParser.parseObject<Reference>(
        json,
        'specimen',
        Reference.fromJson,
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
      ),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRange>(
            (v) => ObservationReferenceRange.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationComponent>(
            (v) => ObservationComponent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [Observation]
  /// from a [String] or [YamlMap] object
  factory Observation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Observation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Observation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Observation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Observation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Observation.fromJsonString(
    String source,
  ) {
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

  /// [effectiveX]
  /// The time or time-period the observed value is asserted as being true.
  /// For biological subjects - e.g. human patients - this is usually called
  /// the "physiologically relevant time". This is usually either the time of
  /// the procedure or of specimen collection, but very often the source of
  /// the date/time is not known, only the date/time itself.
  final EffectiveXObservation? effectiveX;

  /// [issued]
  /// The date and time this version of the observation was made available to
  /// providers, typically after the results have been reviewed and verified.
  final FhirInstant? issued;

  /// [performer]
  /// Who was responsible for asserting the observed value as "true".
  final List<Reference>? performer;

  /// [valueX]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final ValueXObservation? valueX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('partOf', partOf);
    addField('status', status);
    addField('category', category);
    addField('code', code);
    addField('subject', subject);
    addField('focus', focus);
    addField('encounter', encounter);
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField('effective${fhirType.capitalize()}', effectiveX);
    }

    addField('issued', issued);
    addField('performer', performer);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    addField('dataAbsentReason', dataAbsentReason);
    addField('interpretation', interpretation);
    addField('note', note);
    addField('bodySite', bodySite);
    addField('method', method);
    addField('specimen', specimen);
    addField('device', device);
    addField('referenceRange', referenceRange);
    addField('hasMember', hasMember);
    addField('derivedFrom', derivedFrom);
    addField('component', component);
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
    EffectiveXObservation? effectiveX,
    FhirInstant? issued,
    List<Reference>? performer,
    ValueXObservation? valueX,
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
      effectiveX: effectiveX ?? this.effectiveX,
      issued: issued ?? this.issued,
      performer: performer ?? this.performer,
      valueX: valueX ?? this.valueX,
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

/// [ObservationReferenceRange]
/// Guidance on how to interpret the value by comparison to a normal or
/// recommended range. Multiple reference ranges are interpreted as an
/// "OR". In other words, to represent two distinct target populations, two
/// `referenceRange` elements would be used.
class ObservationReferenceRange extends BackboneElement {
  /// Primary constructor for
  /// [ObservationReferenceRange]

  const ObservationReferenceRange({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.low,
    this.high,
    this.type,
    this.appliesTo,
    this.age,
    this.text,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationReferenceRange.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationReferenceRange(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      low: JsonParser.parseObject<Quantity>(
        json,
        'low',
        Quantity.fromJson,
      ),
      high: JsonParser.parseObject<Quantity>(
        json,
        'high',
        Quantity.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      age: JsonParser.parseObject<Range>(
        json,
        'age',
        Range.fromJson,
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ObservationReferenceRange]
  /// from a [String] or [YamlMap] object
  factory ObservationReferenceRange.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationReferenceRange.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationReferenceRange.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationReferenceRange '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationReferenceRange]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationReferenceRange.fromJsonString(
    String source,
  ) {
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('low', low);
    addField('high', high);
    addField('type', type);
    addField('appliesTo', appliesTo);
    addField('age', age);
    addField('text', text);
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
  /// Primary constructor for
  /// [ObservationComponent]

  const ObservationComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.valueX,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationComponent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXObservationComponent>(json, {
        'valueQuantity': Quantity.fromJson,
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueString': FhirString.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueInteger': FhirInteger.fromJson,
        'valueRange': Range.fromJson,
        'valueRatio': Ratio.fromJson,
        'valueSampledData': SampledData.fromJson,
        'valueTime': FhirTime.fromJson,
        'valueDateTime': FhirDateTime.fromJson,
        'valuePeriod': Period.fromJson,
      }),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRange>(
            (v) => ObservationReferenceRange.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ObservationComponent]
  /// from a [String] or [YamlMap] object
  factory ObservationComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationComponent.fromJsonString(
    String source,
  ) {
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

  /// [code]
  /// Describes what was observed. Sometimes this is called the observation
  /// "code".
  final CodeableConcept code;

  /// [valueX]
  /// The information determined as a result of making the observation, if
  /// the information has a simple value.
  final ValueXObservationComponent? valueX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    addField('dataAbsentReason', dataAbsentReason);
    addField('interpretation', interpretation);
    addField('referenceRange', referenceRange);
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
    ValueXObservationComponent? valueX,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<ObservationReferenceRange>? referenceRange,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ObservationComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueX: valueX ?? this.valueX,
      dataAbsentReason: dataAbsentReason ?? this.dataAbsentReason,
      interpretation: interpretation ?? this.interpretation,
      referenceRange: referenceRange ?? this.referenceRange,
    );
  }
}
