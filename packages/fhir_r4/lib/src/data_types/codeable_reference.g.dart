// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'codeable_reference.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CodeableReferenceCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    CodeableConcept? concept,
    Reference? reference,
    bool? disallowExtensions,
  });
}

class _$CodeableReferenceCopyWithImpl<T>
    implements $CodeableReferenceCopyWith<T> {
  final CodeableReference _value;
  final T Function(CodeableReference) _then;

  _$CodeableReferenceCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? concept = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeableReference(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        concept: identical(concept, fhirSentinel)
            ? _value.concept
            : concept as CodeableConcept?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Reference?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeableReferenceCopyWithExtension on CodeableReference {
  $CodeableReferenceCopyWith<CodeableReference> get copyWith =>
      _$CodeableReferenceCopyWithImpl<CodeableReference>(
        this,
        (value) => value,
      );
}
