import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationEvaluation]
/// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in
/// relation to those recommendations.
class ImmunizationEvaluation extends DomainResource {
  /// Primary constructor for
  /// [ImmunizationEvaluation]

  const ImmunizationEvaluation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.patient,
    this.date,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.series,
    this.doseNumberX,
    this.seriesDosesX,
  }) : super(
          objectPath: 'ImmunizationEvaluation',
          resourceType: R4ResourceType.ImmunizationEvaluation,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ImmunizationEvaluation.empty() => ImmunizationEvaluation(
        status: ImmunizationEvaluationStatusCodes.values.first,
        patient: Reference.empty(),
        targetDisease: CodeableConcept.empty(),
        immunizationEvent: Reference.empty(),
        doseStatus: CodeableConcept.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ImmunizationEvaluation';
    return ImmunizationEvaluation(
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
      status: JsonParser.parsePrimitive<ImmunizationEvaluationStatusCodes>(
        json,
        'status',
        ImmunizationEvaluationStatusCodes.fromJson,
        '$objectPath.status',
      )!,
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
        '$objectPath.date',
      ),
      authority: JsonParser.parseObject<Reference>(
        json,
        'authority',
        Reference.fromJson,
        '$objectPath.authority',
      ),
      targetDisease: JsonParser.parseObject<CodeableConcept>(
        json,
        'targetDisease',
        CodeableConcept.fromJson,
        '$objectPath.targetDisease',
      )!,
      immunizationEvent: JsonParser.parseObject<Reference>(
        json,
        'immunizationEvent',
        Reference.fromJson,
        '$objectPath.immunizationEvent',
      )!,
      doseStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'doseStatus',
        CodeableConcept.fromJson,
        '$objectPath.doseStatus',
      )!,
      doseStatusReason: (json['doseStatusReason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.doseStatusReason',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
        '$objectPath.description',
      ),
      series: JsonParser.parsePrimitive<FhirString>(
        json,
        'series',
        FhirString.fromJson,
        '$objectPath.series',
      ),
      doseNumberX:
          JsonParser.parsePolymorphic<DoseNumberXImmunizationEvaluation>(
        json,
        {
          'doseNumberPositiveInt': FhirPositiveInt.fromJson,
          'doseNumberString': FhirString.fromJson,
        },
        objectPath,
      ),
      seriesDosesX:
          JsonParser.parsePolymorphic<SeriesDosesXImmunizationEvaluation>(
        json,
        {
          'seriesDosesPositiveInt': FhirPositiveInt.fromJson,
          'seriesDosesString': FhirString.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [ImmunizationEvaluation]
  /// from a [String] or [YamlMap] object
  factory ImmunizationEvaluation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationEvaluation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationEvaluation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationEvaluation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationEvaluation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEvaluation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ImmunizationEvaluation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEvaluation';

  /// [identifier]
  /// A unique identifier assigned to this immunization evaluation record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  final ImmunizationEvaluationStatusCodes status;

  /// [patient]
  /// The individual for whom the evaluation is being done.
  final Reference patient;

  /// [date]
  /// The date the evaluation of the vaccine administration event was
  /// performed.
  final FhirDateTime? date;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being evaluated against.
  final CodeableConcept targetDisease;

  /// [immunizationEvent]
  /// The vaccine administration event being evaluated.
  final Reference immunizationEvent;

  /// [doseStatus]
  /// Indicates if the dose is valid or not valid with respect to the
  /// published recommendations.
  final CodeableConcept doseStatus;

  /// [doseStatusReason]
  /// Provides an explanation as to why the vaccine administration event is
  /// valid or not relative to the published recommendations.
  final List<CodeableConcept>? doseStatusReason;

  /// [description]
  /// Additional information about the evaluation.
  final FhirString? description;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// [doseNumberX]
  /// Nominal position in a series.
  final DoseNumberXImmunizationEvaluation? doseNumberX;

  /// Getter for [doseNumberPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get doseNumberPositiveInt =>
      doseNumberX?.isAs<FhirPositiveInt>();

  /// Getter for [doseNumberString] as a FhirString
  FhirString? get doseNumberString => doseNumberX?.isAs<FhirString>();

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationEvaluation? seriesDosesX;

  /// Getter for [seriesDosesPositiveInt] as a FhirPositiveInt
  FhirPositiveInt? get seriesDosesPositiveInt =>
      seriesDosesX?.isAs<FhirPositiveInt>();

  /// Getter for [seriesDosesString] as a FhirString
  FhirString? get seriesDosesString => seriesDosesX?.isAs<FhirString>();
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
      'status',
      status,
    );
    addField(
      'patient',
      patient,
    );
    addField(
      'date',
      date,
    );
    addField(
      'authority',
      authority,
    );
    addField(
      'targetDisease',
      targetDisease,
    );
    addField(
      'immunizationEvent',
      immunizationEvent,
    );
    addField(
      'doseStatus',
      doseStatus,
    );
    addField(
      'doseStatusReason',
      doseStatusReason,
    );
    addField(
      'description',
      description,
    );
    addField(
      'series',
      series,
    );
    if (doseNumberX != null) {
      final fhirType = doseNumberX!.fhirType;
      addField(
        'doseNumber${fhirType.capitalize()}',
        doseNumberX,
      );
    }

    if (seriesDosesX != null) {
      final fhirType = seriesDosesX!.fhirType;
      addField(
        'seriesDoses${fhirType.capitalize()}',
        seriesDosesX,
      );
    }

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
      'patient',
      'date',
      'authority',
      'targetDisease',
      'immunizationEvent',
      'doseStatus',
      'doseStatusReason',
      'description',
      'series',
      'doseNumberX',
      'seriesDosesX',
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
        fields.add(status);
      case 'patient':
        fields.add(patient);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'authority':
        if (authority != null) {
          fields.add(authority!);
        }
      case 'targetDisease':
        fields.add(targetDisease);
      case 'immunizationEvent':
        fields.add(immunizationEvent);
      case 'doseStatus':
        fields.add(doseStatus);
      case 'doseStatusReason':
        if (doseStatusReason != null) {
          fields.addAll(doseStatusReason!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'series':
        if (series != null) {
          fields.add(series!);
        }
      case 'doseNumber':
        fields.add(doseNumberX!);
      case 'doseNumberX':
        fields.add(doseNumberX!);
      case 'doseNumberPositiveInt':
        if (doseNumberX is FhirPositiveInt) {
          fields.add(doseNumberX!);
        }
      case 'doseNumberString':
        if (doseNumberX is FhirString) {
          fields.add(doseNumberX!);
        }
      case 'seriesDoses':
        fields.add(seriesDosesX!);
      case 'seriesDosesX':
        fields.add(seriesDosesX!);
      case 'seriesDosesPositiveInt':
        if (seriesDosesX is FhirPositiveInt) {
          fields.add(seriesDosesX!);
        }
      case 'seriesDosesString':
        if (seriesDosesX is FhirString) {
          fields.add(seriesDosesX!);
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
      case 'status':
        {
          if (child is ImmunizationEvaluationStatusCodes) {
            return copyWith(status: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'date':
        {
          if (child is FhirDateTime) {
            return copyWith(date: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'authority':
        {
          if (child is Reference) {
            return copyWith(authority: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'targetDisease':
        {
          if (child is CodeableConcept) {
            return copyWith(targetDisease: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'immunizationEvent':
        {
          if (child is Reference) {
            return copyWith(immunizationEvent: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(doseStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseStatusReason':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?doseStatusReason, ...child];
            return copyWith(doseStatusReason: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [
              ...?doseStatusReason,
              child,
            ];
            return copyWith(doseStatusReason: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'series':
        {
          if (child is FhirString) {
            return copyWith(series: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumber':
      case 'doseNumberX':
        {
          if (child is DoseNumberXImmunizationEvaluation) {
            return copyWith(doseNumberX: child);
          } else {
            if (child is FhirPositiveInt) {
              return copyWith(doseNumberX: child);
            }
            if (child is FhirString) {
              return copyWith(doseNumberX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'doseNumberFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(doseNumberX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'doseNumberFhirString':
        {
          if (child is FhirString) {
            return copyWith(doseNumberX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDoses':
      case 'seriesDosesX':
        {
          if (child is SeriesDosesXImmunizationEvaluation) {
            return copyWith(seriesDosesX: child);
          } else {
            if (child is FhirPositiveInt) {
              return copyWith(seriesDosesX: child);
            }
            if (child is FhirString) {
              return copyWith(seriesDosesX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'seriesDosesFhirPositiveInt':
        {
          if (child is FhirPositiveInt) {
            return copyWith(seriesDosesX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'seriesDosesFhirString':
        {
          if (child is FhirString) {
            return copyWith(seriesDosesX: child);
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
      case 'status':
        return ['FhirCode'];
      case 'patient':
        return ['Reference'];
      case 'date':
        return ['FhirDateTime'];
      case 'authority':
        return ['Reference'];
      case 'targetDisease':
        return ['CodeableConcept'];
      case 'immunizationEvent':
        return ['Reference'];
      case 'doseStatus':
        return ['CodeableConcept'];
      case 'doseStatusReason':
        return ['CodeableConcept'];
      case 'description':
        return ['FhirString'];
      case 'series':
        return ['FhirString'];
      case 'doseNumber':
      case 'doseNumberX':
        return [
          'FhirPositiveInt',
          'FhirString',
        ];
      case 'doseNumberPositiveInt':
        return ['FhirPositiveInt'];
      case 'doseNumberString':
        return ['FhirString'];
      case 'seriesDoses':
      case 'seriesDosesX':
        return [
          'FhirPositiveInt',
          'FhirString',
        ];
      case 'seriesDosesPositiveInt':
        return ['FhirPositiveInt'];
      case 'seriesDosesString':
        return ['FhirString'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ImmunizationEvaluation]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ImmunizationEvaluation createProperty(
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
      case 'status':
        {
          return copyWith(
            status: ImmunizationEvaluationStatusCodes.empty(),
          );
        }
      case 'patient':
        {
          return copyWith(
            patient: Reference.empty(),
          );
        }
      case 'date':
        {
          return copyWith(
            date: FhirDateTime.empty(),
          );
        }
      case 'authority':
        {
          return copyWith(
            authority: Reference.empty(),
          );
        }
      case 'targetDisease':
        {
          return copyWith(
            targetDisease: CodeableConcept.empty(),
          );
        }
      case 'immunizationEvent':
        {
          return copyWith(
            immunizationEvent: Reference.empty(),
          );
        }
      case 'doseStatus':
        {
          return copyWith(
            doseStatus: CodeableConcept.empty(),
          );
        }
      case 'doseStatusReason':
        {
          return copyWith(
            doseStatusReason: <CodeableConcept>[],
          );
        }
      case 'description':
        {
          return copyWith(
            description: FhirString.empty(),
          );
        }
      case 'series':
        {
          return copyWith(
            series: FhirString.empty(),
          );
        }
      case 'doseNumber':
      case 'doseNumberX':
      case 'doseNumberPositiveInt':
        {
          return copyWith(
            doseNumberX: FhirPositiveInt.empty(),
          );
        }
      case 'doseNumberString':
        {
          return copyWith(
            doseNumberX: FhirString.empty(),
          );
        }
      case 'seriesDoses':
      case 'seriesDosesX':
      case 'seriesDosesPositiveInt':
        {
          return copyWith(
            seriesDosesX: FhirPositiveInt.empty(),
          );
        }
      case 'seriesDosesString':
        {
          return copyWith(
            seriesDosesX: FhirString.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ImmunizationEvaluation clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool date = false,
    bool authority = false,
    bool doseStatusReason = false,
    bool description = false,
    bool series = false,
    bool doseNumber = false,
    bool seriesDoses = false,
  }) {
    return ImmunizationEvaluation(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      status: status,
      patient: patient,
      date: date ? null : this.date,
      authority: authority ? null : this.authority,
      targetDisease: targetDisease,
      immunizationEvent: immunizationEvent,
      doseStatus: doseStatus,
      doseStatusReason: doseStatusReason ? null : this.doseStatusReason,
      description: description ? null : this.description,
      series: series ? null : this.series,
      doseNumberX: doseNumber ? null : doseNumberX,
      seriesDosesX: seriesDoses ? null : seriesDosesX,
    );
  }

  @override
  ImmunizationEvaluation clone() => throw UnimplementedError();
  @override
  ImmunizationEvaluation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImmunizationEvaluationStatusCodes? status,
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
    FhirString? description,
    FhirString? series,
    DoseNumberXImmunizationEvaluation? doseNumberX,
    SeriesDosesXImmunizationEvaluation? seriesDosesX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ImmunizationEvaluation(
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
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      authority: authority?.copyWith(
            objectPath: '$newObjectPath.authority',
          ) ??
          this.authority,
      targetDisease: targetDisease?.copyWith(
            objectPath: '$newObjectPath.targetDisease',
          ) ??
          this.targetDisease,
      immunizationEvent: immunizationEvent?.copyWith(
            objectPath: '$newObjectPath.immunizationEvent',
          ) ??
          this.immunizationEvent,
      doseStatus: doseStatus?.copyWith(
            objectPath: '$newObjectPath.doseStatus',
          ) ??
          this.doseStatus,
      doseStatusReason: doseStatusReason
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.doseStatusReason',
                ),
              )
              .toList() ??
          this.doseStatusReason,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      series: series?.copyWith(
            objectPath: '$newObjectPath.series',
          ) ??
          this.series,
      doseNumberX: doseNumberX?.copyWith(
            objectPath: '$newObjectPath.doseNumberX',
          ) as DoseNumberXImmunizationEvaluation? ??
          this.doseNumberX,
      seriesDosesX: seriesDosesX?.copyWith(
            objectPath: '$newObjectPath.seriesDosesX',
          ) as SeriesDosesXImmunizationEvaluation? ??
          this.seriesDosesX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ImmunizationEvaluation) {
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
      status,
      o.status,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      date,
      o.date,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      authority,
      o.authority,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      targetDisease,
      o.targetDisease,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      immunizationEvent,
      o.immunizationEvent,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseStatus,
      o.doseStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      doseStatusReason,
      o.doseStatusReason,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      series,
      o.series,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      doseNumberX,
      o.doseNumberX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      seriesDosesX,
      o.seriesDosesX,
    )) {
      return false;
    }
    return true;
  }
}
