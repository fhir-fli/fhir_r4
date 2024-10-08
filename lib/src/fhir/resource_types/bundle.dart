import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'bundle.g.dart';

/// [Bundle] /// A container for a collection of resources.
@JsonSerializable()
class Bundle extends Resource {
  Bundle({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    this.identifier,
    required this.type,
    this.typeElement,
    this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.link,
    this.entry,
    this.signature,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Bundle, fhirType: 'Bundle');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A persistent identifier for the bundle that won't change as a bundle is
  /// copied from server to server.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [type] /// Indicates the purpose of this bundle - how it is intended to be used.
  @JsonKey(name: 'type')
  final FhirCode type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [timestamp] /// The date/time that the bundle was assembled - i.e. when the resources were
  /// placed in the bundle.
  @JsonKey(name: 'timestamp')
  final FhirInstant? timestamp;
  @JsonKey(name: '_timestamp')
  final Element? timestampElement;

  /// [total] /// If a set of search matches, this is the total number of entries of type
  /// 'match' across all pages in the search. It does not include search.mode =
  /// 'include' or 'outcome' entries and it does not provide a count of the
  /// number of entries in the Bundle.
  @JsonKey(name: 'total')
  final FhirUnsignedInt? total;
  @JsonKey(name: '_total')
  final Element? totalElement;

  /// [link] /// A series of links that provide context to this bundle.
  @JsonKey(name: 'link')
  final List<BundleLink>? link;

  /// [entry] /// An entry in a bundle resource - will either contain a resource or
  /// information about a resource (transactions and history only).
  @JsonKey(name: 'entry')
  final List<BundleEntry>? entry;

  /// [signature] /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  @JsonKey(name: 'signature')
  final Signature? signature;
  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleToJson(this);

  @override
  Bundle clone() => throw UnimplementedError();
  @override
  Bundle copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Identifier? identifier,
    FhirCode? type,
    Element? typeElement,
    FhirInstant? timestamp,
    Element? timestampElement,
    FhirUnsignedInt? total,
    Element? totalElement,
    List<BundleLink>? link,
    List<BundleEntry>? entry,
    Signature? signature,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Bundle(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      total: total ?? this.total,
      totalElement: totalElement ?? this.totalElement,
      link: link ?? this.link,
      entry: entry ?? this.entry,
      signature: signature ?? this.signature,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Bundle.fromYaml(dynamic yaml) => yaml is String
      ? Bundle.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Bundle.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Bundle cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Bundle.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Bundle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BundleLink] /// A series of links that provide context to this bundle.
@JsonSerializable()
class BundleLink extends BackboneElement {
  BundleLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relation,
    this.relationElement,
    required this.url,
    this.urlElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'BundleLink');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [relation] /// A name which details the functional use for this link - see
  /// [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  @JsonKey(name: 'relation')
  final FhirString relation;
  @JsonKey(name: '_relation')
  final Element? relationElement;

  /// [url] /// The reference details for the link.
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;
  factory BundleLink.fromJson(Map<String, dynamic> json) =>
      _$BundleLinkFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleLinkToJson(this);

  @override
  BundleLink clone() => throw UnimplementedError();
  @override
  BundleLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? relation,
    Element? relationElement,
    FhirUri? url,
    Element? urlElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BundleLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      relationElement: relationElement ?? this.relationElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BundleLink.fromYaml(dynamic yaml) => yaml is String
      ? BundleLink.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BundleLink.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BundleLink cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BundleLink.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BundleEntry] /// An entry in a bundle resource - will either contain a resource or
/// information about a resource (transactions and history only).
@JsonSerializable()
class BundleEntry extends BackboneElement {
  BundleEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    this.fullUrl,
    this.fullUrlElement,
    this.resource,
    this.search,
    this.request,
    this.response,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'BundleEntry');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [link] /// A series of links that provide context to this entry.
  @JsonKey(name: 'link')
  final List<BundleLink>? link;

  /// [fullUrl] /// The Absolute URL for the resource. The fullUrl SHALL NOT disagree with the
  /// id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall
  /// be version-independent URL consistent with the Resource.id. The fullUrl is
  /// a version independent reference to the resource. The fullUrl element SHALL
  /// have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when
  /// specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not identified.
  @JsonKey(name: 'fullUrl')
  final FhirUri? fullUrl;
  @JsonKey(name: '_fullUrl')
  final Element? fullUrlElement;

  /// [resource] /// The Resource for the entry. The purpose/meaning of the resource is
  /// determined by the Bundle.type.
  @JsonKey(name: 'resource')
  final Resource? resource;

  /// [search] /// Information about the search process that lead to the creation of this
  /// entry.
  @JsonKey(name: 'search')
  final BundleSearch? search;

  /// [request] /// Additional information about how this entry should be processed as part of
  /// a transaction or batch. For history, it shows how the entry was processed
  /// to create the version contained in the entry.
  @JsonKey(name: 'request')
  final BundleRequest? request;

  /// [response] /// Indicates the results of processing the corresponding 'request' entry in
  /// the batch or transaction being responded to or what the results of an
  /// operation where when returning history.
  @JsonKey(name: 'response')
  final BundleResponse? response;
  factory BundleEntry.fromJson(Map<String, dynamic> json) =>
      _$BundleEntryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleEntryToJson(this);

  @override
  BundleEntry clone() => throw UnimplementedError();
  @override
  BundleEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<BundleLink>? link,
    FhirUri? fullUrl,
    Element? fullUrlElement,
    Resource? resource,
    BundleSearch? search,
    BundleRequest? request,
    BundleResponse? response,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BundleEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      fullUrl: fullUrl ?? this.fullUrl,
      fullUrlElement: fullUrlElement ?? this.fullUrlElement,
      resource: resource ?? this.resource,
      search: search ?? this.search,
      request: request ?? this.request,
      response: response ?? this.response,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BundleEntry.fromYaml(dynamic yaml) => yaml is String
      ? BundleEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BundleEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BundleEntry cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BundleEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BundleSearch] /// Information about the search process that lead to the creation of this
/// entry.
@JsonSerializable()
class BundleSearch extends BackboneElement {
  BundleSearch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.modeElement,
    this.score,
    this.scoreElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'BundleSearch');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// Why this entry is in the result set - whether it's included as a match or
  /// because of an _include requirement, or to convey information or warning
  /// information about the search process.
  @JsonKey(name: 'mode')
  final FhirCode? mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [score] /// When searching, the server's search ranking score for the entry.
  @JsonKey(name: 'score')
  final FhirDecimal? score;
  @JsonKey(name: '_score')
  final Element? scoreElement;
  factory BundleSearch.fromJson(Map<String, dynamic> json) =>
      _$BundleSearchFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleSearchToJson(this);

  @override
  BundleSearch clone() => throw UnimplementedError();
  @override
  BundleSearch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirDecimal? score,
    Element? scoreElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BundleSearch(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      score: score ?? this.score,
      scoreElement: scoreElement ?? this.scoreElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BundleSearch.fromYaml(dynamic yaml) => yaml is String
      ? BundleSearch.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BundleSearch.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BundleSearch cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BundleSearch.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleSearch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BundleRequest] /// Additional information about how this entry should be processed as part of
/// a transaction or batch. For history, it shows how the entry was processed
/// to create the version contained in the entry.
@JsonSerializable()
class BundleRequest extends BackboneElement {
  BundleRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.method,
    this.methodElement,
    required this.url,
    this.urlElement,
    this.ifNoneMatch,
    this.ifNoneMatchElement,
    this.ifModifiedSince,
    this.ifModifiedSinceElement,
    this.ifMatch,
    this.ifMatchElement,
    this.ifNoneExist,
    this.ifNoneExistElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'BundleRequest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [method] /// In a transaction or batch, this is the HTTP action to be executed for this
  /// entry. In a history bundle, this indicates the HTTP action that occurred.
  @JsonKey(name: 'method')
  final FhirCode method;
  @JsonKey(name: '_method')
  final Element? methodElement;

  /// [url] /// The URL for this entry, relative to the root (the address to which the
  /// request is posted).
  @JsonKey(name: 'url')
  final FhirUri url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [ifNoneMatch] /// If the ETag values match, return a 304 Not Modified status. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  @JsonKey(name: 'ifNoneMatch')
  final FhirString? ifNoneMatch;
  @JsonKey(name: '_ifNoneMatch')
  final Element? ifNoneMatchElement;

  /// [ifModifiedSince] /// Only perform the operation if the last updated date matches. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  @JsonKey(name: 'ifModifiedSince')
  final FhirInstant? ifModifiedSince;
  @JsonKey(name: '_ifModifiedSince')
  final Element? ifModifiedSinceElement;

  /// [ifMatch] /// Only perform the operation if the Etag value matches. For more information,
  /// see the API section ["Managing Resource
  /// Contention"](http.html#concurrency).
  @JsonKey(name: 'ifMatch')
  final FhirString? ifMatch;
  @JsonKey(name: '_ifMatch')
  final Element? ifMatchElement;

  /// [ifNoneExist] /// Instruct the server not to perform the create if a specified resource
  /// already exists. For further information, see the API documentation for
  /// ["Conditional Create"](http.html#ccreate). This is just the query portion
  /// of the URL - what follows the "?" (not including the "?").
  @JsonKey(name: 'ifNoneExist')
  final FhirString? ifNoneExist;
  @JsonKey(name: '_ifNoneExist')
  final Element? ifNoneExistElement;
  factory BundleRequest.fromJson(Map<String, dynamic> json) =>
      _$BundleRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleRequestToJson(this);

  @override
  BundleRequest clone() => throw UnimplementedError();
  @override
  BundleRequest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? method,
    Element? methodElement,
    FhirUri? url,
    Element? urlElement,
    FhirString? ifNoneMatch,
    Element? ifNoneMatchElement,
    FhirInstant? ifModifiedSince,
    Element? ifModifiedSinceElement,
    FhirString? ifMatch,
    Element? ifMatchElement,
    FhirString? ifNoneExist,
    Element? ifNoneExistElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BundleRequest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      methodElement: methodElement ?? this.methodElement,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      ifNoneMatch: ifNoneMatch ?? this.ifNoneMatch,
      ifNoneMatchElement: ifNoneMatchElement ?? this.ifNoneMatchElement,
      ifModifiedSince: ifModifiedSince ?? this.ifModifiedSince,
      ifModifiedSinceElement:
          ifModifiedSinceElement ?? this.ifModifiedSinceElement,
      ifMatch: ifMatch ?? this.ifMatch,
      ifMatchElement: ifMatchElement ?? this.ifMatchElement,
      ifNoneExist: ifNoneExist ?? this.ifNoneExist,
      ifNoneExistElement: ifNoneExistElement ?? this.ifNoneExistElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BundleRequest.fromYaml(dynamic yaml) => yaml is String
      ? BundleRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BundleRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BundleRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BundleRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [BundleResponse] /// Indicates the results of processing the corresponding 'request' entry in
/// the batch or transaction being responded to or what the results of an
/// operation where when returning history.
@JsonSerializable()
class BundleResponse extends BackboneElement {
  BundleResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.statusElement,
    this.location,
    this.locationElement,
    this.etag,
    this.etagElement,
    this.lastModified,
    this.lastModifiedElement,
    this.outcome,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'BundleResponse');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The status code returned by processing this entry. The status SHALL start
  /// with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP
  /// description associated with the status code.
  @JsonKey(name: 'status')
  final FhirString status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [location] /// The location header created by processing this operation, populated if the
  /// operation returns a location.
  @JsonKey(name: 'location')
  final FhirUri? location;
  @JsonKey(name: '_location')
  final Element? locationElement;

  /// [etag] /// The Etag for the resource, if the operation for the entry produced a
  /// versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  /// Contention](http.html#concurrency)).
  @JsonKey(name: 'etag')
  final FhirString? etag;
  @JsonKey(name: '_etag')
  final Element? etagElement;

  /// [lastModified] /// The date/time that the resource was modified on the server.
  @JsonKey(name: 'lastModified')
  final FhirInstant? lastModified;
  @JsonKey(name: '_lastModified')
  final Element? lastModifiedElement;

  /// [outcome] /// An OperationOutcome containing hints and warnings produced as part of
  /// processing this entry in a batch or transaction.
  @JsonKey(name: 'outcome')
  final Resource? outcome;
  factory BundleResponse.fromJson(Map<String, dynamic> json) =>
      _$BundleResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BundleResponseToJson(this);

  @override
  BundleResponse clone() => throw UnimplementedError();
  @override
  BundleResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? status,
    Element? statusElement,
    FhirUri? location,
    Element? locationElement,
    FhirString? etag,
    Element? etagElement,
    FhirInstant? lastModified,
    Element? lastModifiedElement,
    Resource? outcome,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return BundleResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      location: location ?? this.location,
      locationElement: locationElement ?? this.locationElement,
      etag: etag ?? this.etag,
      etagElement: etagElement ?? this.etagElement,
      lastModified: lastModified ?? this.lastModified,
      lastModifiedElement: lastModifiedElement ?? this.lastModifiedElement,
      outcome: outcome ?? this.outcome,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory BundleResponse.fromYaml(dynamic yaml) => yaml is String
      ? BundleResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BundleResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BundleResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory BundleResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
