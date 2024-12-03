import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceMetric]
/// Describes a measurement, calculation or setting capability of a medical
/// device.
class DeviceMetric extends DomainResource {
  /// Primary constructor for
  /// [DeviceMetric]

  DeviceMetric({
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DeviceMetric,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetric.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceMetric(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(
              json['unit'] as Map<String, dynamic>,
            )
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(
              json['parent'] as Map<String, dynamic>,
            )
          : null,
      operationalStatus: (json['operationalStatus'] != null ||
              json['_operationalStatus'] != null)
          ? DeviceMetricOperationalStatus.fromJson({
              'value': json['operationalStatus'],
              '_value': json['_operationalStatus'],
            })
          : null,
      color: (json['color'] != null || json['_color'] != null)
          ? DeviceMetricColor.fromJson({
              'value': json['color'],
              '_value': json['_color'],
            })
          : null,
      category: DeviceMetricCategory.fromJson({
        'value': json['category'],
        '_value': json['_category'],
      }),
      measurementPeriod: json['measurementPeriod'] != null
          ? Timing.fromJson(
              json['measurementPeriod'] as Map<String, dynamic>,
            )
          : null,
      calibration: json['calibration'] != null
          ? (json['calibration'] as List<dynamic>)
              .map<DeviceMetricCalibration>(
                (v) => DeviceMetricCalibration.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
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
    if (json is Map<String, Object?>) {
      return DeviceMetric.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    json['type'] = type.toJson();

    if (unit != null) {
      json['unit'] = unit!.toJson();
    }

    if (source != null) {
      json['source'] = source!.toJson();
    }

    if (parent != null) {
      json['parent'] = parent!.toJson();
    }

    addField('operationalStatus', operationalStatus);
    addField('color', color);
    addField('category', category);
    if (measurementPeriod != null) {
      json['measurementPeriod'] = measurementPeriod!.toJson();
    }

    if (calibration != null && calibration!.isNotEmpty) {
      json['calibration'] = calibration!.map((e) => e.toJson()).toList();
    }

    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceMetric(
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceMetricCalibration]
/// Describes the calibrations that have been performed or that are
/// required to be performed.
class DeviceMetricCalibration extends BackboneElement {
  /// Primary constructor for
  /// [DeviceMetricCalibration]

  DeviceMetricCalibration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.state,
    this.time,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricCalibration.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceMetricCalibration(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      type: (json['type'] != null || json['_type'] != null)
          ? DeviceMetricCalibrationType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      state: (json['state'] != null || json['_state'] != null)
          ? DeviceMetricCalibrationState.fromJson({
              'value': json['state'],
              '_value': json['_state'],
            })
          : null,
      time: (json['time'] != null || json['_time'] != null)
          ? FhirInstant.fromJson({
              'value': json['time'],
              '_value': json['_time'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return DeviceMetricCalibration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    addField('state', state);
    addField('time', time);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceMetricCalibration(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      state: state ?? this.state,
      time: time ?? this.time,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
