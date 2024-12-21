import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
    this.effectiveX,
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
  }) : super(
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
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
      effectiveX:
          JsonParser.parsePolymorphic<EffectiveXClinicalImpression>(json, {
        'effectiveDateTime': FhirDateTime.fromJson,
        'effectivePeriod': Period.fromJson,
      }),
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      investigation: (json['investigation'] as List<dynamic>?)
          ?.map<ClinicalImpressionInvestigation>(
            (v) => ClinicalImpressionInvestigation.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      prognosisCodeableConcept:
          (json['prognosisCodeableConcept'] as List<dynamic>?)
              ?.map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList(),
      prognosisReference: (json['prognosisReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ClinicalImpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (description != null) {
      addField('description', description);
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (effectiveX != null) {
      addField('effective${effectiveX!.fhirType.capitalize()}', effectiveX);
    }

    if (date != null) {
      addField('date', date);
    }

    if (assessor != null) {
      json['assessor'] = assessor!.toJson();
    }

    if (previous != null) {
      json['previous'] = previous!.toJson();
    }

    if (problem != null && problem!.isNotEmpty) {
      json['problem'] = problem!.map((e) => e.toJson()).toList();
    }

    if (investigation != null && investigation!.isNotEmpty) {
      json['investigation'] = investigation!.map((e) => e.toJson()).toList();
    }

    if (protocol != null && protocol!.isNotEmpty) {
      final fieldJson0 = protocol!.map((e) => e.toJson()).toList();
      json['protocol'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_protocol'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (summary != null) {
      addField('summary', summary);
    }

    if (finding != null && finding!.isNotEmpty) {
      json['finding'] = finding!.map((e) => e.toJson()).toList();
    }

    if (prognosisCodeableConcept != null &&
        prognosisCodeableConcept!.isNotEmpty) {
      json['prognosisCodeableConcept'] =
          prognosisCodeableConcept!.map((e) => e.toJson()).toList();
    }

    if (prognosisReference != null && prognosisReference!.isNotEmpty) {
      json['prognosisReference'] =
          prognosisReference!.map((e) => e.toJson()).toList();
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ClinicalImpression clone() => throw UnimplementedError();
  @override
  ClinicalImpression copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ClinicalImpressionStatus? status,
    CodeableConcept? statusReason,
    CodeableConcept? code,
    FhirString? description,
    Reference? subject,
    Reference? encounter,
    EffectiveXClinicalImpression? effectiveX,
    FhirDateTime? date,
    Reference? assessor,
    Reference? previous,
    List<Reference>? problem,
    List<ClinicalImpressionInvestigation>? investigation,
    List<FhirUri>? protocol,
    FhirString? summary,
    List<ClinicalImpressionFinding>? finding,
    List<CodeableConcept>? prognosisCodeableConcept,
    List<Reference>? prognosisReference,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalImpression(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      code: code ?? this.code,
      description: description ?? this.description,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveX: effectiveX ?? this.effectiveX,
      date: date ?? this.date,
      assessor: assessor ?? this.assessor,
      previous: previous ?? this.previous,
      problem: problem ?? this.problem,
      investigation: investigation ?? this.investigation,
      protocol: protocol ?? this.protocol,
      summary: summary ?? this.summary,
      finding: finding ?? this.finding,
      prognosisCodeableConcept:
          prognosisCodeableConcept ?? this.prognosisCodeableConcept,
      prognosisReference: prognosisReference ?? this.prognosisReference,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      note: note ?? this.note,
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ClinicalImpressionInvestigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ClinicalImpressionInvestigation clone() => throw UnimplementedError();
  @override
  ClinicalImpressionInvestigation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    List<Reference>? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalImpressionInvestigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      item: item ?? this.item,
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ClinicalImpressionFinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }

    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }

    if (basis != null) {
      addField('basis', basis);
    }

    return json;
  }

  @override
  ClinicalImpressionFinding clone() => throw UnimplementedError();
  @override
  ClinicalImpressionFinding copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirString? basis,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ClinicalImpressionFinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      basis: basis ?? this.basis,
    );
  }
}
