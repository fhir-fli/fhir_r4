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
          objectPath: 'Observation',
          resourceType: R4ResourceType.Observation,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Observation.empty() => Observation(
        status: ObservationStatus.values.first,
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Observation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation';
    return Observation(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.partOf',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
        '$objectPath.status',
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      focus: (json['focus'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.focus',
              },
            ),
          )
          .toList(),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXObservation>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
          'effectiveTiming': Timing.fromJson,
          'effectiveInstant': FhirInstant.fromJson,
        },
        objectPath,
      ),
      issued: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'issued',
        FhirInstant.fromJson,
        '$objectPath.issued',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
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
        objectPath,
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
        '$objectPath.dataAbsentReason',
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interpretation',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      bodySite: JsonParser.parseObject<CodeableConcept>(
        json,
        'bodySite',
        CodeableConcept.fromJson,
        '$objectPath.bodySite',
      ),
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      specimen: JsonParser.parseObject<Reference>(
        json,
        'specimen',
        Reference.fromJson,
        '$objectPath.specimen',
      ),
      device: JsonParser.parseObject<Reference>(
        json,
        'device',
        Reference.fromJson,
        '$objectPath.device',
      ),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRange>(
            (v) => ObservationReferenceRange.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceRange',
              },
            ),
          )
          .toList(),
      hasMember: (json['hasMember'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.hasMember',
              },
            ),
          )
          .toList(),
      derivedFrom: (json['derivedFrom'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.derivedFrom',
              },
            ),
          )
          .toList(),
      component: (json['component'] as List<dynamic>?)
          ?.map<ObservationComponent>(
            (v) => ObservationComponent.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.component',
              },
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
        fields.add(effectiveX!);
      case 'effectiveX':
        fields.add(effectiveX!);
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
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [...?contained, child];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?basedOn, ...child];
            return copyWith(basedOn: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?basedOn, child];
            return copyWith(basedOn: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'partOf':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?partOf, ...child];
            return copyWith(partOf: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?partOf, child];
            return copyWith(partOf: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ObservationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?category, child];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'focus':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?focus, ...child];
            return copyWith(focus: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?focus, child];
            return copyWith(focus: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveX':
        {
          if (child is EffectiveXObservation) {
            return copyWith(effectiveX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(effectiveX: child);
            }
            if (child is Period) {
              return copyWith(effectiveX: child);
            }
            if (child is Timing) {
              return copyWith(effectiveX: child);
            }
            if (child is FhirInstant) {
              return copyWith(effectiveX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'effectiveFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectivePeriod':
        {
          if (child is Period) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveTiming':
        {
          if (child is Timing) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'effectiveFhirInstant':
        {
          if (child is FhirInstant) {
            return copyWith(effectiveX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'issued':
        {
          if (child is FhirInstant) {
            return copyWith(issued: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?performer, ...child];
            return copyWith(performer: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?performer, child];
            return copyWith(performer: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXObservation) {
            return copyWith(valueX: child);
          } else {
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is Range) {
              return copyWith(valueX: child);
            }
            if (child is Ratio) {
              return copyWith(valueX: child);
            }
            if (child is SampledData) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is Period) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dataAbsentReason':
        {
          if (child is CodeableConcept) {
            return copyWith(dataAbsentReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'interpretation':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?interpretation, ...child];
            return copyWith(interpretation: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?interpretation, child];
            return copyWith(interpretation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [...?note, child];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is CodeableConcept) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'specimen':
        {
          if (child is Reference) {
            return copyWith(specimen: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'device':
        {
          if (child is Reference) {
            return copyWith(device: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceRange':
        {
          if (child is List<ObservationReferenceRange>) {
            // Add all elements from passed list
            final newList = [...?referenceRange, ...child];
            return copyWith(referenceRange: newList);
          } else if (child is ObservationReferenceRange) {
            // Add single element to existing list or create new list
            final newList = [...?referenceRange, child];
            return copyWith(referenceRange: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'hasMember':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?hasMember, ...child];
            return copyWith(hasMember: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?hasMember, child];
            return copyWith(hasMember: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'derivedFrom':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?derivedFrom, ...child];
            return copyWith(derivedFrom: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?derivedFrom, child];
            return copyWith(derivedFrom: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'component':
        {
          if (child is List<ObservationComponent>) {
            // Add all elements from passed list
            final newList = [...?component, ...child];
            return copyWith(component: newList);
          } else if (child is ObservationComponent) {
            // Add single element to existing list or create new list
            final newList = [...?component, child];
            return copyWith(component: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'basedOn':
        return ['Reference'];
      case 'partOf':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'category':
        return ['CodeableConcept'];
      case 'code':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'focus':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'effective':
      case 'effectiveX':
        return ['FhirDateTime', 'Period', 'Timing', 'FhirInstant'];
      case 'effectiveDateTime':
        return ['FhirDateTime'];
      case 'effectivePeriod':
        return ['Period'];
      case 'effectiveTiming':
        return ['Timing'];
      case 'effectiveInstant':
        return ['FhirInstant'];
      case 'issued':
        return ['FhirInstant'];
      case 'performer':
        return ['Reference'];
      case 'value':
      case 'valueX':
        return [
          'Quantity',
          'CodeableConcept',
          'FhirString',
          'FhirBoolean',
          'FhirInteger',
          'Range',
          'Ratio',
          'SampledData',
          'FhirTime',
          'FhirDateTime',
          'Period',
        ];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueString':
        return ['FhirString'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valuePeriod':
        return ['Period'];
      case 'dataAbsentReason':
        return ['CodeableConcept'];
      case 'interpretation':
        return ['CodeableConcept'];
      case 'note':
        return ['Annotation'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'method':
        return ['CodeableConcept'];
      case 'specimen':
        return ['Reference'];
      case 'device':
        return ['Reference'];
      case 'referenceRange':
        return ['ObservationReferenceRange'];
      case 'hasMember':
        return ['Reference'];
      case 'derivedFrom':
        return ['Reference'];
      case 'component':
        return ['ObservationComponent'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Observation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Observation createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'basedOn':
        {
          return copyWith(
            basedOn: <Reference>[],
          );
        }
      case 'partOf':
        {
          return copyWith(
            partOf: <Reference>[],
          );
        }
      case 'status':
        {
          return copyWith(
            status: ObservationStatus.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'focus':
        {
          return copyWith(
            focus: <Reference>[],
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'effective':
      case 'effectiveX':
      case 'effectiveDateTime':
        {
          return copyWith(
            effectiveX: FhirDateTime.empty(),
          );
        }
      case 'effectivePeriod':
        {
          return copyWith(
            effectiveX: Period.empty(),
          );
        }
      case 'effectiveTiming':
        {
          return copyWith(
            effectiveX: Timing.empty(),
          );
        }
      case 'effectiveInstant':
        {
          return copyWith(
            effectiveX: FhirInstant.empty(),
          );
        }
      case 'issued':
        {
          return copyWith(
            issued: FhirInstant.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: <Reference>[],
          );
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueCodeableConcept':
        {
          return copyWith(
            valueX: CodeableConcept.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueRange':
        {
          return copyWith(
            valueX: Range.empty(),
          );
        }
      case 'valueRatio':
        {
          return copyWith(
            valueX: Ratio.empty(),
          );
        }
      case 'valueSampledData':
        {
          return copyWith(
            valueX: SampledData.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valuePeriod':
        {
          return copyWith(
            valueX: Period.empty(),
          );
        }
      case 'dataAbsentReason':
        {
          return copyWith(
            dataAbsentReason: CodeableConcept.empty(),
          );
        }
      case 'interpretation':
        {
          return copyWith(
            interpretation: <CodeableConcept>[],
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: CodeableConcept.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      case 'specimen':
        {
          return copyWith(
            specimen: Reference.empty(),
          );
        }
      case 'device':
        {
          return copyWith(
            device: Reference.empty(),
          );
        }
      case 'referenceRange':
        {
          return copyWith(
            referenceRange: <ObservationReferenceRange>[],
          );
        }
      case 'hasMember':
        {
          return copyWith(
            hasMember: <Reference>[],
          );
        }
      case 'derivedFrom':
        {
          return copyWith(
            derivedFrom: <Reference>[],
          );
        }
      case 'component':
        {
          return copyWith(
            component: <ObservationComponent>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  Observation clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool basedOn = false,
    bool partOf = false,
    bool category = false,
    bool subject = false,
    bool focus = false,
    bool encounter = false,
    bool effective = false,
    bool issued = false,
    bool performer = false,
    bool value = false,
    bool dataAbsentReason = false,
    bool interpretation = false,
    bool note = false,
    bool bodySite = false,
    bool method = false,
    bool specimen = false,
    bool device = false,
    bool referenceRange = false,
    bool hasMember = false,
    bool derivedFrom = false,
    bool component = false,
  }) {
    return Observation(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      basedOn: basedOn ? null : this.basedOn,
      partOf: partOf ? null : this.partOf,
      status: status,
      category: category ? null : this.category,
      code: code,
      subject: subject ? null : this.subject,
      focus: focus ? null : this.focus,
      encounter: encounter ? null : this.encounter,
      effectiveX: effective ? null : effectiveX,
      issued: issued ? null : this.issued,
      performer: performer ? null : this.performer,
      valueX: value ? null : valueX,
      dataAbsentReason: dataAbsentReason ? null : this.dataAbsentReason,
      interpretation: interpretation ? null : this.interpretation,
      note: note ? null : this.note,
      bodySite: bodySite ? null : this.bodySite,
      method: method ? null : this.method,
      specimen: specimen ? null : this.specimen,
      device: device ? null : this.device,
      referenceRange: referenceRange ? null : this.referenceRange,
      hasMember: hasMember ? null : this.hasMember,
      derivedFrom: derivedFrom ? null : this.derivedFrom,
      component: component ? null : this.component,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Observation(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      partOf: partOf
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.partOf',
                ),
              )
              .toList() ??
          this.partOf,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      focus: focus
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.focus',
                ),
              )
              .toList() ??
          this.focus,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      effectiveX: effectiveX?.copyWith(
            objectPath: '$newObjectPath.effectiveX',
          ) as EffectiveXObservation? ??
          this.effectiveX,
      issued: issued?.copyWith(
            objectPath: '$newObjectPath.issued',
          ) ??
          this.issued,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXObservation? ??
          this.valueX,
      dataAbsentReason: dataAbsentReason?.copyWith(
            objectPath: '$newObjectPath.dataAbsentReason',
          ) ??
          this.dataAbsentReason,
      interpretation: interpretation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.interpretation',
                ),
              )
              .toList() ??
          this.interpretation,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      bodySite: bodySite?.copyWith(
            objectPath: '$newObjectPath.bodySite',
          ) ??
          this.bodySite,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      specimen: specimen?.copyWith(
            objectPath: '$newObjectPath.specimen',
          ) ??
          this.specimen,
      device: device?.copyWith(
            objectPath: '$newObjectPath.device',
          ) ??
          this.device,
      referenceRange: referenceRange
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referenceRange',
                ),
              )
              .toList() ??
          this.referenceRange,
      hasMember: hasMember
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.hasMember',
                ),
              )
              .toList() ??
          this.hasMember,
      derivedFrom: derivedFrom
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.derivedFrom',
                ),
              )
              .toList() ??
          this.derivedFrom,
      component: component
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.component',
                ),
              )
              .toList() ??
          this.component,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Observation) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      partOf,
      o.partOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      focus,
      o.focus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      effectiveX,
      o.effectiveX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      issued,
      o.issued,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      device,
      o.device,
    )) {
      return false;
    }
    if (!listEquals<ObservationReferenceRange>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      hasMember,
      o.hasMember,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      derivedFrom,
      o.derivedFrom,
    )) {
      return false;
    }
    if (!listEquals<ObservationComponent>(
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
  }) : super(
          objectPath: 'Observation.referenceRange',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ObservationReferenceRange.empty() =>
      const ObservationReferenceRange();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationReferenceRange.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation.referenceRange';
    return ObservationReferenceRange(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      low: JsonParser.parseObject<Quantity>(
        json,
        'low',
        Quantity.fromJson,
        '$objectPath.low',
      ),
      high: JsonParser.parseObject<Quantity>(
        json,
        'high',
        Quantity.fromJson,
        '$objectPath.high',
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
      appliesTo: (json['appliesTo'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.appliesTo',
              },
            ),
          )
          .toList(),
      age: JsonParser.parseObject<Range>(
        json,
        'age',
        Range.fromJson,
        '$objectPath.age',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'low':
        {
          if (child is Quantity) {
            return copyWith(low: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'high':
        {
          if (child is Quantity) {
            return copyWith(high: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'appliesTo':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?appliesTo, ...child];
            return copyWith(appliesTo: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?appliesTo, child];
            return copyWith(appliesTo: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'age':
        {
          if (child is Range) {
            return copyWith(age: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is FhirString) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'low':
        return ['Quantity'];
      case 'high':
        return ['Quantity'];
      case 'type':
        return ['CodeableConcept'];
      case 'appliesTo':
        return ['CodeableConcept'];
      case 'age':
        return ['Range'];
      case 'text':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationReferenceRange]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ObservationReferenceRange createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'low':
        {
          return copyWith(
            low: Quantity.empty(),
          );
        }
      case 'high':
        {
          return copyWith(
            high: Quantity.empty(),
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'appliesTo':
        {
          return copyWith(
            appliesTo: <CodeableConcept>[],
          );
        }
      case 'age':
        {
          return copyWith(
            age: Range.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ObservationReferenceRange clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool low = false,
    bool high = false,
    bool type = false,
    bool appliesTo = false,
    bool age = false,
    bool text = false,
  }) {
    return ObservationReferenceRange(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      low: low ? null : this.low,
      high: high ? null : this.high,
      type: type ? null : this.type,
      appliesTo: appliesTo ? null : this.appliesTo,
      age: age ? null : this.age,
      text: text ? null : this.text,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ObservationReferenceRange(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      low: low?.copyWith(
            objectPath: '$newObjectPath.low',
          ) ??
          this.low,
      high: high?.copyWith(
            objectPath: '$newObjectPath.high',
          ) ??
          this.high,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      appliesTo: appliesTo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.appliesTo',
                ),
              )
              .toList() ??
          this.appliesTo,
      age: age?.copyWith(
            objectPath: '$newObjectPath.age',
          ) ??
          this.age,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationReferenceRange) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      low,
      o.low,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      high,
      o.high,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      appliesTo,
      o.appliesTo,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      age,
      o.age,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
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
    this.valueX,
    this.dataAbsentReason,
    this.interpretation,
    this.referenceRange,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Observation.component',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ObservationComponent.empty() => ObservationComponent(
        code: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Observation.component';
    return ObservationComponent(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
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
        objectPath,
      ),
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
        '$objectPath.dataAbsentReason',
      ),
      interpretation: (json['interpretation'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.interpretation',
              },
            ),
          )
          .toList(),
      referenceRange: (json['referenceRange'] as List<dynamic>?)
          ?.map<ObservationReferenceRange>(
            (v) => ObservationReferenceRange.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceRange',
              },
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
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
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
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?extension_, child];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueX':
        {
          if (child is ValueXObservationComponent) {
            return copyWith(valueX: child);
          } else {
            if (child is Quantity) {
              return copyWith(valueX: child);
            }
            if (child is CodeableConcept) {
              return copyWith(valueX: child);
            }
            if (child is FhirString) {
              return copyWith(valueX: child);
            }
            if (child is FhirBoolean) {
              return copyWith(valueX: child);
            }
            if (child is FhirInteger) {
              return copyWith(valueX: child);
            }
            if (child is Range) {
              return copyWith(valueX: child);
            }
            if (child is Ratio) {
              return copyWith(valueX: child);
            }
            if (child is SampledData) {
              return copyWith(valueX: child);
            }
            if (child is FhirTime) {
              return copyWith(valueX: child);
            }
            if (child is FhirDateTime) {
              return copyWith(valueX: child);
            }
            if (child is Period) {
              return copyWith(valueX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'valueQuantity':
        {
          if (child is Quantity) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirString':
        {
          if (child is FhirString) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirInteger':
        {
          if (child is FhirInteger) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRange':
        {
          if (child is Range) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueRatio':
        {
          if (child is Ratio) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueSampledData':
        {
          if (child is SampledData) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirTime':
        {
          if (child is FhirTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valueFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'valuePeriod':
        {
          if (child is Period) {
            return copyWith(valueX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'dataAbsentReason':
        {
          if (child is CodeableConcept) {
            return copyWith(dataAbsentReason: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'interpretation':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?interpretation, ...child];
            return copyWith(interpretation: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?interpretation, child];
            return copyWith(interpretation: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'referenceRange':
        {
          if (child is List<ObservationReferenceRange>) {
            // Add all elements from passed list
            final newList = [...?referenceRange, ...child];
            return copyWith(referenceRange: newList);
          } else if (child is ObservationReferenceRange) {
            // Add single element to existing list or create new list
            final newList = [...?referenceRange, child];
            return copyWith(referenceRange: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'code':
        return ['CodeableConcept'];
      case 'value':
      case 'valueX':
        return [
          'Quantity',
          'CodeableConcept',
          'FhirString',
          'FhirBoolean',
          'FhirInteger',
          'Range',
          'Ratio',
          'SampledData',
          'FhirTime',
          'FhirDateTime',
          'Period',
        ];
      case 'valueQuantity':
        return ['Quantity'];
      case 'valueCodeableConcept':
        return ['CodeableConcept'];
      case 'valueString':
        return ['FhirString'];
      case 'valueBoolean':
        return ['FhirBoolean'];
      case 'valueInteger':
        return ['FhirInteger'];
      case 'valueRange':
        return ['Range'];
      case 'valueRatio':
        return ['Ratio'];
      case 'valueSampledData':
        return ['SampledData'];
      case 'valueTime':
        return ['FhirTime'];
      case 'valueDateTime':
        return ['FhirDateTime'];
      case 'valuePeriod':
        return ['Period'];
      case 'dataAbsentReason':
        return ['CodeableConcept'];
      case 'interpretation':
        return ['CodeableConcept'];
      case 'referenceRange':
        return ['ObservationReferenceRange'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ObservationComponent]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ObservationComponent createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'value':
      case 'valueX':
      case 'valueQuantity':
        {
          return copyWith(
            valueX: Quantity.empty(),
          );
        }
      case 'valueCodeableConcept':
        {
          return copyWith(
            valueX: CodeableConcept.empty(),
          );
        }
      case 'valueString':
        {
          return copyWith(
            valueX: FhirString.empty(),
          );
        }
      case 'valueBoolean':
        {
          return copyWith(
            valueX: FhirBoolean.empty(),
          );
        }
      case 'valueInteger':
        {
          return copyWith(
            valueX: FhirInteger.empty(),
          );
        }
      case 'valueRange':
        {
          return copyWith(
            valueX: Range.empty(),
          );
        }
      case 'valueRatio':
        {
          return copyWith(
            valueX: Ratio.empty(),
          );
        }
      case 'valueSampledData':
        {
          return copyWith(
            valueX: SampledData.empty(),
          );
        }
      case 'valueTime':
        {
          return copyWith(
            valueX: FhirTime.empty(),
          );
        }
      case 'valueDateTime':
        {
          return copyWith(
            valueX: FhirDateTime.empty(),
          );
        }
      case 'valuePeriod':
        {
          return copyWith(
            valueX: Period.empty(),
          );
        }
      case 'dataAbsentReason':
        {
          return copyWith(
            dataAbsentReason: CodeableConcept.empty(),
          );
        }
      case 'interpretation':
        {
          return copyWith(
            interpretation: <CodeableConcept>[],
          );
        }
      case 'referenceRange':
        {
          return copyWith(
            referenceRange: <ObservationReferenceRange>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ObservationComponent clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool value = false,
    bool dataAbsentReason = false,
    bool interpretation = false,
    bool referenceRange = false,
  }) {
    return ObservationComponent(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code,
      valueX: value ? null : valueX,
      dataAbsentReason: dataAbsentReason ? null : this.dataAbsentReason,
      interpretation: interpretation ? null : this.interpretation,
      referenceRange: referenceRange ? null : this.referenceRange,
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
    ValueXObservationComponent? valueX,
    CodeableConcept? dataAbsentReason,
    List<CodeableConcept>? interpretation,
    List<ObservationReferenceRange>? referenceRange,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ObservationComponent(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXObservationComponent? ??
          this.valueX,
      dataAbsentReason: dataAbsentReason?.copyWith(
            objectPath: '$newObjectPath.dataAbsentReason',
          ) ??
          this.dataAbsentReason,
      interpretation: interpretation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.interpretation',
                ),
              )
              .toList() ??
          this.interpretation,
      referenceRange: referenceRange
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referenceRange',
                ),
              )
              .toList() ??
          this.referenceRange,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ObservationComponent) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      dataAbsentReason,
      o.dataAbsentReason,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      interpretation,
      o.interpretation,
    )) {
      return false;
    }
    if (!listEquals<ObservationReferenceRange>(
      referenceRange,
      o.referenceRange,
    )) {
      return false;
    }
    return true;
  }
}
