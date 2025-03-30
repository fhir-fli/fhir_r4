import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Signature, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [SignatureBuilder]
/// A signature along with supporting context. The signature may be a
/// digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as
/// simple as a graphical image representing a hand-written signature, or a
/// signature ceremony Different signature approaches have different
/// utilities.
class SignatureBuilder extends DataTypeBuilder
    implements
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [SignatureBuilder]

  SignatureBuilder({
    super.id,
    super.extension_,
    this.type,
    this.when,
    this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
    super.disallowExtensions,
    super.objectPath = 'SignatureBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory SignatureBuilder.empty() => SignatureBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory SignatureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Signature';
    return SignatureBuilder(
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
      type: (json['type'] as List<dynamic>?)
          ?.map<CodingBuilder>(
            (v) => CodingBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.type',
              },
            ),
          )
          .toList(),
      when: JsonParser.parsePrimitive<FhirInstantBuilder>(
        json,
        'when',
        FhirInstantBuilder.fromJson,
        '$objectPath.when',
      ),
      who: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'who',
        ReferenceBuilder.fromJson,
        '$objectPath.who',
      ),
      onBehalfOf: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'onBehalfOf',
        ReferenceBuilder.fromJson,
        '$objectPath.onBehalfOf',
      ),
      targetFormat: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'targetFormat',
        FhirCodeBuilder.fromJson,
        '$objectPath.targetFormat',
      ),
      sigFormat: JsonParser.parsePrimitive<FhirCodeBuilder>(
        json,
        'sigFormat',
        FhirCodeBuilder.fromJson,
        '$objectPath.sigFormat',
      ),
      data: JsonParser.parsePrimitive<FhirBase64BinaryBuilder>(
        json,
        'data',
        FhirBase64BinaryBuilder.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [SignatureBuilder]
  /// from a [String] or [YamlMap] object
  factory SignatureBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return SignatureBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return SignatureBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'SignatureBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [SignatureBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory SignatureBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return SignatureBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Signature';

  /// [type]
  /// An indication of the reason that the entity signed this document. This
  /// may be explicitly included as part of the signature information and can
  /// be used when determining accountability for various actions concerning
  /// the document.
  List<CodingBuilder>? type;

  /// [when]
  /// When the digital signature was signed.
  FhirInstantBuilder? when;

  /// [who]
  /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  ReferenceBuilder? who;

  /// [onBehalfOf]
  /// A reference to an application-usable description of the identity that
  /// is represented by the signature.
  ReferenceBuilder? onBehalfOf;

  /// [targetFormat]
  /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  FhirCodeBuilder? targetFormat;

  /// [sigFormat]
  /// A mime type that indicates the technical format of the signature.
  /// Important mime types are application/signature+xml for X ML DigSig,
  /// application/jose for JWS, and image/* for a graphical image of a
  /// signature, etc.
  FhirCodeBuilder? sigFormat;

  /// [data]
  /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
  FhirBase64BinaryBuilder? data;

  /// converts a [SignatureBuilder]
  /// to [Signature]
  @override
  Signature build() => Signature.fromJson(toJson());

  /// converts a [SignatureBuilder]
  /// to [Map<String, dynamic>]
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
    addField('type', type);
    addField('when', when);
    addField('who', who);
    addField('onBehalfOf', onBehalfOf);
    addField('targetFormat', targetFormat);
    addField('sigFormat', sigFormat);
    addField('data', data);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'type',
      'when',
      'who',
      'onBehalfOf',
      'targetFormat',
      'sigFormat',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'type':
        if (type != null) {
          fields.addAll(type!);
        }
      case 'when':
        if (when != null) {
          fields.add(when!);
        }
      case 'who':
        if (who != null) {
          fields.add(who!);
        }
      case 'onBehalfOf':
        if (onBehalfOf != null) {
          fields.add(onBehalfOf!);
        }
      case 'targetFormat':
        if (targetFormat != null) {
          fields.add(targetFormat!);
        }
      case 'sigFormat':
        if (sigFormat != null) {
          fields.add(sigFormat!);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is List<CodingBuilder>) {
            // Replace or create new list
            type = child;
            return;
          } else if (child is CodingBuilder) {
            // Add single element to existing list or create new list
            type = [...(type ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'when':
        {
          if (child is FhirInstantBuilder) {
            when = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'who':
        {
          if (child is ReferenceBuilder) {
            who = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onBehalfOf':
        {
          if (child is ReferenceBuilder) {
            onBehalfOf = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetFormat':
        {
          if (child is FhirCodeBuilder) {
            targetFormat = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'sigFormat':
        {
          if (child is FhirCodeBuilder) {
            sigFormat = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'type':
        return ['CodingBuilder'];
      case 'when':
        return ['FhirInstantBuilder'];
      case 'who':
        return ['ReferenceBuilder'];
      case 'onBehalfOf':
        return ['ReferenceBuilder'];
      case 'targetFormat':
        return ['FhirCodeBuilder'];
      case 'sigFormat':
        return ['FhirCodeBuilder'];
      case 'data':
        return ['FhirBase64BinaryBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [SignatureBuilder]
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
      case 'type':
        {
          type = <CodingBuilder>[];
          return;
        }
      case 'when':
        {
          when = FhirInstantBuilder.empty();
          return;
        }
      case 'who':
        {
          who = ReferenceBuilder.empty();
          return;
        }
      case 'onBehalfOf':
        {
          onBehalfOf = ReferenceBuilder.empty();
          return;
        }
      case 'targetFormat':
        {
          targetFormat = FhirCodeBuilder.empty();
          return;
        }
      case 'sigFormat':
        {
          sigFormat = FhirCodeBuilder.empty();
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
    bool extension_ = false,
    bool type = false,
    bool when = false,
    bool who = false,
    bool onBehalfOf = false,
    bool targetFormat = false,
    bool sigFormat = false,
    bool data = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (type) this.type = null;
    if (when) this.when = null;
    if (who) this.who = null;
    if (onBehalfOf) this.onBehalfOf = null;
    if (targetFormat) this.targetFormat = null;
    if (sigFormat) this.sigFormat = null;
    if (data) this.data = null;
  }

  @override
  SignatureBuilder clone() => throw UnimplementedError();
  @override
  SignatureBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<CodingBuilder>? type,
    FhirInstantBuilder? when,
    ReferenceBuilder? who,
    ReferenceBuilder? onBehalfOf,
    FhirCodeBuilder? targetFormat,
    FhirCodeBuilder? sigFormat,
    FhirBase64BinaryBuilder? data,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = SignatureBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      when: when ?? this.when,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      targetFormat: targetFormat ?? this.targetFormat,
      sigFormat: sigFormat ?? this.sigFormat,
      data: data ?? this.data,
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
    if (o is! SignatureBuilder) {
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
    if (!listEquals<CodingBuilder>(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      when,
      o.when,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      who,
      o.who,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      onBehalfOf,
      o.onBehalfOf,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetFormat,
      o.targetFormat,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      sigFormat,
      o.sigFormat,
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
