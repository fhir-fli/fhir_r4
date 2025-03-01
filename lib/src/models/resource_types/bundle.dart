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

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Bundle.empty() => Bundle(
        type: BundleType.values.first,
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<BundleEntry>(
            (v) => BundleEntry.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entry',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'identifier',
      'type',
      'timestamp',
      'total',
      'link',
      'entry',
      'signature',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'type':
        fields.add(type);
      case 'timestamp':
        if (timestamp != null) {
          fields.add(timestamp!);
        }
      case 'total':
        if (total != null) {
          fields.add(total!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      case 'entry':
        if (entry != null) {
          fields.addAll(entry!);
        }
      case 'signature':
        if (signature != null) {
          fields.add(signature!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is Identifier) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is BundleType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'timestamp':
        {
          if (child is FhirInstant) {
            return copyWith(timestamp: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'total':
        {
          if (child is FhirUnsignedInt) {
            return copyWith(total: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'link':
        {
          if (child is List<BundleLink>) {
            return copyWith(link: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'entry':
        {
          if (child is List<BundleEntry>) {
            return copyWith(entry: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'signature':
        {
          if (child is Signature) {
            return copyWith(signature: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'identifier':
        return ['Identifier'];
      case 'type':
        return ['FhirCode'];
      case 'timestamp':
        return ['FhirInstant'];
      case 'total':
        return ['FhirUnsignedInt'];
      case 'link':
        return ['BundleLink'];
      case 'entry':
        return ['BundleEntry'];
      case 'signature':
        return ['Signature'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Bundle(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      timestamp: timestamp?.copyWith(
            objectPath: '$newObjectPath.timestamp',
          ) ??
          this.timestamp,
      total: total?.copyWith(
            objectPath: '$newObjectPath.total',
          ) ??
          this.total,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
      entry: entry
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.entry',
                ),
              )
              .toList() ??
          this.entry,
      signature: signature?.copyWith(
            objectPath: '$newObjectPath.signature',
          ) ??
          this.signature,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Bundle) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!equalsDeepWithNull(timestamp, o.timestamp)) {
      return false;
    }
    if (!equalsDeepWithNull(total, o.total)) {
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
    if (!equalsDeepWithNull(signature, o.signature)) {
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
  }) : super(
          objectPath: 'Bundle.link',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BundleLink.empty() => BundleLink(
        relation: FhirString.empty(),
        url: FhirUri.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'relation',
      'url',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'relation':
        fields.add(relation);
      case 'url':
        fields.add(url);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relation':
        {
          if (child is FhirString) {
            return copyWith(relation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'relation':
        return ['FhirString'];
      case 'url':
        return ['FhirUri'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BundleLink(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      relation: relation?.copyWith(
            objectPath: '$newObjectPath.relation',
          ) ??
          this.relation,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleLink) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(relation, o.relation)) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
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
  }) : super(
          objectPath: 'Bundle.entry',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BundleEntry.empty() => const BundleEntry();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLink>(
            (v) => BundleLink.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'link',
      'fullUrl',
      'resource',
      'search',
      'request',
      'response',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'link':
        if (link != null) {
          fields.addAll(link!);
        }
      case 'fullUrl':
        if (fullUrl != null) {
          fields.add(fullUrl!);
        }
      case 'resource':
        if (resource != null) {
          fields.add(resource!);
        }
      case 'search':
        if (search != null) {
          fields.add(search!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'response':
        if (response != null) {
          fields.add(response!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'link':
        {
          if (child is List<BundleLink>) {
            return copyWith(link: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'fullUrl':
        {
          if (child is FhirUri) {
            return copyWith(fullUrl: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'resource':
        {
          if (child is Resource) {
            return copyWith(resource: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'search':
        {
          if (child is BundleSearch) {
            return copyWith(search: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'request':
        {
          if (child is BundleRequest) {
            return copyWith(request: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'response':
        {
          if (child is BundleResponse) {
            return copyWith(response: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'link':
        return ['BundleLink'];
      case 'fullUrl':
        return ['FhirUri'];
      case 'resource':
        return ['Resource'];
      case 'search':
        return ['BundleSearch'];
      case 'request':
        return ['BundleRequest'];
      case 'response':
        return ['BundleResponse'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BundleEntry(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      link: link
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.link',
                ),
              )
              .toList() ??
          this.link,
      fullUrl: fullUrl?.copyWith(
            objectPath: '$newObjectPath.fullUrl',
          ) ??
          this.fullUrl,
      resource: resource ?? this.resource,
      search: search?.copyWith(
            objectPath: '$newObjectPath.search',
          ) ??
          this.search,
      request: request?.copyWith(
            objectPath: '$newObjectPath.request',
          ) ??
          this.request,
      response: response?.copyWith(
            objectPath: '$newObjectPath.response',
          ) ??
          this.response,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleEntry) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(fullUrl, o.fullUrl)) {
      return false;
    }
    if (!equalsDeepWithNull(resource, o.resource)) {
      return false;
    }
    if (!equalsDeepWithNull(search, o.search)) {
      return false;
    }
    if (!equalsDeepWithNull(request, o.request)) {
      return false;
    }
    if (!equalsDeepWithNull(response, o.response)) {
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
  }) : super(
          objectPath: 'Bundle.entry.search',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BundleSearch.empty() => const BundleSearch();

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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'mode',
      'score',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'mode':
        if (mode != null) {
          fields.add(mode!);
        }
      case 'score':
        if (score != null) {
          fields.add(score!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'mode':
        {
          if (child is SearchEntryMode) {
            return copyWith(mode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'score':
        {
          if (child is FhirDecimal) {
            return copyWith(score: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'mode':
        return ['FhirCode'];
      case 'score':
        return ['FhirDecimal'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BundleSearch(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      mode: mode?.copyWith(
            objectPath: '$newObjectPath.mode',
          ) ??
          this.mode,
      score: score?.copyWith(
            objectPath: '$newObjectPath.score',
          ) ??
          this.score,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleSearch) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(mode, o.mode)) {
      return false;
    }
    if (!equalsDeepWithNull(score, o.score)) {
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
  }) : super(
          objectPath: 'Bundle.entry.request',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BundleRequest.empty() => BundleRequest(
        method: HTTPVerb.values.first,
        url: FhirUri.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'method',
      'url',
      'ifNoneMatch',
      'ifModifiedSince',
      'ifMatch',
      'ifNoneExist',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'method':
        fields.add(method);
      case 'url':
        fields.add(url);
      case 'ifNoneMatch':
        if (ifNoneMatch != null) {
          fields.add(ifNoneMatch!);
        }
      case 'ifModifiedSince':
        if (ifModifiedSince != null) {
          fields.add(ifModifiedSince!);
        }
      case 'ifMatch':
        if (ifMatch != null) {
          fields.add(ifMatch!);
        }
      case 'ifNoneExist':
        if (ifNoneExist != null) {
          fields.add(ifNoneExist!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'method':
        {
          if (child is HTTPVerb) {
            return copyWith(method: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'url':
        {
          if (child is FhirUri) {
            return copyWith(url: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'ifNoneMatch':
        {
          if (child is FhirString) {
            return copyWith(ifNoneMatch: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'ifModifiedSince':
        {
          if (child is FhirInstant) {
            return copyWith(ifModifiedSince: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'ifMatch':
        {
          if (child is FhirString) {
            return copyWith(ifMatch: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'ifNoneExist':
        {
          if (child is FhirString) {
            return copyWith(ifNoneExist: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'method':
        return ['FhirCode'];
      case 'url':
        return ['FhirUri'];
      case 'ifNoneMatch':
        return ['FhirString'];
      case 'ifModifiedSince':
        return ['FhirInstant'];
      case 'ifMatch':
        return ['FhirString'];
      case 'ifNoneExist':
        return ['FhirString'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BundleRequest(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      url: url?.copyWith(
            objectPath: '$newObjectPath.url',
          ) ??
          this.url,
      ifNoneMatch: ifNoneMatch?.copyWith(
            objectPath: '$newObjectPath.ifNoneMatch',
          ) ??
          this.ifNoneMatch,
      ifModifiedSince: ifModifiedSince?.copyWith(
            objectPath: '$newObjectPath.ifModifiedSince',
          ) ??
          this.ifModifiedSince,
      ifMatch: ifMatch?.copyWith(
            objectPath: '$newObjectPath.ifMatch',
          ) ??
          this.ifMatch,
      ifNoneExist: ifNoneExist?.copyWith(
            objectPath: '$newObjectPath.ifNoneExist',
          ) ??
          this.ifNoneExist,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleRequest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(method, o.method)) {
      return false;
    }
    if (!equalsDeepWithNull(url, o.url)) {
      return false;
    }
    if (!equalsDeepWithNull(ifNoneMatch, o.ifNoneMatch)) {
      return false;
    }
    if (!equalsDeepWithNull(ifModifiedSince, o.ifModifiedSince)) {
      return false;
    }
    if (!equalsDeepWithNull(ifMatch, o.ifMatch)) {
      return false;
    }
    if (!equalsDeepWithNull(ifNoneExist, o.ifNoneExist)) {
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
  }) : super(
          objectPath: 'Bundle.entry.response',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory BundleResponse.empty() => BundleResponse(
        status: FhirString.empty(),
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
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'status',
      'location',
      'etag',
      'lastModified',
      'outcome',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'status':
        fields.add(status);
      case 'location':
        if (location != null) {
          fields.add(location!);
        }
      case 'etag':
        if (etag != null) {
          fields.add(etag!);
        }
      case 'lastModified':
        if (lastModified != null) {
          fields.add(lastModified!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is FhirString) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'location':
        {
          if (child is FhirUri) {
            return copyWith(location: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'etag':
        {
          if (child is FhirString) {
            return copyWith(etag: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastModified':
        {
          if (child is FhirInstant) {
            return copyWith(lastModified: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'outcome':
        {
          if (child is Resource) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'status':
        return ['FhirString'];
      case 'location':
        return ['FhirUri'];
      case 'etag':
        return ['FhirString'];
      case 'lastModified':
        return ['FhirInstant'];
      case 'outcome':
        return ['Resource'];
      default:
        return <String>[];
    }
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return BundleResponse(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      location: location?.copyWith(
            objectPath: '$newObjectPath.location',
          ) ??
          this.location,
      etag: etag?.copyWith(
            objectPath: '$newObjectPath.etag',
          ) ??
          this.etag,
      lastModified: lastModified?.copyWith(
            objectPath: '$newObjectPath.lastModified',
          ) ??
          this.lastModified,
      outcome: outcome ?? this.outcome,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! BundleResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(location, o.location)) {
      return false;
    }
    if (!equalsDeepWithNull(etag, o.etag)) {
      return false;
    }
    if (!equalsDeepWithNull(lastModified, o.lastModified)) {
      return false;
    }
    if (!equalsDeepWithNull(outcome, o.outcome)) {
      return false;
    }
    return true;
  }
}
