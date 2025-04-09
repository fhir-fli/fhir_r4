// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'attachment.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $AttachmentCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? contentType,
    CommonLanguages? language,
    FhirBase64Binary? data,
    FhirUrl? url,
    FhirUnsignedInt? size,
    FhirBase64Binary? hash,
    FhirString? title,
    FhirDateTime? creation,
    bool? disallowExtensions,
  });
}

class _$AttachmentCopyWithImpl<T> implements $AttachmentCopyWith<T> {
  final Attachment _value;
  final T Function(Attachment) _then;

  _$AttachmentCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? contentType = fhirSentinel,
    Object? language = fhirSentinel,
    Object? data = fhirSentinel,
    Object? url = fhirSentinel,
    Object? size = fhirSentinel,
    Object? hash = fhirSentinel,
    Object? title = fhirSentinel,
    Object? creation = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Attachment(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        contentType: identical(contentType, fhirSentinel)
            ? _value.contentType
            : contentType as FhirCode?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        data: identical(data, fhirSentinel)
            ? _value.data
            : data as FhirBase64Binary?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUrl?,
        size: identical(size, fhirSentinel)
            ? _value.size
            : size as FhirUnsignedInt?,
        hash: identical(hash, fhirSentinel)
            ? _value.hash
            : hash as FhirBase64Binary?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        creation: identical(creation, fhirSentinel)
            ? _value.creation
            : creation as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension AttachmentCopyWithExtension on Attachment {
  $AttachmentCopyWith<Attachment> get copyWith =>
      _$AttachmentCopyWithImpl<Attachment>(
        this,
        (value) => value,
      );
}
