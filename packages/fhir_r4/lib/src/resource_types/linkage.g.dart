// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'linkage.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $LinkageCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? active,
    Reference? author,
    List<LinkageItem>? item,
    bool? disallowExtensions,
  });
}

class _$LinkageCopyWithImpl<T> implements $LinkageCopyWith<T> {
  final Linkage _value;
  final T Function(Linkage) _then;

  _$LinkageCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? active = fhirSentinel,
    Object? author = fhirSentinel,
    Object? item = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Linkage(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        item: identical(item, fhirSentinel)
            ? _value.item
            : (item as List<LinkageItem>?) ?? _value.item,
      ),
    );
  }
}

extension LinkageCopyWithExtension on Linkage {
  $LinkageCopyWith<Linkage> get copyWith => _$LinkageCopyWithImpl<Linkage>(
        this,
        (value) => value,
      );
}

abstract class $LinkageItemCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    LinkageType? type,
    Reference? resource,
    bool? disallowExtensions,
  });
}

class _$LinkageItemCopyWithImpl<T> implements $LinkageItemCopyWith<T> {
  final LinkageItem _value;
  final T Function(LinkageItem) _then;

  _$LinkageItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      LinkageItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as LinkageType?) ?? _value.type,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : (resource as Reference?) ?? _value.resource,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension LinkageItemCopyWithExtension on LinkageItem {
  $LinkageItemCopyWith<LinkageItem> get copyWith =>
      _$LinkageItemCopyWithImpl<LinkageItem>(
        this,
        (value) => value,
      );
}
