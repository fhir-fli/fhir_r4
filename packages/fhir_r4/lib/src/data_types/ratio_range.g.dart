// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'ratio_range.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RatioRangeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? lowNumerator,
    Quantity? highNumerator,
    Quantity? denominator,
    bool? disallowExtensions,
  });
}

class _$RatioRangeCopyWithImpl<T> implements $RatioRangeCopyWith<T> {
  final RatioRange _value;
  final T Function(RatioRange) _then;

  _$RatioRangeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? lowNumerator = fhirSentinel,
    Object? highNumerator = fhirSentinel,
    Object? denominator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RatioRange(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        lowNumerator: identical(lowNumerator, fhirSentinel)
            ? _value.lowNumerator
            : lowNumerator as Quantity?,
        highNumerator: identical(highNumerator, fhirSentinel)
            ? _value.highNumerator
            : highNumerator as Quantity?,
        denominator: identical(denominator, fhirSentinel)
            ? _value.denominator
            : denominator as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RatioRangeCopyWithExtension on RatioRange {
  $RatioRangeCopyWith<RatioRange> get copyWith =>
      _$RatioRangeCopyWithImpl<RatioRange>(
        this,
        (value) => value,
      );
}
