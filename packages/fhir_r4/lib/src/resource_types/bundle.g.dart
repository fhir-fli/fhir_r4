// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'bundle.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BundleCopyWith<T> extends $ResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Identifier? identifier,
    BundleType? type,
    FhirInstant? timestamp,
    FhirUnsignedInt? total,
    List<BundleLink>? link,
    List<BundleEntry>? entry,
    Signature? signature,
    bool? disallowExtensions,
  });
}

class _$BundleCopyWithImpl<T> implements $BundleCopyWith<T> {
  final Bundle _value;
  final T Function(Bundle) _then;

  _$BundleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? type = fhirSentinel,
    Object? timestamp = fhirSentinel,
    Object? total = fhirSentinel,
    Object? link = fhirSentinel,
    Object? entry = fhirSentinel,
    Object? signature = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Bundle(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as BundleType?) ?? _value.type,
        timestamp: identical(timestamp, fhirSentinel)
            ? _value.timestamp
            : timestamp as FhirInstant?,
        total: identical(total, fhirSentinel)
            ? _value.total
            : total as FhirUnsignedInt?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<BundleLink>?,
        entry: identical(entry, fhirSentinel)
            ? _value.entry
            : entry as List<BundleEntry>?,
        signature: identical(signature, fhirSentinel)
            ? _value.signature
            : signature as Signature?,
      ),
    );
  }
}

extension BundleCopyWithExtension on Bundle {
  $BundleCopyWith<Bundle> get copyWith => _$BundleCopyWithImpl<Bundle>(
        this,
        (value) => value,
      );
}

abstract class $BundleLinkCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? relation,
    FhirUri? url,
    bool? disallowExtensions,
  });
}

class _$BundleLinkCopyWithImpl<T> implements $BundleLinkCopyWith<T> {
  final BundleLink _value;
  final T Function(BundleLink) _then;

  _$BundleLinkCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? relation = fhirSentinel,
    Object? url = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BundleLink(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        relation: identical(relation, fhirSentinel)
            ? _value.relation
            : (relation as FhirString?) ?? _value.relation,
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BundleLinkCopyWithExtension on BundleLink {
  $BundleLinkCopyWith<BundleLink> get copyWith =>
      _$BundleLinkCopyWithImpl<BundleLink>(
        this,
        (value) => value,
      );
}

abstract class $BundleEntryCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<BundleLink>? link,
    FhirUri? fullUrl,
    Resource? resource,
    BundleSearch? search,
    BundleRequest? request,
    BundleResponse? response,
    bool? disallowExtensions,
  });
}

class _$BundleEntryCopyWithImpl<T> implements $BundleEntryCopyWith<T> {
  final BundleEntry _value;
  final T Function(BundleEntry) _then;

  _$BundleEntryCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? link = fhirSentinel,
    Object? fullUrl = fhirSentinel,
    Object? resource = fhirSentinel,
    Object? search = fhirSentinel,
    Object? request = fhirSentinel,
    Object? response = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BundleEntry(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        link: identical(link, fhirSentinel)
            ? _value.link
            : link as List<BundleLink>?,
        fullUrl: identical(fullUrl, fhirSentinel)
            ? _value.fullUrl
            : fullUrl as FhirUri?,
        resource: identical(resource, fhirSentinel)
            ? _value.resource
            : resource as Resource?,
        search: identical(search, fhirSentinel)
            ? _value.search
            : search as BundleSearch?,
        request: identical(request, fhirSentinel)
            ? _value.request
            : request as BundleRequest?,
        response: identical(response, fhirSentinel)
            ? _value.response
            : response as BundleResponse?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BundleEntryCopyWithExtension on BundleEntry {
  $BundleEntryCopyWith<BundleEntry> get copyWith =>
      _$BundleEntryCopyWithImpl<BundleEntry>(
        this,
        (value) => value,
      );
}

abstract class $BundleSearchCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SearchEntryMode? mode,
    FhirDecimal? score,
    bool? disallowExtensions,
  });
}

class _$BundleSearchCopyWithImpl<T> implements $BundleSearchCopyWith<T> {
  final BundleSearch _value;
  final T Function(BundleSearch) _then;

  _$BundleSearchCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? mode = fhirSentinel,
    Object? score = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BundleSearch(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        mode: identical(mode, fhirSentinel)
            ? _value.mode
            : mode as SearchEntryMode?,
        score: identical(score, fhirSentinel)
            ? _value.score
            : score as FhirDecimal?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BundleSearchCopyWithExtension on BundleSearch {
  $BundleSearchCopyWith<BundleSearch> get copyWith =>
      _$BundleSearchCopyWithImpl<BundleSearch>(
        this,
        (value) => value,
      );
}

abstract class $BundleRequestCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HTTPVerb? method,
    FhirUri? url,
    FhirString? ifNoneMatch,
    FhirInstant? ifModifiedSince,
    FhirString? ifMatch,
    FhirString? ifNoneExist,
    bool? disallowExtensions,
  });
}

class _$BundleRequestCopyWithImpl<T> implements $BundleRequestCopyWith<T> {
  final BundleRequest _value;
  final T Function(BundleRequest) _then;

  _$BundleRequestCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? method = fhirSentinel,
    Object? url = fhirSentinel,
    Object? ifNoneMatch = fhirSentinel,
    Object? ifModifiedSince = fhirSentinel,
    Object? ifMatch = fhirSentinel,
    Object? ifNoneExist = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BundleRequest(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : (method as HTTPVerb?) ?? _value.method,
        url: identical(url, fhirSentinel)
            ? _value.url
            : (url as FhirUri?) ?? _value.url,
        ifNoneMatch: identical(ifNoneMatch, fhirSentinel)
            ? _value.ifNoneMatch
            : ifNoneMatch as FhirString?,
        ifModifiedSince: identical(ifModifiedSince, fhirSentinel)
            ? _value.ifModifiedSince
            : ifModifiedSince as FhirInstant?,
        ifMatch: identical(ifMatch, fhirSentinel)
            ? _value.ifMatch
            : ifMatch as FhirString?,
        ifNoneExist: identical(ifNoneExist, fhirSentinel)
            ? _value.ifNoneExist
            : ifNoneExist as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BundleRequestCopyWithExtension on BundleRequest {
  $BundleRequestCopyWith<BundleRequest> get copyWith =>
      _$BundleRequestCopyWithImpl<BundleRequest>(
        this,
        (value) => value,
      );
}

abstract class $BundleResponseCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? status,
    FhirUri? location,
    FhirString? etag,
    FhirInstant? lastModified,
    Resource? outcome,
    bool? disallowExtensions,
  });
}

class _$BundleResponseCopyWithImpl<T> implements $BundleResponseCopyWith<T> {
  final BundleResponse _value;
  final T Function(BundleResponse) _then;

  _$BundleResponseCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? status = fhirSentinel,
    Object? location = fhirSentinel,
    Object? etag = fhirSentinel,
    Object? lastModified = fhirSentinel,
    Object? outcome = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BundleResponse(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as FhirString?) ?? _value.status,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as FhirUri?,
        etag: identical(etag, fhirSentinel) ? _value.etag : etag as FhirString?,
        lastModified: identical(lastModified, fhirSentinel)
            ? _value.lastModified
            : lastModified as FhirInstant?,
        outcome: identical(outcome, fhirSentinel)
            ? _value.outcome
            : outcome as Resource?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension BundleResponseCopyWithExtension on BundleResponse {
  $BundleResponseCopyWith<BundleResponse> get copyWith =>
      _$BundleResponseCopyWithImpl<BundleResponse>(
        this,
        (value) => value,
      );
}
