import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [AllergyIntolerance]
/// Risk of harmful or undesirable, physiological response which is unique
/// to an individual and associated with exposure to a substance.
class AllergyIntolerance extends DomainResource {
  /// Primary constructor for
  /// [AllergyIntolerance]

  const AllergyIntolerance({
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
    this.type,
    this.category,
    this.criticality,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetX,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.note,
    this.reaction,
  }) : super(
          objectPath: 'AllergyIntolerance',
          resourceType: R4ResourceType.AllergyIntolerance,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AllergyIntolerance.empty() => AllergyIntolerance(
        patient: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AllergyIntolerance';
    return AllergyIntolerance(
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
      type: JsonParser.parsePrimitive<AllergyIntoleranceType>(
        json,
        'type',
        AllergyIntoleranceType.fromJson,
        '$objectPath.type',
      ),
      category: JsonParser.parsePrimitiveList<AllergyIntoleranceCategory>(
        json,
        'category',
        AllergyIntoleranceCategory.fromJson,
        '$objectPath.category',
      ),
      criticality: JsonParser.parsePrimitive<AllergyIntoleranceCriticality>(
        json,
        'criticality',
        AllergyIntoleranceCriticality.fromJson,
        '$objectPath.criticality',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
        '$objectPath.patient',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      onsetX: JsonParser.parsePolymorphic<OnsetXAllergyIntolerance>(
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
      lastOccurrence: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastOccurrence',
        FhirDateTime.fromJson,
        '$objectPath.lastOccurrence',
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
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<AllergyIntoleranceReaction>(
            (v) => AllergyIntoleranceReaction.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reaction',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AllergyIntolerance]
  /// from a [String] or [YamlMap] object
  factory AllergyIntolerance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntolerance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntolerance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntolerance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntolerance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntolerance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AllergyIntolerance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AllergyIntolerance';

  /// [identifier]
  /// Business identifiers assigned to this AllergyIntolerance by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the allergy or intolerance.
  final CodeableConcept? clinicalStatus;

  /// [verificationStatus]
  /// Assertion about certainty associated with the propensity, or potential
  /// risk, of a reaction to the identified substance (including
  /// pharmaceutical product).
  final CodeableConcept? verificationStatus;

  /// [type]
  /// Identification of the underlying physiological mechanism for the
  /// reaction risk.
  final AllergyIntoleranceType? type;

  /// [category]
  /// Category of the identified substance.
  final List<AllergyIntoleranceCategory>? category;

  /// [criticality]
  /// Estimate of the potential clinical harm, or seriousness, of the
  /// reaction to the identified substance.
  final AllergyIntoleranceCriticality? criticality;

  /// [code]
  /// Code for an allergy or intolerance statement (either a positive or a
  /// negated/excluded statement). This may be a code for a substance or
  /// pharmaceutical product that is considered to be responsible for the
  /// adverse reaction risk (e.g., "Latex"), an allergy or intolerance
  /// condition (e.g., "Latex allergy"), or a negated/excluded code for a
  /// specific substance or class (e.g., "No latex allergy") or a general or
  /// categorical negated statement (e.g., "No known allergy", "No known drug
  /// allergies"). Note: the substance for a specific reaction may be
  /// different from the substance identified as the cause of the risk, but
  /// it must be consistent with it. For instance, it may be a more specific
  /// substance (e.g. a brand medication) or a composite product that
  /// includes the identified substance. It must be clinically safe to only
  /// process the 'code' and ignore the 'reaction.substance'. If a receiving
  /// system is unable to confirm that AllergyIntolerance.reaction.substance
  /// falls within the semantic scope of AllergyIntolerance.code, then the
  /// receiving system should ignore AllergyIntolerance.reaction.substance.
  final CodeableConcept? code;

  /// [patient]
  /// The patient who has the allergy or intolerance.
  final Reference patient;

  /// [encounter]
  /// The encounter when the allergy or intolerance was asserted.
  final Reference? encounter;

  /// [onsetX]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  final OnsetXAllergyIntolerance? onsetX;

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

  /// [recordedDate]
  /// The recordedDate represents when this particular AllergyIntolerance
  /// record was created in the system, which is often a system-generated
  /// date.
  final FhirDateTime? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  final Reference? recorder;

  /// [asserter]
  /// The source of the information about the allergy that is recorded.
  final Reference? asserter;

  /// [lastOccurrence]
  /// Represents the date and/or time of the last known occurrence of a
  /// reaction event.
  final FhirDateTime? lastOccurrence;

  /// [note]
  /// Additional narrative about the propensity for the Adverse Reaction, not
  /// captured in other fields.
  final List<Annotation>? note;

  /// [reaction]
  /// Details about each adverse reaction event linked to exposure to the
  /// identified substance.
  final List<AllergyIntoleranceReaction>? reaction;
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
    addField('clinicalStatus', clinicalStatus);
    addField('verificationStatus', verificationStatus);
    addField('type', type);
    addField('category', category);
    addField('criticality', criticality);
    addField('code', code);
    addField('patient', patient);
    addField('encounter', encounter);
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField('onset${fhirType.capitalize()}', onsetX);
    }

    addField('recordedDate', recordedDate);
    addField('recorder', recorder);
    addField('asserter', asserter);
    addField('lastOccurrence', lastOccurrence);
    addField('note', note);
    addField('reaction', reaction);
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
      'type',
      'category',
      'criticality',
      'code',
      'patient',
      'encounter',
      'onsetX',
      'recordedDate',
      'recorder',
      'asserter',
      'lastOccurrence',
      'note',
      'reaction',
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
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'criticality':
        if (criticality != null) {
          fields.add(criticality!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'patient':
        fields.add(patient);
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
      case 'lastOccurrence':
        if (lastOccurrence != null) {
          fields.add(lastOccurrence!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'reaction':
        if (reaction != null) {
          fields.addAll(reaction!);
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
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'clinicalStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(clinicalStatus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'verificationStatus':
        {
          if (child is CodeableConcept) {
            return copyWith(verificationStatus: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'type':
        {
          if (child is AllergyIntoleranceType) {
            return copyWith(type: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is List<AllergyIntoleranceCategory>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'criticality':
        {
          if (child is AllergyIntoleranceCriticality) {
            return copyWith(criticality: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patient':
        {
          if (child is Reference) {
            return copyWith(patient: child);
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
      case 'onsetX':
        {
          if (child is OnsetXAllergyIntolerance) {
            // child is e.g. SubjectX union
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onsetFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onsetAge':
        {
          if (child is Age) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onsetPeriod':
        {
          if (child is Period) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onsetRange':
        {
          if (child is Range) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onsetFhirString':
        {
          if (child is FhirString) {
            return copyWith(onsetX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recordedDate':
        {
          if (child is FhirDateTime) {
            return copyWith(recordedDate: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'recorder':
        {
          if (child is Reference) {
            return copyWith(recorder: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'asserter':
        {
          if (child is Reference) {
            return copyWith(asserter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'lastOccurrence':
        {
          if (child is FhirDateTime) {
            return copyWith(lastOccurrence: child);
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
      case 'reaction':
        {
          if (child is List<AllergyIntoleranceReaction>) {
            return copyWith(reaction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  AllergyIntolerance clone() => throw UnimplementedError();
  @override
  AllergyIntolerance copyWith({
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
    AllergyIntoleranceType? type,
    List<AllergyIntoleranceCategory>? category,
    AllergyIntoleranceCriticality? criticality,
    CodeableConcept? code,
    Reference? patient,
    Reference? encounter,
    OnsetXAllergyIntolerance? onsetX,
    FhirDateTime? recordedDate,
    Reference? recorder,
    Reference? asserter,
    FhirDateTime? lastOccurrence,
    List<Annotation>? note,
    List<AllergyIntoleranceReaction>? reaction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return AllergyIntolerance(
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
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      criticality: criticality?.copyWith(
            objectPath: '$newObjectPath.criticality',
          ) ??
          this.criticality,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      onsetX: onsetX?.copyWith(
            objectPath: '$newObjectPath.onsetX',
          ) as OnsetXAllergyIntolerance? ??
          this.onsetX,
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
      lastOccurrence: lastOccurrence?.copyWith(
            objectPath: '$newObjectPath.lastOccurrence',
          ) ??
          this.lastOccurrence,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      reaction: reaction
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reaction',
                ),
              )
              .toList() ??
          this.reaction,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AllergyIntolerance) {
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
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(clinicalStatus, o.clinicalStatus)) {
      return false;
    }
    if (!equalsDeepWithNull(verificationStatus, o.verificationStatus)) {
      return false;
    }
    if (!equalsDeepWithNull(type, o.type)) {
      return false;
    }
    if (!listEquals<AllergyIntoleranceCategory>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(criticality, o.criticality)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(patient, o.patient)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(onsetX, o.onsetX)) {
      return false;
    }
    if (!equalsDeepWithNull(recordedDate, o.recordedDate)) {
      return false;
    }
    if (!equalsDeepWithNull(recorder, o.recorder)) {
      return false;
    }
    if (!equalsDeepWithNull(asserter, o.asserter)) {
      return false;
    }
    if (!equalsDeepWithNull(lastOccurrence, o.lastOccurrence)) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<AllergyIntoleranceReaction>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    return true;
  }
}

/// [AllergyIntoleranceReaction]
/// Details about each adverse reaction event linked to exposure to the
/// identified substance.
class AllergyIntoleranceReaction extends BackboneElement {
  /// Primary constructor for
  /// [AllergyIntoleranceReaction]

  const AllergyIntoleranceReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.onset,
    this.severity,
    this.exposureRoute,
    this.note,
    super.disallowExtensions,
  }) : super(
          objectPath: 'AllergyIntolerance.reaction',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory AllergyIntoleranceReaction.empty() => AllergyIntoleranceReaction(
        manifestation: <CodeableConcept>[],
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AllergyIntolerance.reaction';
    return AllergyIntoleranceReaction(
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
      substance: JsonParser.parseObject<CodeableConcept>(
        json,
        'substance',
        CodeableConcept.fromJson,
        '$objectPath.substance',
      ),
      manifestation: (json['manifestation'] as List<dynamic>)
          .map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manifestation',
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
      onset: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'onset',
        FhirDateTime.fromJson,
        '$objectPath.onset',
      ),
      severity: JsonParser.parsePrimitive<AllergyIntoleranceSeverity>(
        json,
        'severity',
        AllergyIntoleranceSeverity.fromJson,
        '$objectPath.severity',
      ),
      exposureRoute: JsonParser.parseObject<CodeableConcept>(
        json,
        'exposureRoute',
        CodeableConcept.fromJson,
        '$objectPath.exposureRoute',
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

  /// Deserialize [AllergyIntoleranceReaction]
  /// from a [String] or [YamlMap] object
  factory AllergyIntoleranceReaction.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntoleranceReaction.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntoleranceReaction.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntoleranceReaction '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntoleranceReaction]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntoleranceReaction.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AllergyIntoleranceReaction.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'AllergyIntoleranceReaction';

  /// [substance]
  /// Identification of the specific substance (or pharmaceutical product)
  /// considered to be responsible for the Adverse Reaction event. Note: the
  /// substance for a specific reaction may be different from the substance
  /// identified as the cause of the risk, but it must be consistent with it.
  /// For instance, it may be a more specific substance (e.g. a brand
  /// medication) or a composite product that includes the identified
  /// substance. It must be clinically safe to only process the 'code' and
  /// ignore the 'reaction.substance'. If a receiving system is unable to
  /// confirm that AllergyIntolerance.reaction.substance falls within the
  /// semantic scope of AllergyIntolerance.code, then the receiving system
  /// should ignore AllergyIntolerance.reaction.substance.
  final CodeableConcept? substance;

  /// [manifestation]
  /// Clinical symptoms and/or signs that are observed or associated with the
  /// adverse reaction event.
  final List<CodeableConcept> manifestation;

  /// [description]
  /// Text description about the reaction as a whole, including details of
  /// the manifestation if required.
  final FhirString? description;

  /// [onset]
  /// Record of the date and/or time of the onset of the Reaction.
  final FhirDateTime? onset;

  /// [severity]
  /// Clinical assessment of the severity of the reaction event as a whole,
  /// potentially considering multiple different manifestations.
  final AllergyIntoleranceSeverity? severity;

  /// [exposureRoute]
  /// Identification of the route by which the subject was exposed to the
  /// substance.
  final CodeableConcept? exposureRoute;

  /// [note]
  /// Additional text about the adverse reaction event not captured in other
  /// fields.
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('substance', substance);
    addField('manifestation', manifestation);
    addField('description', description);
    addField('onset', onset);
    addField('severity', severity);
    addField('exposureRoute', exposureRoute);
    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'substance',
      'manifestation',
      'description',
      'onset',
      'severity',
      'exposureRoute',
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
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'substance':
        if (substance != null) {
          fields.add(substance!);
        }
      case 'manifestation':
        fields.addAll(manifestation);
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'onset':
        if (onset != null) {
          fields.add(onset!);
        }
      case 'severity':
        if (severity != null) {
          fields.add(severity!);
        }
      case 'exposureRoute':
        if (exposureRoute != null) {
          fields.add(exposureRoute!);
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
      case 'substance':
        {
          if (child is CodeableConcept) {
            return copyWith(substance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'manifestation':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(manifestation: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'description':
        {
          if (child is FhirString) {
            return copyWith(description: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'onset':
        {
          if (child is FhirDateTime) {
            return copyWith(onset: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'severity':
        {
          if (child is AllergyIntoleranceSeverity) {
            return copyWith(severity: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'exposureRoute':
        {
          if (child is CodeableConcept) {
            return copyWith(exposureRoute: child);
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
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  @override
  AllergyIntoleranceReaction clone() => throw UnimplementedError();
  @override
  AllergyIntoleranceReaction copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? substance,
    List<CodeableConcept>? manifestation,
    FhirString? description,
    FhirDateTime? onset,
    AllergyIntoleranceSeverity? severity,
    CodeableConcept? exposureRoute,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return AllergyIntoleranceReaction(
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
      substance: substance?.copyWith(
            objectPath: '$newObjectPath.substance',
          ) ??
          this.substance,
      manifestation: manifestation
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.manifestation',
                ),
              )
              .toList() ??
          this.manifestation,
      description: description?.copyWith(
            objectPath: '$newObjectPath.description',
          ) ??
          this.description,
      onset: onset?.copyWith(
            objectPath: '$newObjectPath.onset',
          ) ??
          this.onset,
      severity: severity?.copyWith(
            objectPath: '$newObjectPath.severity',
          ) ??
          this.severity,
      exposureRoute: exposureRoute?.copyWith(
            objectPath: '$newObjectPath.exposureRoute',
          ) ??
          this.exposureRoute,
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
    if (o is! AllergyIntoleranceReaction) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(substance, o.substance)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      manifestation,
      o.manifestation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(description, o.description)) {
      return false;
    }
    if (!equalsDeepWithNull(onset, o.onset)) {
      return false;
    }
    if (!equalsDeepWithNull(severity, o.severity)) {
      return false;
    }
    if (!equalsDeepWithNull(exposureRoute, o.exposureRoute)) {
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
