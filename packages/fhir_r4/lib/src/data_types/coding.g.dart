// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'coding.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CodingCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirUri? system,
    FhirString? version,
    FhirCode? code,
    FhirString? display,
    FhirBoolean? userSelected,
    bool? disallowExtensions,
  });
}

class _$CodingCopyWithImpl<T> implements $CodingCopyWith<T> {
  final Coding _value;
  final T Function(Coding) _then;

  _$CodingCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? system = fhirSentinel,
    Object? version = fhirSentinel,
    Object? code = fhirSentinel,
    Object? display = fhirSentinel,
    Object? userSelected = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Coding(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        system: identical(system, fhirSentinel)
            ? _value.system
            : system as FhirUri?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        code: identical(code, fhirSentinel) ? _value.code : code as FhirCode?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        userSelected: identical(userSelected, fhirSentinel)
            ? _value.userSelected
            : userSelected as FhirBoolean?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodingCopyWithExtension on Coding {
  $CodingCopyWith<Coding> get copyWith => _$CodingCopyWithImpl<Coding>(
        this,
        (value) => value,
      );
}
