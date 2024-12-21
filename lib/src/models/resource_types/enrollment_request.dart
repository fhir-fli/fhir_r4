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
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: (json['status'] != null || json['_status'] != null)
          ? FinancialResourceStatusCodes.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      created: (json['created'] != null || json['_created'] != null)
          ? FhirDateTime.fromJson({
              'value': json['created'],
              '_value': json['_created'],
            })
          : null,
      insurer: json['insurer'] != null
          ? Reference.fromJson(
              json['insurer'] as Map<String, dynamic>,
            )
          : null,
      provider: json['provider'] != null
          ? Reference.fromJson(
              json['provider'] as Map<String, dynamic>,
            )
          : null,
      candidate: json['candidate'] != null
          ? Reference.fromJson(
              json['candidate'] as Map<String, dynamic>,
            )
          : null,
      coverage: json['coverage'] != null
          ? Reference.fromJson(
              json['coverage'] as Map<String, dynamic>,
            )
          : null,
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (status != null) {
      addField('status', status);
    }

    if (created != null) {
      addField('created', created);
    }

    if (insurer != null) {
      json['insurer'] = insurer!.toJson();
    }

    if (provider != null) {
      json['provider'] = provider!.toJson();
    }

    if (candidate != null) {
      json['candidate'] = candidate!.toJson();
    }

    if (coverage != null) {
      json['coverage'] = coverage!.toJson();
    }

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
