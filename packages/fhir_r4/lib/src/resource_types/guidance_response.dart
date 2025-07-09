import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'guidance_response.g.dart';

/// [GuidanceResponse]
/// A guidance response is the formal response to a guidance request,
/// including any output parameters returned by the evaluation, as well as
/// the description of any proposed actions to be taken.
class GuidanceResponse extends DomainResource {
  /// Primary constructor for
  /// [GuidanceResponse]

  const GuidanceResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.requestIdentifier,
    this.identifier,
    required this.moduleX,
    required this.status,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
  }) : super(
          resourceType: R4ResourceType.GuidanceResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return GuidanceResponse(
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
      requestIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'requestIdentifier',
        Identifier.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      moduleX: JsonParser.parsePolymorphic<ModuleXGuidanceResponse>(
        json,
        {
          'moduleUri': FhirUri.fromJson,
          'moduleCanonical': FhirCanonical.fromJson,
          'moduleCodeableConcept': CodeableConcept.fromJson,
        },
      )!,
      status: JsonParser.parsePrimitive<GuidanceResponseStatus>(
        json,
        'status',
        GuidanceResponseStatus.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'occurrenceDateTime',
        FhirDateTime.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      evaluationMessage: (json['evaluationMessage'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      outputParameters: JsonParser.parseObject<Reference>(
        json,
        'outputParameters',
        Reference.fromJson,
      ),
      result: JsonParser.parseObject<Reference>(
        json,
        'result',
        Reference.fromJson,
      ),
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GuidanceResponse]
  /// from a [String] or [YamlMap] object
  factory GuidanceResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GuidanceResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GuidanceResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GuidanceResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GuidanceResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GuidanceResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GuidanceResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'GuidanceResponse';

  /// [requestIdentifier]
  /// The identifier of the request associated with this response. If an
  /// identifier was given as part of the request, it will be reproduced here
  /// to enable the requester to more easily identify the response in a
  /// multi-request scenario.
  final Identifier? requestIdentifier;

  /// [identifier]
  /// Allows a service to provide unique, business identifiers for the
  /// response.
  final List<Identifier>? identifier;

  /// [moduleX]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  final ModuleXGuidanceResponse moduleX;

  /// Getter for [moduleUri] as a FhirUri
  FhirUri? get moduleUri => moduleX.isAs<FhirUri>();

  /// Getter for [moduleCanonical] as a FhirCanonical
  FhirCanonical? get moduleCanonical => moduleX.isAs<FhirCanonical>();

  /// Getter for [moduleCodeableConcept] as a CodeableConcept
  CodeableConcept? get moduleCodeableConcept => moduleX.isAs<CodeableConcept>();

  /// [status]
  /// The status of the response. If the evaluation is completed
  /// successfully, the status will indicate success. However, in order to
  /// complete the evaluation, the engine may require more information. In
  /// this case, the status will be data-required, and the response will
  /// contain a description of the additional required information. If the
  /// evaluation completed successfully, but the engine determines that a
  /// potentially more accurate response could be provided if more data was
  /// available, the status will be data-requested, and the response will
  /// contain a description of the additional requested information.
  final GuidanceResponseStatus status;

  /// [subject]
  /// The patient for which the request was processed.
  final Reference? subject;

  /// [encounter]
  /// The encounter during which this response was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [occurrenceDateTime]
  /// Indicates when the guidance response was processed.
  final FhirDateTime? occurrenceDateTime;

  /// [performer]
  /// Provides a reference to the device that performed the guidance.
  final Reference? performer;

  /// [reasonCode]
  /// Describes the reason for the guidance response in coded or textual
  /// form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates the reason the request was initiated. This is typically
  /// provided as a parameter to the evaluation and echoed by the service,
  /// although for some use cases, such as subscription- or event-based
  /// scenarios, it may provide an indication of the cause for the response.
  final List<Reference>? reasonReference;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [evaluationMessage]
  /// Messages resulting from the evaluation of the artifact or artifacts. As
  /// part of evaluating the request, the engine may produce informational or
  /// warning messages. These messages will be provided by this element.
  final List<Reference>? evaluationMessage;

  /// [outputParameters]
  /// The output parameters of the evaluation, if any. Many modules will
  /// result in the return of specific resources such as procedure or
  /// communication requests that are returned as part of the operation
  /// result. However, modules may define specific outputs that would be
  /// returned as the result of the evaluation, and these would be returned
  /// in this element.
  final Reference? outputParameters;

  /// [result]
  /// The actions, if any, produced by the evaluation of the artifact.
  final Reference? result;

  /// [dataRequirement]
  /// If the evaluation could not be completed due to lack of information, or
  /// additional information would potentially result in a more accurate
  /// response, this element will a description of the data required in order
  /// to proceed with the evaluation. A subsequent request to the service
  /// should include this data.
  final List<DataRequirement>? dataRequirement;
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
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
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
      'requestIdentifier',
      requestIdentifier,
    );
    addField(
      'identifier',
      identifier,
    );
    final moduleXFhirType = moduleX.fhirType;
    addField(
      'module${moduleXFhirType.capitalize()}',
      moduleX,
    );

    addField(
      'status',
      status,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    addField(
      'occurrenceDateTime',
      occurrenceDateTime,
    );
    addField(
      'performer',
      performer,
    );
    addField(
      'reasonCode',
      reasonCode,
    );
    addField(
      'reasonReference',
      reasonReference,
    );
    addField(
      'note',
      note,
    );
    addField(
      'evaluationMessage',
      evaluationMessage,
    );
    addField(
      'outputParameters',
      outputParameters,
    );
    addField(
      'result',
      result,
    );
    addField(
      'dataRequirement',
      dataRequirement,
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
      'requestIdentifier',
      'identifier',
      'moduleX',
      'status',
      'subject',
      'encounter',
      'occurrenceDateTime',
      'performer',
      'reasonCode',
      'reasonReference',
      'note',
      'evaluationMessage',
      'outputParameters',
      'result',
      'dataRequirement',
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
      case 'requestIdentifier':
        if (requestIdentifier != null) {
          fields.add(requestIdentifier!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'module':
        fields.add(moduleX);
      case 'moduleX':
        fields.add(moduleX);
      case 'moduleUri':
        if (moduleX is FhirUri) {
          fields.add(moduleX);
        }
      case 'moduleCanonical':
        if (moduleX is FhirCanonical) {
          fields.add(moduleX);
        }
      case 'moduleCodeableConcept':
        if (moduleX is CodeableConcept) {
          fields.add(moduleX);
        }
      case 'status':
        fields.add(status);
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrenceDateTime':
        if (occurrenceDateTime != null) {
          fields.add(occurrenceDateTime!);
        }
      case 'performer':
        if (performer != null) {
          fields.add(performer!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'evaluationMessage':
        if (evaluationMessage != null) {
          fields.addAll(evaluationMessage!);
        }
      case 'outputParameters':
        if (outputParameters != null) {
          fields.add(outputParameters!);
        }
      case 'result':
        if (result != null) {
          fields.add(result!);
        }
      case 'dataRequirement':
        if (dataRequirement != null) {
          fields.addAll(dataRequirement!);
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
  GuidanceResponse clone() => copyWith();

  /// Copy function for [GuidanceResponse]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $GuidanceResponseCopyWith<GuidanceResponse> get copyWith =>
      _$GuidanceResponseCopyWithImpl<GuidanceResponse>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GuidanceResponse) {
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
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      requestIdentifier,
      o.requestIdentifier,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      moduleX,
      o.moduleX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      subject,
      o.subject,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      occurrenceDateTime,
      o.occurrenceDateTime,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      evaluationMessage,
      o.evaluationMessage,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      outputParameters,
      o.outputParameters,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      result,
      o.result,
    )) {
      return false;
    }
    if (!listEquals<DataRequirement>(
      dataRequirement,
      o.dataRequirement,
    )) {
      return false;
    }
    return true;
  }
}
