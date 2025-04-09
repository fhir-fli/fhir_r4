// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'meta.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirMetaCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? versionId,
    FhirInstant? lastUpdated,
    FhirUri? source,
    List<FhirCanonical>? profile,
    List<Coding>? security,
    List<Coding>? tag,
    bool? disallowExtensions,
  });
}

class _$FhirMetaCopyWithImpl<T> implements $FhirMetaCopyWith<T> {
  final FhirMeta _value;
  final T Function(FhirMeta) _then;

  _$FhirMetaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? versionId = fhirSentinel,
    Object? lastUpdated = fhirSentinel,
    Object? source = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? security = fhirSentinel,
    Object? tag = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirMeta(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        versionId: identical(versionId, fhirSentinel)
            ? _value.versionId
            : versionId as FhirId?,
        lastUpdated: identical(lastUpdated, fhirSentinel)
            ? _value.lastUpdated
            : lastUpdated as FhirInstant?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as FhirUri?,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as List<FhirCanonical>?,
        security: identical(security, fhirSentinel)
            ? _value.security
            : security as List<Coding>?,
        tag: identical(tag, fhirSentinel) ? _value.tag : tag as List<Coding>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FhirMetaCopyWithExtension on FhirMeta {
  $FhirMetaCopyWith<FhirMeta> get copyWith => _$FhirMetaCopyWithImpl<FhirMeta>(
        this,
        (value) => value,
      );
}
