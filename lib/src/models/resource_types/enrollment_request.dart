import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EnrollmentRequest]
/// This resource provides the insurance enrollment details to the insurer
/// regarding a specified coverage.
class EnrollmentRequest extends DomainResource {
  /// Primary constructor for
  /// [EnrollmentRequest]

  const EnrollmentRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.created,
    this.insurer,
    this.provider,
    this.candidate,
    this.coverage,
  }) : super(
          resourceType: R4ResourceType.EnrollmentRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EnrollmentRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return EnrollmentRequest(
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
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<FinancialResourceStatusCodes>(
        json,
        'status',
        FinancialResourceStatusCodes.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      insurer: JsonParser.parseObject<Reference>(
        json,
        'insurer',
        Reference.fromJson,
      ),
      provider: JsonParser.parseObject<Reference>(
        json,
        'provider',
        Reference.fromJson,
      ),
      candidate: JsonParser.parseObject<Reference>(
        json,
        'candidate',
        Reference.fromJson,
      ),
      coverage: JsonParser.parseObject<Reference>(
        json,
        'coverage',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [EnrollmentRequest]
  /// from a [String] or [YamlMap] object
  factory EnrollmentRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EnrollmentRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EnrollmentRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EnrollmentRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EnrollmentRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EnrollmentRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EnrollmentRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EnrollmentRequest';

  /// [identifier]
  /// The Response business identifier.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes? status;

  /// [created]
  /// The date when this resource was created.
  final FhirDateTime? created;

  /// [insurer]
  /// The Insurer who is target of the request.
  final Reference? insurer;

  /// [provider]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [candidate]
  /// Patient Resource.
  final Reference? candidate;

  /// [coverage]
  /// Reference to the program or plan identification, underwriter or payor.
  final Reference? coverage;
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
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('created', created);
    addField('insurer', insurer);
    addField('provider', provider);
    addField('candidate', candidate);
    addField('coverage', coverage);
    return json;
  }

  @override
  EnrollmentRequest clone() => throw UnimplementedError();
  @override
  EnrollmentRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    FhirDateTime? created,
    Reference? insurer,
    Reference? provider,
    Reference? candidate,
    Reference? coverage,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return EnrollmentRequest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      created: created ?? this.created,
      insurer: insurer ?? this.insurer,
      provider: provider ?? this.provider,
      candidate: candidate ?? this.candidate,
      coverage: coverage ?? this.coverage,
    );
  }
}
