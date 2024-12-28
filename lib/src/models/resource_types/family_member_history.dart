import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FamilyMemberHistory]
/// Significant health conditions for a person related to the patient
/// relevant in the context of care for the patient.
class FamilyMemberHistory extends DomainResource {
  /// Primary constructor for
  /// [FamilyMemberHistory]

  const FamilyMemberHistory({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.status,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.name,
    required this.relationship,
    this.sex,
    this.bornX,
    this.ageX,
    this.estimatedAge,
    this.deceasedX,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  }) : super(
          objectPath: 'FamilyMemberHistory',
          resourceType: R4ResourceType.FamilyMemberHistory,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistory.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory';
    return FamilyMemberHistory(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      status: JsonParser.parsePrimitive<FamilyHistoryStatus>(
        json,
        'status',
        FamilyHistoryStatus.fromJson,
        '$objectPath.status',
      )!,
      dataAbsentReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'dataAbsentReason',
        CodeableConcept.fromJson,
        '$objectPath.dataAbsentReason',
      ),
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
      name: JsonParser.parsePrimitive<FhirString>(
        json,
        'name',
        FhirString.fromJson,
        '$objectPath.name',
      ),
      relationship: JsonParser.parseObject<CodeableConcept>(
        json,
        'relationship',
        CodeableConcept.fromJson,
        '$objectPath.relationship',
      )!,
      sex: JsonParser.parseObject<CodeableConcept>(
        json,
        'sex',
        CodeableConcept.fromJson,
        '$objectPath.sex',
      ),
      bornX: JsonParser.parsePolymorphic<BornXFamilyMemberHistory>(
        json,
        {
          'bornPeriod': Period.fromJson,
          'bornDate': FhirDate.fromJson,
          'bornString': FhirString.fromJson,
        },
        objectPath,
      ),
      ageX: JsonParser.parsePolymorphic<AgeXFamilyMemberHistory>(
        json,
        {
          'ageAge': Age.fromJson,
          'ageRange': Range.fromJson,
          'ageString': FhirString.fromJson,
        },
        objectPath,
      ),
      estimatedAge: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'estimatedAge',
        FhirBoolean.fromJson,
        '$objectPath.estimatedAge',
      ),
      deceasedX: JsonParser.parsePolymorphic<DeceasedXFamilyMemberHistory>(
        json,
        {
          'deceasedBoolean': FhirBoolean.fromJson,
          'deceasedAge': Age.fromJson,
          'deceasedRange': Range.fromJson,
          'deceasedDate': FhirDate.fromJson,
          'deceasedString': FhirString.fromJson,
        },
        objectPath,
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
      condition: (json['condition'] as List<dynamic>?)
          ?.map<FamilyMemberHistoryCondition>(
            (v) => FamilyMemberHistoryCondition.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.condition',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [FamilyMemberHistory]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistory.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistory.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistory.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistory '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistory]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistory.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistory.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistory';

  /// [identifier]
  /// Business identifiers assigned to this family member history by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// FamilyMemberHistory.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this FamilyMemberHistory.
  final List<FhirUri>? instantiatesUri;

  /// [status]
  /// A code specifying the status of the record of the family history of a
  /// specific family member.
  final FamilyHistoryStatus status;

  /// [dataAbsentReason]
  /// Describes why the family member's history is not available.
  final CodeableConcept? dataAbsentReason;

  /// [patient]
  /// The person who this history concerns.
  final Reference patient;

  /// [date]
  /// The date (and possibly time) when the family member history was
  /// recorded or last updated.
  final FhirDateTime? date;

  /// [name]
  /// This will either be a name or a description; e.g. "Aunt Susan", "my
  /// cousin with the red hair".
  final FhirString? name;

  /// [relationship]
  /// The type of relationship this person has to the patient (father,
  /// mother, brother etc.).
  final CodeableConcept relationship;

  /// [sex]
  /// The birth sex of the family member.
  final CodeableConcept? sex;

  /// [bornX]
  /// The actual or approximate date of birth of the relative.
  final BornXFamilyMemberHistory? bornX;

  /// [ageX]
  /// The age of the relative at the time the family member history is
  /// recorded.
  final AgeXFamilyMemberHistory? ageX;

  /// [estimatedAge]
  /// If true, indicates that the age value specified is an estimated value.
  final FhirBoolean? estimatedAge;

  /// [deceasedX]
  /// Deceased flag or the actual or approximate age of the relative at the
  /// time of death for the family member history record.
  final DeceasedXFamilyMemberHistory? deceasedX;

  /// [reasonCode]
  /// Describes why the family member history occurred in coded or textual
  /// form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates a Condition, Observation, AllergyIntolerance, or
  /// QuestionnaireResponse that justifies this family member history event.
  final List<Reference>? reasonReference;

  /// [note]
  /// This property allows a non condition-specific note to the made about
  /// the related person. Ideally, the note would be in the condition
  /// property, but this is not always possible.
  final List<Annotation>? note;

  /// [condition]
  /// The significant Conditions (or condition) that the family member had.
  /// This is a repeating section to allow a system to represent more than
  /// one condition per resource, though there is nothing stopping multiple
  /// resources - one per condition.
  final List<FamilyMemberHistoryCondition>? condition;
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('status', status);
    addField('dataAbsentReason', dataAbsentReason);
    addField('patient', patient);
    addField('date', date);
    addField('name', name);
    addField('relationship', relationship);
    addField('sex', sex);
    if (bornX != null) {
      final fhirType = bornX!.fhirType;
      addField('born${fhirType.capitalize()}', bornX);
    }

    if (ageX != null) {
      final fhirType = ageX!.fhirType;
      addField('age${fhirType.capitalize()}', ageX);
    }

    addField('estimatedAge', estimatedAge);
    if (deceasedX != null) {
      final fhirType = deceasedX!.fhirType;
      addField('deceased${fhirType.capitalize()}', deceasedX);
    }

    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('note', note);
    addField('condition', condition);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'instantiatesCanonical',
      'instantiatesUri',
      'status',
      'dataAbsentReason',
      'patient',
      'date',
      'name',
      'relationship',
      'sex',
      'bornX',
      'ageX',
      'estimatedAge',
      'deceasedX',
      'reasonCode',
      'reasonReference',
      'note',
      'condition',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'status':
        fields.add(status);
      case 'dataAbsentReason':
        if (dataAbsentReason != null) {
          fields.add(dataAbsentReason!);
        }
      case 'patient':
        fields.add(patient);
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'name':
        if (name != null) {
          fields.add(name!);
        }
      case 'relationship':
        fields.add(relationship);
      case 'sex':
        if (sex != null) {
          fields.add(sex!);
        }
      case 'bornPeriod':
        if (bornX is Period) {
          fields.add(bornX!);
        }
      case 'bornDate':
        if (bornX is FhirDate) {
          fields.add(bornX!);
        }
      case 'bornString':
        if (bornX is FhirString) {
          fields.add(bornX!);
        }
      case 'ageAge':
        if (ageX is Age) {
          fields.add(ageX!);
        }
      case 'ageRange':
        if (ageX is Range) {
          fields.add(ageX!);
        }
      case 'ageString':
        if (ageX is FhirString) {
          fields.add(ageX!);
        }
      case 'estimatedAge':
        if (estimatedAge != null) {
          fields.add(estimatedAge!);
        }
      case 'deceasedBoolean':
        if (deceasedX is FhirBoolean) {
          fields.add(deceasedX!);
        }
      case 'deceasedAge':
        if (deceasedX is Age) {
          fields.add(deceasedX!);
        }
      case 'deceasedRange':
        if (deceasedX is Range) {
          fields.add(deceasedX!);
        }
      case 'deceasedDate':
        if (deceasedX is FhirDate) {
          fields.add(deceasedX!);
        }
      case 'deceasedString':
        if (deceasedX is FhirString) {
          fields.add(deceasedX!);
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
      case 'condition':
        if (condition != null) {
          fields.addAll(condition!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FamilyMemberHistory clone() => throw UnimplementedError();
  @override
  FamilyMemberHistory copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    FamilyHistoryStatus? status,
    CodeableConcept? dataAbsentReason,
    Reference? patient,
    FhirDateTime? date,
    FhirString? name,
    CodeableConcept? relationship,
    CodeableConcept? sex,
    BornXFamilyMemberHistory? bornX,
    AgeXFamilyMemberHistory? ageX,
    FhirBoolean? estimatedAge,
    DeceasedXFamilyMemberHistory? deceasedX,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<FamilyMemberHistoryCondition>? condition,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return FamilyMemberHistory(
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
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      dataAbsentReason: dataAbsentReason?.copyWith(
            objectPath: '$newObjectPath.dataAbsentReason',
          ) ??
          this.dataAbsentReason,
      patient: patient?.copyWith(
            objectPath: '$newObjectPath.patient',
          ) ??
          this.patient,
      date: date?.copyWith(
            objectPath: '$newObjectPath.date',
          ) ??
          this.date,
      name: name?.copyWith(
            objectPath: '$newObjectPath.name',
          ) ??
          this.name,
      relationship: relationship?.copyWith(
            objectPath: '$newObjectPath.relationship',
          ) ??
          this.relationship,
      sex: sex?.copyWith(
            objectPath: '$newObjectPath.sex',
          ) ??
          this.sex,
      bornX: bornX?.copyWith(
            objectPath: '$newObjectPath.bornX',
          ) as BornXFamilyMemberHistory? ??
          this.bornX,
      ageX: ageX?.copyWith(
            objectPath: '$newObjectPath.ageX',
          ) as AgeXFamilyMemberHistory? ??
          this.ageX,
      estimatedAge: estimatedAge?.copyWith(
            objectPath: '$newObjectPath.estimatedAge',
          ) ??
          this.estimatedAge,
      deceasedX: deceasedX?.copyWith(
            objectPath: '$newObjectPath.deceasedX',
          ) as DeceasedXFamilyMemberHistory? ??
          this.deceasedX,
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
      condition: condition
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.condition',
                ),
              )
              .toList() ??
          this.condition,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! FamilyMemberHistory) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (meta != o.meta) {
      return false;
    }
    if (implicitRules != o.implicitRules) {
      return false;
    }
    if (language != o.language) {
      return false;
    }
    if (text != o.text) {
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
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (status != o.status) {
      return false;
    }
    if (dataAbsentReason != o.dataAbsentReason) {
      return false;
    }
    if (patient != o.patient) {
      return false;
    }
    if (date != o.date) {
      return false;
    }
    if (name != o.name) {
      return false;
    }
    if (relationship != o.relationship) {
      return false;
    }
    if (sex != o.sex) {
      return false;
    }
    if (bornX != o.bornX) {
      return false;
    }
    if (ageX != o.ageX) {
      return false;
    }
    if (estimatedAge != o.estimatedAge) {
      return false;
    }
    if (deceasedX != o.deceasedX) {
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
    if (!listEquals<FamilyMemberHistoryCondition>(
      condition,
      o.condition,
    )) {
      return false;
    }
    return true;
  }
}

/// [FamilyMemberHistoryCondition]
/// The significant Conditions (or condition) that the family member had.
/// This is a repeating section to allow a system to represent more than
/// one condition per resource, though there is nothing stopping multiple
/// resources - one per condition.
class FamilyMemberHistoryCondition extends BackboneElement {
  /// Primary constructor for
  /// [FamilyMemberHistoryCondition]

  const FamilyMemberHistoryCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.onsetX,
    this.note,
    super.disallowExtensions,
  }) : super(
          objectPath: 'FamilyMemberHistory.condition',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FamilyMemberHistoryCondition.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'FamilyMemberHistory.condition';
    return FamilyMemberHistoryCondition(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      )!,
      outcome: JsonParser.parseObject<CodeableConcept>(
        json,
        'outcome',
        CodeableConcept.fromJson,
        '$objectPath.outcome',
      ),
      contributedToDeath: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'contributedToDeath',
        FhirBoolean.fromJson,
        '$objectPath.contributedToDeath',
      ),
      onsetX: JsonParser.parsePolymorphic<OnsetXFamilyMemberHistoryCondition>(
        json,
        {
          'onsetAge': Age.fromJson,
          'onsetRange': Range.fromJson,
          'onsetPeriod': Period.fromJson,
          'onsetString': FhirString.fromJson,
        },
        objectPath,
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

  /// Deserialize [FamilyMemberHistoryCondition]
  /// from a [String] or [YamlMap] object
  factory FamilyMemberHistoryCondition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return FamilyMemberHistoryCondition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return FamilyMemberHistoryCondition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'FamilyMemberHistoryCondition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [FamilyMemberHistoryCondition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FamilyMemberHistoryCondition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return FamilyMemberHistoryCondition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'FamilyMemberHistoryCondition';

  /// [code]
  /// The actual condition specified. Could be a coded condition (like MI or
  /// Diabetes) or a less specific string like 'cancer' depending on how much
  /// is known about the condition and the capabilities of the creating
  /// system.
  final CodeableConcept code;

  /// [outcome]
  /// Indicates what happened following the condition. If the condition
  /// resulted in death, deceased date is captured on the relation.
  final CodeableConcept? outcome;

  /// [contributedToDeath]
  /// This condition contributed to the cause of death of the related person.
  /// If contributedToDeath is not populated, then it is unknown.
  final FhirBoolean? contributedToDeath;

  /// [onsetX]
  /// Either the age of onset, range of approximate age or descriptive string
  /// can be recorded. For conditions with multiple occurrences, this
  /// describes the first known occurrence.
  final OnsetXFamilyMemberHistoryCondition? onsetX;

  /// [note]
  /// An area where general notes can be placed about this specific
  /// condition.
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
    addField('code', code);
    addField('outcome', outcome);
    addField('contributedToDeath', contributedToDeath);
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField('onset${fhirType.capitalize()}', onsetX);
    }

    addField('note', note);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'outcome',
      'contributedToDeath',
      'onsetX',
      'note',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
        fields.add(code);
      case 'outcome':
        if (outcome != null) {
          fields.add(outcome!);
        }
      case 'contributedToDeath':
        if (contributedToDeath != null) {
          fields.add(contributedToDeath!);
        }
      case 'onsetAge':
        if (onsetX is Age) {
          fields.add(onsetX!);
        }
      case 'onsetRange':
        if (onsetX is Range) {
          fields.add(onsetX!);
        }
      case 'onsetPeriod':
        if (onsetX is Period) {
          fields.add(onsetX!);
        }
      case 'onsetString':
        if (onsetX is FhirString) {
          fields.add(onsetX!);
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
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FamilyMemberHistoryCondition clone() => throw UnimplementedError();
  @override
  FamilyMemberHistoryCondition copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? outcome,
    FhirBoolean? contributedToDeath,
    OnsetXFamilyMemberHistoryCondition? onsetX,
    List<Annotation>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return FamilyMemberHistoryCondition(
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      outcome: outcome?.copyWith(
            objectPath: '$newObjectPath.outcome',
          ) ??
          this.outcome,
      contributedToDeath: contributedToDeath?.copyWith(
            objectPath: '$newObjectPath.contributedToDeath',
          ) ??
          this.contributedToDeath,
      onsetX: onsetX?.copyWith(
            objectPath: '$newObjectPath.onsetX',
          ) as OnsetXFamilyMemberHistoryCondition? ??
          this.onsetX,
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
    if (o is! FamilyMemberHistoryCondition) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
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
    if (code != o.code) {
      return false;
    }
    if (outcome != o.outcome) {
      return false;
    }
    if (contributedToDeath != o.contributedToDeath) {
      return false;
    }
    if (onsetX != o.onsetX) {
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
