// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'signature.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $SignatureCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? type,
    FhirInstant? when,
    Reference? who,
    Reference? onBehalfOf,
    FhirCode? targetFormat,
    FhirCode? sigFormat,
    FhirBase64Binary? data,
    bool? disallowExtensions,
  });
}

class _$SignatureCopyWithImpl<T> implements $SignatureCopyWith<T> {
  final Signature _value;
  final T Function(Signature) _then;

  _$SignatureCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? when = fhirSentinel,
    Object? who = fhirSentinel,
    Object? onBehalfOf = fhirSentinel,
    Object? targetFormat = fhirSentinel,
    Object? sigFormat = fhirSentinel,
    Object? data = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Signature(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: type as List<Coding>? ?? _value.type,
        when: when as FhirInstant? ?? _value.when,
        who: who as Reference? ?? _value.who,
        onBehalfOf: identical(onBehalfOf, fhirSentinel)
            ? _value.onBehalfOf
            : onBehalfOf as Reference?,
        targetFormat: identical(targetFormat, fhirSentinel)
            ? _value.targetFormat
            : targetFormat as FhirCode?,
        sigFormat: identical(sigFormat, fhirSentinel)
            ? _value.sigFormat
            : sigFormat as FhirCode?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as FhirBase64Binary?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension SignatureCopyWithExtension on Signature {
  $SignatureCopyWith<Signature> get copyWith =>
      _$SignatureCopyWithImpl<Signature>(
        this,
        (value) => value,
      );
}
