import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show yamlMapToJson, yamlToJson, R4ResourceType, StringExtensionForFHIR;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ConditionBuilder]
/// A clinical condition, problem, diagnosis, or other event, situation,
/// issue, or clinical concept that has risen to a level of concern.
class ConditionBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [ConditionBuilder]

  ConditionBuilder({
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
    this.subject,
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
  /// For Builder classes, no fields are required
  factory ConditionBuilder.empty() => ConditionBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition';
    return ConditionBuilder(
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
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      severity: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'severity',
        CodeableConceptBuilder.fromJson,
        '$objectPath.severity',
      ),
      code: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'code',
        CodeableConceptBuilder.fromJson,
        '$objectPath.code',
      ),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
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
      onsetX: JsonParser.parsePolymorphic<OnsetXConditionBuilder>(
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
      abatementX: JsonParser.parsePolymorphic<AbatementXConditionBuilder>(
        json,
        {
          'abatementDateTime': FhirDateTimeBuilder.fromJson,
          'abatementAge': AgeBuilder.fromJson,
          'abatementPeriod': PeriodBuilder.fromJson,
          'abatementRange': RangeBuilder.fromJson,
          'abatementString': FhirStringBuilder.fromJson,
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
      stage: (json['stage'] as List<dynamic>?)
          ?.map<ConditionStageBuilder>(
            (v) => ConditionStageBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.stage',
              },
            ),
          )
          .toList(),
      evidence: (json['evidence'] as List<dynamic>?)
          ?.map<ConditionEvidenceBuilder>(
            (v) => ConditionEvidenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.evidence',
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
    );
  }

  /// Deserialize [ConditionBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionBuilder.fromJson(json);
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
  List<IdentifierBuilder>? identifier;

  /// [clinicalStatus]
  /// The clinical status of the condition.
  CodeableConceptBuilder? clinicalStatus;

  /// [verificationStatus]
  /// The verification status to support the clinical status of the
  /// condition.
  CodeableConceptBuilder? verificationStatus;

  /// [category]
  /// A category assigned to the condition.
  List<CodeableConceptBuilder>? category;

  /// [severity]
  /// A subjective assessment of the severity of the condition as evaluated
  /// by the clinician.
  CodeableConceptBuilder? severity;

  /// [code]
  /// Identification of the condition, problem or diagnosis.
  CodeableConceptBuilder? code;

  /// [bodySite]
  /// The anatomical location where this condition manifests itself.
  List<CodeableConceptBuilder>? bodySite;

  /// [subject]
  /// Indicates the patient or group who the condition record is associated
  /// with.
  ReferenceBuilder? subject;

  /// [encounter]
  /// The Encounter during which this Condition was created or to which the
  /// creation of this record is tightly associated.
  ReferenceBuilder? encounter;

  /// [onsetX]
  /// Estimated or actual date or date-time the condition began, in the
  /// opinion of the clinician.
  OnsetXConditionBuilder? onsetX;

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

  /// [abatementX]
  /// The date or estimated date that the condition resolved or went into
  /// remission. This is called "abatement" because of the many overloaded
  /// connotations associated with "remission" or "resolution" - Conditions
  /// are never really resolved, but they can abate.
  AbatementXConditionBuilder? abatementX;

  /// Getter for [abatementDateTime] as a FhirDateTimeBuilder
  FhirDateTimeBuilder? get abatementDateTime =>
      abatementX?.isAs<FhirDateTimeBuilder>();

  /// Getter for [abatementAge] as a AgeBuilder
  AgeBuilder? get abatementAge => abatementX?.isAs<AgeBuilder>();

  /// Getter for [abatementPeriod] as a PeriodBuilder
  PeriodBuilder? get abatementPeriod => abatementX?.isAs<PeriodBuilder>();

  /// Getter for [abatementRange] as a RangeBuilder
  RangeBuilder? get abatementRange => abatementX?.isAs<RangeBuilder>();

  /// Getter for [abatementString] as a FhirStringBuilder
  FhirStringBuilder? get abatementString =>
      abatementX?.isAs<FhirStringBuilder>();

  /// [recordedDate]
  /// The recordedDate represents when this particular Condition record was
  /// created in the system, which is often a system-generated date.
  FhirDateTimeBuilder? recordedDate;

  /// [recorder]
  /// Individual who recorded the record and takes responsibility for its
  /// content.
  ReferenceBuilder? recorder;

  /// [asserter]
  /// Individual who is making the condition statement.
  ReferenceBuilder? asserter;

  /// [stage]
  /// Clinical stage or grade of a condition. May include formal severity
  /// assessments.
  List<ConditionStageBuilder>? stage;

  /// [evidence]
  /// Supporting evidence / manifestations that are the basis of the
  /// Condition's verification status, such as evidence that confirmed or
  /// refuted the condition.
  List<ConditionEvidenceBuilder>? evidence;

  /// [note]
  /// Additional information about the Condition. This is a general
  /// notes/comments entry for description of the Condition, its diagnosis
  /// and prognosis.
  List<AnnotationBuilder>? note;
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
    addField('category', category);
    addField('severity', severity);
    addField('code', code);
    addField('bodySite', bodySite);
    addField('subject', subject);
    addField('encounter', encounter);
    if (onsetX != null) {
      final fhirType = onsetX!.fhirType;
      addField('onset${fhirType.capitalize()}', onsetX);
    }

    if (abatementX != null) {
      final fhirType = abatementX!.fhirType;
      addField('abatement${fhirType.capitalize()}', abatementX);
    }

    addField('recordedDate', recordedDate);
    addField('recorder', recorder);
    addField('asserter', asserter);
    addField('stage', stage);
    addField('evidence', evidence);
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
        if (subject != null) {
          fields.add(subject!);
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
      case 'abatement':
        if (abatementX != null) {
          fields.add(abatementX!);
        }
      case 'abatementX':
        if (abatementX != null) {
          fields.add(abatementX!);
        }
      case 'abatementDateTime':
        if (abatementX is FhirDateTimeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementAge':
        if (abatementX is AgeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementPeriod':
        if (abatementX is PeriodBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementRange':
        if (abatementX is RangeBuilder) {
          fields.add(abatementX!);
        }
      case 'abatementString':
        if (abatementX is FhirStringBuilder) {
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'clinicalStatus':
        {
          if (child is CodeableConceptBuilder) {
            clinicalStatus = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'verificationStatus':
        {
          if (child is CodeableConceptBuilder) {
            verificationStatus = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            category = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            category = [...(category ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'severity':
        {
          if (child is CodeableConceptBuilder) {
            severity = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is CodeableConceptBuilder) {
            code = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'bodySite':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            bodySite = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            bodySite = [...(bodySite ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'subject':
        {
          if (child is ReferenceBuilder) {
            subject = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'encounter':
        {
          if (child is ReferenceBuilder) {
            encounter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'onsetX':
        {
          if (child is OnsetXConditionBuilder) {
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
      case 'abatementX':
        {
          if (child is AbatementXConditionBuilder) {
            abatementX = child;
            return;
          } else {
            if (child is FhirDateTimeBuilder) {
              abatementX = child;
              return;
            }
            if (child is AgeBuilder) {
              abatementX = child;
              return;
            }
            if (child is PeriodBuilder) {
              abatementX = child;
              return;
            }
            if (child is RangeBuilder) {
              abatementX = child;
              return;
            }
            if (child is FhirStringBuilder) {
              abatementX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'abatementDateTime':
        {
          if (child is FhirDateTimeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementAge':
        {
          if (child is AgeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementPeriod':
        {
          if (child is PeriodBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementRange':
        {
          if (child is RangeBuilder) {
            abatementX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'abatementString':
        {
          if (child is FhirStringBuilder) {
            abatementX = child;
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'recorder':
        {
          if (child is ReferenceBuilder) {
            recorder = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'asserter':
        {
          if (child is ReferenceBuilder) {
            asserter = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'stage':
        {
          if (child is List<ConditionStageBuilder>) {
            // Replace or create new list
            stage = child;
            return;
          } else if (child is ConditionStageBuilder) {
            // Add single element to existing list or create new list
            stage = [...(stage ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'evidence':
        {
          if (child is List<ConditionEvidenceBuilder>) {
            // Replace or create new list
            evidence = child;
            return;
          } else if (child is ConditionEvidenceBuilder) {
            // Add single element to existing list or create new list
            evidence = [...(evidence ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
      case 'category':
        return ['CodeableConceptBuilder'];
      case 'severity':
        return ['CodeableConceptBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'bodySite':
        return ['CodeableConceptBuilder'];
      case 'subject':
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
          'FhirStringBuilder'
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
      case 'abatement':
      case 'abatementX':
        return [
          'FhirDateTimeBuilder',
          'AgeBuilder',
          'PeriodBuilder',
          'RangeBuilder',
          'FhirStringBuilder'
        ];
      case 'abatementDateTime':
        return ['FhirDateTimeBuilder'];
      case 'abatementAge':
        return ['AgeBuilder'];
      case 'abatementPeriod':
        return ['PeriodBuilder'];
      case 'abatementRange':
        return ['RangeBuilder'];
      case 'abatementString':
        return ['FhirStringBuilder'];
      case 'recordedDate':
        return ['FhirDateTimeBuilder'];
      case 'recorder':
        return ['ReferenceBuilder'];
      case 'asserter':
        return ['ReferenceBuilder'];
      case 'stage':
        return ['ConditionStageBuilder'];
      case 'evidence':
        return ['ConditionEvidenceBuilder'];
      case 'note':
        return ['AnnotationBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionBuilder]
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
      case 'category':
        {
          category = <CodeableConceptBuilder>[];
          return;
        }
      case 'severity':
        {
          severity = CodeableConceptBuilder.empty();
          return;
        }
      case 'code':
        {
          code = CodeableConceptBuilder.empty();
          return;
        }
      case 'bodySite':
        {
          bodySite = <CodeableConceptBuilder>[];
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
      case 'abatement':
      case 'abatementX':
      case 'abatementDateTime':
        {
          abatementX = FhirDateTimeBuilder.empty();
          return;
        }
      case 'abatementAge':
        {
          abatementX = AgeBuilder.empty();
          return;
        }
      case 'abatementPeriod':
        {
          abatementX = PeriodBuilder.empty();
          return;
        }
      case 'abatementRange':
        {
          abatementX = RangeBuilder.empty();
          return;
        }
      case 'abatementString':
        {
          abatementX = FhirStringBuilder.empty();
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
      case 'stage':
        {
          stage = <ConditionStageBuilder>[];
          return;
        }
      case 'evidence':
        {
          evidence = <ConditionEvidenceBuilder>[];
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
    bool clinicalStatus = false,
    bool verificationStatus = false,
    bool category = false,
    bool severity = false,
    bool code = false,
    bool bodySite = false,
    bool subject = false,
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
    if (category) this.category = null;
    if (severity) this.severity = null;
    if (code) this.code = null;
    if (bodySite) this.bodySite = null;
    if (subject) this.subject = null;
    if (encounter) this.encounter = null;
    if (onset) this.onsetX = null;
    if (abatement) this.abatementX = null;
    if (recordedDate) this.recordedDate = null;
    if (recorder) this.recorder = null;
    if (asserter) this.asserter = null;
    if (stage) this.stage = null;
    if (evidence) this.evidence = null;
    if (note) this.note = null;
  }

  @override
  ConditionBuilder clone() => throw UnimplementedError();
  @override
  ConditionBuilder copyWith({
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
    List<CodeableConceptBuilder>? category,
    CodeableConceptBuilder? severity,
    CodeableConceptBuilder? code,
    List<CodeableConceptBuilder>? bodySite,
    ReferenceBuilder? subject,
    ReferenceBuilder? encounter,
    OnsetXConditionBuilder? onsetX,
    AbatementXConditionBuilder? abatementX,
    FhirDateTimeBuilder? recordedDate,
    ReferenceBuilder? recorder,
    ReferenceBuilder? asserter,
    List<ConditionStageBuilder>? stage,
    List<ConditionEvidenceBuilder>? evidence,
    List<AnnotationBuilder>? note,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = ConditionBuilder(
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
      category: category ?? this.category,
      severity: severity ?? this.severity,
      code: code ?? this.code,
      bodySite: bodySite ?? this.bodySite,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      onsetX: onsetX ?? this.onsetX,
      abatementX: abatementX ?? this.abatementX,
      recordedDate: recordedDate ?? this.recordedDate,
      recorder: recorder ?? this.recorder,
      asserter: asserter ?? this.asserter,
      stage: stage ?? this.stage,
      evidence: evidence ?? this.evidence,
      note: note ?? this.note,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ConditionBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<CodeableConceptBuilder>(
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
    if (!listEquals<ConditionStageBuilder>(
      stage,
      o.stage,
    )) {
      return false;
    }
    if (!listEquals<ConditionEvidenceBuilder>(
      evidence,
      o.evidence,
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

/// [ConditionStageBuilder]
/// Clinical stage or grade of a condition. May include formal severity
/// assessments.
class ConditionStageBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConditionStageBuilder]

  ConditionStageBuilder({
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
  /// For Builder classes, no fields are required
  factory ConditionStageBuilder.empty() => ConditionStageBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionStageBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.stage';
    return ConditionStageBuilder(
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
      summary: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'summary',
        CodeableConceptBuilder.fromJson,
        '$objectPath.summary',
      ),
      assessment: (json['assessment'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.assessment',
              },
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'type',
        CodeableConceptBuilder.fromJson,
        '$objectPath.type',
      ),
    );
  }

  /// Deserialize [ConditionStageBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionStageBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionStageBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionStageBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionStageBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionStageBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionStageBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionStageBuilder.fromJson(json);
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
  CodeableConceptBuilder? summary;

  /// [assessment]
  /// Reference to a formal record of the evidence on which the staging
  /// assessment is based.
  List<ReferenceBuilder>? assessment;

  /// [type]
  /// The kind of staging, such as pathological or clinical staging.
  CodeableConceptBuilder? type;
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
    addField('summary', summary);
    addField('assessment', assessment);
    addField('type', type);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'summary':
        {
          if (child is CodeableConceptBuilder) {
            summary = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'assessment':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            assessment = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            assessment = [...(assessment ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'type':
        {
          if (child is CodeableConceptBuilder) {
            type = child;
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'summary':
        return ['CodeableConceptBuilder'];
      case 'assessment':
        return ['ReferenceBuilder'];
      case 'type':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionStageBuilder]
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
      case 'summary':
        {
          summary = CodeableConceptBuilder.empty();
          return;
        }
      case 'assessment':
        {
          assessment = <ReferenceBuilder>[];
          return;
        }
      case 'type':
        {
          type = CodeableConceptBuilder.empty();
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
    bool summary = false,
    bool assessment = false,
    bool type = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (summary) this.summary = null;
    if (assessment) this.assessment = null;
    if (type) this.type = null;
  }

  @override
  ConditionStageBuilder clone() => throw UnimplementedError();
  @override
  ConditionStageBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableConceptBuilder? summary,
    List<ReferenceBuilder>? assessment,
    CodeableConceptBuilder? type,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConditionStageBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      summary: summary ?? this.summary,
      assessment: assessment ?? this.assessment,
      type: type ?? this.type,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ConditionStageBuilder) {
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
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
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

/// [ConditionEvidenceBuilder]
/// Supporting evidence / manifestations that are the basis of the
/// Condition's verification status, such as evidence that confirmed or
/// refuted the condition.
class ConditionEvidenceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [ConditionEvidenceBuilder]

  ConditionEvidenceBuilder({
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
  /// For Builder classes, no fields are required
  factory ConditionEvidenceBuilder.empty() => ConditionEvidenceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ConditionEvidenceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Condition.evidence';
    return ConditionEvidenceBuilder(
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
      code: (json['code'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.code',
              },
            ),
          )
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.detail',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ConditionEvidenceBuilder]
  /// from a [String] or [YamlMap] object
  factory ConditionEvidenceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ConditionEvidenceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ConditionEvidenceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ConditionEvidenceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ConditionEvidenceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ConditionEvidenceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ConditionEvidenceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ConditionEvidence';

  /// [code]
  /// A manifestation or symptom that led to the recording of this condition.
  List<CodeableConceptBuilder>? code;

  /// [detail]
  /// Links to other relevant information, including pathology reports.
  List<ReferenceBuilder>? detail;
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
    addField('code', code);
    addField('detail', detail);
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
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
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'code':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            code = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            code = [...(code ?? []), child];
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'detail':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            detail = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            detail = [...(detail ?? []), child];
            return;
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
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableConceptBuilder'];
      case 'detail':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ConditionEvidenceBuilder]
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
      case 'code':
        {
          code = <CodeableConceptBuilder>[];
          return;
        }
      case 'detail':
        {
          detail = <ReferenceBuilder>[];
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
    bool code = false,
    bool detail = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (detail) this.detail = null;
  }

  @override
  ConditionEvidenceBuilder clone() => throw UnimplementedError();
  @override
  ConditionEvidenceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    List<CodeableConceptBuilder>? code,
    List<ReferenceBuilder>? detail,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = ConditionEvidenceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      detail: detail ?? this.detail,
    );

    newResult.objectPath = newObjectPath;
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
    if (o is! ConditionEvidenceBuilder) {
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
    if (!listEquals<CodeableConceptBuilder>(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      detail,
      o.detail,
    )) {
      return false;
    }
    return true;
  }
}
