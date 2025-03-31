import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        R4ResourceType,
        RiskAssessment,
        RiskAssessmentPrediction,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [RiskAssessmentBuilder]
/// An assessment of the likely outcome(s) for a patient or other subject
/// as well as the likelihood of each outcome.
class RiskAssessmentBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [RiskAssessmentBuilder]

  RiskAssessmentBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.basedOn,
    this.parent,
    this.status,
    this.method,
    this.code,
    this.subject,
    this.encounter,
    this.occurrenceX,
    this.condition,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.basis,
    this.prediction,
    this.mitigation,
    this.note,
  }) : super(
          objectPath: 'RiskAssessment',
          resourceType: R4ResourceType.RiskAssessment,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RiskAssessmentBuilder.empty() => RiskAssessmentBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RiskAssessment';
    return RiskAssessmentBuilder(
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
      basedOn: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'basedOn',
        ReferenceBuilder.fromJson,
        '$objectPath.basedOn',
      ),
      parent: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'parent',
        ReferenceBuilder.fromJson,
        '$objectPath.parent',
      ),
      status: JsonParser.parsePrimitive<ObservationStatusBuilder>(
        json,
        'status',
        ObservationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      method: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'method',
        CodeableConceptBuilder.fromJson,
        '$objectPath.method',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
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
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXRiskAssessmentBuilder>(
        json,
        {
          'occurrenceDateTime': FhirDateTimeBuilder.fromJson,
          'occurrencePeriod': PeriodBuilder.fromJson,
        },
        objectPath,
      ),
      condition: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'condition',
        ReferenceBuilder.fromJson,
        '$objectPath.condition',
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
      basis: (json['basis'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basis',
              },
            ),
          )
          .toList(),
      prediction: (json['prediction'] as List<dynamic>?)
          ?.map<RiskAssessmentPredictionBuilder>(
            (v) => RiskAssessmentPredictionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.prediction',
              },
            ),
          )
          .toList(),
      mitigation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'mitigation',
        FhirStringBuilder.fromJson,
        '$objectPath.mitigation',
      ),
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
    );
  }

  /// Deserialize [RiskAssessmentBuilder]
  /// from a [String] or [YamlMap] object
  factory RiskAssessmentBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessmentBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessmentBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessmentBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessmentBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessmentBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RiskAssessmentBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RiskAssessment';

  /// [identifier]
  /// Business identifier assigned to the risk assessment.
  List<IdentifierBuilder>? identifier;

  /// [basedOn]
  /// A reference to the request that is fulfilled by this risk assessment.
  ReferenceBuilder? basedOn;

  /// [parent]
  /// A reference to a resource that this risk assessment is part of, such as
  /// a Procedure.
  ReferenceBuilder? parent;

  /// [status]
  /// The status of the RiskAssessment, using the same statuses as an
  /// Observation.
  ObservationStatusBuilder? status;

  /// [method]
  /// The algorithm, process or mechanism used to evaluate the risk.
  CodeableConceptBuilder? method;

  /// [code]
  /// The type of the risk assessment performed.
  CodeableConceptBuilder? code;

  /// [subject]
  /// The patient or group the risk assessment applies to.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The encounter where the assessment was performed.
  ReferenceBuilder? encounter;

  /// [occurrenceX]
  /// The date (and possibly time) the risk assessment was performed.
  OccurrenceXRiskAssessmentBuilder? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get occurrenceDateTime =>
      occurrenceX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [occurrencePeriod] as a PeriodBuilder
  PeriodBuilder? get occurrencePeriod => occurrenceX?.isAs<PeriodBuilder>();

  /// [condition]
  /// For assessments or prognosis specific to a particular condition,
  /// indicates the condition being assessed.
  ReferenceBuilder? condition;

  /// [performer]
  /// The provider or software application that performed the assessment.
  ReferenceBuilder? performer;

  /// [reasonCode]
  /// The reason the risk assessment was performed.
  List<CodeableConceptBuilder>? reasonCode;

  /// [reasonReference]
  /// Resources supporting the reason the risk assessment was performed.
  List<ReferenceBuilder>? reasonReference;

  /// [basis]
  /// Indicates the source data considered as part of the assessment (for
  /// example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  List<ReferenceBuilder>? basis;

  /// [prediction]
  /// Describes the expected outcome for the subject.
  List<RiskAssessmentPredictionBuilder>? prediction;

  /// [mitigation]
  /// A description of the steps that might be taken to reduce the identified
  /// risk(s).
  FhirStringBuilder? mitigation;

  /// [note]
  /// Additional comments about the risk assessment.
  List<AnnotationBuilder>? note;

  /// Converts a [RiskAssessmentBuilder]
  /// to [RiskAssessment]
  @override
  RiskAssessment build() => RiskAssessment.fromJson(toJson());

  /// Converts a [RiskAssessmentBuilder]
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
    addField('identifier', identifier);
    addField('basedOn', basedOn);
    addField('parent', parent);
    addField('status', status);
    addField('method', method);
    addField('code', code);
    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('condition', condition);
    addField('performer', performer);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('basis', basis);
    addField('prediction', prediction);
    addField('mitigation', mitigation);
    addField('note', note);
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
      'basedOn',
      'parent',
      'status',
      'method',
      'code',
      'subject',
      'encounter',
      'occurrenceX',
      'condition',
      'performer',
      'reasonCode',
      'reasonReference',
      'basis',
      'prediction',
      'mitigation',
      'note',
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
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.add(basedOn!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        if (subject != null) {
          fields.add(subject!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceX':
        if (occurrenceX != null) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTimeBuilder) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is PeriodBuilder) {
          fields.add(occurrenceX!);
        }
      case 'condition':
        if (condition != null) {
          fields.add(condition!);
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
      case 'basis':
        if (basis != null) {
          fields.addAll(basis!);
        }
      case 'prediction':
        if (prediction != null) {
          fields.addAll(prediction!);
        }
      case 'mitigation':
        if (mitigation != null) {
          fields.add(mitigation!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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
            contained = [...(contained ?? []), child];
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
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
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
            identifier = [...(identifier ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basedOn':
        {
          if (child is ReferenceBuilder) {
            basedOn = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'parent':
        {
          if (child is ReferenceBuilder) {
            parent = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is ObservationStatusBuilder) {
            status = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'method':
        {
          if (child is CodeableConceptBuilder) {
            method = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
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
      case 'occurrenceX':
        {
          if (child is OccurrenceXRiskAssessmentBuilder) {
            occurrenceX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              occurrenceX = child;
              return;
            }
            if (child is PeriodBuilder) {
              occurrenceX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is PeriodBuilder) {
            occurrenceX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is ReferenceBuilder) {
            condition = child;
            return;
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
            reasonCode = [...(reasonCode ?? []), child];
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
            reasonReference = [...(reasonReference ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'basis':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            basis = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            basis = [...(basis ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'prediction':
        {
          if (child is List<RiskAssessmentPredictionBuilder>) {
            // Replace or create new list
            prediction = child;
            return;
          } else if (child is RiskAssessmentPredictionBuilder) {
            // Add single element to existing list or create new list
            prediction = [...(prediction ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'mitigation':
        {
          if (child is FhirStringBuilder) {
            mitigation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                mitigation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
            note = [...(note ?? []), child];
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
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'basedOn':
        return ['ReferenceBuilder'];
      case 'parent':
        return ['ReferenceBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'method':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'subject':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'occurrence':
      case 'occurrenceX':
        return ['FhirDateTimeBuilder', 'PeriodBuilder'];
      case 'occurrenceDateTime':
        return ['FhirDateTimeBuilder'];
      case 'occurrencePeriod':
        return ['PeriodBuilder'];
      case 'condition':
        return ['ReferenceBuilder'];
      case 'performer':
        return ['ReferenceBuilder'];
      case 'reasonCode':
        return ['CodeableConceptBuilder'];
      case 'reasonReference':
        return ['ReferenceBuilder'];
      case 'basis':
        return ['ReferenceBuilder'];
      case 'prediction':
        return ['RiskAssessmentPredictionBuilder'];
      case 'mitigation':
        return ['FhirStringBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RiskAssessmentBuilder]
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
      case 'identifier':
        {
          identifier = <IdentifierBuilder>[];
          return;
        }
      case 'basedOn':
        {
          basedOn = ReferenceBuilder.empty();
          return;
        }
      case 'parent':
        {
          parent = ReferenceBuilder.empty();
          return;
        }
      case 'status':
        {
          status = ObservationStatusBuilder.empty();
          return;
        }
      case 'method':
        {
          method = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
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
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          occurrenceX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'occurrencePeriod':
        {
          occurrenceX = PeriodBuilder.empty();
          return;
        }
      case 'condition':
        {
          condition = ReferenceBuilder.empty();
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
      case 'basis':
        {
          basis = <ReferenceBuilder>[];
          return;
        }
      case 'prediction':
        {
          prediction = <RiskAssessmentPredictionBuilder>[];
          return;
        }
      case 'mitigation':
        {
          mitigation = FhirStringBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool basedOn = false,
    bool parent = false,
    bool status = false,
    bool method = false,
    bool code = false,
    bool subject = false,
    bool encounter = false,
    bool occurrence = false,
    bool condition = false,
    bool performer = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool basis = false,
    bool prediction = false,
    bool mitigation = false,
    bool note = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (basedOn) this.basedOn = null;
    if (parent) this.parent = null;
    if (status) this.status = null;
    if (method) this.method = null;
    if (code) this.code = null;
    if (subject) this.subject = null;
    if (encounter) this.encounter = null;
    if (occurrence) occurrenceX = null;
    if (condition) this.condition = null;
    if (performer) this.performer = null;
    if (reasonCode) this.reasonCode = null;
    if (reasonReference) this.reasonReference = null;
    if (basis) this.basis = null;
    if (prediction) this.prediction = null;
    if (mitigation) this.mitigation = null;
    if (note) this.note = null;
  }

  @override
  RiskAssessmentBuilder clone() => throw UnimplementedError();
  @override
  RiskAssessmentBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    ReferenceBuilder? basedOn,
    ReferenceBuilder? parent,
    ObservationStatusBuilder? status,
    CodeableConceptBuilder? method,
    CodeableConceptBuilder? code,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OccurrenceXRiskAssessmentBuilder? occurrenceX,
    ReferenceBuilder? condition,
    ReferenceBuilder? performer,
    List<CodeableConceptBuilder>? reasonCode,
    List<ReferenceBuilder>? reasonReference,
    List<ReferenceBuilder>? basis,
    List<RiskAssessmentPredictionBuilder>? prediction,
    FhirStringBuilder? mitigation,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = RiskAssessmentBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      basedOn: basedOn ?? this.basedOn,
      parent: parent ?? this.parent,
      status: status ?? this.status,
      method: method ?? this.method,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ?? this.occurrenceX,
      condition: condition ?? this.condition,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      basis: basis ?? this.basis,
      prediction: prediction ?? this.prediction,
      mitigation: mitigation ?? this.mitigation,
      note: note ?? this.note,
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
    if (o is! RiskAssessmentBuilder) {
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
    if (!listEquals<IdentifierBuilder>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      parent,
      o.parent,
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
      method,
      o.method,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
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
      occurrenceX,
      o.occurrenceX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      condition,
      o.condition,
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
    if (!listEquals<ReferenceBuilder>(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!listEquals<RiskAssessmentPredictionBuilder>(
      prediction,
      o.prediction,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      mitigation,
      o.mitigation,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [RiskAssessmentPredictionBuilder]
/// Describes the expected outcome for the subject.
class RiskAssessmentPredictionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [RiskAssessmentPredictionBuilder]

  RiskAssessmentPredictionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.outcome,
    this.probabilityX,
    this.qualitativeRisk,
    this.relativeRisk,
    this.whenX,
    this.rationale,
    super.disallowExtensions,
  }) : super(
          objectPath: 'RiskAssessment.prediction',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory RiskAssessmentPredictionBuilder.empty() =>
      RiskAssessmentPredictionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentPredictionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RiskAssessment.prediction';
    return RiskAssessmentPredictionBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
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
      outcome: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'outcome',
        CodeableConceptBuilder.fromJson,
        '$objectPath.outcome',
      ),
      probabilityX: JsonParser.parsePolymorphic<
          ProbabilityXRiskAssessmentPredictionBuilder>(
        json,
        {
          'probabilityDecimal': FhirDecimalBuilder.fromJson,
          'probabilityRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      qualitativeRisk: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'qualitativeRisk',
        CodeableConceptBuilder.fromJson,
        '$objectPath.qualitativeRisk',
      ),
      relativeRisk: JsonParser.parsePrimitive<FhirDecimalBuilder>(
        json,
        'relativeRisk',
        FhirDecimalBuilder.fromJson,
        '$objectPath.relativeRisk',
      ),
      whenX: JsonParser.parsePolymorphic<WhenXRiskAssessmentPredictionBuilder>(
        json,
        {
          'whenPeriod': PeriodBuilder.fromJson,
          'whenRange': RangeBuilder.fromJson,
        },
        objectPath,
      ),
      rationale: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'rationale',
        FhirStringBuilder.fromJson,
        '$objectPath.rationale',
      ),
    );
  }

  /// Deserialize [RiskAssessmentPredictionBuilder]
  /// from a [String] or [YamlMap] object
  factory RiskAssessmentPredictionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessmentPredictionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessmentPredictionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessmentPredictionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessmentPredictionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessmentPredictionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RiskAssessmentPredictionBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RiskAssessmentPrediction';

  /// [outcome]
  /// One of the potential outcomes for the patient (e.g. remission, death, a
  /// particular condition).
  CodeableConceptBuilder? outcome;

  /// [probabilityX]
  /// Indicates how likely the outcome is (in the specified timeframe).
  ProbabilityXRiskAssessmentPredictionBuilder? probabilityX;

  /// Getter for [probabilityDecimal] as a FhirDecimalBuilder
  FhirDecimalBuilder? get probabilityDecimal =>
      probabilityX?.isAs<FhirDecimalBuilder>();

  /// Getter for [probabilityRange] as a RangeBuilder
  RangeBuilder? get probabilityRange => probabilityX?.isAs<RangeBuilder>();

  /// [qualitativeRisk]
  /// Indicates how likely the outcome is (in the specified timeframe),
  /// expressed as a qualitative value (e.g. low, medium, or high).
  CodeableConceptBuilder? qualitativeRisk;

  /// [relativeRisk]
  /// Indicates the risk for this particular subject (with their specific
  /// characteristics) divided by the risk of the population in general.
  /// (Numbers greater than 1 = higher risk than the population, numbers less
  /// than 1 = lower risk.).
  FhirDecimalBuilder? relativeRisk;

  /// [whenX]
  /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  WhenXRiskAssessmentPredictionBuilder? whenX;

  /// Getter for [whenPeriod] as a PeriodBuilder
  PeriodBuilder? get whenPeriod => whenX?.isAs<PeriodBuilder>();

  /// Getter for [whenRange] as a RangeBuilder
  RangeBuilder? get whenRange => whenX?.isAs<RangeBuilder>();

  /// [rationale]
  /// Additional information explaining the basis for the prediction.
  FhirStringBuilder? rationale;

  /// Converts a [RiskAssessmentPredictionBuilder]
  /// to [RiskAssessmentPrediction]
  @override
  RiskAssessmentPrediction build() =>
      RiskAssessmentPrediction.fromJson(toJson());

  /// Converts a [RiskAssessmentPredictionBuilder]
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('outcome', outcome);
    if (probabilityX != null) {
      final fhirType = probabilityX!.fhirType;
      addField('probability${fhirType.capitalize()}', probabilityX);
    }

    addField('qualitativeRisk', qualitativeRisk);
    addField('relativeRisk', relativeRisk);
    if (whenX != null) {
      final fhirType = whenX!.fhirType;
      addField('when${fhirType.capitalize()}', whenX);
    }

    addField('rationale', rationale);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'outcome',
      'probabilityX',
      'qualitativeRisk',
      'relativeRisk',
      'whenX',
      'rationale',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'probability':
        if (probabilityX != null) {
          fields.add(probabilityX!);
        }
      case 'probabilityX':
        if (probabilityX != null) {
          fields.add(probabilityX!);
        }
      case 'probabilityDecimal':
        if (probabilityX is FhirDecimalBuilder) {
          fields.add(probabilityX!);
        }
      case 'probabilityRange':
        if (probabilityX is RangeBuilder) {
          fields.add(probabilityX!);
        }
      case 'qualitativeRisk':
        if (qualitativeRisk != null) {
          fields.add(qualitativeRisk!);
        }
      case 'relativeRisk':
        if (relativeRisk != null) {
          fields.add(relativeRisk!);
        }
      case 'when':
        if (whenX != null) {
          fields.add(whenX!);
        }
      case 'whenX':
        if (whenX != null) {
          fields.add(whenX!);
        }
      case 'whenPeriod':
        if (whenX is PeriodBuilder) {
          fields.add(whenX!);
        }
      case 'whenRange':
        if (whenX is RangeBuilder) {
          fields.add(whenX!);
        }
      case 'rationale':
        if (rationale != null) {
          fields.add(rationale!);
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
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [...(extension_ ?? []), child];
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
            modifierExtension = [...(modifierExtension ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'outcome':
        {
          if (child is CodeableConceptBuilder) {
            outcome = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'probabilityX':
        {
          if (child is ProbabilityXRiskAssessmentPredictionBuilder) {
            probabilityX = child;
            return;
          } else {
            if (child is FhirDecimalBuilder) {
              probabilityX = child;
              return;
            }
            if (child is RangeBuilder) {
              probabilityX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'probabilityDecimal':
        {
          if (child is FhirDecimalBuilder) {
            probabilityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'probabilityRange':
        {
          if (child is RangeBuilder) {
            probabilityX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'qualitativeRisk':
        {
          if (child is CodeableConceptBuilder) {
            qualitativeRisk = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'relativeRisk':
        {
          if (child is FhirDecimalBuilder) {
            relativeRisk = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For number types, first parse to num then pass the number directly
              final numValue = num.tryParse(stringValue);
              if (numValue != null) {
                final converted = FhirDecimalBuilder.tryParse(numValue);
                if (converted != null) {
                  relativeRisk = converted;
                  return;
                }
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whenX':
        {
          if (child is WhenXRiskAssessmentPredictionBuilder) {
            whenX = child;
            return;
          } else {
            if (child is PeriodBuilder) {
              whenX = child;
              return;
            }
            if (child is RangeBuilder) {
              whenX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whenPeriod':
        {
          if (child is PeriodBuilder) {
            whenX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenRange':
        {
          if (child is RangeBuilder) {
            whenX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rationale':
        {
          if (child is FhirStringBuilder) {
            rationale = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                rationale = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'outcome':
        return ['CodeableConceptBuilder'];
      case 'probability':
      case 'probabilityX':
        return ['FhirDecimalBuilder', 'RangeBuilder'];
      case 'probabilityDecimal':
        return ['FhirDecimalBuilder'];
      case 'probabilityRange':
        return ['RangeBuilder'];
      case 'qualitativeRisk':
        return ['CodeableConceptBuilder'];
      case 'relativeRisk':
        return ['FhirDecimalBuilder'];
      case 'when':
      case 'whenX':
        return ['PeriodBuilder', 'RangeBuilder'];
      case 'whenPeriod':
        return ['PeriodBuilder'];
      case 'whenRange':
        return ['RangeBuilder'];
      case 'rationale':
        return ['FhirStringBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RiskAssessmentPredictionBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
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
      case 'outcome':
        {
          outcome = CodeableConceptBuilder.empty();
          return;
        }
      case 'probability':
      case 'probabilityX':
      case 'probabilityDecimal':
        {
          probabilityX = FhirDecimalBuilder.empty();
          return;
        }
      case 'probabilityRange':
        {
          probabilityX = RangeBuilder.empty();
          return;
        }
      case 'qualitativeRisk':
        {
          qualitativeRisk = CodeableConceptBuilder.empty();
          return;
        }
      case 'relativeRisk':
        {
          relativeRisk = FhirDecimalBuilder.empty();
          return;
        }
      case 'when':
      case 'whenX':
      case 'whenPeriod':
        {
          whenX = PeriodBuilder.empty();
          return;
        }
      case 'whenRange':
        {
          whenX = RangeBuilder.empty();
          return;
        }
      case 'rationale':
        {
          rationale = FhirStringBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool outcome = false,
    bool probability = false,
    bool qualitativeRisk = false,
    bool relativeRisk = false,
    bool when = false,
    bool rationale = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (outcome) this.outcome = null;
    if (probability) probabilityX = null;
    if (qualitativeRisk) this.qualitativeRisk = null;
    if (relativeRisk) this.relativeRisk = null;
    if (when) whenX = null;
    if (rationale) this.rationale = null;
  }

  @override
  RiskAssessmentPredictionBuilder clone() => throw UnimplementedError();
  @override
  RiskAssessmentPredictionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? outcome,
    ProbabilityXRiskAssessmentPredictionBuilder? probabilityX,
    CodeableConceptBuilder? qualitativeRisk,
    FhirDecimalBuilder? relativeRisk,
    WhenXRiskAssessmentPredictionBuilder? whenX,
    FhirStringBuilder? rationale,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = RiskAssessmentPredictionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      outcome: outcome ?? this.outcome,
      probabilityX: probabilityX ?? this.probabilityX,
      qualitativeRisk: qualitativeRisk ?? this.qualitativeRisk,
      relativeRisk: relativeRisk ?? this.relativeRisk,
      whenX: whenX ?? this.whenX,
      rationale: rationale ?? this.rationale,
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
    if (o is! RiskAssessmentPredictionBuilder) {
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
      outcome,
      o.outcome,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      probabilityX,
      o.probabilityX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      qualitativeRisk,
      o.qualitativeRisk,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      relativeRisk,
      o.relativeRisk,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      whenX,
      o.whenX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      rationale,
      o.rationale,
    )) {
      return false;
    }
    return true;
  }
}
