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
          resourceType: R4ResourceType.Binary,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Binary.fromJson(
    Map<String, dynamic> json,
  ) {
    return Binary(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      contentType: FhirCode.fromJson({
        'value': json['contentType'],
        '_value': json['_contentType'],
      }),
      securityContext: json['securityContext'] != null
          ? Reference.fromJson(
              json['securityContext'] as Map<String, dynamic>,
            )
          : null,
      data: (json['data'] != null || json['_data'] != null)
          ? FhirBase64Binary.fromJson({
              'value': json['data'],
              '_value': json['_data'],
            })
          : null,
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
    if (json is Map<String, Object?>) {
      return Binary.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('contentType', contentType);
    if (securityContext != null) {
      json['securityContext'] = securityContext!.toJson();
    }

    addField('data', data);
    return json;
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Binary(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      contentType: contentType ?? this.contentType,
      securityContext: securityContext ?? this.securityContext,
      data: data ?? this.data,
    );
  }
}
