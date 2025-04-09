// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'binary.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BinaryCopyWith<T> extends $ResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    FhirCode? contentType,
    Reference? securityContext,
    FhirBase64Binary? data,
    bool? disallowExtensions,
  });
}

class _$BinaryCopyWithImpl<T> implements $BinaryCopyWith<T> {
  final Binary _value;
  final T Function(Binary) _then;

  _$BinaryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? contentType = fhirSentinel,
    Object? securityContext = fhirSentinel,
    Object? data = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Binary(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        contentType: contentType as FhirCode? ?? _value.contentType,
        securityContext: identical(securityContext, fhirSentinel)
            ? _value.securityContext
            : securityContext as Reference?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as FhirBase64Binary?,
      ),
    );
  }
}

extension BinaryCopyWithExtension on Binary {
  $BinaryCopyWith<Binary> get copyWith => _$BinaryCopyWithImpl<Binary>(
        this,
        (value) => value,
      );
}
