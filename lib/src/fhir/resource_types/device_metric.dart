import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.DeviceMetric);

  @Id()
  @JsonKey(ignore: true)
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
  final FhirCode? operationalStatus;
  final Element? operationalStatusElement;

  /// [color] /// Describes the color representation for the metric. This is often used to
  /// aid clinicians to track and identify parameter types by color. In practice,
  /// consider a Patient Monitor that has ECG/HR and Pleth for example; the
  /// parameters are displayed in different characteristic colors, such as
  /// HR-blue, BP-green, and PR and SpO2- magenta.
  final FhirCode? color;
  final Element? colorElement;

  /// [category] /// Indicates the category of the observation generation process. A
  /// DeviceMetric can be for example a setting, measurement, or calculation.
  final FhirCode category;
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
  DeviceMetric clone() => throw UnimplementedError();
  DeviceMetric copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
    FhirCode? operationalStatus,
    Element? operationalStatusElement,
    FhirCode? color,
    Element? colorElement,
    FhirCode? category,
    Element? categoryElement,
    Timing? measurementPeriod,
    List<DeviceMetricCalibration>? calibration,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Describes the type of the calibration method.
  final FhirCode? type;
  final Element? typeElement;

  /// [state] /// Describes the state of the calibration.
  final FhirCode? state;
  final Element? stateElement;

  /// [time] /// Describes the time last calibration has been performed.
  final FhirInstant? time;
  final Element? timeElement;
  @override
  DeviceMetricCalibration clone() => throw UnimplementedError();
  DeviceMetricCalibration copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    FhirCode? state,
    Element? stateElement,
    FhirInstant? time,
    Element? timeElement,
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
    );
  }
}
