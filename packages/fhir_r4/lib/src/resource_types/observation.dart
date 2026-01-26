import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'observation.g.dart';

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
    EffectiveXObservation? effectiveX,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
    Timing? effectiveTiming,
    FhirInstant? effectiveInstant,
    this.issued,
    this.performer,
    ValueXObservation? valueX,
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
  })  : effectiveX = effectiveX ??
            effectiveDateTime ??
            effectivePeriod ??
            effectiveTiming ??
            effectiveInstant,
        valueX = valueX ??
            valueQuantity ??
            valueCodeableConcept ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueRange ??
            valueRatio ??
            valueSampledData ??
            valueTime ??
            valueDateTime ??
            valuePeriod,
        super(
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXObservation>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
          'effectiveTiming': Timing.fromJson,
          'effectiveInstant': FhirInstant.fromJson,
        },
      ),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      valueX: JsonParser.parsePolymorphic<ValueXObservation>(
        json,
        {
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
        },
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationComponent>(
            (v) => ObservationComponent.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return Observation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [effectiveDateTime] as a FhirDateTime
  FhirDateTime? get effectiveDateTime => effectiveX?.isAs<FhirDateTime>();

  /// Getter for [effectivePeriod] as a Period
  Period? get effectivePeriod => effectiveX?.isAs<Period>();

  /// Getter for [effectiveTiming] as a Timing
  Timing? get effectiveTiming => effectiveX?.isAs<Timing>();

  /// Getter for [effectiveInstant] as a FhirInstant
  FhirInstant? get effectiveInstant => effectiveX?.isAs<FhirInstant>();

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

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX?.isAs<FhirInteger>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX?.isAs<Ratio>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX?.isAs<SampledData>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX?.isAs<FhirTime>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX?.isAs<FhirDateTime>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX?.isAs<Period>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'basedOn',
      basedOn,
    );
    addField(
      'partOf',
      partOf,
    );
    addField(
      'status',
      status,
    );
    addField(
      'category',
      category,
    );
    addField(
      'code',
      code,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'focus',
      focus,
    );
    addField(
      'encounter',
      encounter,
    );
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField(
        'effective${fhirType.capitalize()}',
        effectiveX,
      );
    }

    addField(
      'issued',
      issued,
    );
    addField(
      'performer',
      performer,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'dataAbsentReason',
      dataAbsentReason,
    );
    addField(
      'interpretation',
      interpretation,
    );
    addField(
      'note',
      note,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'method',
      method,
    );
    addField(
      'specimen',
      specimen,
    );
    addField(
      'device',
      device,
    );
    addField(
      'referenceRange',
      referenceRange,
    );
    addField(
      'hasMember',
      hasMember,
    );
    addField(
      'derivedFrom',
      derivedFrom,
    );
    addField(
      'component',
      component,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'basedOn',
      'partOf',
      'status',
      'category',
      'code',
      'subject',
      'focus',
      'encounter',
      'effectiveX',
      'issued',
      'performer',
      'valueX',
      'dataAbsentReason',
      'interpretation',
      'note',
      'bodySite',
      'method',
      'specimen',
      'device',
      'referenceRange',
      'hasMember',
      'derivedFrom',
      'component',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'partOf':
        if (partOf != null) {
          fields.addAll(partOf!);
        }
      case 'status':
        fields.add(status);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'code':
        fields.add(code);
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'focus':
        if (focus != null) {
          fields.addAll(focus!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveX':
        if (effectiveX != null) {
          fields.add(effectiveX!);
        }
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTime) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is Period) {
          fields.add(effectiveX!);
        }
      case 'effectiveTiming':
        if (effectiveX is Timing) {
          fields.add(effectiveX!);
        }
      case 'effectiveInstant':
        if (effectiveX is FhirInstant) {
          fields.add(effectiveX!);
        }
      case 'issued':
        if (issued != null) {
          fields.add(issued!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX!);
        }
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'interpretation':
        if (interpretation != null) {
          fields.addAll(interpretation!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.add(bodySite!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.add(specimen!);
        }
      case 'device':
        if (device != null) {
          fields.add(device!);
        }
      case 'referenceRange':
        if (referenceRange != null) {
          fields.addAll(referenceRange!);
        }
      case 'hasMember':
        if (hasMember != null) {
          fields.addAll(hasMember!);
        }
      case 'derivedFrom':
        if (derivedFrom != null) {
          fields.addAll(derivedFrom!);
        }
      case 'component':
        if (component != null) {
          fields.addAll(component!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Observation clone() => copyWith();

  /// Copy function for [Observation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationCopyWith<Observation> get copyWith =>
      _$ObservationCopyWithImpl<Observation>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Observation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ObservationReferenceRange>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      hasMember,
      o.hasMember,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ObservationComponent>(
      component,
      o.component,
    )) {
      return false;
    }
    return true;
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
  }) : super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
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
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ObservationReferenceRange.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'low',
      low,
    );
    addField(
      'high',
      high,
    );
    addField(
      'type',
      type,
    );
    addField(
      'appliesTo',
      appliesTo,
    );
    addField(
      'age',
      age,
    );
    addField(
      'text',
      text,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'low',
      'high',
      'type',
      'appliesTo',
      'age',
      'text',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'low':
        if (low != null) {
          fields.add(low!);
        }
      case 'high':
        if (high != null) {
          fields.add(high!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'appliesTo':
        if (appliesTo != null) {
          fields.addAll(appliesTo!);
        }
      case 'age':
        if (age != null) {
          fields.add(age!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ObservationReferenceRange clone() => copyWith();

  /// Copy function for [ObservationReferenceRange]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationReferenceRangeCopyWith<ObservationReferenceRange> get copyWith =>
      _$ObservationReferenceRangeCopyWithImpl<ObservationReferenceRange>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationReferenceRange) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      age,
      o.age,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    return true;
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
    ValueXObservationComponent? valueX,
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
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
    super.disallowExtensions,
  })  : valueX = valueX ??
            valueQuantity ??
            valueCodeableConcept ??
            valueString ??
            valueBoolean ??
            valueInteger ??
            valueRange ??
            valueRatio ??
            valueSampledData ??
            valueTime ??
            valueDateTime ??
            valuePeriod,
        super();

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      valueX: JsonParser.parsePolymorphic<ValueXObservationComponent>(
        json,
        {
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
        },
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRange>(
            (v) => ObservationReferenceRange.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return ObservationComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueString] as a FhirString
  FhirString? get valueString => valueX?.isAs<FhirString>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueInteger] as a FhirInteger
  FhirInteger? get valueInteger => valueX?.isAs<FhirInteger>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueRatio] as a Ratio
  Ratio? get valueRatio => valueX?.isAs<Ratio>();

  /// Getter for [valueSampledData] as a SampledData
  SampledData? get valueSampledData => valueX?.isAs<SampledData>();

  /// Getter for [valueTime] as a FhirTime
  FhirTime? get valueTime => valueX?.isAs<FhirTime>();

  /// Getter for [valueDateTime] as a FhirDateTime
  FhirDateTime? get valueDateTime => valueX?.isAs<FhirDateTime>();

  /// Getter for [valuePeriod] as a Period
  Period? get valuePeriod => valueX?.isAs<Period>();

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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    addField(
      'dataAbsentReason',
      dataAbsentReason,
    );
    addField(
      'interpretation',
      interpretation,
    );
    addField(
      'referenceRange',
      referenceRange,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'valueX',
      'dataAbsentReason',
      'interpretation',
      'referenceRange',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        fields.add(code);
      case 'value':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueX':
        if (valueX != null) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueString':
        if (valueX is FhirString) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      case 'valueInteger':
        if (valueX is FhirInteger) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueRatio':
        if (valueX is Ratio) {
          fields.add(valueX!);
        }
      case 'valueSampledData':
        if (valueX is SampledData) {
          fields.add(valueX!);
        }
      case 'valueTime':
        if (valueX is FhirTime) {
          fields.add(valueX!);
        }
      case 'valueDateTime':
        if (valueX is FhirDateTime) {
          fields.add(valueX!);
        }
      case 'valuePeriod':
        if (valueX is Period) {
          fields.add(valueX!);
        }
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'interpretation':
        if (interpretation != null) {
          fields.addAll(interpretation!);
        }
      case 'referenceRange':
        if (referenceRange != null) {
          fields.addAll(referenceRange!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  ObservationComponent clone() => copyWith();

  /// Copy function for [ObservationComponent]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ObservationComponentCopyWith<ObservationComponent> get copyWith =>
      _$ObservationComponentCopyWithImpl<ObservationComponent>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationComponent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<ObservationReferenceRange>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    return true;
  }
}
