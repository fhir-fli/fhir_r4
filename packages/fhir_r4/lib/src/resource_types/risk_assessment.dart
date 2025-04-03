import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [RiskAssessment]
/// An assessment of the likely outcome(s) for a patient or other subject
/// as well as the likelihood of each outcome.
class RiskAssessment extends DomainResource {
  /// Primary constructor for
  /// [RiskAssessment]

  const RiskAssessment({
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
    required this.status,
    this.method,
    this.code,
    required this.subject,
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory RiskAssessment.empty() => RiskAssessment(
        status: ObservationStatus.values.first,
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessment.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RiskAssessment';
    return RiskAssessment(
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
      basedOn: JsonParser.parseObject<Reference>(
        json,
        'basedOn',
        Reference.fromJson,
        '$objectPath.basedOn',
      ),
      parent: JsonParser.parseObject<Reference>(
        json,
        'parent',
        Reference.fromJson,
        '$objectPath.parent',
      ),
      status: JsonParser.parsePrimitive<ObservationStatus>(
        json,
        'status',
        ObservationStatus.fromJson,
        '$objectPath.status',
      )!,
      method: JsonParser.parseObject<CodeableConcept>(
        json,
        'method',
        CodeableConcept.fromJson,
        '$objectPath.method',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXRiskAssessment>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
        },
        objectPath,
      ),
      condition: JsonParser.parseObject<Reference>(
        json,
        'condition',
        Reference.fromJson,
        '$objectPath.condition',
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
      basis: (json['basis'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basis',
              },
            ),
          )
          .toList(),
      prediction: (json['prediction'] as List<dynamic>?)
          ?.map<RiskAssessmentPrediction>(
            (v) => RiskAssessmentPrediction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.prediction',
              },
            ),
          )
          .toList(),
      mitigation: JsonParser.parsePrimitive<FhirString>(
        json,
        'mitigation',
        FhirString.fromJson,
        '$objectPath.mitigation',
      ),
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
    );
  }

  /// Deserialize [RiskAssessment]
  /// from a [String] or [YamlMap] object
  factory RiskAssessment.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessment.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessment.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessment '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessment]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessment.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RiskAssessment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'RiskAssessment';

  /// [identifier]
  /// Business identifier assigned to the risk assessment.
  final List<Identifier>? identifier;

  /// [basedOn]
  /// A reference to the request that is fulfilled by this risk assessment.
  final Reference? basedOn;

  /// [parent]
  /// A reference to a resource that this risk assessment is part of, such as
  /// a Procedure.
  final Reference? parent;

  /// [status]
  /// The status of the RiskAssessment, using the same statuses as an
  /// Observation.
  final ObservationStatus status;

  /// [method]
  /// The algorithm, process or mechanism used to evaluate the risk.
  final CodeableConcept? method;

  /// [code]
  /// The type of the risk assessment performed.
  final CodeableConcept? code;

  /// [subject]
  /// The patient or group the risk assessment applies to.
  final Reference subject;

  /// [encounter]
  /// The encounter where the assessment was performed.
  final Reference? encounter;

  /// [occurrenceX]
  /// The date (and possibly time) the risk assessment was performed.
  final OccurrenceXRiskAssessment? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// [condition]
  /// For assessments or prognosis specific to a particular condition,
  /// indicates the condition being assessed.
  final Reference? condition;

  /// [performer]
  /// The provider or software application that performed the assessment.
  final Reference? performer;

  /// [reasonCode]
  /// The reason the risk assessment was performed.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Resources supporting the reason the risk assessment was performed.
  final List<Reference>? reasonReference;

  /// [basis]
  /// Indicates the source data considered as part of the assessment (for
  /// example, FamilyHistory, Observations, Procedures, Conditions, etc.).
  final List<Reference>? basis;

  /// [prediction]
  /// Describes the expected outcome for the subject.
  final List<RiskAssessmentPrediction>? prediction;

  /// [mitigation]
  /// A description of the steps that might be taken to reduce the identified
  /// risk(s).
  final FhirString? mitigation;

  /// [note]
  /// Additional comments about the risk assessment.
  final List<Annotation>? note;
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
      'basedOn',
      basedOn,
    );
    addField(
      'parent',
      parent,
    );
    addField(
      'status',
      status,
    );
    addField(
      'method',
      method,
    );
    addField(
      'code',
      code,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField(
        'occurrence${fhirType.capitalize()}',
        occurrenceX,
      );
    }

    addField(
      'condition',
      condition,
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
      'basis',
      basis,
    );
    addField(
      'prediction',
      prediction,
    );
    addField(
      'mitigation',
      mitigation,
    );
    addField(
      'note',
      note,
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
      case 'basedOn':
        if (basedOn != null) {
          fields.add(basedOn!);
        }
      case 'parent':
        if (parent != null) {
          fields.add(parent!);
        }
      case 'status':
        fields.add(status);
      case 'method':
        if (method != null) {
          fields.add(method!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            // Add all elements from passed list
            final newList = [...?contained, ...child];
            return copyWith(contained: newList);
          } else if (child is Resource) {
            // Add single element to existing list or create new list
            final newList = [
              ...?contained,
              child,
            ];
            return copyWith(contained: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            // Add all elements from passed list
            final newList = [...?identifier, ...child];
            return copyWith(identifier: newList);
          } else if (child is Identifier) {
            // Add single element to existing list or create new list
            final newList = [
              ...?identifier,
              child,
            ];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basedOn':
        {
          if (child is Reference) {
            return copyWith(basedOn: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'parent':
        {
          if (child is Reference) {
            return copyWith(parent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'status':
        {
          if (child is ObservationStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'method':
        {
          if (child is CodeableConcept) {
            return copyWith(method: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrence':
      case 'occurrenceX':
        {
          if (child is OccurrenceXRiskAssessment) {
            return copyWith(occurrenceX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(occurrenceX: child);
            }
            if (child is Period) {
              return copyWith(occurrenceX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'occurrenceFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is Period) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'condition':
        {
          if (child is Reference) {
            return copyWith(condition: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'performer':
        {
          if (child is Reference) {
            return copyWith(performer: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?reasonCode, ...child];
            return copyWith(reasonCode: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonCode,
              child,
            ];
            return copyWith(reasonCode: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?reasonReference, ...child];
            return copyWith(reasonReference: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?reasonReference,
              child,
            ];
            return copyWith(reasonReference: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'basis':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?basis, ...child];
            return copyWith(basis: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [
              ...?basis,
              child,
            ];
            return copyWith(basis: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'prediction':
        {
          if (child is List<RiskAssessmentPrediction>) {
            // Add all elements from passed list
            final newList = [...?prediction, ...child];
            return copyWith(prediction: newList);
          } else if (child is RiskAssessmentPrediction) {
            // Add single element to existing list or create new list
            final newList = [
              ...?prediction,
              child,
            ];
            return copyWith(prediction: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'mitigation':
        {
          if (child is FhirString) {
            return copyWith(mitigation: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            // Add all elements from passed list
            final newList = [...?note, ...child];
            return copyWith(note: newList);
          } else if (child is Annotation) {
            // Add single element to existing list or create new list
            final newList = [
              ...?note,
              child,
            ];
            return copyWith(note: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'identifier':
        return ['Identifier'];
      case 'basedOn':
        return ['Reference'];
      case 'parent':
        return ['Reference'];
      case 'status':
        return ['FhirCode'];
      case 'method':
        return ['CodeableConcept'];
      case 'code':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'occurrence':
      case 'occurrenceX':
        return [
          'FhirDateTime',
          'Period',
        ];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrencePeriod':
        return ['Period'];
      case 'condition':
        return ['Reference'];
      case 'performer':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'basis':
        return ['Reference'];
      case 'prediction':
        return ['RiskAssessmentPrediction'];
      case 'mitigation':
        return ['FhirString'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RiskAssessment]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  RiskAssessment createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'meta':
        {
          return copyWith(
            meta: FhirMeta.empty(),
          );
        }
      case 'implicitRules':
        {
          return copyWith(
            implicitRules: FhirUri.empty(),
          );
        }
      case 'language':
        {
          return copyWith(
            language: CommonLanguages.empty(),
          );
        }
      case 'text':
        {
          return copyWith(
            text: Narrative.empty(),
          );
        }
      case 'contained':
        {
          return copyWith(
            contained: <Resource>[],
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'identifier':
        {
          return copyWith(
            identifier: <Identifier>[],
          );
        }
      case 'basedOn':
        {
          return copyWith(
            basedOn: Reference.empty(),
          );
        }
      case 'parent':
        {
          return copyWith(
            parent: Reference.empty(),
          );
        }
      case 'status':
        {
          return copyWith(
            status: ObservationStatus.empty(),
          );
        }
      case 'method':
        {
          return copyWith(
            method: CodeableConcept.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'subject':
        {
          return copyWith(
            subject: Reference.empty(),
          );
        }
      case 'encounter':
        {
          return copyWith(
            encounter: Reference.empty(),
          );
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          return copyWith(
            occurrenceX: FhirDateTime.empty(),
          );
        }
      case 'occurrencePeriod':
        {
          return copyWith(
            occurrenceX: Period.empty(),
          );
        }
      case 'condition':
        {
          return copyWith(
            condition: Reference.empty(),
          );
        }
      case 'performer':
        {
          return copyWith(
            performer: Reference.empty(),
          );
        }
      case 'reasonCode':
        {
          return copyWith(
            reasonCode: <CodeableConcept>[],
          );
        }
      case 'reasonReference':
        {
          return copyWith(
            reasonReference: <Reference>[],
          );
        }
      case 'basis':
        {
          return copyWith(
            basis: <Reference>[],
          );
        }
      case 'prediction':
        {
          return copyWith(
            prediction: <RiskAssessmentPrediction>[],
          );
        }
      case 'mitigation':
        {
          return copyWith(
            mitigation: FhirString.empty(),
          );
        }
      case 'note':
        {
          return copyWith(
            note: <Annotation>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  RiskAssessment clear({
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
    bool method = false,
    bool code = false,
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
    return RiskAssessment(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      basedOn: basedOn ? null : this.basedOn,
      parent: parent ? null : this.parent,
      status: status,
      method: method ? null : this.method,
      code: code ? null : this.code,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      occurrenceX: occurrence ? null : occurrenceX,
      condition: condition ? null : this.condition,
      performer: performer ? null : this.performer,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      basis: basis ? null : this.basis,
      prediction: prediction ? null : this.prediction,
      mitigation: mitigation ? null : this.mitigation,
      note: note ? null : this.note,
    );
  }

  @override
  RiskAssessment clone() => throw UnimplementedError();
  @override
  RiskAssessment copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    Reference? basedOn,
    Reference? parent,
    ObservationStatus? status,
    CodeableConcept? method,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    OccurrenceXRiskAssessment? occurrenceX,
    Reference? condition,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? basis,
    List<RiskAssessmentPrediction>? prediction,
    FhirString? mitigation,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return RiskAssessment(
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
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      basedOn: basedOn?.copyWith(
            objectPath: '$newObjectPath.basedOn',
          ) ??
          this.basedOn,
      parent: parent?.copyWith(
            objectPath: '$newObjectPath.parent',
          ) ??
          this.parent,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      method: method?.copyWith(
            objectPath: '$newObjectPath.method',
          ) ??
          this.method,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXRiskAssessment? ??
          this.occurrenceX,
      condition: condition?.copyWith(
            objectPath: '$newObjectPath.condition',
          ) ??
          this.condition,
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
      basis: basis
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basis',
                ),
              )
              .toList() ??
          this.basis,
      prediction: prediction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.prediction',
                ),
              )
              .toList() ??
          this.prediction,
      mitigation: mitigation?.copyWith(
            objectPath: '$newObjectPath.mitigation',
          ) ??
          this.mitigation,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RiskAssessment) {
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
    if (!listEquals<Identifier>(
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
    if (!listEquals<Reference>(
      basis,
      o.basis,
    )) {
      return false;
    }
    if (!listEquals<RiskAssessmentPrediction>(
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
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}

/// [RiskAssessmentPrediction]
/// Describes the expected outcome for the subject.
class RiskAssessmentPrediction extends BackboneElement {
  /// Primary constructor for
  /// [RiskAssessmentPrediction]

  const RiskAssessmentPrediction({
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
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory RiskAssessmentPrediction.empty() => const RiskAssessmentPrediction();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory RiskAssessmentPrediction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'RiskAssessment.prediction';
    return RiskAssessmentPrediction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
        '$objectPath.outcome',
      ),
      probabilityX:
          JsonParser.parsePolymorphic<ProbabilityXRiskAssessmentPrediction>(
        json,
        {
          'probabilityDecimal': FhirDecimal.fromJson,
          'probabilityRange': Range.fromJson,
        },
        objectPath,
      ),
      qualitativeRisk: JsonParser.parseObject<CodeableConcept>(
        json,
        'qualitativeRisk',
        CodeableConcept.fromJson,
        '$objectPath.qualitativeRisk',
      ),
      relativeRisk: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'relativeRisk',
        FhirDecimal.fromJson,
        '$objectPath.relativeRisk',
      ),
      whenX: JsonParser.parsePolymorphic<WhenXRiskAssessmentPrediction>(
        json,
        {
          'whenPeriod': Period.fromJson,
          'whenRange': Range.fromJson,
        },
        objectPath,
      ),
      rationale: JsonParser.parsePrimitive<FhirString>(
        json,
        'rationale',
        FhirString.fromJson,
        '$objectPath.rationale',
      ),
    );
  }

  /// Deserialize [RiskAssessmentPrediction]
  /// from a [String] or [YamlMap] object
  factory RiskAssessmentPrediction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return RiskAssessmentPrediction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return RiskAssessmentPrediction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'RiskAssessmentPrediction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [RiskAssessmentPrediction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory RiskAssessmentPrediction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return RiskAssessmentPrediction.fromJson(json);
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
  final CodeableConcept? outcome;

  /// [probabilityX]
  /// Indicates how likely the outcome is (in the specified timeframe).
  final ProbabilityXRiskAssessmentPrediction? probabilityX;

  /// Getter for [probabilityDecimal] as a FhirDecimal
  FhirDecimal? get probabilityDecimal => probabilityX?.isAs<FhirDecimal>();

  /// Getter for [probabilityRange] as a Range
  Range? get probabilityRange => probabilityX?.isAs<Range>();

  /// [qualitativeRisk]
  /// Indicates how likely the outcome is (in the specified timeframe),
  /// expressed as a qualitative value (e.g. low, medium, or high).
  final CodeableConcept? qualitativeRisk;

  /// [relativeRisk]
  /// Indicates the risk for this particular subject (with their specific
  /// characteristics) divided by the risk of the population in general.
  /// (Numbers greater than 1 = higher risk than the population, numbers less
  /// than 1 = lower risk.).
  final FhirDecimal? relativeRisk;

  /// [whenX]
  /// Indicates the period of time or age range of the subject to which the
  /// specified probability applies.
  final WhenXRiskAssessmentPrediction? whenX;

  /// Getter for [whenPeriod] as a Period
  Period? get whenPeriod => whenX?.isAs<Period>();

  /// Getter for [whenRange] as a Range
  Range? get whenRange => whenX?.isAs<Range>();

  /// [rationale]
  /// Additional information explaining the basis for the prediction.
  final FhirString? rationale;
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

    addField(
      'id',
      id,
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
      'outcome',
      outcome,
    );
    if (probabilityX != null) {
      final fhirType = probabilityX!.fhirType;
      addField(
        'probability${fhirType.capitalize()}',
        probabilityX,
      );
    }

    addField(
      'qualitativeRisk',
      qualitativeRisk,
    );
    addField(
      'relativeRisk',
      relativeRisk,
    );
    if (whenX != null) {
      final fhirType = whenX!.fhirType;
      addField(
        'when${fhirType.capitalize()}',
        whenX,
      );
    }

    addField(
      'rationale',
      rationale,
    );
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
        fields.add(probabilityX!);
      case 'probabilityX':
        fields.add(probabilityX!);
      case 'probabilityDecimal':
        if (probabilityX is FhirDecimal) {
          fields.add(probabilityX!);
        }
      case 'probabilityRange':
        if (probabilityX is Range) {
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
        fields.add(whenX!);
      case 'whenX':
        fields.add(whenX!);
      case 'whenPeriod':
        if (whenX is Period) {
          fields.add(whenX!);
        }
      case 'whenRange':
        if (whenX is Range) {
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
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $childName');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?extension_, ...child];
            return copyWith(extension_: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?extension_,
              child,
            ];
            return copyWith(extension_: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            // Add all elements from passed list
            final newList = [...?modifierExtension, ...child];
            return copyWith(modifierExtension: newList);
          } else if (child is FhirExtension) {
            // Add single element to existing list or create new list
            final newList = [
              ...?modifierExtension,
              child,
            ];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'outcome':
        {
          if (child is CodeableConcept) {
            return copyWith(outcome: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'probability':
      case 'probabilityX':
        {
          if (child is ProbabilityXRiskAssessmentPrediction) {
            return copyWith(probabilityX: child);
          } else {
            if (child is FhirDecimal) {
              return copyWith(probabilityX: child);
            }
            if (child is Range) {
              return copyWith(probabilityX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'probabilityFhirDecimal':
        {
          if (child is FhirDecimal) {
            return copyWith(probabilityX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'probabilityRange':
        {
          if (child is Range) {
            return copyWith(probabilityX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'qualitativeRisk':
        {
          if (child is CodeableConcept) {
            return copyWith(qualitativeRisk: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'relativeRisk':
        {
          if (child is FhirDecimal) {
            return copyWith(relativeRisk: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'when':
      case 'whenX':
        {
          if (child is WhenXRiskAssessmentPrediction) {
            return copyWith(whenX: child);
          } else {
            if (child is Period) {
              return copyWith(whenX: child);
            }
            if (child is Range) {
              return copyWith(whenX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'whenPeriod':
        {
          if (child is Period) {
            return copyWith(whenX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'whenRange':
        {
          if (child is Range) {
            return copyWith(whenX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'rationale':
        {
          if (child is FhirString) {
            return copyWith(rationale: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
        return ['FhirString'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'outcome':
        return ['CodeableConcept'];
      case 'probability':
      case 'probabilityX':
        return [
          'FhirDecimal',
          'Range',
        ];
      case 'probabilityDecimal':
        return ['FhirDecimal'];
      case 'probabilityRange':
        return ['Range'];
      case 'qualitativeRisk':
        return ['CodeableConcept'];
      case 'relativeRisk':
        return ['FhirDecimal'];
      case 'when':
      case 'whenX':
        return [
          'Period',
          'Range',
        ];
      case 'whenPeriod':
        return ['Period'];
      case 'whenRange':
        return ['Range'];
      case 'rationale':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [RiskAssessmentPrediction]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  RiskAssessmentPrediction createProperty(
    String propertyName,
  ) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(
            id: FhirString.empty(),
          );
        }
      case 'extension':
        {
          return copyWith(
            extension_: <FhirExtension>[],
          );
        }
      case 'modifierExtension':
        {
          return copyWith(
            modifierExtension: <FhirExtension>[],
          );
        }
      case 'outcome':
        {
          return copyWith(
            outcome: CodeableConcept.empty(),
          );
        }
      case 'probability':
      case 'probabilityX':
      case 'probabilityDecimal':
        {
          return copyWith(
            probabilityX: FhirDecimal.empty(),
          );
        }
      case 'probabilityRange':
        {
          return copyWith(
            probabilityX: Range.empty(),
          );
        }
      case 'qualitativeRisk':
        {
          return copyWith(
            qualitativeRisk: CodeableConcept.empty(),
          );
        }
      case 'relativeRisk':
        {
          return copyWith(
            relativeRisk: FhirDecimal.empty(),
          );
        }
      case 'when':
      case 'whenX':
      case 'whenPeriod':
        {
          return copyWith(
            whenX: Period.empty(),
          );
        }
      case 'whenRange':
        {
          return copyWith(
            whenX: Range.empty(),
          );
        }
      case 'rationale':
        {
          return copyWith(
            rationale: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  RiskAssessmentPrediction clear({
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
    return RiskAssessmentPrediction(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      outcome: outcome ? null : this.outcome,
      probabilityX: probability ? null : probabilityX,
      qualitativeRisk: qualitativeRisk ? null : this.qualitativeRisk,
      relativeRisk: relativeRisk ? null : this.relativeRisk,
      whenX: when ? null : whenX,
      rationale: rationale ? null : this.rationale,
    );
  }

  @override
  RiskAssessmentPrediction clone() => throw UnimplementedError();
  @override
  RiskAssessmentPrediction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? outcome,
    ProbabilityXRiskAssessmentPrediction? probabilityX,
    CodeableConcept? qualitativeRisk,
    FhirDecimal? relativeRisk,
    WhenXRiskAssessmentPrediction? whenX,
    FhirString? rationale,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return RiskAssessmentPrediction(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      probabilityX: probabilityX?.copyWith(
            objectPath: '$newObjectPath.probabilityX',
          ) as ProbabilityXRiskAssessmentPrediction? ??
          this.probabilityX,
      qualitativeRisk: qualitativeRisk?.copyWith(
            objectPath: '$newObjectPath.qualitativeRisk',
          ) ??
          this.qualitativeRisk,
      relativeRisk: relativeRisk?.copyWith(
            objectPath: '$newObjectPath.relativeRisk',
          ) ??
          this.relativeRisk,
      whenX: whenX?.copyWith(
            objectPath: '$newObjectPath.whenX',
          ) as WhenXRiskAssessmentPrediction? ??
          this.whenX,
      rationale: rationale?.copyWith(
            objectPath: '$newObjectPath.rationale',
          ) ??
          this.rationale,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! RiskAssessmentPrediction) {
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
