import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Bundle,
        BundleEntry,
        BundleLink,
        BundleRequest,
        BundleResponse,
        BundleSearch,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [BundleBuilder]
/// A container for a collection of resources.
class BundleBuilder extends ResourceBuilder {
  /// Primary constructor for
  /// [BundleBuilder]

  BundleBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.identifier,
    this.type,
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
  /// For Builder classes, no fields are required
  factory BundleBuilder.empty() => BundleBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle';
    return BundleBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      type: JsonParser.parsePrimitive<BundleTypeBuilder>(
        json,
        'type',
        BundleTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      timestamp: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'timestamp',
        FhirInstantBuilder.fromJson,
        '$objectPath.timestamp',
      ),
      total: JsonParser.parsePrimitive<FhirUnsignedIntBuilder>(
        json,
        'total',
        FhirUnsignedIntBuilder.fromJson,
        '$objectPath.total',
      ),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLinkBuilder>(
            (v) => BundleLinkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      entry: (json['entry'] as List<dynamic>?)
          ?.map<BundleEntryBuilder>(
            (v) => BundleEntryBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.entry',
              },
            ),
          )
          .toList(),
      signature: JsonParser.parseObject<SignatureBuilder>(
        json,
        'signature',
        SignatureBuilder.fromJson,
        '$objectPath.signature',
      ),
    );
  }

  /// Deserialize [BundleBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleBuilder.fromJson(json);
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
  IdentifierBuilder? identifier;

  /// [type]
  /// Indicates the purpose of this bundle - how it is intended to be used.
  BundleTypeBuilder? type;

  /// [timestamp]
  /// The date/time that the bundle was assembled - i.e. when the resources
  /// were placed in the bundle.
  FhirInstantBuilder? timestamp;

  /// [total]
  /// If a set of search matches, this is the total number of entries of type
  /// 'match' across all pages in the search. It does not include search.mode
  /// = 'include' or 'outcome' entries and it does not provide a count of the
  /// number of entries in the Bundle.
  FhirUnsignedIntBuilder? total;

  /// [link]
  /// A series of links that provide context to this bundle.
  List<BundleLinkBuilder>? link;

  /// [entry]
  /// An entry in a bundle resource - will either contain a resource or
  /// information about a resource (transactions and history only).
  List<BundleEntryBuilder>? entry;

  /// [signature]
  /// Digital Signature - base64 encoded. XML-DSig or a JWT.
  SignatureBuilder? signature;

  /// Converts a [BundleBuilder]
  /// to [Bundle]
  @override
  Bundle build() => Bundle.fromJson(toJson());

  /// Converts a [BundleBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (type != null) {
          fields.add(type!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is BundleTypeBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'timestamp':
        {
          if (child is FhirInstantBuilder) {
            timestamp = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                timestamp = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'total':
        {
          if (child is FhirUnsignedIntBuilder) {
            total = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirUnsignedIntBuilder.tryParse(numValue);
                if (converted != null) {
                  total = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<BundleLinkBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is BundleLinkBuilder) {
            // Add single element to existing list or create new list
            link = [...(link ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'entry':
        {
          if (child is List<BundleEntryBuilder>) {
            // Replace or create new list
            entry = child;
            return;
          } else if (child is BundleEntryBuilder) {
            // Add single element to existing list or create new list
            entry = [...(entry ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'signature':
        {
          if (child is SignatureBuilder) {
            signature = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'timestamp':
        return ['FhirInstantBuilder'];
      case 'total':
        return ['FhirUnsignedIntBuilder'];
      case 'link':
        return ['BundleLinkBuilder'];
      case 'entry':
        return ['BundleEntryBuilder'];
      case 'signature':
        return ['SignatureBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'type':
        {
          type = BundleTypeBuilder.empty();
          return;
        }
      case 'timestamp':
        {
          timestamp = FhirInstantBuilder.empty();
          return;
        }
      case 'total':
        {
          total = FhirUnsignedIntBuilder.empty();
          return;
        }
      case 'link':
        {
          link = <BundleLinkBuilder>[];
          return;
        }
      case 'entry':
        {
          entry = <BundleEntryBuilder>[];
          return;
        }
      case 'signature':
        {
          signature = SignatureBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool identifier = false,
    bool type = false,
    bool timestamp = false,
    bool total = false,
    bool link = false,
    bool entry = false,
    bool signature = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (identifier) this.identifier = null;
    if (type) this.type = null;
    if (timestamp) this.timestamp = null;
    if (total) this.total = null;
    if (link) this.link = null;
    if (entry) this.entry = null;
    if (signature) this.signature = null;
  }

  @override
  BundleBuilder clone() => throw UnimplementedError();
  @override
  BundleBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    IdentifierBuilder? identifier,
    BundleTypeBuilder? type,
    FhirInstantBuilder? timestamp,
    FhirUnsignedIntBuilder? total,
    List<BundleLinkBuilder>? link,
    List<BundleEntryBuilder>? entry,
    SignatureBuilder? signature,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BundleBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleBuilder) {
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
    if (!listEquals<BundleLinkBuilder>(
      link,
      o.link,
    )) {
      return false;
    }
    if (!listEquals<BundleEntryBuilder>(
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

/// [BundleLinkBuilder]
/// A series of links that provide context to this bundle.
class BundleLinkBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BundleLinkBuilder]

  BundleLinkBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.relation,
    this.url,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.link',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BundleLinkBuilder.empty() => BundleLinkBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleLinkBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.link';
    return BundleLinkBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      relation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'relation',
        FhirStringBuilder.fromJson,
        '$objectPath.relation',
      ),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
    );
  }

  /// Deserialize [BundleLinkBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleLinkBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleLinkBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleLinkBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleLinkBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleLinkBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleLinkBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleLinkBuilder.fromJson(json);
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
  FhirStringBuilder? relation;

  /// [url]
  /// The reference details for the link.
  FhirUriBuilder? url;

  /// Converts a [BundleLinkBuilder]
  /// to [BundleLink]
  @override
  BundleLink build() => BundleLink.fromJson(toJson());

  /// Converts a [BundleLinkBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (relation != null) {
          fields.add(relation!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relation':
        {
          if (child is FhirStringBuilder) {
            relation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                relation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'relation':
        return ['FhirStringBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleLinkBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'relation':
        {
          relation = FhirStringBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool relation = false,
    bool url = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (relation) this.relation = null;
    if (url) this.url = null;
  }

  @override
  BundleLinkBuilder clone() => throw UnimplementedError();
  @override
  BundleLinkBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? relation,
    FhirUriBuilder? url,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BundleLinkBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      relation: relation ?? this.relation,
      url: url ?? this.url,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleLinkBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [BundleEntryBuilder]
/// An entry in a bundle resource - will either contain a resource or
/// information about a resource (transactions and history only).
class BundleEntryBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BundleEntryBuilder]

  BundleEntryBuilder({
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
  /// For Builder classes, no fields are required
  factory BundleEntryBuilder.empty() => BundleEntryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleEntryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry';
    return BundleEntryBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      link: (json['link'] as List<dynamic>?)
          ?.map<BundleLinkBuilder>(
            (v) => BundleLinkBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.link',
              },
            ),
          )
          .toList(),
      fullUrl: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'fullUrl',
        FhirUriBuilder.fromJson,
        '$objectPath.fullUrl',
      ),
      resource: JsonParser.parseObject<ResourceBuilder>(
        json,
        'resource',
        ResourceBuilder.fromJson,
        '$objectPath.resource',
      ),
      search: JsonParser.parseObject<BundleSearchBuilder>(
        json,
        'search',
        BundleSearchBuilder.fromJson,
        '$objectPath.search',
      ),
      request: JsonParser.parseObject<BundleRequestBuilder>(
        json,
        'request',
        BundleRequestBuilder.fromJson,
        '$objectPath.request',
      ),
      response: JsonParser.parseObject<BundleResponseBuilder>(
        json,
        'response',
        BundleResponseBuilder.fromJson,
        '$objectPath.response',
      ),
    );
  }

  /// Deserialize [BundleEntryBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleEntryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleEntryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleEntryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleEntryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleEntryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleEntryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleEntryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'BundleEntry';

  /// [link]
  /// A series of links that provide context to this entry.
  List<BundleLinkBuilder>? link;

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
  FhirUriBuilder? fullUrl;

  /// [resource]
  /// The Resource for the entry. The purpose/meaning of the resource is
  /// determined by the Bundle.type.
  ResourceBuilder? resource;

  /// [search]
  /// Information about the search process that lead to the creation of this
  /// entry.
  BundleSearchBuilder? search;

  /// [request]
  /// Additional information about how this entry should be processed as part
  /// of a transaction or batch. For history, it shows how the entry was
  /// processed to create the version contained in the entry.
  BundleRequestBuilder? request;

  /// [response]
  /// Indicates the results of processing the corresponding 'request' entry
  /// in the batch or transaction being responded to or what the results of
  /// an operation where when returning history.
  BundleResponseBuilder? response;

  /// Converts a [BundleEntryBuilder]
  /// to [BundleEntry]
  @override
  BundleEntry build() => BundleEntry.fromJson(toJson());

  /// Converts a [BundleEntryBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'link':
        {
          if (child is List<BundleLinkBuilder>) {
            // Replace or create new list
            link = child;
            return;
          } else if (child is BundleLinkBuilder) {
            // Add single element to existing list or create new list
            link = [...(link ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'fullUrl':
        {
          if (child is FhirUriBuilder) {
            fullUrl = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                fullUrl = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'resource':
        {
          if (child is ResourceBuilder) {
            resource = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'search':
        {
          if (child is BundleSearchBuilder) {
            search = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'request':
        {
          if (child is BundleRequestBuilder) {
            request = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'response':
        {
          if (child is BundleResponseBuilder) {
            response = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'link':
        return ['BundleLinkBuilder'];
      case 'fullUrl':
        return ['FhirUriBuilder'];
      case 'resource':
        return ['ResourceBuilder'];
      case 'search':
        return ['BundleSearchBuilder'];
      case 'request':
        return ['BundleRequestBuilder'];
      case 'response':
        return ['BundleResponseBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleEntryBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'link':
        {
          link = <BundleLinkBuilder>[];
          return;
        }
      case 'fullUrl':
        {
          fullUrl = FhirUriBuilder.empty();
          return;
        }
      case 'resource':
        {
          resource = ResourceBuilder.empty();
          return;
        }
      case 'search':
        {
          search = BundleSearchBuilder.empty();
          return;
        }
      case 'request':
        {
          request = BundleRequestBuilder.empty();
          return;
        }
      case 'response':
        {
          response = BundleResponseBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool link = false,
    bool fullUrl = false,
    bool resource = false,
    bool search = false,
    bool request = false,
    bool response = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (link) this.link = null;
    if (fullUrl) this.fullUrl = null;
    if (resource) this.resource = null;
    if (search) this.search = null;
    if (request) this.request = null;
    if (response) this.response = null;
  }

  @override
  BundleEntryBuilder clone() => throw UnimplementedError();
  @override
  BundleEntryBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<BundleLinkBuilder>? link,
    FhirUriBuilder? fullUrl,
    ResourceBuilder? resource,
    BundleSearchBuilder? search,
    BundleRequestBuilder? request,
    BundleResponseBuilder? response,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BundleEntryBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      link: link ?? this.link,
      fullUrl: fullUrl ?? this.fullUrl,
      resource: resource ?? this.resource,
      search: search ?? this.search,
      request: request ?? this.request,
      response: response ?? this.response,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleEntryBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<BundleLinkBuilder>(
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

/// [BundleSearchBuilder]
/// Information about the search process that lead to the creation of this
/// entry.
class BundleSearchBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BundleSearchBuilder]

  BundleSearchBuilder({
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
  /// For Builder classes, no fields are required
  factory BundleSearchBuilder.empty() => BundleSearchBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleSearchBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.search';
    return BundleSearchBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      mode: JsonParser.parsePrimitive<SearchEntryModeBuilder>(
        json,
        'mode',
        SearchEntryModeBuilder.fromJson,
        '$objectPath.mode',
      ),
      score: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'score',
        FhirDecimalBuilder.fromJson,
        '$objectPath.score',
      ),
    );
  }

  /// Deserialize [BundleSearchBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleSearchBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleSearchBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleSearchBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleSearchBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleSearchBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleSearchBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleSearchBuilder.fromJson(json);
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
  SearchEntryModeBuilder? mode;

  /// [score]
  /// When searching, the server's search ranking score for the entry.
  FhirDecimalBuilder? score;

  /// Converts a [BundleSearchBuilder]
  /// to [BundleSearch]
  @override
  BundleSearch build() => BundleSearch.fromJson(toJson());

  /// Converts a [BundleSearchBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mode':
        {
          if (child is SearchEntryModeBuilder) {
            mode = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'score':
        {
          if (child is FhirDecimalBuilder) {
            score = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  score = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'mode':
        return ['FhirCodeEnumBuilder'];
      case 'score':
        return ['FhirDecimalBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleSearchBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'mode':
        {
          mode = SearchEntryModeBuilder.empty();
          return;
        }
      case 'score':
        {
          score = FhirDecimalBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool mode = false,
    bool score = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (mode) this.mode = null;
    if (score) this.score = null;
  }

  @override
  BundleSearchBuilder clone() => throw UnimplementedError();
  @override
  BundleSearchBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    SearchEntryModeBuilder? mode,
    FhirDecimalBuilder? score,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BundleSearchBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      score: score ?? this.score,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleSearchBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [BundleRequestBuilder]
/// Additional information about how this entry should be processed as part
/// of a transaction or batch. For history, it shows how the entry was
/// processed to create the version contained in the entry.
class BundleRequestBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BundleRequestBuilder]

  BundleRequestBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.url,
    this.ifNoneMatch,
    this.ifModifiedSince,
    this.ifMatch,
    this.ifNoneExist,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry.request',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BundleRequestBuilder.empty() => BundleRequestBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleRequestBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.request';
    return BundleRequestBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      method: JsonParser.parsePrimitive<HTTPVerbBuilder>(
        json,
        'method',
        HTTPVerbBuilder.fromJson,
        '$objectPath.method',
      ),
      url: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'url',
        FhirUriBuilder.fromJson,
        '$objectPath.url',
      ),
      ifNoneMatch: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'ifNoneMatch',
        FhirStringBuilder.fromJson,
        '$objectPath.ifNoneMatch',
      ),
      ifModifiedSince: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'ifModifiedSince',
        FhirInstantBuilder.fromJson,
        '$objectPath.ifModifiedSince',
      ),
      ifMatch: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'ifMatch',
        FhirStringBuilder.fromJson,
        '$objectPath.ifMatch',
      ),
      ifNoneExist: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'ifNoneExist',
        FhirStringBuilder.fromJson,
        '$objectPath.ifNoneExist',
      ),
    );
  }

  /// Deserialize [BundleRequestBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleRequestBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleRequestBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleRequestBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleRequestBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleRequestBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleRequestBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleRequestBuilder.fromJson(json);
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
  HTTPVerbBuilder? method;

  /// [url]
  /// The URL for this entry, relative to the root (the address to which the
  /// request is posted).
  FhirUriBuilder? url;

  /// [ifNoneMatch]
  /// If the ETag values match, return a 304 Not Modified status. See the API
  /// documentation for ["Conditional Read"](http.html#cread).
  FhirStringBuilder? ifNoneMatch;

  /// [ifModifiedSince]
  /// Only perform the operation if the last updated date matches. See the
  /// API documentation for ["Conditional Read"](http.html#cread).
  FhirInstantBuilder? ifModifiedSince;

  /// [ifMatch]
  /// Only perform the operation if the Etag value matches. For more
  /// information, see the API section ["Managing Resource
  /// Contention"](http.html#concurrency).
  FhirStringBuilder? ifMatch;

  /// [ifNoneExist]
  /// Instruct the server not to perform the create if a specified resource
  /// already exists. For further information, see the API documentation for
  /// ["Conditional Create"](http.html#ccreate). This is just the query
  /// portion of the URL - what follows the "?" (not including the "?").
  FhirStringBuilder? ifNoneExist;

  /// Converts a [BundleRequestBuilder]
  /// to [BundleRequest]
  @override
  BundleRequest build() => BundleRequest.fromJson(toJson());

  /// Converts a [BundleRequestBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (method != null) {
          fields.add(method!);
        }
      case 'url':
        if (url != null) {
          fields.add(url!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is HTTPVerbBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'url':
        {
          if (child is FhirUriBuilder) {
            url = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                url = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ifNoneMatch':
        {
          if (child is FhirStringBuilder) {
            ifNoneMatch = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                ifNoneMatch = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ifModifiedSince':
        {
          if (child is FhirInstantBuilder) {
            ifModifiedSince = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                ifModifiedSince = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ifMatch':
        {
          if (child is FhirStringBuilder) {
            ifMatch = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                ifMatch = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'ifNoneExist':
        {
          if (child is FhirStringBuilder) {
            ifNoneExist = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                ifNoneExist = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'method':
        return ['FhirCodeEnumBuilder'];
      case 'url':
        return ['FhirUriBuilder'];
      case 'ifNoneMatch':
        return ['FhirStringBuilder'];
      case 'ifModifiedSince':
        return ['FhirInstantBuilder'];
      case 'ifMatch':
        return ['FhirStringBuilder'];
      case 'ifNoneExist':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleRequestBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'method':
        {
          method = HTTPVerbBuilder.empty();
          return;
        }
      case 'url':
        {
          url = FhirUriBuilder.empty();
          return;
        }
      case 'ifNoneMatch':
        {
          ifNoneMatch = FhirStringBuilder.empty();
          return;
        }
      case 'ifModifiedSince':
        {
          ifModifiedSince = FhirInstantBuilder.empty();
          return;
        }
      case 'ifMatch':
        {
          ifMatch = FhirStringBuilder.empty();
          return;
        }
      case 'ifNoneExist':
        {
          ifNoneExist = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool method = false,
    bool url = false,
    bool ifNoneMatch = false,
    bool ifModifiedSince = false,
    bool ifMatch = false,
    bool ifNoneExist = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (method) this.method = null;
    if (url) this.url = null;
    if (ifNoneMatch) this.ifNoneMatch = null;
    if (ifModifiedSince) this.ifModifiedSince = null;
    if (ifMatch) this.ifMatch = null;
    if (ifNoneExist) this.ifNoneExist = null;
  }

  @override
  BundleRequestBuilder clone() => throw UnimplementedError();
  @override
  BundleRequestBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    HTTPVerbBuilder? method,
    FhirUriBuilder? url,
    FhirStringBuilder? ifNoneMatch,
    FhirInstantBuilder? ifModifiedSince,
    FhirStringBuilder? ifMatch,
    FhirStringBuilder? ifNoneExist,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BundleRequestBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      url: url ?? this.url,
      ifNoneMatch: ifNoneMatch ?? this.ifNoneMatch,
      ifModifiedSince: ifModifiedSince ?? this.ifModifiedSince,
      ifMatch: ifMatch ?? this.ifMatch,
      ifNoneExist: ifNoneExist ?? this.ifNoneExist,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleRequestBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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

/// [BundleResponseBuilder]
/// Indicates the results of processing the corresponding 'request' entry
/// in the batch or transaction being responded to or what the results of
/// an operation where when returning history.
class BundleResponseBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [BundleResponseBuilder]

  BundleResponseBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.status,
    this.location,
    this.etag,
    this.lastModified,
    this.outcome,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Bundle.entry.response',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BundleResponseBuilder.empty() => BundleResponseBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BundleResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Bundle.entry.response';
    return BundleResponseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'status',
        FhirStringBuilder.fromJson,
        '$objectPath.status',
      ),
      location: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'location',
        FhirUriBuilder.fromJson,
        '$objectPath.location',
      ),
      etag: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'etag',
        FhirStringBuilder.fromJson,
        '$objectPath.etag',
      ),
      lastModified: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'lastModified',
        FhirInstantBuilder.fromJson,
        '$objectPath.lastModified',
      ),
      outcome: JsonParser.parseObject<ResourceBuilder>(
        json,
        'outcome',
        ResourceBuilder.fromJson,
        '$objectPath.outcome',
      ),
    );
  }

  /// Deserialize [BundleResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory BundleResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BundleResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BundleResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BundleResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BundleResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BundleResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BundleResponseBuilder.fromJson(json);
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
  FhirStringBuilder? status;

  /// [location]
  /// The location header created by processing this operation, populated if
  /// the operation returns a location.
  FhirUriBuilder? location;

  /// [etag]
  /// The Etag for the resource, if the operation for the entry produced a
  /// versioned resource (see [Resource Metadata and
  /// Versioning](http.html#versioning) and [Managing Resource
  /// Contention](http.html#concurrency)).
  FhirStringBuilder? etag;

  /// [lastModified]
  /// The date/time that the resource was modified on the server.
  FhirInstantBuilder? lastModified;

  /// [outcome]
  /// An OperationOutcome containing hints and warnings produced as part of
  /// processing this entry in a batch or transaction.
  ResourceBuilder? outcome;

  /// Converts a [BundleResponseBuilder]
  /// to [BundleResponse]
  @override
  BundleResponse build() => BundleResponse.fromJson(toJson());

  /// Converts a [BundleResponseBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is FhirStringBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                status = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'location':
        {
          if (child is FhirUriBuilder) {
            location = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                location = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'etag':
        {
          if (child is FhirStringBuilder) {
            etag = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                etag = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastModified':
        {
          if (child is FhirInstantBuilder) {
            lastModified = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirInstantBuilder.tryParse(stringValue);
              if (converted != null) {
                lastModified = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is ResourceBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'status':
        return ['FhirStringBuilder'];
      case 'location':
        return ['FhirUriBuilder'];
      case 'etag':
        return ['FhirStringBuilder'];
      case 'lastModified':
        return ['FhirInstantBuilder'];
      case 'outcome':
        return ['ResourceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BundleResponseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'status':
        {
          status = FhirStringBuilder.empty();
          return;
        }
      case 'location':
        {
          location = FhirUriBuilder.empty();
          return;
        }
      case 'etag':
        {
          etag = FhirStringBuilder.empty();
          return;
        }
      case 'lastModified':
        {
          lastModified = FhirInstantBuilder.empty();
          return;
        }
      case 'outcome':
        {
          outcome = ResourceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool status = false,
    bool location = false,
    bool etag = false,
    bool lastModified = false,
    bool outcome = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (status) this.status = null;
    if (location) this.location = null;
    if (etag) this.etag = null;
    if (lastModified) this.lastModified = null;
    if (outcome) this.outcome = null;
  }

  @override
  BundleResponseBuilder clone() => throw UnimplementedError();
  @override
  BundleResponseBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    FhirStringBuilder? status,
    FhirUriBuilder? location,
    FhirStringBuilder? etag,
    FhirInstantBuilder? lastModified,
    ResourceBuilder? outcome,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = BundleResponseBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      location: location ?? this.location,
      etag: etag ?? this.etag,
      lastModified: lastModified ?? this.lastModified,
      outcome: outcome ?? this.outcome,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! BundleResponseBuilder) {
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
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
