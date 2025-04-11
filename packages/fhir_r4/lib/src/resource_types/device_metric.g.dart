// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_metric.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceMetricCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
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
    bool? disallowExtensions,
  });
}

class _$DeviceMetricCopyWithImpl<T> implements $DeviceMetricCopyWith<T> {
  final DeviceMetric _value;
  final T Function(DeviceMetric) _then;

  _$DeviceMetricCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? source = fhirSentinel,
    Object? parent = fhirSentinel,
    Object? operationalStatus = fhirSentinel,
    Object? color = fhirSentinel,
    Object? category = fhirSentinel,
    Object? measurementPeriod = fhirSentinel,
    Object? calibration = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceMetric(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        unit: identical(unit, fhirSentinel)
            ? _value.unit
            : unit as CodeableConcept?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        parent: identical(parent, fhirSentinel)
            ? _value.parent
            : parent as Reference?,
        operationalStatus: identical(operationalStatus, fhirSentinel)
            ? _value.operationalStatus
            : operationalStatus as DeviceMetricOperationalStatus?,
        color: identical(color, fhirSentinel)
            ? _value.color
            : color as DeviceMetricColor?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : (category as DeviceMetricCategory?) ?? _value.category,
        measurementPeriod: identical(measurementPeriod, fhirSentinel)
            ? _value.measurementPeriod
            : measurementPeriod as Timing?,
        calibration: identical(calibration, fhirSentinel)
            ? _value.calibration
            : calibration as List<DeviceMetricCalibration>?,
      ),
    );
  }
}

extension DeviceMetricCopyWithExtension on DeviceMetric {
  $DeviceMetricCopyWith<DeviceMetric> get copyWith =>
      _$DeviceMetricCopyWithImpl<DeviceMetric>(
        this,
        (value) => value,
      );
}

abstract class $DeviceMetricCalibrationCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    DeviceMetricCalibrationType? type,
    DeviceMetricCalibrationState? state,
    FhirInstant? time,
    bool? disallowExtensions,
  });
}

class _$DeviceMetricCalibrationCopyWithImpl<T>
    implements $DeviceMetricCalibrationCopyWith<T> {
  final DeviceMetricCalibration _value;
  final T Function(DeviceMetricCalibration) _then;

  _$DeviceMetricCalibrationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? state = fhirSentinel,
    Object? time = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceMetricCalibration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as DeviceMetricCalibrationType?,
        state: identical(state, fhirSentinel)
            ? _value.state
            : state as DeviceMetricCalibrationState?,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirInstant?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DeviceMetricCalibrationCopyWithExtension on DeviceMetricCalibration {
  $DeviceMetricCalibrationCopyWith<DeviceMetricCalibration> get copyWith =>
      _$DeviceMetricCalibrationCopyWithImpl<DeviceMetricCalibration>(
        this,
        (value) => value,
      );
}
