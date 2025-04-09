// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'distance.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DistanceCopyWith<T> extends $QuantityCopyWith<T> {
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

class _$DistanceCopyWithImpl<T> implements $DistanceCopyWith<T> {
  final Distance _value;
  final T Function(Distance) _then;

  _$DistanceCopyWithImpl(this._value, this._then);

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
      Distance(
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

extension DistanceCopyWithExtension on Distance {
  $DistanceCopyWith<Distance> get copyWith => _$DistanceCopyWithImpl<Distance>(
        this,
        (value) => value,
      );
}
