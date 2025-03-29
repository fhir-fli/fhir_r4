import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Condition]
/// A clinical condition, problem, diagnosis, or other event, situation,
/// issue, or clinical concept that has risen to a level of concern.
class Condition extends DomainResource {
  /// Primary constructor for
  /// [Condition]

  const Condition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetX,
    this.abatementX,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  }) : super(
          objectPath: 'Condition',
          resourceType: R4ResourceType.Condition,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory Condition.empty() => Condition(
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Condition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition';
    return Condition(
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
      clinicalStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'clinicalStatus',
        CodeableConcept.fromJson,
        '$objectPath.clinicalStatus',
      ),
      verificationStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'verificationStatus',
        CodeableConcept.fromJson,
        '$objectPath.verificationStatus',
      ),
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      severity: JsonParser.parseObject<CodeableConcept>(
        json,
        'severity',
        CodeableConcept.fromJson,
        '$objectPath.severity',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
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
      onsetX: JsonParser.parsePolymorphic<OnsetXCondition>(
        json,
        {
          'onsetDateTime': FhirDateTime.fromJson,
          'onsetAge': Age.fromJson,
          'onsetPeriod': Period.fromJson,
          'onsetRange': Range.fromJson,
          'onsetString': FhirString.fromJson,
        },
        objectPath,
      ),
      abatementX: JsonParser.parsePolymorphic<AbatementXCondition>(
        json,
        {
          'abatementDateTime': FhirDateTime.fromJson,
          'abatementAge': Age.fromJson,
          'abatementPeriod': Period.fromJson,
          'abatementRange': Range.fromJson,
          'abatementString': FhirString.fromJson,
        },
        objectPath,
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recordedDate',
        FhirDateTime.fromJson,
        '$objectPath.recordedDate',
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
        '$objectPath.recorder',
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
        '$objectPath.asserter',
      ),
      stage: (json['stage'] as List<dynamic>?)
          ?.map<ConditionStage>(
            (v) => ConditionStage.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stage',
              },
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<ConditionEvidence>(
            (v) => ConditionEvidence.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evidence',
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
    );
  }

  /// Deserialize [Condition]
  /// from a [String] or [YamlMap] object
  factory Condition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Condition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Condition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Condition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Condition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Condition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Condition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Condition';

  /// [identifier]
  /// Business identifiers assigned to this condition by the performer or
  /// other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the condition.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus]
  /// The verification status to support the clinical status of the
  /// condition.
  final CodeableConcept? verificationStatus;

  /// [category]
  /// A category assigned to the condition.
  final List<CodeableConcept>? category;

  /// [severity]
  /// A subjective assessment of the severity of the condition as evaluated
  /// by the clinician.
  final CodeableConcept? severity;

  /// [code]
  /// Identification of the condition, problem or diagnosis.
  final CodeableConcept? code;

  /// [bodySite]
  /// The anatomical location where this condition manifests itself.
  final List<CodeableConcept>? bodySite;

  /// [subject]
  /// Indicates the patient or group who the condition record is associated
  /// with.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [onsetX]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  final OnsetXCondition? onsetX;

  /// Getter for [onsetDateTime] as a FhirDateTime
  FhirDateTime? get onsetDateTime => onsetX?.isAs<FhirDateTime>();

  /// Getter for [onsetAge] as a Age
  Age? get onsetAge => onsetX?.isAs<Age>();

  /// Getter for [onsetPeriod] as a Period
  Period? get onsetPeriod => onsetX?.isAs<Period>();

  /// Getter for [onsetRange] as a Range
  Range? get onsetRange => onsetX?.isAs<Range>();

  /// Getter for [onsetString] as a FhirString
  FhirString? get onsetString => onsetX?.isAs<FhirString>();

  /// [abatementX]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  final AbatementXCondition? abatementX;

  /// Getter for [abatementDateTime] as a FhirDateTime
  FhirDateTime? get abatementDateTime => abatementX?.isAs<FhirDateTime>();

  /// Getter for [abatementAge] as a Age
  Age? get abatementAge => abatementX?.isAs<Age>();

  /// Getter for [abatementPeriod] as a Period
  Period? get abatementPeriod => abatementX?.isAs<Period>();

  /// Getter for [abatementRange] as a Range
  Range? get abatementRange => abatementX?.isAs<Range>();

  /// Getter for [abatementString] as a FhirString
  FhirString? get abatementString => abatementX?.isAs<FhirString>();

  /// [recordedDate]
  /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  final FhirDateTime? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// Individual who is making the condition statement.
  final Reference? asserter;

  /// [stage]
  /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  final List<ConditionStage>? stage;

  /// [evidence]
  /// Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  /// refuted the condition.
  final List<ConditionEvidence>? evidence;

  /// [note]
  /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis
  /// and prognosis.
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
      'clinicalStatus',
      clinicalStatus,
    );
    addField(
      'verificationStatus',
      verificationStatus,
    );
    addField(
      'category',
      category,
    );
    addField(
      'severity',
      severity,
    );
    addField(
      'code',
      code,
    );
    addField(
      'bodySite',
      bodySite,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField(
        'onset${fhirType.capitalize()}',
        onsetX,
      );
    }

    if (abatementX != null) {
      final fhirType = abatementX!.fhirType;
      addField(
        'abatement${fhirType.capitalize()}',
        abatementX,
      );
    }

    addField(
      'recordedDate',
      recordedDate,
    );
    addField(
      'recorder',
      recorder,
    );
    addField(
      'asserter',
      asserter,
    );
    addField(
      'stage',
      stage,
    );
    addField(
      'evidence',
      evidence,
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
      'clinicalStatus',
      'verificationStatus',
      'category',
      'severity',
      'code',
      'bodySite',
      'subject',
      'encounter',
      'onsetX',
      'abatementX',
      'recordedDate',
      'recorder',
      'asserter',
      'stage',
      'evidence',
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
      case 'clinicalStatus':
        if (clinicalStatus != null) {
          fields.add(clinicalStatus!);
        }
      case 'verificationStatus':
        if (verificationStatus != null) {
          fields.add(verificationStatus!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'onset':
        fields.add(onsetX!);
      case 'onsetX':
        fields.add(onsetX!);
      case 'onsetDateTime':
        if (onsetX is FhirDateTime) {
          fields.add(onsetX!);
        }
      case 'onsetAge':
        if (onsetX is Age) {
          fields.add(onsetX!);
        }
      case 'onsetPeriod':
        if (onsetX is Period) {
          fields.add(onsetX!);
        }
      case 'onsetRange':
        if (onsetX is Range) {
          fields.add(onsetX!);
        }
      case 'onsetString':
        if (onsetX is FhirString) {
          fields.add(onsetX!);
        }
      case 'abatement':
        fields.add(abatementX!);
      case 'abatementX':
        fields.add(abatementX!);
      case 'abatementDateTime':
        if (abatementX is FhirDateTime) {
          fields.add(abatementX!);
        }
      case 'abatementAge':
        if (abatementX is Age) {
          fields.add(abatementX!);
        }
      case 'abatementPeriod':
        if (abatementX is Period) {
          fields.add(abatementX!);
        }
      case 'abatementRange':
        if (abatementX is Range) {
          fields.add(abatementX!);
        }
      case 'abatementString':
        if (abatementX is FhirString) {
          fields.add(abatementX!);
        }
      case 'recordedDate':
        if (recordedDate != null) {
          fields.add(recordedDate!);
        }
      case 'recorder':
        if (recorder != null) {
          fields.add(recorder!);
        }
      case 'asserter':
        if (asserter != null) {
          fields.add(asserter!);
        }
      case 'stage':
        if (stage != null) {
          fields.addAll(stage!);
        }
      case 'evidence':
        if (evidence != null) {
          fields.addAll(evidence!);
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
            final newList = [...?contained, child];
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
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
            final newList = [...?identifier, child];
            return copyWith(identifier: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'clinicalStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(clinicalStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'verificationStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(verificationStatus: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?category, ...child];
            return copyWith(category: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?category, child];
            return copyWith(category: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'severity':
        {
          if (child is CodeableConcept) {
            return copyWith(severity: child);
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
      case 'bodySite':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?bodySite, ...child];
            return copyWith(bodySite: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?bodySite, child];
            return copyWith(bodySite: newList);
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
      case 'onsetX':
        {
          if (child is OnsetXCondition) {
            return copyWith(onsetX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(onsetX: child);
            }
            if (child is Age) {
              return copyWith(onsetX: child);
            }
            if (child is Period) {
              return copyWith(onsetX: child);
            }
            if (child is Range) {
              return copyWith(onsetX: child);
            }
            if (child is FhirString) {
              return copyWith(onsetX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onsetFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetAge':
        {
          if (child is Age) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetPeriod':
        {
          if (child is Period) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetRange':
        {
          if (child is Range) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetFhirString':
        {
          if (child is FhirString) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementX':
        {
          if (child is AbatementXCondition) {
            return copyWith(abatementX: child);
          } else {
            if (child is FhirDateTime) {
              return copyWith(abatementX: child);
            }
            if (child is Age) {
              return copyWith(abatementX: child);
            }
            if (child is Period) {
              return copyWith(abatementX: child);
            }
            if (child is Range) {
              return copyWith(abatementX: child);
            }
            if (child is FhirString) {
              return copyWith(abatementX: child);
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abatementFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(abatementX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementAge':
        {
          if (child is Age) {
            return copyWith(abatementX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementPeriod':
        {
          if (child is Period) {
            return copyWith(abatementX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementRange':
        {
          if (child is Range) {
            return copyWith(abatementX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementFhirString':
        {
          if (child is FhirString) {
            return copyWith(abatementX: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recordedDate':
        {
          if (child is FhirDateTime) {
            return copyWith(recordedDate: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorder':
        {
          if (child is Reference) {
            return copyWith(recorder: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asserter':
        {
          if (child is Reference) {
            return copyWith(asserter: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'stage':
        {
          if (child is List<ConditionStage>) {
            // Add all elements from passed list
            final newList = [...?stage, ...child];
            return copyWith(stage: newList);
          } else if (child is ConditionStage) {
            // Add single element to existing list or create new list
            final newList = [...?stage, child];
            return copyWith(stage: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'evidence':
        {
          if (child is List<ConditionEvidence>) {
            // Add all elements from passed list
            final newList = [...?evidence, ...child];
            return copyWith(evidence: newList);
          } else if (child is ConditionEvidence) {
            // Add single element to existing list or create new list
            final newList = [...?evidence, child];
            return copyWith(evidence: newList);
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
            final newList = [...?note, child];
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
      case 'clinicalStatus':
        return ['CodeableConcept'];
      case 'verificationStatus':
        return ['CodeableConcept'];
      case 'category':
        return ['CodeableConcept'];
      case 'severity':
        return ['CodeableConcept'];
      case 'code':
        return ['CodeableConcept'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'onset':
      case 'onsetX':
        return ['FhirDateTime', 'Age', 'Period', 'Range', 'FhirString'];
      case 'onsetDateTime':
        return ['FhirDateTime'];
      case 'onsetAge':
        return ['Age'];
      case 'onsetPeriod':
        return ['Period'];
      case 'onsetRange':
        return ['Range'];
      case 'onsetString':
        return ['FhirString'];
      case 'abatement':
      case 'abatementX':
        return ['FhirDateTime', 'Age', 'Period', 'Range', 'FhirString'];
      case 'abatementDateTime':
        return ['FhirDateTime'];
      case 'abatementAge':
        return ['Age'];
      case 'abatementPeriod':
        return ['Period'];
      case 'abatementRange':
        return ['Range'];
      case 'abatementString':
        return ['FhirString'];
      case 'recordedDate':
        return ['FhirDateTime'];
      case 'recorder':
        return ['Reference'];
      case 'asserter':
        return ['Reference'];
      case 'stage':
        return ['ConditionStage'];
      case 'evidence':
        return ['ConditionEvidence'];
      case 'note':
        return ['Annotation'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [Condition]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  Condition createProperty(
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
      case 'clinicalStatus':
        {
          return copyWith(
            clinicalStatus: CodeableConcept.empty(),
          );
        }
      case 'verificationStatus':
        {
          return copyWith(
            verificationStatus: CodeableConcept.empty(),
          );
        }
      case 'category':
        {
          return copyWith(
            category: <CodeableConcept>[],
          );
        }
      case 'severity':
        {
          return copyWith(
            severity: CodeableConcept.empty(),
          );
        }
      case 'code':
        {
          return copyWith(
            code: CodeableConcept.empty(),
          );
        }
      case 'bodySite':
        {
          return copyWith(
            bodySite: <CodeableConcept>[],
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
      case 'onset':
      case 'onsetX':
      case 'onsetDateTime':
        {
          return copyWith(
            onsetX: FhirDateTime.empty(),
          );
        }
      case 'onsetAge':
        {
          return copyWith(
            onsetX: Age.empty(),
          );
        }
      case 'onsetPeriod':
        {
          return copyWith(
            onsetX: Period.empty(),
          );
        }
      case 'onsetRange':
        {
          return copyWith(
            onsetX: Range.empty(),
          );
        }
      case 'onsetString':
        {
          return copyWith(
            onsetX: FhirString.empty(),
          );
        }
      case 'abatement':
      case 'abatementX':
      case 'abatementDateTime':
        {
          return copyWith(
            abatementX: FhirDateTime.empty(),
          );
        }
      case 'abatementAge':
        {
          return copyWith(
            abatementX: Age.empty(),
          );
        }
      case 'abatementPeriod':
        {
          return copyWith(
            abatementX: Period.empty(),
          );
        }
      case 'abatementRange':
        {
          return copyWith(
            abatementX: Range.empty(),
          );
        }
      case 'abatementString':
        {
          return copyWith(
            abatementX: FhirString.empty(),
          );
        }
      case 'recordedDate':
        {
          return copyWith(
            recordedDate: FhirDateTime.empty(),
          );
        }
      case 'recorder':
        {
          return copyWith(
            recorder: Reference.empty(),
          );
        }
      case 'asserter':
        {
          return copyWith(
            asserter: Reference.empty(),
          );
        }
      case 'stage':
        {
          return copyWith(
            stage: <ConditionStage>[],
          );
        }
      case 'evidence':
        {
          return copyWith(
            evidence: <ConditionEvidence>[],
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
  Condition clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool clinicalStatus = false,
    bool verificationStatus = false,
    bool category = false,
    bool severity = false,
    bool code = false,
    bool bodySite = false,
    bool encounter = false,
    bool onset = false,
    bool abatement = false,
    bool recordedDate = false,
    bool recorder = false,
    bool asserter = false,
    bool stage = false,
    bool evidence = false,
    bool note = false,
  }) {
    return Condition(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      clinicalStatus: clinicalStatus ? null : this.clinicalStatus,
      verificationStatus: verificationStatus ? null : this.verificationStatus,
      category: category ? null : this.category,
      severity: severity ? null : this.severity,
      code: code ? null : this.code,
      bodySite: bodySite ? null : this.bodySite,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      onsetX: onset ? null : onsetX,
      abatementX: abatement ? null : abatementX,
      recordedDate: recordedDate ? null : this.recordedDate,
      recorder: recorder ? null : this.recorder,
      asserter: asserter ? null : this.asserter,
      stage: stage ? null : this.stage,
      evidence: evidence ? null : this.evidence,
      note: note ? null : this.note,
    );
  }

  @override
  Condition clone() => throw UnimplementedError();
  @override
  Condition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? clinicalStatus,
    CodeableConcept? verificationStatus,
    List<CodeableConcept>? category,
    CodeableConcept? severity,
    CodeableConcept? code,
    List<CodeableConcept>? bodySite,
    Reference? subject,
    Reference? encounter,
    OnsetXCondition? onsetX,
    AbatementXCondition? abatementX,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    List<ConditionStage>? stage,
    List<ConditionEvidence>? evidence,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Condition(
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
      clinicalStatus: clinicalStatus?.copyWith(
            objectPath: '$newObjectPath.clinicalStatus',
          ) ??
          this.clinicalStatus,
      verificationStatus: verificationStatus?.copyWith(
            objectPath: '$newObjectPath.verificationStatus',
          ) ??
          this.verificationStatus,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      bodySite: bodySite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodySite',
                ),
              )
              .toList() ??
          this.bodySite,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      onsetX: onsetX?.copyWith(
            objectPath: '$newObjectPath.onsetX',
          ) as OnsetXCondition? ??
          this.onsetX,
      abatementX: abatementX?.copyWith(
            objectPath: '$newObjectPath.abatementX',
          ) as AbatementXCondition? ??
          this.abatementX,
      recordedDate: recordedDate?.copyWith(
            objectPath: '$newObjectPath.recordedDate',
          ) ??
          this.recordedDate,
      recorder: recorder?.copyWith(
            objectPath: '$newObjectPath.recorder',
          ) ??
          this.recorder,
      asserter: asserter?.copyWith(
            objectPath: '$newObjectPath.asserter',
          ) ??
          this.asserter,
      stage: stage
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.stage',
                ),
              )
              .toList() ??
          this.stage,
      evidence: evidence
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.evidence',
                ),
              )
              .toList() ??
          this.evidence,
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
    if (o is! Condition) {
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
      clinicalStatus,
      o.clinicalStatus,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      verificationStatus,
      o.verificationStatus,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
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
      onsetX,
      o.onsetX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      abatementX,
      o.abatementX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recordedDate,
      o.recordedDate,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      asserter,
      o.asserter,
    )) {
      return false;
    }
    if (!listEquals<ConditionStage>(
      stage,
      o.stage,
    )) {
      return false;
    }
    if (!listEquals<ConditionEvidence>(
      evidence,
      o.evidence,
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

/// [ConditionStage]
/// Clinical stage or grade of a condition. May include formal severity
/// assessments.
class ConditionStage extends BackboneElement {
  /// Primary constructor for
  /// [ConditionStage]

  const ConditionStage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Condition.stage',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ConditionStage.empty() => const ConditionStage();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionStage.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.stage';
    return ConditionStage(
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
      summary: JsonParser.parseObject<CodeableConcept>(
        json,
        'summary',
        CodeableConcept.fromJson,
        '$objectPath.summary',
      ),
      assessment: (json['assessment'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.assessment',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [ConditionStage]
  /// from a [String] or [YamlMap] object
  factory ConditionStage.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionStage.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionStage.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionStage '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionStage]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionStage.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionStage.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConditionStage';

  /// [summary]
  /// A simple summary of the stage such as "Stage 3". The determination of
  /// the stage is disease-specific.
  final CodeableConcept? summary;

  /// [assessment]
  /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  final List<Reference>? assessment;

  /// [type]
  /// The kind of staging, such as pathological or clinical staging.
  final CodeableConcept? type;
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
      'summary',
      summary,
    );
    addField(
      'assessment',
      assessment,
    );
    addField(
      'type',
      type,
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
      'summary',
      'assessment',
      'type',
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
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'assessment':
        if (assessment != null) {
          fields.addAll(assessment!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'summary':
        {
          if (child is CodeableConcept) {
            return copyWith(summary: child);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assessment':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?assessment, ...child];
            return copyWith(assessment: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?assessment, child];
            return copyWith(assessment: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConcept) {
            return copyWith(type: child);
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
      case 'summary':
        return ['CodeableConcept'];
      case 'assessment':
        return ['Reference'];
      case 'type':
        return ['CodeableConcept'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionStage]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ConditionStage createProperty(
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
      case 'summary':
        {
          return copyWith(
            summary: CodeableConcept.empty(),
          );
        }
      case 'assessment':
        {
          return copyWith(
            assessment: <Reference>[],
          );
        }
      case 'type':
        {
          return copyWith(
            type: CodeableConcept.empty(),
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ConditionStage clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool summary = false,
    bool assessment = false,
    bool type = false,
  }) {
    return ConditionStage(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      summary: summary ? null : this.summary,
      assessment: assessment ? null : this.assessment,
      type: type ? null : this.type,
    );
  }

  @override
  ConditionStage clone() => throw UnimplementedError();
  @override
  ConditionStage copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? summary,
    List<Reference>? assessment,
    CodeableConcept? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ConditionStage(
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
      summary: summary?.copyWith(
            objectPath: '$newObjectPath.summary',
          ) ??
          this.summary,
      assessment: assessment
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.assessment',
                ),
              )
              .toList() ??
          this.assessment,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConditionStage) {
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
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      assessment,
      o.assessment,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    return true;
  }
}

/// [ConditionEvidence]
/// Supporting evidence / manifestations that are the basis of the
/// Condition's verification status, such as evidence that confirmed or
/// refuted the condition.
class ConditionEvidence extends BackboneElement {
  /// Primary constructor for
  /// [ConditionEvidence]

  const ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Condition.evidence',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ConditionEvidence.empty() => const ConditionEvidence();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionEvidence.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.evidence';
    return ConditionEvidence(
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
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConditionEvidence]
  /// from a [String] or [YamlMap] object
  factory ConditionEvidence.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionEvidence.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionEvidence.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionEvidence '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionEvidence]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionEvidence.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionEvidence.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConditionEvidence';

  /// [code]
  /// A manifestation or symptom that led to the recording of this condition.
  final List<CodeableConcept>? code;

  /// [detail]
  /// Links to other relevant information, including pathology reports.
  final List<Reference>? detail;
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
      'code',
      code,
    );
    addField(
      'detail',
      detail,
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
      'code',
      'detail',
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
      case 'code':
        if (code != null) {
          fields.addAll(code!);
        }
      case 'detail':
        if (detail != null) {
          fields.addAll(detail!);
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
            final newList = [...?extension_, child];
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
            final newList = [...?modifierExtension, child];
            return copyWith(modifierExtension: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConcept>) {
            // Add all elements from passed list
            final newList = [...?code, ...child];
            return copyWith(code: newList);
          } else if (child is CodeableConcept) {
            // Add single element to existing list or create new list
            final newList = [...?code, child];
            return copyWith(code: newList);
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<Reference>) {
            // Add all elements from passed list
            final newList = [...?detail, ...child];
            return copyWith(detail: newList);
          } else if (child is Reference) {
            // Add single element to existing list or create new list
            final newList = [...?detail, child];
            return copyWith(detail: newList);
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
      case 'code':
        return ['CodeableConcept'];
      case 'detail':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionEvidence]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ConditionEvidence createProperty(
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
      case 'code':
        {
          return copyWith(
            code: <CodeableConcept>[],
          );
        }
      case 'detail':
        {
          return copyWith(
            detail: <Reference>[],
          );
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ConditionEvidence clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool detail = false,
  }) {
    return ConditionEvidence(
      id: id ? null : this.id,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      code: code ? null : this.code,
      detail: detail ? null : this.detail,
    );
  }

  @override
  ConditionEvidence clone() => throw UnimplementedError();
  @override
  ConditionEvidence copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    List<Reference>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return ConditionEvidence(
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
      code: code
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.code',
                ),
              )
              .toList() ??
          this.code,
      detail: detail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.detail',
                ),
              )
              .toList() ??
          this.detail,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ConditionEvidence) {
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
    if (!listEquals<CodeableConcept>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}
