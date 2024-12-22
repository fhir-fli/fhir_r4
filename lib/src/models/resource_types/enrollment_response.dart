import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EnrollmentResponse]
/// This resource provides enrollment and plan details from the processing
/// of an EnrollmentRequest resource.
class EnrollmentResponse extends DomainResource {
  /// Primary constructor for
  /// [EnrollmentResponse]

  const EnrollmentResponse({
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
    this.request,
    this.outcome,
    this.disposition,
    this.created,
    this.organization,
    this.requestProvider,
  }) : super(
          resourceType: R4ResourceType.EnrollmentResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EnrollmentResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return EnrollmentResponse(
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
      request: JsonParser.parseObject<Reference>(
        json,
        'request',
        Reference.fromJson,
      ),
      outcome: JsonParser.parsePrimitive<RemittanceOutcome>(
        json,
        'outcome',
        RemittanceOutcome.fromJson,
      ),
      disposition: JsonParser.parsePrimitive<FhirString>(
        json,
        'disposition',
        FhirString.fromJson,
      ),
      created: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'created',
        FhirDateTime.fromJson,
      ),
      organization: JsonParser.parseObject<Reference>(
        json,
        'organization',
        Reference.fromJson,
      ),
      requestProvider: JsonParser.parseObject<Reference>(
        json,
        'requestProvider',
        Reference.fromJson,
      ),
    );
  }

  /// Deserialize [EnrollmentResponse]
  /// from a [String] or [YamlMap] object
  factory EnrollmentResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return EnrollmentResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return EnrollmentResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'EnrollmentResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [EnrollmentResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EnrollmentResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return EnrollmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'EnrollmentResponse';

  /// [identifier]
  /// The Response business identifier.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes? status;

  /// [request]
  /// Original request resource reference.
  final Reference? request;

  /// [outcome]
  /// Processing status: error, complete.
  final RemittanceOutcome? outcome;

  /// [disposition]
  /// A description of the status of the adjudication.
  final FhirString? disposition;

  /// [created]
  /// The date when the enclosed suite of services were performed or
  /// completed.
  final FhirDateTime? created;

  /// [organization]
  /// The Insurer who produced this adjudicated response.
  final Reference? organization;

  /// [requestProvider]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? requestProvider;
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
    addField('request', request);
    addField('outcome', outcome);
    addField('disposition', disposition);
    addField('created', created);
    addField('organization', organization);
    addField('requestProvider', requestProvider);
    return json;
  }

  @override
  EnrollmentResponse clone() => throw UnimplementedError();
  @override
  EnrollmentResponse copyWith({
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
    Reference? request,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    FhirDateTime? created,
    Reference? organization,
    Reference? requestProvider,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return EnrollmentResponse(
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
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      created: created ?? this.created,
      organization: organization ?? this.organization,
      requestProvider: requestProvider ?? this.requestProvider,
    );
  }
}
