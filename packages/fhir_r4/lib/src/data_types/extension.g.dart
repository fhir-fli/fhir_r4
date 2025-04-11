// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'extension.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirExtensionCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? url,
    FhirBase64Binary? valueX,
    bool? disallowExtensions,
  });
}

class _$FhirExtensionCopyWithImpl<T> implements $FhirExtensionCopyWith<T> {
  final FhirExtension _value;
  final T Function(FhirExtension) _then;

  _$FhirExtensionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? url = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirExtension(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirString?) ?? _value.url,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirBase64Binary?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FhirExtensionCopyWithExtension on FhirExtension {
  $FhirExtensionCopyWith<FhirExtension> get copyWith =>
      _$FhirExtensionCopyWithImpl<FhirExtension>(
        this,
        (value) => value,
      );
}
