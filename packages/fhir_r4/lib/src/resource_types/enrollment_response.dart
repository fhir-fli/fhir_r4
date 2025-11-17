import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'enrollment_response.g.dart';

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
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
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
    if (json is Map<String, dynamic>) {
      return EnrollmentResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'request',
      request,
    );
    addField(
      'outcome',
      outcome,
    );
    addField(
      'disposition',
      disposition,
    );
    addField(
      'created',
      created,
    );
    addField(
      'organization',
      organization,
    );
    addField(
      'requestProvider',
      requestProvider,
    );
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
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'request',
      'outcome',
      'disposition',
      'created',
      'organization',
      'requestProvider',
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
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'request':
        if (request != null) {
          fields.add(request!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'disposition':
        if (disposition != null) {
          fields.add(disposition!);
        }
      case 'created':
        if (created != null) {
          fields.add(created!);
        }
      case 'organization':
        if (organization != null) {
          fields.add(organization!);
        }
      case 'requestProvider':
        if (requestProvider != null) {
          fields.add(requestProvider!);
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
  EnrollmentResponse clone() => copyWith();

  /// Copy function for [EnrollmentResponse]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $EnrollmentResponseCopyWith<EnrollmentResponse> get copyWith =>
      _$EnrollmentResponseCopyWithImpl<EnrollmentResponse>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! EnrollmentResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!FhirBase.equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      request,
      o.request,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      disposition,
      o.disposition,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      created,
      o.created,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      organization,
      o.organization,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      requestProvider,
      o.requestProvider,
    )) {
      return false;
    }
    return true;
  }
}
