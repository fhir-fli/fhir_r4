// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'reference.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ReferenceCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? reference,
    FhirUri? type,
    Identifier? identifier,
    FhirString? display,
    bool? disallowExtensions,
  });
}

class _$ReferenceCopyWithImpl<T> implements $ReferenceCopyWith<T> {
  final Reference _value;
  final T Function(Reference) _then;

  _$ReferenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? type = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? display = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Reference(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as FhirString?,
        type: identical(type, fhirSentinel) ? _value.type : type as FhirUri?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ReferenceCopyWithExtension on Reference {
  $ReferenceCopyWith<Reference> get copyWith =>
      _$ReferenceCopyWithImpl<Reference>(
        this,
        (value) => value,
      );
}
