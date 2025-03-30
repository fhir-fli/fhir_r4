import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        yamlMapToJson,
        yamlToJson,
        R4ResourceType,
        StringExtensionForFHIR,
        Binary;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [BinaryBuilder]
/// A resource that represents the data of a single raw artifact as digital
/// content accessible in its native format. A Binary resource can contain
/// any content, whether text, image, pdf, zip archive, etc.
class BinaryBuilder extends ResourceBuilder {
  /// Primary constructor for
  /// [BinaryBuilder]

  BinaryBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    this.contentType,
    this.securityContext,
    this.data,
  }) : super(
          objectPath: 'Binary',
          resourceType: R4ResourceType.Binary,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory BinaryBuilder.empty() => BinaryBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory BinaryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Binary';
    return BinaryBuilder(
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
      contentType: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'contentType',
        FhirCodeBuilder.fromJson,
        '$objectPath.contentType',
      ),
      securityContext: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'securityContext',
        ReferenceBuilder.fromJson,
        '$objectPath.securityContext',
      ),
      data: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'data',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [BinaryBuilder]
  /// from a [String] or [YamlMap] object
  factory BinaryBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return BinaryBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return BinaryBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'BinaryBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [BinaryBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory BinaryBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BinaryBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Binary';

  /// [contentType]
  /// MimeType of the binary content represented as a standard MimeType (BCP
  /// 13).
  FhirCodeBuilder? contentType;

  /// [securityContext]
  /// This element identifies another resource that can be used as a proxy of
  /// the security sensitivity to use when deciding and enforcing access
  /// control rules for the Binary resource. Given that the Binary resource
  /// contains very few elements that can be used to determine the
  /// sensitivity of the data and relationships to individuals, the
  /// referenced resource stands in as a proxy equivalent for this purpose.
  /// This referenced resource may be related to the Binary (e.g. Media,
  /// DocumentReference), or may be some non-related Resource purely as a
  /// security proxy. E.g. to identify that the binary resource relates to a
  /// patient, and access should only be granted to applications that have
  /// access to the patient.
  ReferenceBuilder? securityContext;

  /// [data]
  /// The actual content, base64 encoded.
  FhirBase64BinaryBuilder? data;

  /// Converts a BinaryBuilder to [Binary]
  Binary build() => Binary.fromJson(toJson());

  /// Converts a [BinaryBuilder] to a [Map<String, dynamic>]
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
    addField('contentType', contentType);
    addField('securityContext', securityContext);
    addField('data', data);
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
      'contentType',
      'securityContext',
      'data',
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
      case 'contentType':
        if (contentType != null) {
          fields.add(contentType!);
        }
      case 'securityContext':
        if (securityContext != null) {
          fields.add(securityContext!);
        }
      case 'data':
        if (data != null) {
          fields.add(data!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contentType':
        {
          if (child is FhirCodeBuilder) {
            contentType = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'securityContext':
        {
          if (child is ReferenceBuilder) {
            securityContext = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'data':
        {
          if (child is FhirBase64BinaryBuilder) {
            data = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'contentType':
        return ['FhirCodeBuilder'];
      case 'securityContext':
        return ['ReferenceBuilder'];
      case 'data':
        return ['FhirBase64BinaryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [BinaryBuilder]
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
      case 'contentType':
        {
          contentType = FhirCodeBuilder.empty();
          return;
        }
      case 'securityContext':
        {
          securityContext = ReferenceBuilder.empty();
          return;
        }
      case 'data':
        {
          data = FhirBase64BinaryBuilder.empty();
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
    bool contentType = false,
    bool securityContext = false,
    bool data = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (contentType) this.contentType = null;
    if (securityContext) this.securityContext = null;
    if (data) this.data = null;
  }

  @override
  BinaryBuilder clone() => throw UnimplementedError();
  @override
  BinaryBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    FhirCodeBuilder? contentType,
    ReferenceBuilder? securityContext,
    FhirBase64BinaryBuilder? data,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = BinaryBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      contentType: contentType ?? this.contentType,
      securityContext: securityContext ?? this.securityContext,
      data: data ?? this.data,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! BinaryBuilder) {
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
      contentType,
      o.contentType,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      securityContext,
      o.securityContext,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      data,
      o.data,
    )) {
      return false;
    }
    return true;
  }
}
