import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Binary]
/// A resource that represents the data of a single raw artifact as digital
/// content accessible in its native format. A Binary resource can contain
/// any content, whether text, image, pdf, zip archive, etc.
class Binary extends Resource {
  /// Primary constructor for
  /// [Binary]

  const Binary({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    required this.contentType,
    this.securityContext,
    this.data,
  }) : super(
          objectPath: 'Binary',
          resourceType: R4ResourceType.Binary,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Binary.empty() => Binary(
        contentType: FhirCode.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Binary.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Binary';
    return Binary(
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
      contentType: JsonParser.parsePrimitive<FhirCode>(
        json,
        'contentType',
        FhirCode.fromJson,
        '$objectPath.contentType',
      )!,
      securityContext: JsonParser.parseObject<Reference>(
        json,
        'securityContext',
        Reference.fromJson,
        '$objectPath.securityContext',
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [Binary]
  /// from a [String] or [YamlMap] object
  factory Binary.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Binary.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Binary.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Binary '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Binary]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Binary.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Binary.fromJson(json);
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
  final FhirCode contentType;

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
  final Reference? securityContext;

  /// [data]
  /// The actual content, base64 encoded.
  final FhirBase64Binary? data;
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
      case 'contentType':
        fields.add(contentType);
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
      case 'contentType':
        {
          if (child is FhirCode) {
            return copyWith(contentType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'securityContext':
        {
          if (child is Reference) {
            return copyWith(securityContext: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'data':
        {
          if (child is FhirBase64Binary) {
            return copyWith(data: child);
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
      case 'contentType':
        return ['FhirCode'];
      case 'securityContext':
        return ['Reference'];
      case 'data':
        return ['FhirBase64Binary'];
      default:
        return <String>[];
    }
  }

  @override
  Binary clone() => throw UnimplementedError();
  @override
  Binary copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    FhirCode? contentType,
    Reference? securityContext,
    FhirBase64Binary? data,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Binary(
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
      contentType: contentType?.copyWith(
            objectPath: '$newObjectPath.contentType',
          ) ??
          this.contentType,
      securityContext: securityContext?.copyWith(
            objectPath: '$newObjectPath.securityContext',
          ) ??
          this.securityContext,
      data: data?.copyWith(
            objectPath: '$newObjectPath.data',
          ) ??
          this.data,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Binary) {
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
    if (!equalsDeepWithNull(contentType, o.contentType)) {
      return false;
    }
    if (!equalsDeepWithNull(securityContext, o.securityContext)) {
      return false;
    }
    if (!equalsDeepWithNull(data, o.data)) {
      return false;
    }
    return true;
  }
}
