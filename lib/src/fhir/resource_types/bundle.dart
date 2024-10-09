import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Bundle] /// A container for a collection of resources.
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
  }) : super(resourceType: R4ResourceType.Bundle);

  @override
  String get fhirType => 'Bundle';

  @Id()
  int dbId = 0;

  /// [identifier] /// A persistent identifier for the bundle that won't change as a bundle is
  /// copied from server to server.
  final Identifier? identifier;

  /// [type] /// Indicates the purpose of this bundle - how it is intended to be used.
  final BundleType type;
  final Element? typeElement;

  /// [timestamp] /// The date/time that the bundle was assembled - i.e. when the resources were
  /// placed in the bundle.
  final FhirInstant? timestamp;
  final Element? timestampElement;

  /// [total] /// If a set of search matches, this is the total number of entries of type
  /// 'match' across all pages in the search. It does not include search.mode =
  /// 'include' or 'outcome' entries and it does not provide a count of the
  /// number of entries in the Bundle.
  final FhirUnsignedInt? total;
  final Element? totalElement;

  /// [link] /// A series of links that provide context to this bundle.
  final List<BundleLink>? link;

  /// [entry] /// An entry in a bundle resource - will either contain a resource or
  /// information about a resource (transactions and history only).
  final List<BundleEntry>? entry;

  /// [signature] /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  final Signature? signature;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    json['type'] = type.toJson();
    if (timestamp?.value != null) {
      json['timestamp'] = timestamp!.value;
    }
    if (timestampElement != null) {
      json['_timestamp'] = timestampElement!.toJson();
    }
    if (total?.value != null) {
      json['total'] = total!.value;
    }
    if (totalElement != null) {
      json['_total'] = totalElement!.toJson();
    }
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map<dynamic>((BundleLink v) => v.toJson()).toList();
    }
    if (entry != null && entry!.isNotEmpty) {
      json['entry'] =
          entry!.map<dynamic>((BundleEntry v) => v.toJson()).toList();
    }
    if (signature != null) {
      json['signature'] = signature!.toJson();
    }
    return json;
  }

  factory Bundle.fromJson(Map<String, dynamic> json) {
    return Bundle(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      type: BundleType.fromJson(json['type'] as Map<String, dynamic>),
      timestamp:
          json['timestamp'] != null ? FhirInstant(json['timestamp']) : null,
      timestampElement: json['_timestamp'] != null
          ? Element.fromJson(json['_timestamp'] as Map<String, dynamic>)
          : null,
      total: json['total'] != null ? FhirUnsignedInt(json['total']) : null,
      totalElement: json['_total'] != null
          ? Element.fromJson(json['_total'] as Map<String, dynamic>)
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<BundleLink>(
                  (dynamic v) => BundleLink.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<BundleEntry>((dynamic v) =>
                  BundleEntry.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      signature: json['signature'] != null
          ? Signature.fromJson(json['signature'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Bundle clone() => throw UnimplementedError();
  @override
  Bundle copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Identifier? identifier,
    BundleType? type,
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
  });

  @override
  String get fhirType => 'BundleLink';

  @Id()
  int dbId = 0;

  /// [relation] /// A name which details the functional use for this link - see
  /// [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  final FhirString relation;
  final Element? relationElement;

  /// [url] /// The reference details for the link.
  final FhirUri url;
  final Element? urlElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['relation'] = relation.value;
    if (relationElement != null) {
      json['_relation'] = relationElement!.toJson();
    }
    json['url'] = url.value;
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    return json;
  }

  factory BundleLink.fromJson(Map<String, dynamic> json) {
    return BundleLink(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relation: FhirString(json['relation']),
      relationElement: json['_relation'] != null
          ? Element.fromJson(json['_relation'] as Map<String, dynamic>)
          : null,
      url: FhirUri(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'BundleEntry';

  @Id()
  int dbId = 0;

  /// [link] /// A series of links that provide context to this entry.
  final List<BundleLink>? link;

  /// [fullUrl] /// The Absolute URL for the resource. The fullUrl SHALL NOT disagree with the
  /// id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL shall
  /// be version-independent URL consistent with the Resource.id. The fullUrl is
  /// a version independent reference to the resource. The fullUrl element SHALL
  /// have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when
  /// specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not identified.
  final FhirUri? fullUrl;
  final Element? fullUrlElement;

  /// [resource] /// The Resource for the entry. The purpose/meaning of the resource is
  /// determined by the Bundle.type.
  final Resource? resource;

  /// [search] /// Information about the search process that lead to the creation of this
  /// entry.
  final BundleSearch? search;

  /// [request] /// Additional information about how this entry should be processed as part of
  /// a transaction or batch. For history, it shows how the entry was processed
  /// to create the version contained in the entry.
  final BundleRequest? request;

  /// [response] /// Indicates the results of processing the corresponding 'request' entry in
  /// the batch or transaction being responded to or what the results of an
  /// operation where when returning history.
  final BundleResponse? response;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (link != null && link!.isNotEmpty) {
      json['link'] = link!.map<dynamic>((BundleLink v) => v.toJson()).toList();
    }
    if (fullUrl?.value != null) {
      json['fullUrl'] = fullUrl!.value;
    }
    if (fullUrlElement != null) {
      json['_fullUrl'] = fullUrlElement!.toJson();
    }
    if (resource != null) {
      json['resource'] = resource!.toJson();
    }
    if (search != null) {
      json['search'] = search!.toJson();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (response != null) {
      json['response'] = response!.toJson();
    }
    return json;
  }

  factory BundleEntry.fromJson(Map<String, dynamic> json) {
    return BundleEntry(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      link: json['link'] != null
          ? (json['link'] as List<dynamic>)
              .map<BundleLink>(
                  (dynamic v) => BundleLink.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      fullUrl: json['fullUrl'] != null ? FhirUri(json['fullUrl']) : null,
      fullUrlElement: json['_fullUrl'] != null
          ? Element.fromJson(json['_fullUrl'] as Map<String, dynamic>)
          : null,
      resource: json['resource'] != null
          ? Resource.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      search: json['search'] != null
          ? BundleSearch.fromJson(json['search'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? BundleRequest.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? BundleResponse.fromJson(json['response'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'BundleSearch';

  @Id()
  int dbId = 0;

  /// [mode] /// Why this entry is in the result set - whether it's included as a match or
  /// because of an _include requirement, or to convey information or warning
  /// information about the search process.
  final SearchEntryMode? mode;
  final Element? modeElement;

  /// [score] /// When searching, the server's search ranking score for the entry.
  final FhirDecimal? score;
  final Element? scoreElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (mode != null) {
      json['mode'] = mode!.toJson();
    }
    if (score?.value != null) {
      json['score'] = score!.value;
    }
    if (scoreElement != null) {
      json['_score'] = scoreElement!.toJson();
    }
    return json;
  }

  factory BundleSearch.fromJson(Map<String, dynamic> json) {
    return BundleSearch(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      mode: json['mode'] != null
          ? SearchEntryMode.fromJson(json['mode'] as Map<String, dynamic>)
          : null,
      score: json['score'] != null ? FhirDecimal(json['score']) : null,
      scoreElement: json['_score'] != null
          ? Element.fromJson(json['_score'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  BundleSearch clone() => throw UnimplementedError();
  @override
  BundleSearch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SearchEntryMode? mode,
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
  });

  @override
  String get fhirType => 'BundleRequest';

  @Id()
  int dbId = 0;

  /// [method] /// In a transaction or batch, this is the HTTP action to be executed for this
  /// entry. In a history bundle, this indicates the HTTP action that occurred.
  final HTTPVerb method;
  final Element? methodElement;

  /// [url] /// The URL for this entry, relative to the root (the address to which the
  /// request is posted).
  final FhirUri url;
  final Element? urlElement;

  /// [ifNoneMatch] /// If the ETag values match, return a 304 Not Modified status. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  final FhirString? ifNoneMatch;
  final Element? ifNoneMatchElement;

  /// [ifModifiedSince] /// Only perform the operation if the last updated date matches. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  final FhirInstant? ifModifiedSince;
  final Element? ifModifiedSinceElement;

  /// [ifMatch] /// Only perform the operation if the Etag value matches. For more information,
  /// see the API section ["Managing Resource
  /// Contention"](http.html#concurrency).
  final FhirString? ifMatch;
  final Element? ifMatchElement;

  /// [ifNoneExist] /// Instruct the server not to perform the create if a specified resource
  /// already exists. For further information, see the API documentation for
  /// ["Conditional Create"](http.html#ccreate). This is just the query portion
  /// of the URL - what follows the "?" (not including the "?").
  final FhirString? ifNoneExist;
  final Element? ifNoneExistElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['method'] = method.toJson();
    json['url'] = url.value;
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (ifNoneMatch?.value != null) {
      json['ifNoneMatch'] = ifNoneMatch!.value;
    }
    if (ifNoneMatchElement != null) {
      json['_ifNoneMatch'] = ifNoneMatchElement!.toJson();
    }
    if (ifModifiedSince?.value != null) {
      json['ifModifiedSince'] = ifModifiedSince!.value;
    }
    if (ifModifiedSinceElement != null) {
      json['_ifModifiedSince'] = ifModifiedSinceElement!.toJson();
    }
    if (ifMatch?.value != null) {
      json['ifMatch'] = ifMatch!.value;
    }
    if (ifMatchElement != null) {
      json['_ifMatch'] = ifMatchElement!.toJson();
    }
    if (ifNoneExist?.value != null) {
      json['ifNoneExist'] = ifNoneExist!.value;
    }
    if (ifNoneExistElement != null) {
      json['_ifNoneExist'] = ifNoneExistElement!.toJson();
    }
    return json;
  }

  factory BundleRequest.fromJson(Map<String, dynamic> json) {
    return BundleRequest(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      method: HTTPVerb.fromJson(json['method'] as Map<String, dynamic>),
      url: FhirUri(json['url']),
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      ifNoneMatch:
          json['ifNoneMatch'] != null ? FhirString(json['ifNoneMatch']) : null,
      ifNoneMatchElement: json['_ifNoneMatch'] != null
          ? Element.fromJson(json['_ifNoneMatch'] as Map<String, dynamic>)
          : null,
      ifModifiedSince: json['ifModifiedSince'] != null
          ? FhirInstant(json['ifModifiedSince'])
          : null,
      ifModifiedSinceElement: json['_ifModifiedSince'] != null
          ? Element.fromJson(json['_ifModifiedSince'] as Map<String, dynamic>)
          : null,
      ifMatch: json['ifMatch'] != null ? FhirString(json['ifMatch']) : null,
      ifMatchElement: json['_ifMatch'] != null
          ? Element.fromJson(json['_ifMatch'] as Map<String, dynamic>)
          : null,
      ifNoneExist:
          json['ifNoneExist'] != null ? FhirString(json['ifNoneExist']) : null,
      ifNoneExistElement: json['_ifNoneExist'] != null
          ? Element.fromJson(json['_ifNoneExist'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  BundleRequest clone() => throw UnimplementedError();
  @override
  BundleRequest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HTTPVerb? method,
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
  });

  @override
  String get fhirType => 'BundleResponse';

  @Id()
  int dbId = 0;

  /// [status] /// The status code returned by processing this entry. The status SHALL start
  /// with a 3 digit HTTP code (e.g. 404) and may contain the standard HTTP
  /// description associated with the status code.
  final FhirString status;
  final Element? statusElement;

  /// [location] /// The location header created by processing this operation, populated if the
  /// operation returns a location.
  final FhirUri? location;
  final Element? locationElement;

  /// [etag] /// The Etag for the resource, if the operation for the entry produced a
  /// versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  /// Contention](http.html#concurrency)).
  final FhirString? etag;
  final Element? etagElement;

  /// [lastModified] /// The date/time that the resource was modified on the server.
  final FhirInstant? lastModified;
  final Element? lastModifiedElement;

  /// [outcome] /// An OperationOutcome containing hints and warnings produced as part of
  /// processing this entry in a batch or transaction.
  final Resource? outcome;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['status'] = status.value;
    if (statusElement != null) {
      json['_status'] = statusElement!.toJson();
    }
    if (location?.value != null) {
      json['location'] = location!.value;
    }
    if (locationElement != null) {
      json['_location'] = locationElement!.toJson();
    }
    if (etag?.value != null) {
      json['etag'] = etag!.value;
    }
    if (etagElement != null) {
      json['_etag'] = etagElement!.toJson();
    }
    if (lastModified?.value != null) {
      json['lastModified'] = lastModified!.value;
    }
    if (lastModifiedElement != null) {
      json['_lastModified'] = lastModifiedElement!.toJson();
    }
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    return json;
  }

  factory BundleResponse.fromJson(Map<String, dynamic> json) {
    return BundleResponse(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: FhirString(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      location: json['location'] != null ? FhirUri(json['location']) : null,
      locationElement: json['_location'] != null
          ? Element.fromJson(json['_location'] as Map<String, dynamic>)
          : null,
      etag: json['etag'] != null ? FhirString(json['etag']) : null,
      etagElement: json['_etag'] != null
          ? Element.fromJson(json['_etag'] as Map<String, dynamic>)
          : null,
      lastModified: json['lastModified'] != null
          ? FhirInstant(json['lastModified'])
          : null,
      lastModifiedElement: json['_lastModified'] != null
          ? Element.fromJson(json['_lastModified'] as Map<String, dynamic>)
          : null,
      outcome: json['outcome'] != null
          ? Resource.fromJson(json['outcome'] as Map<String, dynamic>)
          : null,
    );
  }
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
