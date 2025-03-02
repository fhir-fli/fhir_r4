import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
          objectPath: 'GuidanceResponse',
          resourceType: R4ResourceType.GuidanceResponse,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory GuidanceResponse.empty() => GuidanceResponse(
        moduleX: FhirUri.empty(),
        status: GuidanceResponseStatus.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GuidanceResponse';
    return GuidanceResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      requestIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'requestIdentifier',
        Identifier.fromJson,
        '$objectPath.requestIdentifier',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
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
        objectPath,
      )!,
      status: JsonParser.parsePrimitive<GuidanceResponseStatus>(
        json,
        'status',
        GuidanceResponseStatus.fromJson,
        '$objectPath.status',
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'occurrenceDateTime',
        FhirDateTime.fromJson,
        '$objectPath.occurrenceDateTime',
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      evaluationMessage: (json['evaluationMessage'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evaluationMessage',
              },
            ),
          )
          .toList(),
      outputParameters: JsonParser.parseObject<Reference>(
        json,
        'outputParameters',
        Reference.fromJson,
        '$objectPath.outputParameters',
      ),
      result: JsonParser.parseObject<Reference>(
        json,
        'result',
        Reference.fromJson,
        '$objectPath.result',
      ),
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dataRequirement',
              },
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
    addField('requestIdentifier', requestIdentifier);
    addField('identifier', identifier);
    final moduleXFhirType = moduleX.fhirType;
    addField('module${moduleXFhirType.capitalize()}', moduleX);

    addField('status', status);
    addField('subject', subject);
    addField('encounter', encounter);
    addField('occurrenceDateTime', occurrenceDateTime);
    addField('performer', performer);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('note', note);
    addField('evaluationMessage', evaluationMessage);
    addField('outputParameters', outputParameters);
    addField('result', result);
    addField('dataRequirement', dataRequirement);
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
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requestIdentifier':
        {
          if (child is Identifier) {
            return copyWith(requestIdentifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'moduleX':
        {
          if (child is ModuleXGuidanceResponse) {
            // child is e.g. SubjectX union
            return copyWith(moduleX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'moduleFhirUri':
        {
          if (child is FhirUri) {
            return copyWith(moduleX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'moduleFhirCanonical':
        {
          if (child is FhirCanonical) {
            return copyWith(moduleX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'moduleCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(moduleX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is GuidanceResponseStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceDateTime: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(reasonCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            return copyWith(reasonReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'evaluationMessage':
        {
          if (child is List<Reference>) {
            return copyWith(evaluationMessage: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'outputParameters':
        {
          if (child is Reference) {
            return copyWith(outputParameters: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'result':
        {
          if (child is Reference) {
            return copyWith(result: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'dataRequirement':
        {
          if (child is List<DataRequirement>) {
            return copyWith(dataRequirement: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'requestIdentifier':
        return ['Identifier'];
      case 'identifier':
        return ['Identifier'];
      case 'module':
      case 'moduleX':
        return ['FhirUri', 'FhirCanonical', 'CodeableConcept'];
      case 'moduleUri':
        return ['FhirUri'];
      case 'moduleCanonical':
        return ['FhirCanonical'];
      case 'moduleCodeableConcept':
        return ['CodeableConcept'];
      case 'status':
        return ['FhirCode'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'performer':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'note':
        return ['Annotation'];
      case 'evaluationMessage':
        return ['Reference'];
      case 'outputParameters':
        return ['Reference'];
      case 'result':
        return ['Reference'];
      case 'dataRequirement':
        return ['DataRequirement'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GuidanceResponse]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  GuidanceResponse createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'requestIdentifier':
        {
          return copyWith(requestIdentifier: Identifier.empty());
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'module':
      case 'moduleX':
      case 'moduleUri':
        {
          return copyWith(moduleX: FhirUri.empty());
        }
      case 'moduleCanonical':
        {
          return copyWith(moduleX: FhirCanonical.empty());
        }
      case 'moduleCodeableConcept':
        {
          return copyWith(moduleX: CodeableConcept.empty());
        }
      case 'status':
        {
          return copyWith(status: GuidanceResponseStatus.empty());
        }
      case 'subject':
        {
          return copyWith(subject: Reference.empty());
        }
      case 'encounter':
        {
          return copyWith(encounter: Reference.empty());
        }
      case 'occurrenceDateTime':
        {
          return copyWith(occurrenceDateTime: FhirDateTime.empty());
        }
      case 'performer':
        {
          return copyWith(performer: Reference.empty());
        }
      case 'reasonCode':
        {
          return copyWith(reasonCode: <CodeableConcept>[]);
        }
      case 'reasonReference':
        {
          return copyWith(reasonReference: <Reference>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'evaluationMessage':
        {
          return copyWith(evaluationMessage: <Reference>[]);
        }
      case 'outputParameters':
        {
          return copyWith(outputParameters: Reference.empty());
        }
      case 'result':
        {
          return copyWith(result: Reference.empty());
        }
      case 'dataRequirement':
        {
          return copyWith(dataRequirement: <DataRequirement>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GuidanceResponse clone() => throw UnimplementedError();
  @override
  GuidanceResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? requestIdentifier,
    List<Identifier>? identifier,
    ModuleXGuidanceResponse? moduleX,
    GuidanceResponseStatus? status,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Reference>? evaluationMessage,
    Reference? outputParameters,
    Reference? result,
    List<DataRequirement>? dataRequirement,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return GuidanceResponse(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      requestIdentifier: requestIdentifier?.copyWith(
            objectPath: '$newObjectPath.requestIdentifier',
          ) ??
          this.requestIdentifier,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      moduleX: moduleX?.copyWith(
            objectPath: '$newObjectPath.moduleX',
          ) as ModuleXGuidanceResponse? ??
          this.moduleX,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      occurrenceDateTime: occurrenceDateTime?.copyWith(
            objectPath: '$newObjectPath.occurrenceDateTime',
          ) ??
          this.occurrenceDateTime,
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      evaluationMessage: evaluationMessage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.evaluationMessage',
                ),
              )
              .toList() ??
          this.evaluationMessage,
      outputParameters: outputParameters?.copyWith(
            objectPath: '$newObjectPath.outputParameters',
          ) ??
          this.outputParameters,
      result: result?.copyWith(
            objectPath: '$newObjectPath.result',
          ) ??
          this.result,
      dataRequirement: dataRequirement
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.dataRequirement',
                ),
              )
              .toList() ??
          this.dataRequirement,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! GuidanceResponse) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
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
    if (!equalsDeepWithNull(requestIdentifier, o.requestIdentifier)) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(moduleX, o.moduleX)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(occurrenceDateTime, o.occurrenceDateTime)) {
      return false;
    }
    if (!equalsDeepWithNull(performer, o.performer)) {
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
    if (!equalsDeepWithNull(outputParameters, o.outputParameters)) {
      return false;
    }
    if (!equalsDeepWithNull(result, o.result)) {
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
