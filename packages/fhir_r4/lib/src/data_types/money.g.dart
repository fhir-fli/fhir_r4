// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'money.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MoneyCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirDecimal? value,
    FhirCode? currency,
    bool? disallowExtensions,
  });
}

class _$MoneyCopyWithImpl<T> implements $MoneyCopyWith<T> {
  final Money _value;
  final T Function(Money) _then;

  _$MoneyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? value = fhirSentinel,
    Object? currency = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Money(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        value: identical(value, fhirSentinel)
            ? _value.value
            : value as FhirDecimal?,
        currency: identical(currency, fhirSentinel)
            ? _value.currency
            : currency as FhirCode?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension MoneyCopyWithExtension on Money {
  $MoneyCopyWith<Money> get copyWith => _$MoneyCopyWithImpl<Money>(
        this,
        (value) => value,
      );
}
