import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'device_metric.g.dart';

/// [DeviceMetric] /// Describes a measurement, calculation or setting capability of a medical
/// device.
@JsonSerializable()
class DeviceMetric extends DomainResource {
  DeviceMetric({
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
    required this.type,
    this.unit,
    this.source,
    this.parent,
    this.operationalStatus,
    this.operationalStatusElement,
    this.color,
    this.colorElement,
    required this.category,
    this.categoryElement,
    this.measurementPeriod,
    this.calibration,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.DeviceMetric,
            fhirType: 'DeviceMetric');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by the device or gateway
  /// software, manufacturers, other organizations or owners. For example: handle
  /// ID.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [type] /// Describes the type of the metric. For example: Heart Rate, PEEP Setting,
  /// etc.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [unit] /// Describes the unit that an observed value determined for this metric will
  /// have. For example: Percent, Seconds, etc.
  @JsonKey(name: 'unit')
  final CodeableConcept? unit;

  /// [source] /// Describes the link to the Device that this DeviceMetric belongs to and that
  /// contains administrative device information such as manufacturer, serial
  /// number, etc.
  @JsonKey(name: 'source')
  final Reference? source;

  /// [parent] /// Describes the link to the Device that this DeviceMetric belongs to and that
  /// provide information about the location of this DeviceMetric in the
  /// containment structure of the parent Device. An example would be a Device
  /// that represents a Channel. This reference can be used by a client
  /// application to distinguish DeviceMetrics that have the same type, but
  /// should be interpreted based on their containment location.
  @JsonKey(name: 'parent')
  final Reference? parent;

  /// [operationalStatus] /// Indicates current operational state of the device. For example: On, Off,
  /// Standby, etc.
  @JsonKey(name: 'operationalStatus')
  final DeviceMetricOperationalStatus? operationalStatus;
  @JsonKey(name: '_operationalStatus')
  final Element? operationalStatusElement;

  /// [color] /// Describes the color representation for the metric. This is often used to
  /// aid clinicians to track and identify parameter types by color. In practice,
  /// consider a Patient Monitor that has ECG/HR and Pleth for example; the
  /// parameters are displayed in different characteristic colors, such as
  /// HR-blue, BP-green, and PR and SpO2- magenta.
  @JsonKey(name: 'color')
  final DeviceMetricColor? color;
  @JsonKey(name: '_color')
  final Element? colorElement;

  /// [category] /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  @JsonKey(name: 'category')
  final DeviceMetricCategory category;
  @JsonKey(name: '_category')
  final Element? categoryElement;

  /// [measurementPeriod] /// Describes the measurement repetition time. This is not necessarily the same
  /// as the update period. The measurement repetition time can range from
  /// milliseconds up to hours. An example for a measurement repetition time in
  /// the range of milliseconds is the sampling rate of an ECG. An example for a
  /// measurement repetition time in the range of hours is a NIBP that is
  /// triggered automatically every hour. The update period may be different than
  /// the measurement repetition time, if the device does not update the
  /// published observed value with the same frequency as it was measured.
  @JsonKey(name: 'measurementPeriod')
  final Timing? measurementPeriod;

  /// [calibration] /// Describes the calibrations that have been performed or that are required to
  /// be performed.
  @JsonKey(name: 'calibration')
  final List<DeviceMetricCalibration>? calibration;
  factory DeviceMetric.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceMetricToJson(this);

  @override
  DeviceMetric clone() => throw UnimplementedError();
  @override
  DeviceMetric copyWith({
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
    CodeableConcept? type,
    CodeableConcept? unit,
    Reference? source,
    Reference? parent,
    DeviceMetricOperationalStatus? operationalStatus,
    Element? operationalStatusElement,
    DeviceMetricColor? color,
    Element? colorElement,
    DeviceMetricCategory? category,
    Element? categoryElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
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
      operationalStatusElement:
          operationalStatusElement ?? this.operationalStatusElement,
      color: color ?? this.color,
      colorElement: colorElement ?? this.colorElement,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
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

  factory DeviceMetric.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetric.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceMetric.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceMetric cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceMetric.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceMetric.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DeviceMetricCalibration] /// Describes the calibrations that have been performed or that are required to
/// be performed.
@JsonSerializable()
class DeviceMetricCalibration extends BackboneElement {
  DeviceMetricCalibration({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeElement,
    this.state,
    this.stateElement,
    this.time,
    this.timeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'DeviceMetricCalibration');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Describes the type of the calibration method.
  @JsonKey(name: 'type')
  final DeviceMetricCalibrationType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [state] /// Describes the state of the calibration.
  @JsonKey(name: 'state')
  final DeviceMetricCalibrationState? state;
  @JsonKey(name: '_state')
  final Element? stateElement;

  /// [time] /// Describes the time last calibration has been performed.
  @JsonKey(name: 'time')
  final FhirInstant? time;
  @JsonKey(name: '_time')
  final Element? timeElement;
  factory DeviceMetricCalibration.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricCalibrationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceMetricCalibrationToJson(this);

  @override
  DeviceMetricCalibration clone() => throw UnimplementedError();
  @override
  DeviceMetricCalibration copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceMetricCalibrationType? type,
    Element? typeElement,
    DeviceMetricCalibrationState? state,
    Element? stateElement,
    FhirInstant? time,
    Element? timeElement,
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
      typeElement: typeElement ?? this.typeElement,
      state: state ?? this.state,
      stateElement: stateElement ?? this.stateElement,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DeviceMetricCalibration.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetricCalibration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DeviceMetricCalibration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DeviceMetricCalibration cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DeviceMetricCalibration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceMetricCalibration.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
