// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'related_artifact.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $RelatedArtifactCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    RelatedArtifactType? type,
    FhirString? label,
    FhirString? display,
    FhirMarkdown? citation,
    FhirUrl? url,
    Attachment? document,
    FhirCanonical? resource,
    bool? disallowExtensions,
  });
}

class _$RelatedArtifactCopyWithImpl<T> implements $RelatedArtifactCopyWith<T> {
  final RelatedArtifact _value;
  final T Function(RelatedArtifact) _then;

  _$RelatedArtifactCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? label = fhirSentinel,
    Object? display = fhirSentinel,
    Object? citation = fhirSentinel,
    Object? url = fhirSentinel,
    Object? document = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      RelatedArtifact(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as RelatedArtifactType?) ?? _value.type,
        label: identical(label, fhirSentinel)
            ? _value.label
            : label as FhirString?,
        display: identical(display, fhirSentinel)
            ? _value.display
            : display as FhirString?,
        citation: identical(citation, fhirSentinel)
            ? _value.citation
            : citation as FhirMarkdown?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUrl?,
        document: identical(document, fhirSentinel)
            ? _value.document
            : document as Attachment?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as FhirCanonical?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension RelatedArtifactCopyWithExtension on RelatedArtifact {
  $RelatedArtifactCopyWith<RelatedArtifact> get copyWith =>
      _$RelatedArtifactCopyWithImpl<RelatedArtifact>(
        this,
        (value) => value,
      );
}
