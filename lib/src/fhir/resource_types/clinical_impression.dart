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

  ClinicalImpression({
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
    this.effectiveDateTime,
    this.effectivePeriod,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ClinicalImpression,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpression.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpression(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ClinicalImpressionStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>,
            )
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      effectiveDateTime: (json['effectiveDateTime'] != null ||
              json['_effectiveDateTime'] != null)
          ? FhirDateTime.fromJson({
              'value': json['effectiveDateTime'],
              '_value': json['_effectiveDateTime'],
            })
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(
              json['effectivePeriod'] as Map<String, dynamic>,
            )
          : null,
      date: (json['date'] != null || json['_date'] != null)
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      assessor: json['assessor'] != null
          ? Reference.fromJson(
              json['assessor'] as Map<String, dynamic>,
            )
          : null,
      previous: json['previous'] != null
          ? Reference.fromJson(
              json['previous'] as Map<String, dynamic>,
            )
          : null,
      problem: json['problem'] != null
          ? (json['problem'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      investigation: json['investigation'] != null
          ? (json['investigation'] as List<dynamic>)
              .map<ClinicalImpressionInvestigation>(
                (v) => ClinicalImpressionInvestigation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      protocol: parsePrimitiveList<FhirUri>(
        json['protocol'] as List<dynamic>?,
        json['_protocol'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      summary: (json['summary'] != null || json['_summary'] != null)
          ? FhirString.fromJson({
              'value': json['summary'],
              '_value': json['_summary'],
            })
          : null,
      finding: json['finding'] != null
          ? (json['finding'] as List<dynamic>)
              .map<ClinicalImpressionFinding>(
                (v) => ClinicalImpressionFinding.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prognosisCodeableConcept: json['prognosisCodeableConcept'] != null
          ? (json['prognosisCodeableConcept'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      prognosisReference: json['prognosisReference'] != null
          ? (json['prognosisReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClinicalImpression]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpression.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpression.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpression.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'ClinicalImpression cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [ClinicalImpression]
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

  /// [effectiveDateTime]
  /// The point in time or period over which the subject was assessed.
  final FhirDateTime? effectiveDateTime;

  /// [effectivePeriod]
  /// The point in time or period over which the subject was assessed.
  final Period? effectivePeriod;

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
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    addField('implicitRules', implicitRules);
    addField('language', language);
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

    addField('description', description);
    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    addField('effectiveDateTime', effectiveDateTime);
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }

    addField('date', date);
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

    addField('summary', summary);
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
    FhirDateTime? effectiveDateTime,
    Period? effectivePeriod,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
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

  ClinicalImpressionInvestigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionInvestigation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpressionInvestigation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ClinicalImpressionInvestigation]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionInvestigation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionInvestigation.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionInvestigation.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionInvestigation cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [ClinicalImpressionInvestigation]
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
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalImpressionInvestigation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ClinicalImpressionFinding]
/// Specific findings or diagnoses that were considered likely or relevant
/// to ongoing treatment.
class ClinicalImpressionFinding extends BackboneElement {
  /// Primary constructor for
  /// [ClinicalImpressionFinding]

  ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ClinicalImpressionFinding.fromJson(
    Map<String, dynamic> json,
  ) {
    return ClinicalImpressionFinding(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            )
          : null,
      basis: (json['basis'] != null || json['_basis'] != null)
          ? FhirString.fromJson({
              'value': json['basis'],
              '_value': json['_basis'],
            })
          : null,
    );
  }

  /// Deserialize [ClinicalImpressionFinding]
  /// from a [String] or [YamlMap] object
  factory ClinicalImpressionFinding.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ClinicalImpressionFinding.fromJson(
        yamlToJson(yaml) as Map<String, Object?>,
      );
    } else if (yaml is YamlMap) {
      return ClinicalImpressionFinding.fromJson(
        yamlMapToJson(yaml) as Map<String, Object?>,
      );
    } else {
      throw ArgumentError(
        'ClinicalImpressionFinding cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for [ClinicalImpressionFinding]
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
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
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

    addField('basis', basis);
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClinicalImpressionFinding(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      basis: basis ?? this.basis,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
