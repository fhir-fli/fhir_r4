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
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(
    Map<String, dynamic> json,
  ) {
    return Signature(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: (json['type'] as List<dynamic>)
          .map<Coding>(
            (v) => Coding.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      when: JsonParser.parsePrimitive<FhirInstant>(
        json,
        'when',
        FhirInstant.fromJson,
      )!,
      who: JsonParser.parseObject<Reference>(
        json,
        'who',
        Reference.fromJson,
      )!,
      onBehalfOf: JsonParser.parseObject<Reference>(
        json,
        'onBehalfOf',
        Reference.fromJson,
      ),
      targetFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'targetFormat',
        FhirCode.fromJson,
      ),
      sigFormat: JsonParser.parsePrimitive<FhirCode>(
        json,
        'sigFormat',
        FhirCode.fromJson,
      ),
      data: JsonParser.parsePrimitive<FhirBase64Binary>(
        json,
        'data',
        FhirBase64Binary.fromJson,
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
  }) {
    return Signature(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      type: type ?? this.type,
      when: when ?? this.when,
      who: who ?? this.who,
      onBehalfOf: onBehalfOf ?? this.onBehalfOf,
      targetFormat: targetFormat ?? this.targetFormat,
      sigFormat: sigFormat ?? this.sigFormat,
      data: data ?? this.data,
    );
  }
}
