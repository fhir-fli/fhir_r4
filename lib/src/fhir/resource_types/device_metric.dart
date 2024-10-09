import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DeviceMetric] /// Describes a measurement, calculation or setting capability of a medical
/// device.
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
  }) : super(resourceType: R4ResourceType.DeviceMetric);

  @override
  String get fhirType => 'DeviceMetric';

  @Id()
  int dbId = 0;

  /// [identifier] /// Unique instance identifiers assigned to a device by the device or gateway
  /// software, manufacturers, other organizations or owners. For example: handle
  /// ID.
  final List<Identifier>? identifier;

  /// [type] /// Describes the type of the metric. For example: Heart Rate, PEEP Setting,
  /// etc.
  final CodeableConcept type;

  /// [unit] /// Describes the unit that an observed value determined for this metric will
  /// have. For example: Percent, Seconds, etc.
  final CodeableConcept? unit;

  /// [source] /// Describes the link to the Device that this DeviceMetric belongs to and that
  /// contains administrative device information such as manufacturer, serial
  /// number, etc.
  final Reference? source;

  /// [parent] /// Describes the link to the Device that this DeviceMetric belongs to and that
  /// provide information about the location of this DeviceMetric in the
  /// containment structure of the parent Device. An example would be a Device
  /// that represents a Channel. This reference can be used by a client
  /// application to distinguish DeviceMetrics that have the same type, but
  /// should be interpreted based on their containment location.
  final Reference? parent;

  /// [operationalStatus] /// Indicates current operational state of the device. For example: On, Off,
  /// Standby, etc.
  final DeviceMetricOperationalStatus? operationalStatus;
  final Element? operationalStatusElement;

  /// [color] /// Describes the color representation for the metric. This is often used to
  /// aid clinicians to track and identify parameter types by color. In practice,
  /// consider a Patient Monitor that has ECG/HR and Pleth for example; the
  /// parameters are displayed in different characteristic colors, such as
  /// HR-blue, BP-green, and PR and SpO2- magenta.
  final DeviceMetricColor? color;
  final Element? colorElement;

  /// [category] /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  final DeviceMetricCategory category;
  final Element? categoryElement;

  /// [measurementPeriod] /// Describes the measurement repetition time. This is not necessarily the same
  /// as the update period. The measurement repetition time can range from
  /// milliseconds up to hours. An example for a measurement repetition time in
  /// the range of milliseconds is the sampling rate of an ECG. An example for a
  /// measurement repetition time in the range of hours is a NIBP that is
  /// triggered automatically every hour. The update period may be different than
  /// the measurement repetition time, if the device does not update the
  /// published observed value with the same frequency as it was measured.
  final Timing? measurementPeriod;

  /// [calibration] /// Describes the calibrations that have been performed or that are required to
  /// be performed.
  final List<DeviceMetricCalibration>? calibration;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (operationalStatus != null) {
      json['operationalStatus'] = operationalStatus!.toJson();
    }
    if (color != null) {
      json['color'] = color!.toJson();
    }
    json['category'] = category.toJson();
    if (measurementPeriod != null) {
      json['measurementPeriod'] = measurementPeriod!.toJson();
    }
    if (calibration != null && calibration!.isNotEmpty) {
      json['calibration'] = calibration!
          .map<dynamic>((DeviceMetricCalibration v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory DeviceMetric.fromJson(Map<String, dynamic> json) {
    return DeviceMetric(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>)
          : null,
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      parent: json['parent'] != null
          ? Reference.fromJson(json['parent'] as Map<String, dynamic>)
          : null,
      operationalStatus: json['operationalStatus'] != null
          ? DeviceMetricOperationalStatus.fromJson(json['operationalStatus'])
          : null,
      operationalStatusElement: json['_operationalStatus'] != null
          ? Element.fromJson(json['_operationalStatus'] as Map<String, dynamic>)
          : null,
      color: json['color'] != null
          ? DeviceMetricColor.fromJson(json['color'])
          : null,
      colorElement: json['_color'] != null
          ? Element.fromJson(json['_color'] as Map<String, dynamic>)
          : null,
      category: DeviceMetricCategory.fromJson(json['category']),
      categoryElement: json['_category'] != null
          ? Element.fromJson(json['_category'] as Map<String, dynamic>)
          : null,
      measurementPeriod: json['measurementPeriod'] != null
          ? Timing.fromJson(json['measurementPeriod'] as Map<String, dynamic>)
          : null,
      calibration: json['calibration'] != null
          ? (json['calibration'] as List<dynamic>)
              .map<DeviceMetricCalibration>((dynamic v) =>
                  DeviceMetricCalibration.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'DeviceMetricCalibration';

  @Id()
  int dbId = 0;

  /// [type] /// Describes the type of the calibration method.
  final DeviceMetricCalibrationType? type;
  final Element? typeElement;

  /// [state] /// Describes the state of the calibration.
  final DeviceMetricCalibrationState? state;
  final Element? stateElement;

  /// [time] /// Describes the time last calibration has been performed.
  final FhirInstant? time;
  final Element? timeElement;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (state != null) {
      json['state'] = state!.toJson();
    }
    if (time?.value != null) {
      json['time'] = time!.toJson();
    }
    if (timeElement != null) {
      json['_time'] = timeElement!.toJson();
    }
    return json;
  }

  factory DeviceMetricCalibration.fromJson(Map<String, dynamic> json) {
    return DeviceMetricCalibration(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      type: json['type'] != null
          ? DeviceMetricCalibrationType.fromJson(json['type'])
          : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      state: json['state'] != null
          ? DeviceMetricCalibrationState.fromJson(json['state'])
          : null,
      stateElement: json['_state'] != null
          ? Element.fromJson(json['_state'] as Map<String, dynamic>)
          : null,
      time: json['time'] != null ? FhirInstant.fromJson(json['time']) : null,
      timeElement: json['_time'] != null
          ? Element.fromJson(json['_time'] as Map<String, dynamic>)
          : null,
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
