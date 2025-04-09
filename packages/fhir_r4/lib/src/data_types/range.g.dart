// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'range.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RangeCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? low,
    Quantity? high,
    bool? disallowExtensions,
  });
}

class _$RangeCopyWithImpl<T> implements $RangeCopyWith<T> {
  final Range _value;
  final T Function(Range) _then;

  _$RangeCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? low = fhirSentinel,
    Object? high = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Range(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        low: identical(low, fhirSentinel) ? _value.low : low as Quantity?,
        high: identical(high, fhirSentinel) ? _value.high : high as Quantity?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RangeCopyWithExtension on Range {
  $RangeCopyWith<Range> get copyWith => _$RangeCopyWithImpl<Range>(
        this,
        (value) => value,
      );
}
