// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'ratio.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RatioCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Quantity? numerator,
    Quantity? denominator,
    bool? disallowExtensions,
  });
}

class _$RatioCopyWithImpl<T> implements $RatioCopyWith<T> {
  final Ratio _value;
  final T Function(Ratio) _then;

  _$RatioCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? numerator = fhirSentinel,
    Object? denominator = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Ratio(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        numerator: identical(numerator, fhirSentinel)
            ? _value.numerator
            : numerator as Quantity?,
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

extension RatioCopyWithExtension on Ratio {
  $RatioCopyWith<Ratio> get copyWith => _$RatioCopyWithImpl<Ratio>(
        this,
        (value) => value,
      );
}
