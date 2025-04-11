// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'address.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AddressCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    AddressUse? use,
    AddressType? type,
    FhirString? text,
    List<FhirString>? line,
    FhirString? city,
    FhirString? district,
    FhirString? state,
    FhirString? postalCode,
    FhirString? country,
    Period? period,
    bool? disallowExtensions,
  });
}

class _$AddressCopyWithImpl<T> implements $AddressCopyWith<T> {
  final Address _value;
  final T Function(Address) _then;

  _$AddressCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? use = fhirSentinel,
    Object? type = fhirSentinel,
    Object? text = fhirSentinel,
    Object? line = fhirSentinel,
    Object? city = fhirSentinel,
    Object? district = fhirSentinel,
    Object? state = fhirSentinel,
    Object? postalCode = fhirSentinel,
    Object? country = fhirSentinel,
    Object? period = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Address(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        use: identical(use, fhirSentinel) ? _value.use : use as AddressUse?,
        type:
            identical(type, fhirSentinel) ? _value.type : type as AddressType?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        line: identical(line, fhirSentinel)
            ? _value.line
            : line as List<FhirString>?,
        city: identical(city, fhirSentinel) ? _value.city : city as FhirString?,
        district: identical(district, fhirSentinel)
            ? _value.district
            : district as FhirString?,
        state: identical(state, fhirSentinel)
            ? _value.state
            : state as FhirString?,
        postalCode: identical(postalCode, fhirSentinel)
            ? _value.postalCode
            : postalCode as FhirString?,
        country: identical(country, fhirSentinel)
            ? _value.country
            : country as FhirString?,
        period:
            identical(period, fhirSentinel) ? _value.period : period as Period?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AddressCopyWithExtension on Address {
  $AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(
        this,
        (value) => value,
      );
}
