import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'clinical_impression.g.dart';

/// [ClinicalImpression]
/// A record of a clinical assessment performed to determine what
/// problem(s) may affect the patient and before planning the treatments or
/// management strategies that are best to manage a patient's condition.
/// Assessments are often 1:1 with a clinical consultation / encounter, but
/// this varies greatly depending on the clinical workflow. This resource
/// is called "ClinicalImpression" rather than "ClinicalAssessment" to
/// avoid confusion with the recording of assessment tools such as Apgar
/// score.
class ClinicalImpression extends DomainResource {
  /// Primary constructor for
  /// [ClinicalImpression]

  const ClinicalImpression({
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
    this.statusReason,
    this.code,
    this.description,
    required this.subject,
    this.encounter,
    EffectiveXClinicalImpression? effectiveX,
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
    this.date,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.summary,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  })  : effectiveX = effectiveX ?? effectiveDateTime ?? effectivePeriod,
        super(
          resourceType: R4ResourceType.ClinicalImpression,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpression.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpression(
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
      status: JsonParser.parsePrimitive<ClinicalImpressionStatus>(
        json,
        'status',
        ClinicalImpressionStatus.fromJson,
      )!,
      statusReason: JsonParser.parseObject<CodeableConcept>(
        json,
        'statusReason',
        CodeableConcept.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      description: JsonParser.parsePrimitive<FhirString>(
        json,
        'description',
        FhirString.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      effectiveX: JsonParser.parsePolymorphic<EffectiveXClinicalImpression>(
        json,
        {
          'effectiveDateTime': FhirDateTime.fromJson,
          'effectivePeriod': Period.fromJson,
        },
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      assessor: JsonParser.parseObject<Reference>(
        json,
        'assessor',
        Reference.fromJson,
      ),
      previous: JsonParser.parseObject<Reference>(
        json,
        'previous',
        Reference.fromJson,
      ),
      problem: (json['problem'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      investigation: (json['investigation'] as List<dynamic>?)
          ?.map<ClinicalImpressionInvestigation>(
            (v) => ClinicalImpressionInvestigation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      protocol: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'protocol',
        FhirUri.fromJson,
      ),
      summary: JsonParser.parsePrimitive<FhirString>(
        json,
        'summary',
        FhirString.fromJson,
      ),
      finding: (json['finding'] as List<dynamic>?)
          ?.map<ClinicalImpressionFinding>(
            (v) => ClinicalImpressionFinding.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      prognosisCodeableConcept:
          (json['prognosisCodeableConcept'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  {...v as Map<String, dynamic>},
                ),
              )
              .toList(),
      prognosisReference: (json['prognosisReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalImpression]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpression.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpression.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpression.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalImpression '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalImpression]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalImpression.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalImpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalImpression';

  /// [identifier]
  /// Business identifiers assigned to this clinical impression by the
  /// performer or other systems which remain constant as the resource is
  /// updated and propagates from server to server.
  final List<Identifier>? identifier;

  /// [status]
  /// Identifies the workflow status of the assessment.
  final ClinicalImpressionStatus status;

  /// [statusReason]
  /// Captures the reason for the current state of the ClinicalImpression.
  final CodeableConcept? statusReason;

  /// [code]
  /// Categorizes the type of clinical assessment performed.
  final CodeableConcept? code;

  /// [description]
  /// A summary of the context and/or cause of the assessment - why / where
  /// it was performed, and what patient events/status prompted it.
  final FhirString? description;

  /// [subject]
  /// The patient or group of individuals assessed as part of this record.
  final Reference subject;

  /// [encounter]
  /// The Encounter during which this ClinicalImpression was created or to
  /// which the creation of this record is tightly associated.
  final Reference? encounter;

  /// [effectiveX]
  /// The point in time or period over which the subject was assessed.
  final EffectiveXClinicalImpression? effectiveX;

  /// Getter for [effectiveDateTime] as a FhirDateTime
  FhirDateTime? get effectiveDateTime => effectiveX?.isAs<FhirDateTime>();

  /// Getter for [effectivePeriod] as a Period
  Period? get effectivePeriod => effectiveX?.isAs<Period>();

  /// [date]
  /// Indicates when the documentation of the assessment was complete.
  final FhirDateTime? date;

  /// [assessor]
  /// The clinician performing the assessment.
  final Reference? assessor;

  /// [previous]
  /// A reference to the last assessment that was conducted on this patient.
  /// Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as
  /// new data arises or the patient's conditions changes.
  final Reference? previous;

  /// [problem]
  /// A list of the relevant problems/conditions for a patient.
  final List<Reference>? problem;

  /// [investigation]
  /// One or more sets of investigations (signs, symptoms, etc.). The actual
  /// grouping of investigations varies greatly depending on the type and
  /// context of the assessment. These investigations may include data
  /// generated during the assessment process, or data previously generated
  /// and recorded that is pertinent to the outcomes.
  final List<ClinicalImpressionInvestigation>? investigation;

  /// [protocol]
  /// Reference to a specific published clinical protocol that was followed
  /// during this assessment, and/or that provides evidence in support of the
  /// diagnosis.
  final List<FhirUri>? protocol;

  /// [summary]
  /// A text summary of the investigations and the diagnosis.
  final FhirString? summary;

  /// [finding]
  /// Specific findings or diagnoses that were considered likely or relevant
  /// to ongoing treatment.
  final List<ClinicalImpressionFinding>? finding;

  /// [prognosisCodeableConcept]
  /// Estimate of likely outcome.
  final List<CodeableConcept>? prognosisCodeableConcept;

  /// [prognosisReference]
  /// RiskAssessment expressing likely outcome.
  final List<Reference>? prognosisReference;

  /// [supportingInfo]
  /// Information supporting the clinical impression.
  final List<Reference>? supportingInfo;

  /// [note]
  /// Commentary about the impression, typically recorded after the
  /// impression itself was made, though supplemental notes by the original
  /// author could also appear.
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
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
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
      'status',
      status,
    );
    addField(
      'statusReason',
      statusReason,
    );
    addField(
      'code',
      code,
    );
    addField(
      'description',
      description,
    );
    addField(
      'subject',
      subject,
    );
    addField(
      'encounter',
      encounter,
    );
    if (effectiveX != null) {
      final fhirType = effectiveX!.fhirType;
      addField(
        'effective${fhirType.capitalize()}',
        effectiveX,
      );
    }

    addField(
      'date',
      date,
    );
    addField(
      'assessor',
      assessor,
    );
    addField(
      'previous',
      previous,
    );
    addField(
      'problem',
      problem,
    );
    addField(
      'investigation',
      investigation,
    );
    addField(
      'protocol',
      protocol,
    );
    addField(
      'summary',
      summary,
    );
    addField(
      'finding',
      finding,
    );
    addField(
      'prognosisCodeableConcept',
      prognosisCodeableConcept,
    );
    addField(
      'prognosisReference',
      prognosisReference,
    );
    addField(
      'supportingInfo',
      supportingInfo,
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
      'status',
      'statusReason',
      'code',
      'description',
      'subject',
      'encounter',
      'effectiveX',
      'date',
      'assessor',
      'previous',
      'problem',
      'investigation',
      'protocol',
      'summary',
      'finding',
      'prognosisCodeableConcept',
      'prognosisReference',
      'supportingInfo',
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
      case 'status':
        fields.add(status);
      case 'statusReason':
        if (statusReason != null) {
          fields.add(statusReason!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'description':
        if (description != null) {
          fields.add(description!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'effective':
        fields.add(effectiveX!);
      case 'effectiveX':
        fields.add(effectiveX!);
      case 'effectiveDateTime':
        if (effectiveX is FhirDateTime) {
          fields.add(effectiveX!);
        }
      case 'effectivePeriod':
        if (effectiveX is Period) {
          fields.add(effectiveX!);
        }
      case 'date':
        if (date != null) {
          fields.add(date!);
        }
      case 'assessor':
        if (assessor != null) {
          fields.add(assessor!);
        }
      case 'previous':
        if (previous != null) {
          fields.add(previous!);
        }
      case 'problem':
        if (problem != null) {
          fields.addAll(problem!);
        }
      case 'investigation':
        if (investigation != null) {
          fields.addAll(investigation!);
        }
      case 'protocol':
        if (protocol != null) {
          fields.addAll(protocol!);
        }
      case 'summary':
        if (summary != null) {
          fields.add(summary!);
        }
      case 'finding':
        if (finding != null) {
          fields.addAll(finding!);
        }
      case 'prognosisCodeableConcept':
        if (prognosisCodeableConcept != null) {
          fields.addAll(prognosisCodeableConcept!);
        }
      case 'prognosisReference':
        if (prognosisReference != null) {
          fields.addAll(prognosisReference!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
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
  ClinicalImpression clone() => copyWith();

  /// Copy function for [ClinicalImpression]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalImpressionCopyWith<ClinicalImpression> get copyWith =>
      _$ClinicalImpressionCopyWithImpl<ClinicalImpression>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalImpression) {
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
      statusReason,
      o.statusReason,
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
      description,
      o.description,
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
      effectiveX,
      o.effectiveX,
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
      assessor,
      o.assessor,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      previous,
      o.previous,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      problem,
      o.problem,
    )) {
      return false;
    }
    if (!listEquals<ClinicalImpressionInvestigation>(
      investigation,
      o.investigation,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      protocol,
      o.protocol,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      summary,
      o.summary,
    )) {
      return false;
    }
    if (!listEquals<ClinicalImpressionFinding>(
      finding,
      o.finding,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      prognosisCodeableConcept,
      o.prognosisCodeableConcept,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      prognosisReference,
      o.prognosisReference,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
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

/// [ClinicalImpressionInvestigation]
/// One or more sets of investigations (signs, symptoms, etc.). The actual
/// grouping of investigations varies greatly depending on the type and
/// context of the assessment. These investigations may include data
/// generated during the assessment process, or data previously generated
/// and recorded that is pertinent to the outcomes.
class ClinicalImpressionInvestigation extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalImpressionInvestigation]

  const ClinicalImpressionInvestigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.item,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionInvestigation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpressionInvestigation(
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      item: (json['item'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ClinicalImpressionInvestigation]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionInvestigation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionInvestigation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionInvestigation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionInvestigation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalImpressionInvestigation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalImpressionInvestigation.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalImpressionInvestigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalImpressionInvestigation';

  /// [code]
  /// A name/code for the group ("set") of investigations. Typically, this
  /// will be something like "signs", "symptoms", "clinical", "diagnostic",
  /// but the list is not constrained, and others such groups such as
  /// (exposure|family|travel|nutritional) history may be used.
  final CodeableConcept code;

  /// [item]
  /// A record of a specific investigation that was undertaken.
  final List<Reference>? item;
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
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
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
      'code',
      code,
    );
    addField(
      'item',
      item,
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
      'item',
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
        fields.add(code);
      case 'item':
        if (item != null) {
          fields.addAll(item!);
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
  ClinicalImpressionInvestigation clone() => copyWith();

  /// Copy function for [ClinicalImpressionInvestigation]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalImpressionInvestigationCopyWith<ClinicalImpressionInvestigation>
      get copyWith => _$ClinicalImpressionInvestigationCopyWithImpl<
              ClinicalImpressionInvestigation>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalImpressionInvestigation) {
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
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      item,
      o.item,
    )) {
      return false;
    }
    return true;
  }
}

/// [ClinicalImpressionFinding]
/// Specific findings or diagnoses that were considered likely or relevant
/// to ongoing treatment.
class ClinicalImpressionFinding extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalImpressionFinding]

  const ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionFinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpressionFinding(
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
      itemCodeableConcept: JsonParser.parseObject<CodeableConcept>(
        json,
        'itemCodeableConcept',
        CodeableConcept.fromJson,
      ),
      itemReference: JsonParser.parseObject<Reference>(
        json,
        'itemReference',
        Reference.fromJson,
      ),
      basis: JsonParser.parsePrimitive<FhirString>(
        json,
        'basis',
        FhirString.fromJson,
      ),
    );
  }

  /// Deserialize [ClinicalImpressionFinding]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionFinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionFinding.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionFinding.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionFinding '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ClinicalImpressionFinding]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ClinicalImpressionFinding.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ClinicalImpressionFinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ClinicalImpressionFinding';

  /// [itemCodeableConcept]
  /// Specific text or code for finding or diagnosis, which may include
  /// ruled-out or resolved conditions.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference]
  /// Specific reference for finding or diagnosis, which may include
  /// ruled-out or resolved conditions.
  final Reference? itemReference;

  /// [basis]
  /// Which investigations support finding or diagnosis.
  final FhirString? basis;
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
          final hasAnyValues = tempList.any((v) => v != null);
          if (hasAnyValues) {
            json[key] = tempList;
          }
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
      'itemCodeableConcept',
      itemCodeableConcept,
    );
    addField(
      'itemReference',
      itemReference,
    );
    addField(
      'basis',
      basis,
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
      'itemCodeableConcept',
      'itemReference',
      'basis',
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
      case 'itemCodeableConcept':
        if (itemCodeableConcept != null) {
          fields.add(itemCodeableConcept!);
        }
      case 'itemReference':
        if (itemReference != null) {
          fields.add(itemReference!);
        }
      case 'basis':
        if (basis != null) {
          fields.add(basis!);
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
  ClinicalImpressionFinding clone() => copyWith();

  /// Copy function for [ClinicalImpressionFinding]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ClinicalImpressionFindingCopyWith<ClinicalImpressionFinding> get copyWith =>
      _$ClinicalImpressionFindingCopyWithImpl<ClinicalImpressionFinding>(
        this,
        (value) => value,
      );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ClinicalImpressionFinding) {
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
      itemCodeableConcept,
      o.itemCodeableConcept,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      itemReference,
      o.itemReference,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      basis,
      o.basis,
    )) {
      return false;
    }
    return true;
  }
}
