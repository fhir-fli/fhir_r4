// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'annotation.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AnnotationCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    Reference? authorX,
    FhirDateTime? time,
    FhirMarkdown? text,
    bool? disallowExtensions,
  });
}

class _$AnnotationCopyWithImpl<T> implements $AnnotationCopyWith<T> {
  final Annotation _value;
  final T Function(Annotation) _then;

  _$AnnotationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? authorX = fhirSentinel,
    Object? time = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Annotation(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        authorX: identical(authorX, fhirSentinel)
            ? _value.authorX
            : authorX as Reference?,
        time:
            identical(time, fhirSentinel) ? _value.time : time as FhirDateTime?,
        text: identical(text, fhirSentinel)
            ? _value.text
            : (text as FhirMarkdown?) ?? _value.text,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AnnotationCopyWithExtension on Annotation {
  $AnnotationCopyWith<Annotation> get copyWith =>
      _$AnnotationCopyWithImpl<Annotation>(
        this,
        (value) => value,
      );
}
