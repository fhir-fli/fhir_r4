import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'allergy_intolerance.g.dart';

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
    OnsetXAllergyIntolerance? onsetX,
    FhirDateTime? onsetDateTime,
    Age? onsetAge,
    Period? onsetPeriod,
    Range? onsetRange,
    FhirString? onsetString,
    this.recordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.note,
    this.reaction,
  })  : onsetX = onsetX ??
            onsetDateTime ??
            onsetAge ??
            onsetPeriod ??
            onsetRange ??
            onsetString,
        super(
          resourceType: R4ResourceType.AllergyIntolerance,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntolerance.fromJson(
    Map<String, dynamic> json,
  ) {
    return AllergyIntolerance(
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
      clinicalStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'clinicalStatus',
        CodeableConcept.fromJson,
      ),
      verificationStatus: JsonParser.parseObject<CodeableConcept>(
        json,
        'verificationStatus',
        CodeableConcept.fromJson,
      ),
      type: JsonParser.parsePrimitive<AllergyIntoleranceType>(
        json,
        'type',
        AllergyIntoleranceType.fromJson,
      ),
      category: JsonParser.parsePrimitiveList<AllergyIntoleranceCategory>(
        json,
        'category',
        AllergyIntoleranceCategory.fromJson,
      ),
      criticality: JsonParser.parsePrimitive<AllergyIntoleranceCriticality>(
        json,
        'criticality',
        AllergyIntoleranceCriticality.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      patient: JsonParser.parseObject<Reference>(
        json,
        'patient',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
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
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'recordedDate',
        FhirDateTime.fromJson,
      ),
      recorder: JsonParser.parseObject<Reference>(
        json,
        'recorder',
        Reference.fromJson,
      ),
      asserter: JsonParser.parseObject<Reference>(
        json,
        'asserter',
        Reference.fromJson,
      ),
      lastOccurrence: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'lastOccurrence',
        FhirDateTime.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<AllergyIntoleranceReaction>(
            (v) => AllergyIntoleranceReaction.fromJson(
              {...v as Map<String, dynamic>},
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
      'clinicalStatus',
      clinicalStatus,
    );
    addField(
      'verificationStatus',
      verificationStatus,
    );
    addField(
      'type',
      type,
    );
    addField(
      'category',
      category,
    );
    addField(
      'criticality',
      criticality,
    );
    addField(
      'code',
      code,
    );
    addField(
      'patient',
      patient,
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
      'lastOccurrence',
      lastOccurrence,
    );
    addField(
      'note',
      note,
    );
    addField(
      'reaction',
      reaction,
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
  AllergyIntolerance clone() => copyWith();

  /// Copy function for [AllergyIntolerance]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AllergyIntoleranceCopyWith<AllergyIntolerance> get copyWith =>
      _$AllergyIntoleranceCopyWithImpl<AllergyIntolerance>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AllergyIntolerance) {
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
      clinicalStatus,
      o.clinicalStatus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      verificationStatus,
      o.verificationStatus,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<AllergyIntoleranceCategory>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      criticality,
      o.criticality,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      patient,
      o.patient,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      encounter,
      o.encounter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      onsetX,
      o.onsetX,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      recordedDate,
      o.recordedDate,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      recorder,
      o.recorder,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      asserter,
      o.asserter,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      lastOccurrence,
      o.lastOccurrence,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<AllergyIntoleranceReaction>(
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
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceReaction.fromJson(
    Map<String, dynamic> json,
  ) {
    return AllergyIntoleranceReaction(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
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
      substance: JsonParser.parseObject<CodeableConcept>(
        json,
        'substance',
        CodeableConcept.fromJson,
      ),
      manifestation: (json['manifestation'] as List<dynamic>)
          .map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      onset: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'onset',
        FhirDateTime.fromJson,
      ),
      severity: JsonParser.parsePrimitive<AllergyIntoleranceSeverity>(
        json,
        'severity',
        AllergyIntoleranceSeverity.fromJson,
      ),
      exposureRoute: JsonParser.parseObject<CodeableConcept>(
        json,
        'exposureRoute',
        CodeableConcept.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
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
      'substance',
      substance,
    );
    addField(
      'manifestation',
      manifestation,
    );
    addField(
      'description',
      description,
    );
    addField(
      'onset',
      onset,
    );
    addField(
      'severity',
      severity,
    );
    addField(
      'exposureRoute',
      exposureRoute,
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
  AllergyIntoleranceReaction clone() => copyWith();

  /// Copy function for [AllergyIntoleranceReaction]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $AllergyIntoleranceReactionCopyWith<AllergyIntoleranceReaction>
      get copyWith =>
          _$AllergyIntoleranceReactionCopyWithImpl<AllergyIntoleranceReaction>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! AllergyIntoleranceReaction) {
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
    if (!FhirBase.equalsDeepWithNull(
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<CodeableConcept>(
      manifestation,
      o.manifestation,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      description,
      o.description,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      onset,
      o.onset,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      severity,
      o.severity,
    )) {
      return false;
    }
    if (!FhirBase.equalsDeepWithNull(
      exposureRoute,
      o.exposureRoute,
    )) {
      return false;
    }
    if (!FhirBase.listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    return true;
  }
}
