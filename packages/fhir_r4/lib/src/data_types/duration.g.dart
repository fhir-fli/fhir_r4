// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'duration.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirDurationCopyWith<T> extends $QuantityCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    QuantityComparator? comparator,
    FhirString? unit,
    FhirUri? system,
    FhirCode? code,
    bool? disallowExtensions,
  });
}

class _$FhirDurationCopyWithImpl<T> implements $FhirDurationCopyWith<T> {
  final FhirDuration _value;
  final T Function(FhirDuration) _then;

  _$FhirDurationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? value = fhirSentinel,
    Object? comparator = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? system = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirDuration(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirDecimal?,
        comparator: identical(comparator, fhirSentinel)
            ? _value.comparator
            : comparator as QuantityComparator?,
        unit: identical(unit, fhirSentinel) ? _value.unit : unit as FhirString?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirUri?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FhirDurationCopyWithExtension on FhirDuration {
  $FhirDurationCopyWith<FhirDuration> get copyWith =>
      _$FhirDurationCopyWithImpl<FhirDuration>(
        this,
        (value) => value,
      );
}
