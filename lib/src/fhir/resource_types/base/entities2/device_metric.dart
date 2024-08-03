// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'device_metric.freezed.dart';
part 'device_metric.g.dart';

/// [DeviceMetric] Describes a measurement, calculation or setting capability
@freezed
class DeviceMetric extends DomainResource with _$DeviceMetric {
  /// [DeviceMetric] Describes a measurement, calculation or setting capability
  DeviceMetric._();

  /// [DeviceMetric] Describes a measurement, calculation or setting capability
  ///  of a medical device.
  ///
  /// [resourceType] This is a DeviceMetric resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Unique instance identifiers assigned to a device by the
  /// device or gateway software, manufacturers, other organizations or owners.
  ///  For example: handle ID.
  ///
  /// [type] Describes the type of the metric. For example: Heart Rate, PEEP
  ///  Setting, etc.
  ///
  /// [unit] Describes the unit that an observed value determined for this
  ///  metric will have. For example: Percent, Seconds, etc.
  ///
  /// [source] Describes the link to the  Device that this DeviceMetric belongs
  /// to and that contains administrative device information such as
  ///  manufacturer, serial number, etc.
  ///
  /// [parent] Describes the link to the  Device that this DeviceMetric belongs
  /// to and that provide information about the location of this DeviceMetric in
  /// the containment structure of the parent Device. An example would be a
  /// Device that represents a Channel. This reference can be used by a client
  /// application to distinguish DeviceMetrics that have the same type, but
  ///  should be interpreted based on their containment location.
  ///
  /// [operationalStatus] Indicates current operational state of the device.
  ///  For example: On, Off, Standby, etc.
  ///
  /// [operationalStatusElement] Extensions for operationalStatus
  ///
  /// [color] Describes the color representation for the metric. This is often
  /// used to aid clinicians to track and identify parameter types by color. In
  /// practice, consider a Patient Monitor that has ECG/HR and Pleth for
  /// example; the parameters are displayed in different characteristic colors,
  ///  such as HR-blue, BP-green, and PR and SpO2- magenta.
  ///
  /// [colorElement] Extensions for color
  ///
  /// [category] Indicates the category of the observation generation process.
  ///  A DeviceMetric can be for example a setting, measurement, or calculation.
  ///
  /// [categoryElement] Extensions for category
  ///
  /// [measurementPeriod] Describes the measurement repetition time. This is
  /// not necessarily the same as the update period. The measurement repetition
  /// time can range from milliseconds up to hours. An example for a measurement
  /// repetition time in the range of milliseconds is the sampling rate of an
  /// ECG. An example for a measurement repetition time in the range of hours is
  /// a NIBP that is triggered automatically every hour. The update period may
  /// be different than the measurement repetition time, if the device does not
  /// update the published observed value with the same frequency as it was
  ///  measured.
  ///
  /// [calibration] Describes the calibrations that have been performed or that
  ///  are required to be performed.
  const factory DeviceMetric({
    @Default(R4ResourceType.DeviceMetric)
    @JsonKey(unknownEnumValue: R4ResourceType.DeviceMetric)

    /// [resourceType] This is a DeviceMetric resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Unique instance identifiers assigned to a device by the
    /// device or gateway software, manufacturers, other organizations or owners.
    ///  For example: handle ID.
    List<Identifier>? identifier,

    /// [type] Describes the type of the metric. For example: Heart Rate, PEEP
    ///  Setting, etc.
    required CodeableConcept type,

    /// [unit] Describes the unit that an observed value determined for this
    ///  metric will have. For example: Percent, Seconds, etc.
    CodeableConcept? unit,

    /// [source] Describes the link to the  Device that this DeviceMetric belongs
    /// to and that contains administrative device information such as
    ///  manufacturer, serial number, etc.
    Reference? source,

    /// [parent] Describes the link to the  Device that this DeviceMetric belongs
    /// to and that provide information about the location of this DeviceMetric in
    /// the containment structure of the parent Device. An example would be a
    /// Device that represents a Channel. This reference can be used by a client
    /// application to distinguish DeviceMetrics that have the same type, but
    ///  should be interpreted based on their containment location.
    Reference? parent,

    /// [operationalStatus] Indicates current operational state of the device.
    ///  For example: On, Off, Standby, etc.
    DeviceMetricOperationalStatus? operationalStatus,

    /// [operationalStatusElement] Extensions for operationalStatus
    @JsonKey(name: '_operationalStatus')
    PrimitiveElement? operationalStatusElement,

    /// [color] Describes the color representation for the metric. This is often
    /// used to aid clinicians to track and identify parameter types by color. In
    /// practice, consider a Patient Monitor that has ECG/HR and Pleth for
    /// example; the parameters are displayed in different characteristic colors,
    ///  such as HR-blue, BP-green, and PR and SpO2- magenta.
    DeviceMetricColor? color,

    /// [colorElement] Extensions for color
    @JsonKey(name: '_color') PrimitiveElement? colorElement,

    /// [category] Indicates the category of the observation generation process.
    ///  A DeviceMetric can be for example a setting, measurement, or calculation.
    DeviceMetricCategory? category,

    /// [categoryElement] Extensions for category
    @JsonKey(name: '_category') PrimitiveElement? categoryElement,

    /// [measurementPeriod] Describes the measurement repetition time. This is
    /// not necessarily the same as the update period. The measurement repetition
    /// time can range from milliseconds up to hours. An example for a measurement
    /// repetition time in the range of milliseconds is the sampling rate of an
    /// ECG. An example for a measurement repetition time in the range of hours is
    /// a NIBP that is triggered automatically every hour. The update period may
    /// be different than the measurement repetition time, if the device does not
    /// update the published observed value with the same frequency as it was
    ///  measured.
    Timing? measurementPeriod,

    /// [calibration] Describes the calibrations that have been performed or that
    ///  are required to be performed.
    List<DeviceMetricCalibration>? calibration,
  }) = _DeviceMetric;

  @override
  String get fhirType => 'DeviceMetric';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceMetric.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetric.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceMetric.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceMetric cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceMetric.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricFromJson(json);

  /// Acts like a constructor, returns a [DeviceMetric], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceMetric.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceMetricFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [DeviceMetricCalibration] Describes a measurement, calculation or
@freezed
class DeviceMetricCalibration extends BackboneElement
    with _$DeviceMetricCalibration {
  /// [DeviceMetricCalibration] Describes a measurement, calculation or
  DeviceMetricCalibration._();

  /// [DeviceMetricCalibration] Describes a measurement, calculation or
  ///  setting capability of a medical device.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] Describes the type of the calibration method.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [state] Describes the state of the calibration.
  ///
  /// [stateElement] Extensions for state
  ///
  /// [time] Describes the time last calibration has been performed.
  ///
  /// [timeElement] Extensions for time
  const factory DeviceMetricCalibration({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] Describes the type of the calibration method.
    DeviceMetricCalibrationType? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [state] Describes the state of the calibration.
    DeviceMetricCalibrationState? state,

    /// [stateElement] Extensions for state
    @JsonKey(name: '_state') PrimitiveElement? stateElement,

    /// [time] Describes the time last calibration has been performed.
    FhirInstant? time,

    /// [timeElement] Extensions for time
    @JsonKey(name: '_time') PrimitiveElement? timeElement,
  }) = _DeviceMetricCalibration;

  @override
  String get fhirType => 'DeviceMetricCalibration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceMetricCalibration.fromYaml(dynamic yaml) => yaml is String
      ? DeviceMetricCalibration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceMetricCalibration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceMetricCalibration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceMetricCalibration.fromJson(Map<String, dynamic> json) =>
      _$DeviceMetricCalibrationFromJson(json);

  /// Acts like a constructor, returns a [DeviceMetricCalibration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceMetricCalibration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceMetricCalibrationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
