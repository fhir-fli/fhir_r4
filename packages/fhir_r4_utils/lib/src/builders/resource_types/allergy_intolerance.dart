import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        AllergyIntolerance,
        AllergyIntoleranceReaction,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AllergyIntoleranceBuilder]
/// Risk of harmful or undesirable, physiological response which is unique
/// to an individual and associated with exposure to a substance.
class AllergyIntoleranceBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [AllergyIntoleranceBuilder]

  AllergyIntoleranceBuilder({
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
    this.patient,
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
  /// For Builder classes, no fields are required
  factory AllergyIntoleranceBuilder.empty() => AllergyIntoleranceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AllergyIntolerance';
    return AllergyIntoleranceBuilder(
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
      clinicalStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'clinicalStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.clinicalStatus',
      ),
      verificationStatus: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'verificationStatus',
        CodeableConceptBuilder.fromJson,
        '$objectPath.verificationStatus',
      ),
      type: JsonParser.parsePrimitive<AllergyIntoleranceTypeBuilder>(
        json,
        'type',
        AllergyIntoleranceTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      category:
          JsonParser.parsePrimitiveList<AllergyIntoleranceCategoryBuilder>(
        json,
        'category',
        AllergyIntoleranceCategoryBuilder.fromJson,
        '$objectPath.category',
      ),
      criticality:
          JsonParser.parsePrimitive<AllergyIntoleranceCriticalityBuilder>(
        json,
        'criticality',
        AllergyIntoleranceCriticalityBuilder.fromJson,
        '$objectPath.criticality',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      patient: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'patient',
        ReferenceBuilder.fromJson,
        '$objectPath.patient',
      ),
      encounter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'encounter',
        ReferenceBuilder.fromJson,
        '$objectPath.encounter',
      ),
      onsetX: JsonParser.parsePolymorphic<OnsetXAllergyIntoleranceBuilder>(
        json,
        {
          'onsetDateTime': FhirDateTimeBuilder.fromJson,
          'onsetAge': AgeBuilder.fromJson,
          'onsetPeriod': PeriodBuilder.fromJson,
          'onsetRange': RangeBuilder.fromJson,
          'onsetString': FhirStringBuilder.fromJson,
        },
        objectPath,
      ),
      recordedDate: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'recordedDate',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.recordedDate',
      ),
      recorder: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'recorder',
        ReferenceBuilder.fromJson,
        '$objectPath.recorder',
      ),
      asserter: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'asserter',
        ReferenceBuilder.fromJson,
        '$objectPath.asserter',
      ),
      lastOccurrence: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'lastOccurrence',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.lastOccurrence',
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
      reaction: (json['reaction'] as List<dynamic>?)
          ?.map<AllergyIntoleranceReactionBuilder>(
            (v) => AllergyIntoleranceReactionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reaction',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [AllergyIntoleranceBuilder]
  /// from a [String] or [YamlMap] object
  factory AllergyIntoleranceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntoleranceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntoleranceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntoleranceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntoleranceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntoleranceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AllergyIntoleranceBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the allergy or intolerance.
  CodeableConceptBuilder? clinicalStatus;

  /// [verificationStatus]
  /// Assertion about certainty associated with the propensity, or potential
  /// risk, of a reaction to the identified substance (including
  /// pharmaceutical product).
  CodeableConceptBuilder? verificationStatus;

  /// [type]
  /// Identification of the underlying physiological mechanism for the
  /// reaction risk.
  AllergyIntoleranceTypeBuilder? type;

  /// [category]
  /// Category of the identified substance.
  List<AllergyIntoleranceCategoryBuilder>? category;

  /// [criticality]
  /// Estimate of the potential clinical harm, or seriousness, of the
  /// reaction to the identified substance.
  AllergyIntoleranceCriticalityBuilder? criticality;

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
  CodeableConceptBuilder? code;

  /// [patient]
  /// The patient who has the allergy or intolerance.
  ReferenceBuilder? patient;

  /// [encounter]
  /// The encounter when the allergy or intolerance was asserted.
  ReferenceBuilder? encounter;

  /// [onsetX]
  /// Estimated or actual date, date-time, or age when allergy or intolerance
  /// was identified.
  OnsetXAllergyIntoleranceBuilder? onsetX;

  /// Getter for [onsetDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get onsetDateTime => onsetX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [onsetAge] as a AgeBuilder
  AgeBuilder? get onsetAge => onsetX?.isAs<AgeBuilder>();

  /// Getter for [onsetPeriod] as a PeriodBuilder
  PeriodBuilder? get onsetPeriod => onsetX?.isAs<PeriodBuilder>();

  /// Getter for [onsetRange] as a RangeBuilder
  RangeBuilder? get onsetRange => onsetX?.isAs<RangeBuilder>();

  /// Getter for [onsetString] as a FhirStringBuilder
  FhirStringBuilder? get onsetString => onsetX?.isAs<FhirStringBuilder>();

  /// [recordedDate]
  /// The recordedDate represents when this particular AllergyIntolerance
  /// record was created in the system, which is often a system-generated
  /// date.
  FhirDateTimeBuilder? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  ReferenceBuilder? recorder;

  /// [asserter]
  /// The source of the information about the allergy that is recorded.
  ReferenceBuilder? asserter;

  /// [lastOccurrence]
  /// Represents the date and/or time of the last known occurrence of a
  /// reaction event.
  FhirDateTimeBuilder? lastOccurrence;

  /// [note]
  /// Additional narrative about the propensity for the Adverse Reaction, not
  /// captured in other fields.
  List<AnnotationBuilder>? note;

  /// [reaction]
  /// Details about each adverse reaction event linked to exposure to the
  /// identified substance.
  List<AllergyIntoleranceReactionBuilder>? reaction;

  /// Converts a [AllergyIntoleranceBuilder]
  /// to [AllergyIntolerance]
  @override
  AllergyIntolerance build() => AllergyIntolerance.fromJson(toJson());

  /// Converts a [AllergyIntoleranceBuilder]
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
        if (patient != null) {
          fields.add(patient!);
        }
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'onset':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetX':
        if (onsetX != null) {
          fields.add(onsetX!);
        }
      case 'onsetDateTime':
        if (onsetX is FhirDateTimeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetAge':
        if (onsetX is AgeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetPeriod':
        if (onsetX is PeriodBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetRange':
        if (onsetX is RangeBuilder) {
          fields.add(onsetX!);
        }
      case 'onsetString':
        if (onsetX is FhirStringBuilder) {
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
      case 'clinicalStatus':
        {
          if (child is CodeableConceptBuilder) {
            clinicalStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'verificationStatus':
        {
          if (child is CodeableConceptBuilder) {
            verificationStatus = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is AllergyIntoleranceTypeBuilder) {
            type = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'category':
        {
          if (child is List<AllergyIntoleranceCategoryBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is AllergyIntoleranceCategoryBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'criticality':
        {
          if (child is AllergyIntoleranceCriticalityBuilder) {
            criticality = child;
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
      case 'patient':
        {
          if (child is ReferenceBuilder) {
            patient = child;
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
      case 'onsetX':
        {
          if (child is OnsetXAllergyIntoleranceBuilder) {
            onsetX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              onsetX = child;
              return;
            }
            if (child is AgeBuilder) {
              onsetX = child;
              return;
            }
            if (child is PeriodBuilder) {
              onsetX = child;
              return;
            }
            if (child is RangeBuilder) {
              onsetX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              onsetX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onsetDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetAge':
        {
          if (child is AgeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetPeriod':
        {
          if (child is PeriodBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetRange':
        {
          if (child is RangeBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetString':
        {
          if (child is FhirStringBuilder) {
            onsetX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recordedDate':
        {
          if (child is FhirDateTimeBuilder) {
            recordedDate = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                recordedDate = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'asserter':
        {
          if (child is ReferenceBuilder) {
            asserter = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'lastOccurrence':
        {
          if (child is FhirDateTimeBuilder) {
            lastOccurrence = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                lastOccurrence = converted;
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
      case 'reaction':
        {
          if (child is List<AllergyIntoleranceReactionBuilder>) {
            // Replace or create new list
            reaction = child;
            return;
          } else if (child is AllergyIntoleranceReactionBuilder) {
            // Add single element to existing list or create new list
            reaction = [...(reaction ?? []), child];
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
      case 'clinicalStatus':
        return ['CodeableConceptBuilder'];
      case 'verificationStatus':
        return ['CodeableConceptBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'category':
        return ['FhirCodeEnumBuilder'];
      case 'criticality':
        return ['FhirCodeEnumBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'patient':
        return ['ReferenceBuilder'];
      case 'encounter':
        return ['ReferenceBuilder'];
      case 'onset':
      case 'onsetX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirStringBuilder',
        ];
      case 'onsetDateTime':
        return ['FhirDateTimeBuilder'];
      case 'onsetAge':
        return ['AgeBuilder'];
      case 'onsetPeriod':
        return ['PeriodBuilder'];
      case 'onsetRange':
        return ['RangeBuilder'];
      case 'onsetString':
        return ['FhirStringBuilder'];
      case 'recordedDate':
        return ['FhirDateTimeBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'asserter':
        return ['ReferenceBuilder'];
      case 'lastOccurrence':
        return ['FhirDateTimeBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      case 'reaction':
        return ['AllergyIntoleranceReactionBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AllergyIntoleranceBuilder]
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
      case 'clinicalStatus':
        {
          clinicalStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'verificationStatus':
        {
          verificationStatus = CodeableConceptBuilder.empty();
          return;
        }
      case 'type':
        {
          type = AllergyIntoleranceTypeBuilder.empty();
          return;
        }
      case 'category':
        {
          category = <AllergyIntoleranceCategoryBuilder>[];
          return;
        }
      case 'criticality':
        {
          criticality = AllergyIntoleranceCriticalityBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'patient':
        {
          patient = ReferenceBuilder.empty();
          return;
        }
      case 'encounter':
        {
          encounter = ReferenceBuilder.empty();
          return;
        }
      case 'onset':
      case 'onsetX':
      case 'onsetDateTime':
        {
          onsetX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'onsetAge':
        {
          onsetX = AgeBuilder.empty();
          return;
        }
      case 'onsetPeriod':
        {
          onsetX = PeriodBuilder.empty();
          return;
        }
      case 'onsetRange':
        {
          onsetX = RangeBuilder.empty();
          return;
        }
      case 'onsetString':
        {
          onsetX = FhirStringBuilder.empty();
          return;
        }
      case 'recordedDate':
        {
          recordedDate = FhirDateTimeBuilder.empty();
          return;
        }
      case 'recorder':
        {
          recorder = ReferenceBuilder.empty();
          return;
        }
      case 'asserter':
        {
          asserter = ReferenceBuilder.empty();
          return;
        }
      case 'lastOccurrence':
        {
          lastOccurrence = FhirDateTimeBuilder.empty();
          return;
        }
      case 'note':
        {
          note = <AnnotationBuilder>[];
          return;
        }
      case 'reaction':
        {
          reaction = <AllergyIntoleranceReactionBuilder>[];
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
    bool clinicalStatus = false,
    bool verificationStatus = false,
    bool type = false,
    bool category = false,
    bool criticality = false,
    bool code = false,
    bool patient = false,
    bool encounter = false,
    bool onset = false,
    bool recordedDate = false,
    bool recorder = false,
    bool asserter = false,
    bool lastOccurrence = false,
    bool note = false,
    bool reaction = false,
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
    if (clinicalStatus) this.clinicalStatus = null;
    if (verificationStatus) this.verificationStatus = null;
    if (type) this.type = null;
    if (category) this.category = null;
    if (criticality) this.criticality = null;
    if (code) this.code = null;
    if (patient) this.patient = null;
    if (encounter) this.encounter = null;
    if (onset) onsetX = null;
    if (recordedDate) this.recordedDate = null;
    if (recorder) this.recorder = null;
    if (asserter) this.asserter = null;
    if (lastOccurrence) this.lastOccurrence = null;
    if (note) this.note = null;
    if (reaction) this.reaction = null;
  }

  @override
  AllergyIntoleranceBuilder clone() => throw UnimplementedError();
  @override
  AllergyIntoleranceBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<IdentifierBuilder>? identifier,
    CodeableConceptBuilder? clinicalStatus,
    CodeableConceptBuilder? verificationStatus,
    AllergyIntoleranceTypeBuilder? type,
    List<AllergyIntoleranceCategoryBuilder>? category,
    AllergyIntoleranceCriticalityBuilder? criticality,
    CodeableConceptBuilder? code,
    ReferenceBuilder? patient,
    ReferenceBuilder? encounter,
    OnsetXAllergyIntoleranceBuilder? onsetX,
    FhirDateTimeBuilder? recordedDate,
    ReferenceBuilder? recorder,
    ReferenceBuilder? asserter,
    FhirDateTimeBuilder? lastOccurrence,
    List<AnnotationBuilder>? note,
    List<AllergyIntoleranceReactionBuilder>? reaction,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = AllergyIntoleranceBuilder(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      clinicalStatus: clinicalStatus ?? this.clinicalStatus,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      type: type ?? this.type,
      category: category ?? this.category,
      criticality: criticality ?? this.criticality,
      code: code ?? this.code,
      patient: patient ?? this.patient,
      encounter: encounter ?? this.encounter,
      onsetX: onsetX ?? this.onsetX,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      lastOccurrence: lastOccurrence ?? this.lastOccurrence,
      note: note ?? this.note,
      reaction: reaction ?? this.reaction,
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
    if (o is! AllergyIntoleranceBuilder) {
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
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!listEquals<AllergyIntoleranceCategoryBuilder>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      criticality,
      o.criticality,
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
      patient,
      o.patient,
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
    if (!equalsDeepWithNull(
      lastOccurrence,
      o.lastOccurrence,
    )) {
      return false;
    }
    if (!listEquals<AnnotationBuilder>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!listEquals<AllergyIntoleranceReactionBuilder>(
      reaction,
      o.reaction,
    )) {
      return false;
    }
    return true;
  }
}

/// [AllergyIntoleranceReactionBuilder]
/// Details about each adverse reaction event linked to exposure to the
/// identified substance.
class AllergyIntoleranceReactionBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [AllergyIntoleranceReactionBuilder]

  AllergyIntoleranceReactionBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    this.manifestation,
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
  /// For Builder classes, no fields are required
  factory AllergyIntoleranceReactionBuilder.empty() =>
      AllergyIntoleranceReactionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AllergyIntoleranceReactionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'AllergyIntolerance.reaction';
    return AllergyIntoleranceReactionBuilder(
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
      substance: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'substance',
        CodeableConceptBuilder.fromJson,
        '$objectPath.substance',
      ),
      manifestation: (json['manifestation'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manifestation',
              },
            ),
          )
          .toList(),
      description: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'description',
        FhirStringBuilder.fromJson,
        '$objectPath.description',
      ),
      onset: JsonParser.parsePrimitive<FhirDateTimeBuilder>(
        json,
        'onset',
        FhirDateTimeBuilder.fromJson,
        '$objectPath.onset',
      ),
      severity: JsonParser.parsePrimitive<AllergyIntoleranceSeverityBuilder>(
        json,
        'severity',
        AllergyIntoleranceSeverityBuilder.fromJson,
        '$objectPath.severity',
      ),
      exposureRoute: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'exposureRoute',
        CodeableConceptBuilder.fromJson,
        '$objectPath.exposureRoute',
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

  /// Deserialize [AllergyIntoleranceReactionBuilder]
  /// from a [String] or [YamlMap] object
  factory AllergyIntoleranceReactionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AllergyIntoleranceReactionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AllergyIntoleranceReactionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AllergyIntoleranceReactionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AllergyIntoleranceReactionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AllergyIntoleranceReactionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AllergyIntoleranceReactionBuilder.fromJson(json);
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
  CodeableConceptBuilder? substance;

  /// [manifestation]
  /// Clinical symptoms and/or signs that are observed or associated with the
  /// adverse reaction event.
  List<CodeableConceptBuilder>? manifestation;

  /// [description]
  /// Text description about the reaction as a whole, including details of
  /// the manifestation if required.
  FhirStringBuilder? description;

  /// [onset]
  /// Record of the date and/or time of the onset of the Reaction.
  FhirDateTimeBuilder? onset;

  /// [severity]
  /// Clinical assessment of the severity of the reaction event as a whole,
  /// potentially considering multiple different manifestations.
  AllergyIntoleranceSeverityBuilder? severity;

  /// [exposureRoute]
  /// Identification of the route by which the subject was exposed to the
  /// substance.
  CodeableConceptBuilder? exposureRoute;

  /// [note]
  /// Additional text about the adverse reaction event not captured in other
  /// fields.
  List<AnnotationBuilder>? note;

  /// Converts a [AllergyIntoleranceReactionBuilder]
  /// to [AllergyIntoleranceReaction]
  @override
  AllergyIntoleranceReaction build() =>
      AllergyIntoleranceReaction.fromJson(toJson());

  /// Converts a [AllergyIntoleranceReactionBuilder]
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
      case 'substance':
        if (substance != null) {
          fields.add(substance!);
        }
      case 'manifestation':
        if (manifestation != null) {
          fields.addAll(manifestation!);
        }
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
      case 'substance':
        {
          if (child is CodeableConceptBuilder) {
            substance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manifestation':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            manifestation = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            manifestation = [...(manifestation ?? []), child];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'description':
        {
          if (child is FhirStringBuilder) {
            description = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                description = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'onset':
        {
          if (child is FhirDateTimeBuilder) {
            onset = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirDateTimeBuilder.tryParse(stringValue);
              if (converted != null) {
                onset = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'severity':
        {
          if (child is AllergyIntoleranceSeverityBuilder) {
            severity = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'exposureRoute':
        {
          if (child is CodeableConceptBuilder) {
            exposureRoute = child;
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
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'substance':
        return ['CodeableConceptBuilder'];
      case 'manifestation':
        return ['CodeableConceptBuilder'];
      case 'description':
        return ['FhirStringBuilder'];
      case 'onset':
        return ['FhirDateTimeBuilder'];
      case 'severity':
        return ['FhirCodeEnumBuilder'];
      case 'exposureRoute':
        return ['CodeableConceptBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AllergyIntoleranceReactionBuilder]
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
      case 'substance':
        {
          substance = CodeableConceptBuilder.empty();
          return;
        }
      case 'manifestation':
        {
          manifestation = <CodeableConceptBuilder>[];
          return;
        }
      case 'description':
        {
          description = FhirStringBuilder.empty();
          return;
        }
      case 'onset':
        {
          onset = FhirDateTimeBuilder.empty();
          return;
        }
      case 'severity':
        {
          severity = AllergyIntoleranceSeverityBuilder.empty();
          return;
        }
      case 'exposureRoute':
        {
          exposureRoute = CodeableConceptBuilder.empty();
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
    bool extension_ = false,
    bool modifierExtension = false,
    bool substance = false,
    bool manifestation = false,
    bool description = false,
    bool onset = false,
    bool severity = false,
    bool exposureRoute = false,
    bool note = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (substance) this.substance = null;
    if (manifestation) this.manifestation = null;
    if (description) this.description = null;
    if (onset) this.onset = null;
    if (severity) this.severity = null;
    if (exposureRoute) this.exposureRoute = null;
    if (note) this.note = null;
  }

  @override
  AllergyIntoleranceReactionBuilder clone() => throw UnimplementedError();
  @override
  AllergyIntoleranceReactionBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? substance,
    List<CodeableConceptBuilder>? manifestation,
    FhirStringBuilder? description,
    FhirDateTimeBuilder? onset,
    AllergyIntoleranceSeverityBuilder? severity,
    CodeableConceptBuilder? exposureRoute,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = AllergyIntoleranceReactionBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      manifestation: manifestation ?? this.manifestation,
      description: description ?? this.description,
      onset: onset ?? this.onset,
      severity: severity ?? this.severity,
      exposureRoute: exposureRoute ?? this.exposureRoute,
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
    if (o is! AllergyIntoleranceReactionBuilder) {
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
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      manifestation,
      o.manifestation,
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
      onset,
      o.onset,
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
      exposureRoute,
      o.exposureRoute,
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
