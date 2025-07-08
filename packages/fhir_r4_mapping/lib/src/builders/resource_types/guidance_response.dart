import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show GuidanceResponse, R4ResourceType, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:yaml/yaml.dart';

/// [GuidanceResponseBuilder]
/// A guidance response is the formal response to a guidance request,
/// including any output parameters returned by the evaluation, as well as
/// the description of any proposed actions to be taken.
class GuidanceResponseBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [GuidanceResponseBuilder]

  GuidanceResponseBuilder({
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
    ModuleXGuidanceResponseBuilder? moduleX,
    FhirUriBuilder? moduleUri,
    FhirCanonicalBuilder? moduleCanonical,
    CodeableConceptBuilder? moduleCodeableConcept,
    this.status,
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
  })  : moduleX =
            moduleX ?? moduleUri ?? moduleCanonical ?? moduleCodeableConcept,
        super(
          objectPath: 'GuidanceResponse',
          resourceType: R4ResourceType.GuidanceResponse,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory GuidanceResponseBuilder.empty() => GuidanceResponseBuilder(
        moduleX: FhirUriBuilder.empty(),
        status: GuidanceResponseStatusBuilder.values.first,
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'GuidanceResponse';
    return GuidanceResponseBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      requestIdentifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'requestIdentifier',
        IdentifierBuilder.fromJson,
        '$objectPath.requestIdentifier',
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<IdentifierBuilder>(
            (v) => IdentifierBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      moduleX: JsonParser.parsePolymorphic<ModuleXGuidanceResponseBuilder>(
        json,
        {
          'moduleUri': FhirUriBuilder.fromJson,
          'moduleCanonical': FhirCanonicalBuilder.fromJson,
          'moduleCodeableConcept': CodeableConceptBuilder.fromJson,
        },
        objectPath,
      ),
      status: JsonParser.parsePrimitive<GuidanceResponseStatusBuilder>(
        json,
        'status',
        GuidanceResponseStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      subject: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'subject',
        ReferenceBuilder.fromJson,
        '$objectPath.subject',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceDateTime: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'occurrenceDateTime',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.occurrenceDateTime',
      ),
      performer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'performer',
        ReferenceBuilder.fromJson,
        '$objectPath.performer',
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<AnnotationBuilder>(
            (v) => AnnotationBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      evaluationMessage: (json['evaluationMessage'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evaluationMessage',
              },
            ),
          )
          .toList(),
      outputParameters: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'outputParameters',
        ReferenceBuilder.fromJson,
        '$objectPath.outputParameters',
      ),
      result: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'result',
        ReferenceBuilder.fromJson,
        '$objectPath.result',
      ),
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)
          ?.map<DataRequirementBuilder>(
            (v) => DataRequirementBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.dataRequirement',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GuidanceResponseBuilder]
  /// from a [String] or [YamlMap] object
  factory GuidanceResponseBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GuidanceResponseBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GuidanceResponseBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GuidanceResponseBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GuidanceResponseBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GuidanceResponseBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return GuidanceResponseBuilder.fromJson(json);
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
  IdentifierBuilder? requestIdentifier;

  /// [identifier]
  /// Allows a service to provide unique, business identifiers for the
  /// response.
  List<IdentifierBuilder>? identifier;

  /// [moduleX]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  ModuleXGuidanceResponseBuilder? moduleX;

  /// Getter for [moduleUri] as a FhirUriBuilder
  FhirUriBuilder? get moduleUri => moduleX?.isAs<FhirUriBuilder>();

  /// Getter for [moduleCanonical] as a FhirCanonicalBuilder
  FhirCanonicalBuilder? get moduleCanonical =>
      moduleX?.isAs<FhirCanonicalBuilder>();

  /// Getter for [moduleCodeableConcept] as a CodeableConceptBuilder
  CodeableConceptBuilder? get moduleCodeableConcept =>
      moduleX?.isAs<CodeableConceptBuilder>();

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
  GuidanceResponseStatusBuilder? status;

  /// [subject]
  /// The patient for which the request was processed.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The encounter during which this response was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [occurrenceDateTime]
  /// Indicates when the guidance response was processed.
  FhirDateTimeBuilder? occurrenceDateTime;

  /// [performer]
  /// Provides a reference to the device that performed the guidance.
  ReferenceBuilder? performer;

  /// [reasonCode]
  /// Describes the reason for the guidance response in coded or textual
  /// form.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Indicates the reason the request was initiated. This is typically
  /// provided as a parameter to the evaluation and echoed by the service,
  /// although for some use cases, such as subscription- or event-based
  /// scenarios, it may provide an indication of the cause for the response.
  List<ReferenceBuilder>? reasonReference;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  List<AnnotationBuilder>? note;

  /// [evaluationMessage]
  /// Messages resulting from the evaluation of the artifact or artifacts. As
  /// part of evaluating the request, the engine may produce informational or
  /// warning messages. These messages will be provided by this element.
  List<ReferenceBuilder>? evaluationMessage;

  /// [outputParameters]
  /// The output parameters of the evaluation, if any. Many modules will
  /// result in the return of specific resources such as procedure or
  /// communication requests that are returned as part of the operation
  /// result. However, modules may define specific outputs that would be
  /// returned as the result of the evaluation, and these would be returned
  /// in this element.
  ReferenceBuilder? outputParameters;

  /// [result]
  /// The actions, if any, produced by the evaluation of the artifact.
  ReferenceBuilder? result;

  /// [dataRequirement]
  /// If the evaluation could not be completed due to lack of information, or
  /// additional information would potentially result in a more accurate
  /// response, this element will a description of the data required in order
  /// to proceed with the evaluation. A subsequent request to the service
  /// should include this data.
  List<DataRequirementBuilder>? dataRequirement;

  /// Converts a [GuidanceResponseBuilder]
  /// to [GuidanceResponse]
  @override
  GuidanceResponse build() => GuidanceResponse.fromJson(toJson());

  /// Converts a [GuidanceResponseBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field == null) return;
      if (field is PrimitiveTypeBuilder) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveTypeBuilder) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBaseBuilder) {
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
    if (moduleX != null) {
      final fhirType = moduleX!.fhirType;
      addField('module${fhirType.capitalizeFirstLetter()}', moduleX);
    }

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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (moduleX != null) {
          fields.add(moduleX!);
        }
      case 'moduleX':
        if (moduleX != null) {
          fields.add(moduleX!);
        }
      case 'moduleUri':
        if (moduleX is FhirUriBuilder) {
          fields.add(moduleX!);
        }
      case 'moduleCanonical':
        if (moduleX is FhirCanonicalBuilder) {
          fields.add(moduleX!);
        }
      case 'moduleCodeableConcept':
        if (moduleX is CodeableConceptBuilder) {
          fields.add(moduleX!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'requestIdentifier':
        {
          if (child is IdentifierBuilder) {
            requestIdentifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is List<IdentifierBuilder>) {
            // Replace or create new list
            identifier = child;
            return;
          } else if (child is IdentifierBuilder) {
            // Add single element to existing list or create new list
            identifier = [
              ...(identifier ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'module':
      case 'moduleX':
        {
          if (child is ModuleXGuidanceResponseBuilder) {
            moduleX = child;
            return;
          } else {
            if (child is FhirUriBuilder) {
              moduleX = child;
              return;
            }
            if (child is FhirCanonicalBuilder) {
              moduleX = child;
              return;
            }
            if (child is CodeableConceptBuilder) {
              moduleX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'moduleUri':
        {
          if (child is FhirUriBuilder) {
            moduleX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'moduleCanonical':
        {
          if (child is FhirCanonicalBuilder) {
            moduleX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'moduleCodeableConcept':
        {
          if (child is CodeableConceptBuilder) {
            moduleX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is GuidanceResponseStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = GuidanceResponseStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceDateTime = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                occurrenceDateTime = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'performer':
        {
          if (child is ReferenceBuilder) {
            performer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            reasonCode = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            reasonCode = [
              ...(reasonCode ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'reasonReference':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            reasonReference = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            reasonReference = [
              ...(reasonReference ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'note':
        {
          if (child is List<AnnotationBuilder>) {
            // Replace or create new list
            note = child;
            return;
          } else if (child is AnnotationBuilder) {
            // Add single element to existing list or create new list
            note = [
              ...(note ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'evaluationMessage':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            evaluationMessage = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            evaluationMessage = [
              ...(evaluationMessage ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outputParameters':
        {
          if (child is ReferenceBuilder) {
            outputParameters = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'result':
        {
          if (child is ReferenceBuilder) {
            result = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'dataRequirement':
        {
          if (child is List<DataRequirementBuilder>) {
            // Replace or create new list
            dataRequirement = child;
            return;
          } else if (child is DataRequirementBuilder) {
            // Add single element to existing list or create new list
            dataRequirement = [
              ...(dataRequirement ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'requestIdentifier':
        return ['IdentifierBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'module':
      case 'moduleX':
        return [
          'FhirUriBuilder',
          'FhirCanonicalBuilder',
          'CodeableConceptBuilder',
        ];
      case 'moduleUri':
        return ['FhirUriBuilder'];
      case 'moduleCanonical':
        return ['FhirCanonicalBuilder'];
      case 'moduleCodeableConcept':
        return ['CodeableConceptBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'evaluationMessage':
        return ['ReferenceBuilder'];
      case 'outputParameters':
        return ['ReferenceBuilder'];
      case 'result':
        return ['ReferenceBuilder'];
      case 'dataRequirement':
        return ['DataRequirementBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [GuidanceResponseBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'requestIdentifier':
        {
          requestIdentifier = IdentifierBuilder.empty();
          return;
        }
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'module':
      case 'moduleX':
      case 'moduleUri':
        {
          moduleX = FhirUriBuilder.empty();
          return;
        }
      case 'moduleCanonical':
        {
          moduleX = FhirCanonicalBuilder.empty();
          return;
        }
      case 'moduleCodeableConcept':
        {
          moduleX = CodeableConceptBuilder.empty();
          return;
        }
      case 'status':
        {
          status = GuidanceResponseStatusBuilder.empty();
          return;
        }
      case 'subject':
        {
          subject = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'occurrenceDateTime':
        {
          occurrenceDateTime = FhirDateTimeBuilder.empty();
          return;
        }
      case 'performer':
        {
          performer = ReferenceBuilder.empty();
          return;
        }
      case 'reasonCode':
        {
          reasonCode = <CodeableConceptBuilder>[];
          return;
        }
      case 'reasonReference':
        {
          reasonReference = <ReferenceBuilder>[];
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'evaluationMessage':
        {
          evaluationMessage = <ReferenceBuilder>[];
          return;
        }
      case 'outputParameters':
        {
          outputParameters = ReferenceBuilder.empty();
          return;
        }
      case 'result':
        {
          result = ReferenceBuilder.empty();
          return;
        }
      case 'dataRequirement':
        {
          dataRequirement = <DataRequirementBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  @override
  GuidanceResponseBuilder clone() => throw UnimplementedError();
  @override
  GuidanceResponseBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? requestIdentifier,
    List<IdentifierBuilder>? identifier,
    ModuleXGuidanceResponseBuilder? moduleX,
    GuidanceResponseStatusBuilder? status,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    FhirDateTimeBuilder? occurrenceDateTime,
    ReferenceBuilder? performer,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<AnnotationBuilder>? note,
    List<ReferenceBuilder>? evaluationMessage,
    ReferenceBuilder? outputParameters,
    ReferenceBuilder? result,
    List<DataRequirementBuilder>? dataRequirement,
    FhirUriBuilder? moduleUri,
    FhirCanonicalBuilder? moduleCanonical,
    CodeableConceptBuilder? moduleCodeableConcept,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = GuidanceResponseBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      requestIdentifier: requestIdentifier ?? this.requestIdentifier,
      identifier: identifier ?? this.identifier,
      moduleX: moduleX ??
          moduleUri ??
          moduleCanonical ??
          moduleCodeableConcept ??
          this.moduleX,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      evaluationMessage: evaluationMessage ?? this.evaluationMessage,
      outputParameters: outputParameters ?? this.outputParameters,
      result: result ?? this.result,
      dataRequirement: dataRequirement ?? this.dataRequirement,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! GuidanceResponseBuilder) {
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
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
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
    if (!listEquals<IdentifierBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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
    if (!listEquals<DataRequirementBuilder>(
      dataRequirement,
      o.dataRequirement,
    )) {
      return false;
    }
    return true;
  }
}
