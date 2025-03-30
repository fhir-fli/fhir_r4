import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        DeviceMetric,
        DeviceMetricCalibration,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [DeviceMetricBuilder]
/// Describes a measurement, calculation or setting capability of a medical
/// device.
class DeviceMetricBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [DeviceMetricBuilder]

  DeviceMetricBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.color,
    this.category,
    this.measurementPeriod,
    this.calibration,
  }) : super(
          objectPath: 'DeviceMetric',
          resourceType: R4ResourceType.DeviceMetric,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory DeviceMetricBuilder.empty() => DeviceMetricBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceMetric';
    return DeviceMetricBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
      unit: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'unit',
        CodeableConceptBuilder.fromJson,
        '$objectPath.unit',
      ),
      source: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'source',
        ReferenceBuilder.fromJson,
        '$objectPath.source',
      ),
      parent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'parent',
        ReferenceBuilder.fromJson,
        '$objectPath.parent',
      ),
      operationalStatus:
          JsonParser.parsePrimitive<DeviceMetricOperationalStatusBuilder>(
        json,
        'operationalStatus',
        DeviceMetricOperationalStatusBuilder.fromJson,
        '$objectPath.operationalStatus',
      ),
      color: JsonParser.parsePrimitive<DeviceMetricColorBuilder>(
        json,
        'color',
        DeviceMetricColorBuilder.fromJson,
        '$objectPath.color',
      ),
      category: JsonParser.parsePrimitive<DeviceMetricCategoryBuilder>(
        json,
        'category',
        DeviceMetricCategoryBuilder.fromJson,
        '$objectPath.category',
      ),
      measurementPeriod: JsonParser.parseObject<TimingBuilder>(
        json,
        'measurementPeriod',
        TimingBuilder.fromJson,
        '$objectPath.measurementPeriod',
      ),
      calibration: (json['calibration'] as List<dynamic>?)
          ?.map<DeviceMetricCalibrationBuilder>(
            (v) => DeviceMetricCalibrationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.calibration',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [DeviceMetricBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceMetricBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetricBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetricBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetricBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetricBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetricBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetricBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [type]
  /// Describes the type of the metric. For example: Heart Rate, PEEP
  /// Setting, etc.
  CodeableConceptBuilder? type;

  /// [unit]
  /// Describes the unit that an observed value determined for this metric
  /// will have. For example: Percent, Seconds, etc.
  CodeableConceptBuilder? unit;

  /// [source]
  /// Describes the link to the Device that this DeviceMetric belongs to and
  /// that contains administrative device information such as manufacturer,
  /// serial number, etc.
  ReferenceBuilder? source;

  /// [parent]
  /// Describes the link to the Device that this DeviceMetric belongs to and
  /// that provide information about the location of this DeviceMetric in the
  /// containment structure of the parent Device. An example would be a
  /// Device that represents a Channel. This reference can be used by a
  /// client application to distinguish DeviceMetrics that have the same
  /// type, but should be interpreted based on their containment location.
  ReferenceBuilder? parent;

  /// [operationalStatus]
  /// Indicates current operational state of the device. For example: On,
  /// Off, Standby, etc.
  DeviceMetricOperationalStatusBuilder? operationalStatus;

  /// [color]
  /// Describes the color representation for the metric. This is often used
  /// to aid clinicians to track and identify parameter types by color. In
  /// practice, consider a Patient Monitor that has ECG/HR and Pleth for
  /// example; the parameters are displayed in different characteristic
  /// colors, such as HR-blue, BP-green, and PR and SpO2- magenta.
  DeviceMetricColorBuilder? color;

  /// [category]
  /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  DeviceMetricCategoryBuilder? category;

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
  TimingBuilder? measurementPeriod;

  /// [calibration]
  /// Describes the calibrations that have been performed or that are
  /// required to be performed.
  List<DeviceMetricCalibrationBuilder>? calibration;

  /// converts a [DeviceMetricBuilder]
  /// to [DeviceMetric]
  @override
  DeviceMetric build() => DeviceMetric.fromJson(toJson());

  /// converts a [DeviceMetricBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    addField('type', type);
    addField('unit', unit);
    addField('source', source);
    addField('parent', parent);
    addField('operationalStatus', operationalStatus);
    addField('color', color);
    addField('category', category);
    addField('measurementPeriod', measurementPeriod);
    addField('calibration', calibration);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
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
        if (category != null) {
          fields.add(category!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [...(contained ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [...(identifier ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'unit':
        {
          if (child is CodeableConceptBuilder) {
            unit = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'source':
        {
          if (child is ReferenceBuilder) {
            source = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is ReferenceBuilder) {
            parent = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'operationalStatus':
        {
          if (child is DeviceMetricOperationalStatusBuilder) {
            operationalStatus = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'color':
        {
          if (child is DeviceMetricColorBuilder) {
            color = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is DeviceMetricCategoryBuilder) {
            category = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measurementPeriod':
        {
          if (child is TimingBuilder) {
            measurementPeriod = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'calibration':
        {
          if (child is List<DeviceMetricCalibrationBuilder>) {
            // Replace or create new list
            calibration = child;
            return;
          } else if (child is DeviceMetricCalibrationBuilder) {
            // Add single element to existing list or create new list
            calibration = [...(calibration ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      case 'unit':
        return ['CodeableConceptBuilder'];
      case 'source':
        return ['ReferenceBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      case 'operationalStatus':
        return ['FhirCodeEnumBuilder'];
      case 'color':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['FhirCodeEnumBuilder'];
      case 'measurementPeriod':
        return ['TimingBuilder'];
      case 'calibration':
        return ['DeviceMetricCalibrationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceMetricBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
          return;
        }
      case 'unit':
        {
          unit = CodeableConceptBuilder.empty();
          return;
        }
      case 'source':
        {
          source = ReferenceBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = ReferenceBuilder.empty();
          return;
        }
      case 'operationalStatus':
        {
          operationalStatus = DeviceMetricOperationalStatusBuilder.empty();
          return;
        }
      case 'color':
        {
          color = DeviceMetricColorBuilder.empty();
          return;
        }
      case 'category':
        {
          category = DeviceMetricCategoryBuilder.empty();
          return;
        }
      case 'measurementPeriod':
        {
          measurementPeriod = TimingBuilder.empty();
          return;
        }
      case 'calibration':
        {
          calibration = <DeviceMetricCalibrationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool type = false,
    bool unit = false,
    bool source = false,
    bool parent = false,
    bool operationalStatus = false,
    bool color = false,
    bool category = false,
    bool measurementPeriod = false,
    bool calibration = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (type) this.type = null;
    if (unit) this.unit = null;
    if (source) this.source = null;
    if (parent) this.parent = null;
    if (operationalStatus) this.operationalStatus = null;
    if (color) this.color = null;
    if (category) this.category = null;
    if (measurementPeriod) this.measurementPeriod = null;
    if (calibration) this.calibration = null;
  }

  @override
  DeviceMetricBuilder clone() => throw UnimplementedError();
  @override
  DeviceMetricBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? type,
    CodeableConceptBuilder? unit,
    ReferenceBuilder? source,
    ReferenceBuilder? parent,
    DeviceMetricOperationalStatusBuilder? operationalStatus,
    DeviceMetricColorBuilder? color,
    DeviceMetricCategoryBuilder? category,
    TimingBuilder? measurementPeriod,
    List<DeviceMetricCalibrationBuilder>? calibration,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = DeviceMetricBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      unit: unit ?? this.unit,
      source: source ?? this.source,
      parent: parent ?? this.parent,
      operationalStatus: operationalStatus ?? this.operationalStatus,
      color: color ?? this.color,
      category: category ?? this.category,
      measurementPeriod: measurementPeriod ?? this.measurementPeriod,
      calibration: calibration ?? this.calibration,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceMetricBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<DeviceMetricCalibrationBuilder>(
      calibration,
      o.calibration,
    )) {
      return false;
    }
    return true;
  }
}

/// [DeviceMetricCalibrationBuilder]
/// Describes the calibrations that have been performed or that are
/// required to be performed.
class DeviceMetricCalibrationBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [DeviceMetricCalibrationBuilder]

  DeviceMetricCalibrationBuilder({
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
  /// For Builder classes, no fields are required
  factory DeviceMetricCalibrationBuilder.empty() =>
      DeviceMetricCalibrationBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricCalibrationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceMetric.calibration';
    return DeviceMetricCalibrationBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<DeviceMetricCalibrationTypeBuilder>(
        json,
        'type',
        DeviceMetricCalibrationTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      state: JsonParser.parsePrimitive<DeviceMetricCalibrationStateBuilder>(
        json,
        'state',
        DeviceMetricCalibrationStateBuilder.fromJson,
        '$objectPath.state',
      ),
      time: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'time',
        FhirInstantBuilder.fromJson,
        '$objectPath.time',
      ),
    );
  }

  /// Deserialize [DeviceMetricCalibrationBuilder]
  /// from a [String] or [YamlMap] object
  factory DeviceMetricCalibrationBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceMetricCalibrationBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceMetricCalibrationBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceMetricCalibrationBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceMetricCalibrationBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceMetricCalibrationBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceMetricCalibrationBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceMetricCalibration';

  /// [type]
  /// Describes the type of the calibration method.
  DeviceMetricCalibrationTypeBuilder? type;

  /// [state]
  /// Describes the state of the calibration.
  DeviceMetricCalibrationStateBuilder? state;

  /// [time]
  /// Describes the time last calibration has been performed.
  FhirInstantBuilder? time;

  /// converts a [DeviceMetricCalibrationBuilder]
  /// to [DeviceMetricCalibration]
  @override
  DeviceMetricCalibration build() => DeviceMetricCalibration.fromJson(toJson());

  /// converts a [DeviceMetricCalibrationBuilder]
  /// to [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('state', state);
    addField('time', time);
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is DeviceMetricCalibrationTypeBuilder) {
            type = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'state':
        {
          if (child is DeviceMetricCalibrationStateBuilder) {
            state = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'time':
        {
          if (child is FhirInstantBuilder) {
            time = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'state':
        return ['FhirCodeEnumBuilder'];
      case 'time':
        return ['FhirInstantBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [DeviceMetricCalibrationBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'type':
        {
          type = DeviceMetricCalibrationTypeBuilder.empty();
          return;
        }
      case 'state':
        {
          state = DeviceMetricCalibrationStateBuilder.empty();
          return;
        }
      case 'time':
        {
          time = FhirInstantBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool type = false,
    bool state = false,
    bool time = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (type) this.type = null;
    if (state) this.state = null;
    if (time) this.time = null;
  }

  @override
  DeviceMetricCalibrationBuilder clone() => throw UnimplementedError();
  @override
  DeviceMetricCalibrationBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    DeviceMetricCalibrationTypeBuilder? type,
    DeviceMetricCalibrationStateBuilder? state,
    FhirInstantBuilder? time,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = DeviceMetricCalibrationBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      state: state ?? this.state,
      time: time ?? this.time,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! DeviceMetricCalibrationBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
