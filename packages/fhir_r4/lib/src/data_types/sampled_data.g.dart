// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'sampled_data.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SampledDataCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? origin,
    FhirDecimal? period,
    FhirDecimal? factor,
    FhirDecimal? lowerLimit,
    FhirDecimal? upperLimit,
    FhirPositiveInt? dimensions,
    FhirString? data,
    bool? disallowExtensions,
  });
}

class _$SampledDataCopyWithImpl<T> implements $SampledDataCopyWith<T> {
  final SampledData _value;
  final T Function(SampledData) _then;

  _$SampledDataCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? origin = fhirSentinel,
    Object? period = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? lowerLimit = fhirSentinel,
    Object? upperLimit = fhirSentinel,
    Object? dimensions = fhirSentinel,
    Object? data = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      SampledData(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        origin: identical(origin, fhirSentinel)
            ? _value.origin
            : (origin as Quantity?) ?? _value.origin,
        period: identical(period, fhirSentinel)
            ? _value.period
            : (period as FhirDecimal?) ?? _value.period,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        lowerLimit: identical(lowerLimit, fhirSentinel)
            ? _value.lowerLimit
            : lowerLimit as FhirDecimal?,
        upperLimit: identical(upperLimit, fhirSentinel)
            ? _value.upperLimit
            : upperLimit as FhirDecimal?,
        dimensions: identical(dimensions, fhirSentinel)
            ? _value.dimensions
            : (dimensions as FhirPositiveInt?) ?? _value.dimensions,
        data: identical(data, fhirSentinel) ? _value.data : data as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SampledDataCopyWithExtension on SampledData {
  $SampledDataCopyWith<SampledData> get copyWith =>
      _$SampledDataCopyWithImpl<SampledData>(
        this,
        (value) => value,
      );
}
