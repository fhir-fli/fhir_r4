import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Signature]
/// A signature along with supporting context. The signature may be a
/// digital signature that is cryptographic in nature, or some other
/// signature acceptable to the domain. This other signature may be as
/// simple as a graphical image representing a hand-written signature, or a
/// signature ceremony Different signature approaches have different
/// utilities.
class Signature extends DataType
    implements
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Signature]

  const Signature({
    super.id,
    super.extension_,
    required this.type,
    required this.when,
    required this.who,
    this.onBehalfOf,
    this.targetFormat,
    this.sigFormat,
    this.data,
    super.disallowExtensions,
    super.objectPath = 'Signature',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Signature';
    return Signature(
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
                ..addAll(
                  {
                    'objectPath': '$objectPath.extension',
                  },
                ),
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>)
          .map<Coding>(
            (v) => Coding.fromJson(
              (v as Map<String, dynamic>)
                ..addAll(
                  {
                    'objectPath': '$objectPath.type',
                  },
                ),
            ),
          )
          .toList(),
      when: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'when',
        FhirInstant.fromJson,
        '$objectPath.when',
      )!,
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
        '$objectPath.who',
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
        '$objectPath.onBehalfOf',
      ),
      targetFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'targetFormat',
        FhirCode.fromJson,
        '$objectPath.targetFormat',
      ),
      sigFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'sigFormat',
        FhirCode.fromJson,
        '$objectPath.sigFormat',
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
        '$objectPath.data',
      ),
    );
  }

  /// Deserialize [Signature]
  /// from a [String] or [YamlMap] object
  factory Signature.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Signature.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Signature.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Signature '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Signature]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Signature.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Signature.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Signature';

  /// [type]
  /// An indication of the reason that the entity signed this document. This
  /// may be explicitly included as part of the signature information and can
  /// be used when determining accountability for various actions concerning
  /// the document.
  final List<Coding> type;

  /// [when]
  /// When the digital signature was signed.
  final FhirInstant when;

  /// [who]
  /// A reference to an application-usable description of the identity that
  /// signed (e.g. the signature used their private key).
  final Reference who;

  /// [onBehalfOf]
  /// A reference to an application-usable description of the identity that
  /// is represented by the signature.
  final Reference? onBehalfOf;

  /// [targetFormat]
  /// A mime type that indicates the technical format of the target resources
  /// signed by the signature.
  final FhirCode? targetFormat;

  /// [sigFormat]
  /// A mime type that indicates the technical format of the signature.
  /// Important mime types are application/signature+xml for X ML DigSig,
  /// application/jose for JWS, and image/* for a graphical image of a
  /// signature, etc.
  final FhirCode? sigFormat;

  /// [data]
  /// The base64 encoding of the Signature content. When signature is not
  /// recorded electronically this element would be empty.
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
  List<String> children() {
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
  List<FhirBase> listChildrenByName(
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
      case 'type':
        fields.addAll(type);
      case 'when':
        fields.add(when);
      case 'who':
        fields.add(who);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  Signature clone() => throw UnimplementedError();
  @override
  Signature copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<Coding>? type,
    FhirInstant? when,
    Reference? who,
    Reference? onBehalfOf,
    FhirCode? targetFormat,
    FhirCode? sigFormat,
    FhirBase64Binary? data,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Signature(
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
      type: type
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.type',
                ),
              )
              .toList() ??
          this.type,
      when: when?.copyWith(
            objectPath: '$newObjectPath.when',
          ) ??
          this.when,
      who: who?.copyWith(
            objectPath: '$newObjectPath.who',
          ) ??
          this.who,
      onBehalfOf: onBehalfOf?.copyWith(
            objectPath: '$newObjectPath.onBehalfOf',
          ) ??
          this.onBehalfOf,
      targetFormat: targetFormat?.copyWith(
            objectPath: '$newObjectPath.targetFormat',
          ) ??
          this.targetFormat,
      sigFormat: sigFormat?.copyWith(
            objectPath: '$newObjectPath.sigFormat',
          ) ??
          this.sigFormat,
      data: data?.copyWith(
            objectPath: '$newObjectPath.data',
          ) ??
          this.data,
    );
  }
}
