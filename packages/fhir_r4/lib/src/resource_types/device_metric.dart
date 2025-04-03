import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceMetric]
/// Describes a measurement, calculation or setting capability of a medical
/// device.
class DeviceMetric extends DomainResource {
  /// Primary constructor for
  /// [DeviceMetric]

  const DeviceMetric({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.color,
    required this.category,
    this.measurementPeriod,
    this.calibration,
  }) : super(
          objectPath: 'DeviceMetric',
          resourceType: R4ResourceType.DeviceMetric,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceMetric.empty() => DeviceMetric(
        type: CodeableConcept.empty(),
        category: DeviceMetricCategory.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetric.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceMetric';
    return DeviceMetric(
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
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      )!,
      unit: JsonParser.parseObject<CodeableConcept>(
        json,
        'unit',
        CodeableConcept.fromJson,
        '$objectPath.unit',
      ),
      source: JsonParser.parseObject<Reference>(
        json,
        'source',
        Reference.fromJson,
        '$objectPath.source',
      ),
      parent: JsonParser.parseObject<Reference>(
        json,
        'parent',
        Reference.fromJson,
        '$objectPath.parent',
      ),
      operationalStatus:
          JsonParser.parsePrimitive<DeviceMetricOperationalStatus>(
        json,
        'operationalStatus',
        DeviceMetricOperationalStatus.fromJson,
        '$objectPath.operationalStatus',
      ),
      color: JsonParser.parsePrimitive<DeviceMetricColor>(
        json,
        'color',
        DeviceMetricColor.fromJson,
        '$objectPath.color',
      ),
      category: JsonParser.parsePrimitive<DeviceMetricCategory>(
        json,
        'category',
        DeviceMetricCategory.fromJson,
        '$objectPath.category',
      )!,
      measurementPeriod: JsonParser.parseObject<Timing>(
        json,
        'measurementPeriod',
        Timing.fromJson,
        '$objectPath.measurementPeriod',
      ),
      calibration: (json['calibration'] as List<dynamic>?)
          ?.map<DeviceMetricCalibration>(
            (v) => DeviceMetricCalibration.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.calibration',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceMetric]
  /// from a [String] or [YamlMap] object
  factory DeviceMetric.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetric.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetric.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetric '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetric]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetric.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetric.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceMetric';

  /// [identifier]
  /// Unique instance identifiers assigned to a device by the device or
  /// gateway software, manufacturers, other organizations or owners. For
  /// example: handle ID.
  final List<Identifier>? identifier;

  /// [type]
  /// Describes the type of the metric. For example: Heart Rate, PEEP
  /// Setting, etc.
  final CodeableConcept type;

  /// [unit]
  /// Describes the unit that an observed value determined for this metric
  /// will have. For example: Percent, Seconds, etc.
  final CodeableConcept? unit;

  /// [source]
  /// Describes the link to the Device that this DeviceMetric belongs to and
  /// that contains administrative device information such as manufacturer,
  /// serial number, etc.
  final Reference? source;

  /// [parent]
  /// Describes the link to the Device that this DeviceMetric belongs to and
  /// that provide information about the location of this DeviceMetric in the
  /// containment structure of the parent Device. An example would be a
  /// Device that represents a Channel. This reference can be used by a
  /// client application to distinguish DeviceMetrics that have the same
  /// type, but should be interpreted based on their containment location.
  final Reference? parent;

  /// [operationalStatus]
  /// Indicates current operational state of the device. For example: On,
  /// Off, Standby, etc.
  final DeviceMetricOperationalStatus? operationalStatus;

  /// [color]
  /// Describes the color representation for the metric. This is often used
  /// to aid clinicians to track and identify parameter types by color. In
  /// practice, consider a Patient Monitor that has ECG/HR and Pleth for
  /// example; the parameters are displayed in different characteristic
  /// colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
  final DeviceMetricColor? color;

  /// [category]
  /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  final DeviceMetricCategory category;

  /// [measurementPeriod]
  /// Describes the measurement repetition time. This is not necessarily the
  /// same as the update period. The measurement repetition time can range
  /// from milliseconds up to hours. An example for a measurement repetition
  /// time in the range of milliseconds is the sampling rate of an ECG. An
  /// example for a measurement repetition time in the range of hours is a
  /// NIBP that is triggered automatically every hour. The update period may
  /// be different than the measurement repetition time, if the device does
  /// not update the published observed value with the same frequency as it
  /// was measured.
  final Timing? measurementPeriod;

  /// [calibration]
  /// Describes the calibrations that have been performed or that are
  /// required to be performed.
  final List<DeviceMetricCalibration>? calibration;
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
      'type',
      type,
    );
    addField(
      'unit',
      unit,
    );
    addField(
      'source',
      source,
    );
    addField(
      'parent',
      parent,
    );
    addField(
      'operationalStatus',
      operationalStatus,
    );
    addField(
      'color',
      color,
    );
    addField(
      'category',
      category,
    );
    addField(
      'measurementPeriod',
      measurementPeriod,
    );
    addField(
      'calibration',
      calibration,
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
      'type',
      'unit',
      'source',
      'parent',
      'operationalStatus',
      'color',
      'category',
      'measurementPeriod',
      'calibration',
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
      case 'type':
        fields.add(type);
      case 'unit':
        if (unit != null) {
          fields.add(unit!);
        }
      case 'source':
        if (source != null) {
          fields.add(source!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      case 'operationalStatus':
        if (operationalStatus != null) {
          fields.add(operationalStatus!);
        }
      case 'color':
        if (color != null) {
          fields.add(color!);
        }
      case 'category':
        fields.add(category);
      case 'measurementPeriod':
        if (measurementPeriod != null) {
          fields.add(measurementPeriod!);
        }
      case 'calibration':
        if (calibration != null) {
          fields.addAll(calibration!);
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
            final newList = [
              ...?contained,
              child,
            ];
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
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
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
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
      case 'unit':
        {
          if (child is CodeableConcept) {
            return copyWith(unit: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is Reference) {
            return copyWith(source: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is Reference) {
            return copyWith(parent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operationalStatus':
        {
          if (child is DeviceMetricOperationalStatus) {
            return copyWith(operationalStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'color':
        {
          if (child is DeviceMetricColor) {
            return copyWith(color: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is DeviceMetricCategory) {
            return copyWith(category: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measurementPeriod':
        {
          if (child is Timing) {
            return copyWith(measurementPeriod: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'calibration':
        {
          if (child is List<DeviceMetricCalibration>) {
            // Add all elements from passed list
            final newList = [...?calibration, ...child];
            return copyWith(calibration: newList);
          } else if (child is DeviceMetricCalibration) {
            // Add single element to existing list or create new list
            final newList = [
              ...?calibration,
              child,
            ];
            return copyWith(calibration: newList);
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
      case 'type':
        return ['CodeableConcept'];
      case 'unit':
        return ['CodeableConcept'];
      case 'source':
        return ['Reference'];
      case 'parent':
        return ['Reference'];
      case 'operationalStatus':
        return ['FhirCode'];
      case 'color':
        return ['FhirCode'];
      case 'category':
        return ['FhirCode'];
      case 'measurementPeriod':
        return ['Timing'];
      case 'calibration':
        return ['DeviceMetricCalibration'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceMetric]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceMetric createProperty(
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
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      case 'unit':
        {
          return copyWith(
            unit: CodeableConcept.empty(),
          );
        }
      case 'source':
        {
          return copyWith(
            source: Reference.empty(),
          );
        }
      case 'parent':
        {
          return copyWith(
            parent: Reference.empty(),
          );
        }
      case 'operationalStatus':
        {
          return copyWith(
            operationalStatus: DeviceMetricOperationalStatus.empty(),
          );
        }
      case 'color':
        {
          return copyWith(
            color: DeviceMetricColor.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: DeviceMetricCategory.empty(),
          );
        }
      case 'measurementPeriod':
        {
          return copyWith(
            measurementPeriod: Timing.empty(),
          );
        }
      case 'calibration':
        {
          return copyWith(
            calibration: <DeviceMetricCalibration>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceMetric clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool unit = false,
    bool source = false,
    bool parent = false,
    bool operationalStatus = false,
    bool color = false,
    bool measurementPeriod = false,
    bool calibration = false,
  }) {
    return DeviceMetric(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      type: type,
      unit: unit ? null : this.unit,
      source: source ? null : this.source,
      parent: parent ? null : this.parent,
      operationalStatus: operationalStatus ? null : this.operationalStatus,
      color: color ? null : this.color,
      category: category,
      measurementPeriod: measurementPeriod ? null : this.measurementPeriod,
      calibration: calibration ? null : this.calibration,
    );
  }

  @override
  DeviceMetric clone() => throw UnimplementedError();
  @override
  DeviceMetric copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? type,
    CodeableConcept? unit,
    Reference? source,
    Reference? parent,
    DeviceMetricOperationalStatus? operationalStatus,
    DeviceMetricColor? color,
    DeviceMetricCategory? category,
    Timing? measurementPeriod,
    List<DeviceMetricCalibration>? calibration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DeviceMetric(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      unit: unit?.copyWith(
            objectPath: '$newObjectPath.unit',
          ) ??
          this.unit,
      source: source?.copyWith(
            objectPath: '$newObjectPath.source',
          ) ??
          this.source,
      parent: parent?.copyWith(
            objectPath: '$newObjectPath.parent',
          ) ??
          this.parent,
      operationalStatus: operationalStatus?.copyWith(
            objectPath: '$newObjectPath.operationalStatus',
          ) ??
          this.operationalStatus,
      color: color?.copyWith(
            objectPath: '$newObjectPath.color',
          ) ??
          this.color,
      category: category?.copyWith(
            objectPath: '$newObjectPath.category',
          ) ??
          this.category,
      measurementPeriod: measurementPeriod?.copyWith(
            objectPath: '$newObjectPath.measurementPeriod',
          ) ??
          this.measurementPeriod,
      calibration: calibration
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.calibration',
                ),
              )
              .toList() ??
          this.calibration,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceMetric) {
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
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unit,
      o.unit,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      source,
      o.source,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      operationalStatus,
      o.operationalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      color,
      o.color,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementPeriod,
      o.measurementPeriod,
    )) {
      return false;
    }
    if (!listEquals<DeviceMetricCalibration>(
      calibration,
      o.calibration,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceMetricCalibration]
/// Describes the calibrations that have been performed or that are
/// required to be performed.
class DeviceMetricCalibration extends BackboneElement {
  /// Primary constructor for
  /// [DeviceMetricCalibration]

  const DeviceMetricCalibration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.state,
    this.time,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceMetric.calibration',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceMetricCalibration.empty() => const DeviceMetricCalibration();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricCalibration.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceMetric.calibration';
    return DeviceMetricCalibration(
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
      type: JsonParser.parsePrimitive<DeviceMetricCalibrationType>(
        json,
        'type',
        DeviceMetricCalibrationType.fromJson,
        '$objectPath.type',
      ),
      state: JsonParser.parsePrimitive<DeviceMetricCalibrationState>(
        json,
        'state',
        DeviceMetricCalibrationState.fromJson,
        '$objectPath.state',
      ),
      time: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'time',
        FhirInstant.fromJson,
        '$objectPath.time',
      ),
    );
  }

  /// Deserialize [DeviceMetricCalibration]
  /// from a [String] or [YamlMap] object
  factory DeviceMetricCalibration.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetricCalibration.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetricCalibration.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetricCalibration '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetricCalibration]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetricCalibration.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetricCalibration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceMetricCalibration';

  /// [type]
  /// Describes the type of the calibration method.
  final DeviceMetricCalibrationType? type;

  /// [state]
  /// Describes the state of the calibration.
  final DeviceMetricCalibrationState? state;

  /// [time]
  /// Describes the time last calibration has been performed.
  final FhirInstant? time;
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
      'type',
      type,
    );
    addField(
      'state',
      state,
    );
    addField(
      'time',
      time,
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
      'type',
      'state',
      'time',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'state':
        if (state != null) {
          fields.add(state!);
        }
      case 'time':
        if (time != null) {
          fields.add(time!);
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
            final newList = [
              ...?extension_,
              child,
            ];
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
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is DeviceMetricCalibrationType) {
            return copyWith(type: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'state':
        {
          if (child is DeviceMetricCalibrationState) {
            return copyWith(state: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'time':
        {
          if (child is FhirInstant) {
            return copyWith(time: child);
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
      case 'type':
        return ['FhirCode'];
      case 'state':
        return ['FhirCode'];
      case 'time':
        return ['FhirInstant'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceMetricCalibration]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  DeviceMetricCalibration createProperty(
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
      case 'type':
        {
          return copyWith(
            type: DeviceMetricCalibrationType.empty(),
          );
        }
      case 'state':
        {
          return copyWith(
            state: DeviceMetricCalibrationState.empty(),
          );
        }
      case 'time':
        {
          return copyWith(
            time: FhirInstant.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  DeviceMetricCalibration clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool state = false,
    bool time = false,
  }) {
    return DeviceMetricCalibration(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      type: type ? null : this.type,
      state: state ? null : this.state,
      time: time ? null : this.time,
    );
  }

  @override
  DeviceMetricCalibration clone() => throw UnimplementedError();
  @override
  DeviceMetricCalibration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceMetricCalibrationType? type,
    DeviceMetricCalibrationState? state,
    FhirInstant? time,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceMetricCalibration(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      state: state?.copyWith(
            objectPath: '$newObjectPath.state',
          ) ??
          this.state,
      time: time?.copyWith(
            objectPath: '$newObjectPath.time',
          ) ??
          this.time,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceMetricCalibration) {
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
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      state,
      o.state,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      time,
      o.time,
    )) {
      return false;
    }
    return true;
  }
}
