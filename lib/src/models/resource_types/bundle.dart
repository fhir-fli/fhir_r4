import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Bundle]
/// A container for a collection of resources.
class Bundle extends Resource {
  /// Primary constructor for
  /// [Bundle]

  const Bundle({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.identifier,
    required this.type,
    this.timestamp,
    this.total,
    this.link,
    this.entry,
    this.signature,
  }) : super(
          objectPath: 'Bundle',
          resourceType: R4ResourceType.Bundle,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Bundle.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle';
    return Bundle(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parsePrimitive<BundleType>(
        json,
        'type',
        BundleType.fromJson,
        '$objectPath.type',
      )!,
      timestamp: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'timestamp',
        FhirInstant.fromJson,
        '$objectPath.timestamp',
      ),
      total: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'total',
        FhirUnsignedInt.fromJson,
        '$objectPath.total',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLink>(
            (v) => BundleLink.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.link'}),
            ),
          )
          .toList(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<BundleEntry>(
            (v) => BundleEntry.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.entry'}),
            ),
          )
          .toList(),
      signature: JsonParser.parseObject<Signature>(
        json,
        'signature',
        Signature.fromJson,
        '$objectPath.signature',
      ),
    );
  }

  /// Deserialize [Bundle]
  /// from a [String] or [YamlMap] object
  factory Bundle.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Bundle.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Bundle.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Bundle '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Bundle]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Bundle.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Bundle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Bundle';

  /// [identifier]
  /// A persistent identifier for the bundle that won't change as a bundle is
  /// copied from server to server.
  final Identifier? identifier;

  /// [type]
  /// Indicates the purpose of this bundle - how it is intended to be used.
  final BundleType type;

  /// [timestamp]
  /// The date/time that the bundle was assembled - i.e. when the resources
  /// were placed in the bundle.
  final FhirInstant? timestamp;

  /// [total]
  /// If a set of search matches, this is the total number of entries of type
  /// 'match' across all pages in the search. It does not include search.mode
  /// = 'include' or 'outcome' entries and it does not provide a count of the
  /// number of entries in the Bundle.
  final FhirUnsignedInt? total;

  /// [link]
  /// A series of links that provide context to this bundle.
  final List<BundleLink>? link;

  /// [entry]
  /// An entry in a bundle resource - will either contain a resource or
  /// information about a resource (transactions and history only).
  final List<BundleEntry>? entry;

  /// [signature]
  /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  final Signature? signature;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('identifier', identifier);
    addField('type', type);
    addField('timestamp', timestamp);
    addField('total', total);
    addField('link', link);
    addField('entry', entry);
    addField('signature', signature);
    return json;
  }

  @override
  Bundle clone() => throw UnimplementedError();
  @override
  Bundle copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Bundle(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      identifier: identifier ?? this.identifier,
      type: type ?? this.type,
      timestamp: timestamp ?? this.timestamp,
      total: total ?? this.total,
      link: link ?? this.link,
      entry: entry ?? this.entry,
      signature: signature ?? this.signature,
    );
  }
}

/// [BundleLink]
/// A series of links that provide context to this bundle.
class BundleLink extends BackboneElement {
  /// Primary constructor for
  /// [BundleLink]

  const BundleLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relation,
    required this.url,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.link',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleLink.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.link';
    return BundleLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      relation: JsonParser.parsePrimitive<FhirString>(
        json,
        'relation',
        FhirString.fromJson,
        '$objectPath.relation',
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      )!,
    );
  }

  /// Deserialize [BundleLink]
  /// from a [String] or [YamlMap] object
  factory BundleLink.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleLink.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleLink.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleLink '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleLink]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleLink.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BundleLink';

  /// [relation]
  /// A name which details the functional use for this link - see
  /// [http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1](http://www.iana.org/assignments/link-relations/link-relations.xhtml#link-relations-1).
  final FhirString relation;

  /// [url]
  /// The reference details for the link.
  final FhirUri url;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('relation', relation);
    addField('url', url);
    return json;
  }

  @override
  BundleLink clone() => throw UnimplementedError();
  @override
  BundleLink copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? relation,
    FhirUri? url,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return BundleLink(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      url: url ?? this.url,
    );
  }
}

/// [BundleEntry]
/// An entry in a bundle resource - will either contain a resource or
/// information about a resource (transactions and history only).
class BundleEntry extends BackboneElement {
  /// Primary constructor for
  /// [BundleEntry]

  const BundleEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.link,
    this.fullUrl,
    this.resource,
    this.search,
    this.request,
    this.response,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry';
    return BundleEntry(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLink>(
            (v) => BundleLink.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.link'}),
            ),
          )
          .toList(),
      fullUrl: JsonParser.parsePrimitive<FhirUri>(
        json,
        'fullUrl',
        FhirUri.fromJson,
        '$objectPath.fullUrl',
      ),
      resource: JsonParser.parseObject<Resource>(
        json,
        'resource',
        Resource.fromJson,
        '$objectPath.resource',
      ),
      search: JsonParser.parseObject<BundleSearch>(
        json,
        'search',
        BundleSearch.fromJson,
        '$objectPath.search',
      ),
      request: JsonParser.parseObject<BundleRequest>(
        json,
        'request',
        BundleRequest.fromJson,
        '$objectPath.request',
      ),
      response: JsonParser.parseObject<BundleResponse>(
        json,
        'response',
        BundleResponse.fromJson,
        '$objectPath.response',
      ),
    );
  }

  /// Deserialize [BundleEntry]
  /// from a [String] or [YamlMap] object
  factory BundleEntry.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleEntry.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleEntry.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleEntry '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleEntry.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BundleEntry';

  /// [link]
  /// A series of links that provide context to this entry.
  final List<BundleLink>? link;

  /// [fullUrl]
  /// The Absolute URL for the resource. The fullUrl SHALL NOT disagree with
  /// the id in the resource - i.e. if the fullUrl is not a urn:uuid, the URL
  /// shall be version-independent URL consistent with the Resource.id. The
  /// fullUrl is a version independent reference to the resource. The fullUrl
  /// element SHALL have a value except that:
  /// * fullUrl can be empty on a POST (although it does not need to when
  /// specifying a temporary id for reference in the bundle)
  /// * Results from operations might involve resources that are not
  /// identified.
  final FhirUri? fullUrl;

  /// [resource]
  /// The Resource for the entry. The purpose/meaning of the resource is
  /// determined by the Bundle.type.
  final Resource? resource;

  /// [search]
  /// Information about the search process that lead to the creation of this
  /// entry.
  final BundleSearch? search;

  /// [request]
  /// Additional information about how this entry should be processed as part
  /// of a transaction or batch. For history, it shows how the entry was
  /// processed to create the version contained in the entry.
  final BundleRequest? request;

  /// [response]
  /// Indicates the results of processing the corresponding 'request' entry
  /// in the batch or transaction being responded to or what the results of
  /// an operation where when returning history.
  final BundleResponse? response;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('link', link);
    addField('fullUrl', fullUrl);
    addField('resource', resource);
    addField('search', search);
    addField('request', request);
    addField('response', response);
    return json;
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
    Resource? resource,
    BundleSearch? search,
    BundleRequest? request,
    BundleResponse? response,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return BundleEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      fullUrl: fullUrl ?? this.fullUrl,
      resource: resource ?? this.resource,
      search: search ?? this.search,
      request: request ?? this.request,
      response: response ?? this.response,
    );
  }
}

/// [BundleSearch]
/// Information about the search process that lead to the creation of this
/// entry.
class BundleSearch extends BackboneElement {
  /// Primary constructor for
  /// [BundleSearch]

  const BundleSearch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.mode,
    this.score,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry.search',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleSearch.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.search';
    return BundleSearch(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<SearchEntryMode>(
        json,
        'mode',
        SearchEntryMode.fromJson,
        '$objectPath.mode',
      ),
      score: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'score',
        FhirDecimal.fromJson,
        '$objectPath.score',
      ),
    );
  }

  /// Deserialize [BundleSearch]
  /// from a [String] or [YamlMap] object
  factory BundleSearch.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleSearch.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleSearch.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleSearch '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleSearch]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleSearch.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleSearch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BundleSearch';

  /// [mode]
  /// Why this entry is in the result set - whether it's included as a match
  /// or because of an _include requirement, or to convey information or
  /// warning information about the search process.
  final SearchEntryMode? mode;

  /// [score]
  /// When searching, the server's search ranking score for the entry.
  final FhirDecimal? score;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('mode', mode);
    addField('score', score);
    return json;
  }

  @override
  BundleSearch clone() => throw UnimplementedError();
  @override
  BundleSearch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    SearchEntryMode? mode,
    FhirDecimal? score,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return BundleSearch(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      score: score ?? this.score,
    );
  }
}

/// [BundleRequest]
/// Additional information about how this entry should be processed as part
/// of a transaction or batch. For history, it shows how the entry was
/// processed to create the version contained in the entry.
class BundleRequest extends BackboneElement {
  /// Primary constructor for
  /// [BundleRequest]

  const BundleRequest({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.method,
    required this.url,
    this.ifNoneMatch,
    this.ifModifiedSince,
    this.ifMatch,
    this.ifNoneExist,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry.request',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.request';
    return BundleRequest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      method: JsonParser.parsePrimitive<HTTPVerb>(
        json,
        'method',
        HTTPVerb.fromJson,
        '$objectPath.method',
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
        '$objectPath.url',
      )!,
      ifNoneMatch: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifNoneMatch',
        FhirString.fromJson,
        '$objectPath.ifNoneMatch',
      ),
      ifModifiedSince: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'ifModifiedSince',
        FhirInstant.fromJson,
        '$objectPath.ifModifiedSince',
      ),
      ifMatch: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifMatch',
        FhirString.fromJson,
        '$objectPath.ifMatch',
      ),
      ifNoneExist: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifNoneExist',
        FhirString.fromJson,
        '$objectPath.ifNoneExist',
      ),
    );
  }

  /// Deserialize [BundleRequest]
  /// from a [String] or [YamlMap] object
  factory BundleRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BundleRequest';

  /// [method]
  /// In a transaction or batch, this is the HTTP action to be executed for
  /// this entry. In a history bundle, this indicates the HTTP action that
  /// occurred.
  final HTTPVerb method;

  /// [url]
  /// The URL for this entry, relative to the root (the address to which the
  /// request is posted).
  final FhirUri url;

  /// [ifNoneMatch]
  /// If the ETag values match, return a 304 Not Modified status. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  final FhirString? ifNoneMatch;

  /// [ifModifiedSince]
  /// Only perform the operation if the last updated date matches. See the
  /// API documentation for ["Conditional Read"](http.html#cread).
  final FhirInstant? ifModifiedSince;

  /// [ifMatch]
  /// Only perform the operation if the Etag value matches. For more
  /// information, see the API section ["Managing Resource
  /// Contention"](http.html#concurrency).
  final FhirString? ifMatch;

  /// [ifNoneExist]
  /// Instruct the server not to perform the create if a specified resource
  /// already exists. For further information, see the API documentation for
  /// ["Conditional Create"](http.html#ccreate). This is just the query
  /// portion of the URL - what follows the "?" (not including the "?").
  final FhirString? ifNoneExist;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('method', method);
    addField('url', url);
    addField('ifNoneMatch', ifNoneMatch);
    addField('ifModifiedSince', ifModifiedSince);
    addField('ifMatch', ifMatch);
    addField('ifNoneExist', ifNoneExist);
    return json;
  }

  @override
  BundleRequest clone() => throw UnimplementedError();
  @override
  BundleRequest copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HTTPVerb? method,
    FhirUri? url,
    FhirString? ifNoneMatch,
    FhirInstant? ifModifiedSince,
    FhirString? ifMatch,
    FhirString? ifNoneExist,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return BundleRequest(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      url: url ?? this.url,
      ifNoneMatch: ifNoneMatch ?? this.ifNoneMatch,
      ifModifiedSince: ifModifiedSince ?? this.ifModifiedSince,
      ifMatch: ifMatch ?? this.ifMatch,
      ifNoneExist: ifNoneExist ?? this.ifNoneExist,
    );
  }
}

/// [BundleResponse]
/// Indicates the results of processing the corresponding 'request' entry
/// in the batch or transaction being responded to or what the results of
/// an operation where when returning history.
class BundleResponse extends BackboneElement {
  /// Primary constructor for
  /// [BundleResponse]

  const BundleResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.status,
    this.location,
    this.etag,
    this.lastModified,
    this.outcome,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry.response',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.response';
    return BundleResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.extension'}),
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              (v as Map<String, dynamic>)
                ..addAll({'objectPath': '$objectPath.modifierExtension'}),
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FhirString>(
        json,
        'status',
        FhirString.fromJson,
        '$objectPath.status',
      )!,
      location: JsonParser.parsePrimitive<FhirUri>(
        json,
        'location',
        FhirUri.fromJson,
        '$objectPath.location',
      ),
      etag: JsonParser.parsePrimitive<FhirString>(
        json,
        'etag',
        FhirString.fromJson,
        '$objectPath.etag',
      ),
      lastModified: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'lastModified',
        FhirInstant.fromJson,
        '$objectPath.lastModified',
      ),
      outcome: JsonParser.parseObject<Resource>(
        json,
        'outcome',
        Resource.fromJson,
        '$objectPath.outcome',
      ),
    );
  }

  /// Deserialize [BundleResponse]
  /// from a [String] or [YamlMap] object
  factory BundleResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BundleResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'BundleResponse';

  /// [status]
  /// The status code returned by processing this entry. The status SHALL
  /// start with a 3 digit HTTP code (e.g. 404) and may contain the standard
  /// HTTP description associated with the status code.
  final FhirString status;

  /// [location]
  /// The location header created by processing this operation, populated if
  /// the operation returns a location.
  final FhirUri? location;

  /// [etag]
  /// The Etag for the resource, if the operation for the entry produced a
  /// versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  /// Contention](http.html#concurrency)).
  final FhirString? etag;

  /// [lastModified]
  /// The date/time that the resource was modified on the server.
  final FhirInstant? lastModified;

  /// [outcome]
  /// An OperationOutcome containing hints and warnings produced as part of
  /// processing this entry in a batch or transaction.
  final Resource? outcome;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('status', status);
    addField('location', location);
    addField('etag', etag);
    addField('lastModified', lastModified);
    addField('outcome', outcome);
    return json;
  }

  @override
  BundleResponse clone() => throw UnimplementedError();
  @override
  BundleResponse copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? status,
    FhirUri? location,
    FhirString? etag,
    FhirInstant? lastModified,
    Resource? outcome,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return BundleResponse(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      location: location ?? this.location,
      etag: etag ?? this.etag,
      lastModified: lastModified ?? this.lastModified,
      outcome: outcome ?? this.outcome,
    );
  }
}
