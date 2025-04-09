import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'bundle.g.dart';

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
          resourceType: R4ResourceType.Bundle,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Bundle.fromJson(
    Map<String, dynamic> json,
  ) {
    return Bundle(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
      ),
      type: JsonParser.parsePrimitive<BundleType>(
        json,
        'type',
        BundleType.fromJson,
      )!,
      timestamp: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'timestamp',
        FhirInstant.fromJson,
      ),
      total: JsonParser.parsePrimitive<FhirUnsignedInt>(
        json,
        'total',
        FhirUnsignedInt.fromJson,
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLink>(
            (v) => BundleLink.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<BundleEntry>(
            (v) => BundleEntry.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      signature: JsonParser.parseObject<Signature>(
        json,
        'signature',
        Signature.fromJson,
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
    if (json is Map<String, dynamic>) {
      return Bundle.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'type',
      type,
    );
    addField(
      'timestamp',
      timestamp,
    );
    addField(
      'total',
      total,
    );
    addField(
      'link',
      link,
    );
    addField(
      'entry',
      entry,
    );
    addField(
      'signature',
      signature,
    );
    return json;
  }

  @override
  Bundle clone() => copyWith();

  /// Copy function for [Bundle]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleCopyWith<Bundle> get copyWith => _$BundleCopyWithImpl<Bundle>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Bundle) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      timestamp,
      o.timestamp,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      total,
      o.total,
    )) {
      return false;
    }
    if (!listEquals<BundleLink>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<BundleEntry>(
      entry,
      o.entry,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      signature,
      o.signature,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleLink.fromJson(
    Map<String, dynamic> json,
  ) {
    return BundleLink(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      relation: JsonParser.parsePrimitive<FhirString>(
        json,
        'relation',
        FhirString.fromJson,
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
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
    if (json is Map<String, dynamic>) {
      return BundleLink.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'relation',
      relation,
    );
    addField(
      'url',
      url,
    );
    return json;
  }

  @override
  BundleLink clone() => copyWith();

  /// Copy function for [BundleLink]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleLinkCopyWith<BundleLink> get copyWith =>
      _$BundleLinkCopyWithImpl<BundleLink>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleLink) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relation,
      o.relation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleEntry.fromJson(
    Map<String, dynamic> json,
  ) {
    return BundleEntry(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLink>(
            (v) => BundleLink.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      fullUrl: JsonParser.parsePrimitive<FhirUri>(
        json,
        'fullUrl',
        FhirUri.fromJson,
      ),
      resource: JsonParser.parseObject<Resource>(
        json,
        'resource',
        Resource.fromJson,
      ),
      search: JsonParser.parseObject<BundleSearch>(
        json,
        'search',
        BundleSearch.fromJson,
      ),
      request: JsonParser.parseObject<BundleRequest>(
        json,
        'request',
        BundleRequest.fromJson,
      ),
      response: JsonParser.parseObject<BundleResponse>(
        json,
        'response',
        BundleResponse.fromJson,
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
    if (json is Map<String, dynamic>) {
      return BundleEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'link',
      link,
    );
    addField(
      'fullUrl',
      fullUrl,
    );
    addField(
      'resource',
      resource,
    );
    addField(
      'search',
      search,
    );
    addField(
      'request',
      request,
    );
    addField(
      'response',
      response,
    );
    return json;
  }

  @override
  BundleEntry clone() => copyWith();

  /// Copy function for [BundleEntry]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleEntryCopyWith<BundleEntry> get copyWith =>
      _$BundleEntryCopyWithImpl<BundleEntry>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleEntry) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<BundleLink>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      fullUrl,
      o.fullUrl,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      resource,
      o.resource,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      search,
      o.search,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      response,
      o.response,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleSearch.fromJson(
    Map<String, dynamic> json,
  ) {
    return BundleSearch(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<SearchEntryMode>(
        json,
        'mode',
        SearchEntryMode.fromJson,
      ),
      score: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'score',
        FhirDecimal.fromJson,
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
    if (json is Map<String, dynamic>) {
      return BundleSearch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'mode',
      mode,
    );
    addField(
      'score',
      score,
    );
    return json;
  }

  @override
  BundleSearch clone() => copyWith();

  /// Copy function for [BundleSearch]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleSearchCopyWith<BundleSearch> get copyWith =>
      _$BundleSearchCopyWithImpl<BundleSearch>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleSearch) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mode,
      o.mode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      score,
      o.score,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return BundleRequest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      method: JsonParser.parsePrimitive<HTTPVerb>(
        json,
        'method',
        HTTPVerb.fromJson,
      )!,
      url: JsonParser.parsePrimitive<FhirUri>(
        json,
        'url',
        FhirUri.fromJson,
      )!,
      ifNoneMatch: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifNoneMatch',
        FhirString.fromJson,
      ),
      ifModifiedSince: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'ifModifiedSince',
        FhirInstant.fromJson,
      ),
      ifMatch: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifMatch',
        FhirString.fromJson,
      ),
      ifNoneExist: JsonParser.parsePrimitive<FhirString>(
        json,
        'ifNoneExist',
        FhirString.fromJson,
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
    if (json is Map<String, dynamic>) {
      return BundleRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'method',
      method,
    );
    addField(
      'url',
      url,
    );
    addField(
      'ifNoneMatch',
      ifNoneMatch,
    );
    addField(
      'ifModifiedSince',
      ifModifiedSince,
    );
    addField(
      'ifMatch',
      ifMatch,
    );
    addField(
      'ifNoneExist',
      ifNoneExist,
    );
    return json;
  }

  @override
  BundleRequest clone() => copyWith();

  /// Copy function for [BundleRequest]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleRequestCopyWith<BundleRequest> get copyWith =>
      _$BundleRequestCopyWithImpl<BundleRequest>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleRequest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      url,
      o.url,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ifNoneMatch,
      o.ifNoneMatch,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ifModifiedSince,
      o.ifModifiedSince,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ifMatch,
      o.ifMatch,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      ifNoneExist,
      o.ifNoneExist,
    )) {
      return false;
    }
    return true;
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return BundleResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FhirString>(
        json,
        'status',
        FhirString.fromJson,
      )!,
      location: JsonParser.parsePrimitive<FhirUri>(
        json,
        'location',
        FhirUri.fromJson,
      ),
      etag: JsonParser.parsePrimitive<FhirString>(
        json,
        'etag',
        FhirString.fromJson,
      ),
      lastModified: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'lastModified',
        FhirInstant.fromJson,
      ),
      outcome: JsonParser.parseObject<Resource>(
        json,
        'outcome',
        Resource.fromJson,
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
    if (json is Map<String, dynamic>) {
      return BundleResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'status',
      status,
    );
    addField(
      'location',
      location,
    );
    addField(
      'etag',
      etag,
    );
    addField(
      'lastModified',
      lastModified,
    );
    addField(
      'outcome',
      outcome,
    );
    return json;
  }

  @override
  BundleResponse clone() => copyWith();

  /// Copy function for [BundleResponse]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $BundleResponseCopyWith<BundleResponse> get copyWith =>
      _$BundleResponseCopyWithImpl<BundleResponse>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      location,
      o.location,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      etag,
      o.etag,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      lastModified,
      o.lastModified,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    return true;
  }
}
