import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [EnrollmentResponse]
/// This resource provides enrollment and plan details from the processing
/// of an EnrollmentRequest resource.
class EnrollmentResponse extends DomainResource {
  /// Primary constructor for [EnrollmentResponse]

  EnrollmentResponse({
    super.id,
    super.meta,
    super.implicitRules,

    /// Extensions for [implicitRules]
    super.implicitRulesElement,
    super.language,

    /// Extensions for [language]
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,

    /// Extensions for [status]
    this.statusElement,
    this.request,
    this.outcome,

    /// Extensions for [outcome]
    this.outcomeElement,
    this.disposition,

    /// Extensions for [disposition]
    this.dispositionElement,
    this.created,

    /// Extensions for [created]
    this.createdElement,
    this.organization,
    this.requestProvider,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.EnrollmentResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory EnrollmentResponse.fromJson(Map<String, dynamic> json) {
    return EnrollmentResponse(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(
              json['_implicitRules'] as Map<String, dynamic>,
            )
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(
              json['_language'] as Map<String, dynamic>,
            )
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (dynamic v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (dynamic v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (dynamic v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: json['status'] != null
          ? FinancialResourceStatusCodes.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(
              json['_status'] as Map<String, dynamic>,
            )
          : null,
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      outcome: json['outcome'] != null
          ? RemittanceOutcome.fromJson(json['outcome'])
          : null,
      outcomeElement: json['_outcome'] != null
          ? Element.fromJson(
              json['_outcome'] as Map<String, dynamic>,
            )
          : null,
      disposition: json['disposition'] != null
          ? FhirString.fromJson(json['disposition'])
          : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(
              json['_disposition'] as Map<String, dynamic>,
            )
          : null,
      created: json['created'] != null
          ? FhirDateTime.fromJson(json['created'])
          : null,
      createdElement: json['_created'] != null
          ? Element.fromJson(
              json['_created'] as Map<String, dynamic>,
            )
          : null,
      organization: json['organization'] != null
          ? Reference.fromJson(
              json['organization'] as Map<String, dynamic>,
            )
          : null,
      requestProvider: json['requestProvider'] != null
          ? Reference.fromJson(
              json['requestProvider'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [EnrollmentResponse] from a [String] or [YamlMap] object
  factory EnrollmentResponse.fromYaml(dynamic yaml) => yaml is String
      ? EnrollmentResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? EnrollmentResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'EnrollmentResponse cannot be constructed from input '
              'provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [EnrollmentResponse] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory EnrollmentResponse.fromJsonString(String source) {
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

  /// Extensions for [status]
  final Element? statusElement;

  /// [request]
  /// Original request resource reference.
  final Reference? request;

  /// [outcome]
  /// Processing status: error, complete.
  final RemittanceOutcome? outcome;

  /// Extensions for [outcome]
  final Element? outcomeElement;

  /// [disposition]
  /// A description of the status of the adjudication.
  final FhirString? disposition;

  /// Extensions for [disposition]
  final Element? dispositionElement;

  /// [created]
  /// The date when the enclosed suite of services were performed or
  /// completed.
  final FhirDateTime? created;

  /// Extensions for [created]
  final Element? createdElement;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.toJson();
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension v) => v.toJson()).toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map((Identifier v) => v.toJson()).toList();
    }
    if (status != null) {
      json['status'] = status!.toJson();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    if (disposition?.value != null) {
      json['disposition'] = disposition!.toJson();
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    if (created?.value != null) {
      json['created'] = created!.toJson();
    }
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (organization != null) {
      json['organization'] = organization!.toJson();
    }
    if (requestProvider != null) {
      json['requestProvider'] = requestProvider!.toJson();
    }
    return json;
  }

  @override
  EnrollmentResponse clone() => throw UnimplementedError();
  @override
  EnrollmentResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Element? statusElement,
    Reference? request,
    RemittanceOutcome? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirDateTime? created,
    Element? createdElement,
    Reference? organization,
    Reference? requestProvider,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return EnrollmentResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      organization: organization ?? this.organization,
      requestProvider: requestProvider ?? this.requestProvider,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
