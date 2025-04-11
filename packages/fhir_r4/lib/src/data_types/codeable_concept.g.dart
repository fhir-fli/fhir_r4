// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'codeable_concept.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $CodeableConceptCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? coding,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$CodeableConceptCopyWithImpl<T> implements $CodeableConceptCopyWith<T> {
  final CodeableConcept _value;
  final T Function(CodeableConcept) _then;

  _$CodeableConceptCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? coding = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      CodeableConcept(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        coding: identical(coding, fhirSentinel)
            ? _value.coding
            : coding as List<Coding>?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension CodeableConceptCopyWithExtension on CodeableConcept {
  $CodeableConceptCopyWith<CodeableConcept> get copyWith =>
      _$CodeableConceptCopyWithImpl<CodeableConcept>(
        this,
        (value) => value,
      );
}
