import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ClinicalImpression] /// A record of a clinical assessment performed to determine what problem(s)
/// may affect the patient and before planning the treatments or management
/// strategies that are best to manage a patient's condition. Assessments are
/// often 1:1 with a clinical consultation / encounter, but this varies greatly
/// depending on the clinical workflow. This resource is called
/// "ClinicalImpression" rather than "ClinicalAssessment" to avoid confusion
/// with the recording of assessment tools such as Apgar score.
class ClinicalImpression extends DomainResource {
  ClinicalImpression({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.code,
    this.description,
    this.descriptionElement,
    required this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.date,
    this.dateElement,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
    this.protocolElement,
    this.summary,
    this.summaryElement,
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
  }) : super(resourceType: R4ResourceType.ClinicalImpression);

  @override
  String get fhirType => 'ClinicalImpression';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifiers assigned to this clinical impression by the performer
  /// or other systems which remain constant as the resource is updated and
  /// propagates from server to server.
  final List<Identifier>? identifier;

  /// [status] /// Identifies the workflow status of the assessment.
  final ClinicalImpressionStatus status;
  final Element? statusElement;

  /// [statusReason] /// Captures the reason for the current state of the ClinicalImpression.
  final CodeableConcept? statusReason;

  /// [code] /// Categorizes the type of clinical assessment performed.
  final CodeableConcept? code;

  /// [description] /// A summary of the context and/or cause of the assessment - why / where it
  /// was performed, and what patient events/status prompted it.
  final FhirString? description;
  final Element? descriptionElement;

  /// [subject] /// The patient or group of individuals assessed as part of this record.
  final Reference subject;

  /// [encounter] /// The Encounter during which this ClinicalImpression was created or to which
  /// the creation of this record is tightly associated.
  final Reference? encounter;

  /// [effectiveDateTime] /// The point in time or period over which the subject was assessed.
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The point in time or period over which the subject was assessed.
  final Period? effectivePeriod;

  /// [date] /// Indicates when the documentation of the assessment was complete.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [assessor] /// The clinician performing the assessment.
  final Reference? assessor;

  /// [previous] /// A reference to the last assessment that was conducted on this patient.
  /// Assessments are often/usually ongoing in nature; a care provider
  /// (practitioner or team) will make new assessments on an ongoing basis as new
  /// data arises or the patient's conditions changes.
  final Reference? previous;

  /// [problem] /// A list of the relevant problems/conditions for a patient.
  final List<Reference>? problem;

  /// [investigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
  /// grouping of investigations varies greatly depending on the type and context
  /// of the assessment. These investigations may include data generated during
  /// the assessment process, or data previously generated and recorded that is
  /// pertinent to the outcomes.
  final List<ClinicalImpressionInvestigation>? investigation;

  /// [protocol] /// Reference to a specific published clinical protocol that was followed
  /// during this assessment, and/or that provides evidence in support of the
  /// diagnosis.
  final List<FhirUri>? protocol;
  final List<Element>? protocolElement;

  /// [summary] /// A text summary of the investigations and the diagnosis.
  final FhirString? summary;
  final Element? summaryElement;

  /// [finding] /// Specific findings or diagnoses that were considered likely or relevant to
  /// ongoing treatment.
  final List<ClinicalImpressionFinding>? finding;

  /// [prognosisCodeableConcept] /// Estimate of likely outcome.
  final List<CodeableConcept>? prognosisCodeableConcept;

  /// [prognosisReference] /// RiskAssessment expressing likely outcome.
  final List<Reference>? prognosisReference;

  /// [supportingInfo] /// Information supporting the clinical impression.
  final List<Reference>? supportingInfo;

  /// [note] /// Commentary about the impression, typically recorded after the impression
  /// itself was made, though supplemental notes by the original author could
  /// also appear.
  final List<Annotation>? note;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (statusReason != null) {
      json['statusReason'] = statusReason!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (effectiveDateTime?.value != null) {
      json['effectiveDateTime'] = effectiveDateTime!.value;
    }
    if (effectiveDateTimeElement != null) {
      json['_effectiveDateTime'] = effectiveDateTimeElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (assessor != null) {
      json['assessor'] = assessor!.toJson();
    }
    if (previous != null) {
      json['previous'] = previous!.toJson();
    }
    if (problem != null && problem!.isNotEmpty) {
      json['problem'] =
          problem!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (investigation != null && investigation!.isNotEmpty) {
      json['investigation'] = investigation!
          .map<dynamic>((ClinicalImpressionInvestigation v) => v.toJson())
          .toList();
    }
    if (protocol != null && protocol!.isNotEmpty) {
      json['protocol'] = protocol!.map((FhirUri v) => v.value).toList();
    }
    if (protocolElement != null && protocolElement!.isNotEmpty) {
      json['_protocol'] =
          protocolElement!.map((Element v) => v.toJson()).toList();
    }
    if (summary?.value != null) {
      json['summary'] = summary!.value;
    }
    if (summaryElement != null) {
      json['_summary'] = summaryElement!.toJson();
    }
    if (finding != null && finding!.isNotEmpty) {
      json['finding'] = finding!
          .map<dynamic>((ClinicalImpressionFinding v) => v.toJson())
          .toList();
    }
    if (prognosisCodeableConcept != null &&
        prognosisCodeableConcept!.isNotEmpty) {
      json['prognosisCodeableConcept'] = prognosisCodeableConcept!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (prognosisReference != null && prognosisReference!.isNotEmpty) {
      json['prognosisReference'] = prognosisReference!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] =
          supportingInfo!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClinicalImpression.fromJson(Map<String, dynamic> json) {
    return ClinicalImpression(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ClinicalImpressionStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      statusReason: json['statusReason'] != null
          ? CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      effectiveDateTime: json['effectiveDateTime'] != null
          ? FhirDateTime(json['effectiveDateTime'])
          : null,
      effectiveDateTimeElement: json['_effectiveDateTime'] != null
          ? Element.fromJson(json['_effectiveDateTime'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      assessor: json['assessor'] != null
          ? Reference.fromJson(json['assessor'] as Map<String, dynamic>)
          : null,
      previous: json['previous'] != null
          ? Reference.fromJson(json['previous'] as Map<String, dynamic>)
          : null,
      problem: json['problem'] != null
          ? (json['problem'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      investigation: json['investigation'] != null
          ? (json['investigation'] as List<dynamic>)
              .map<ClinicalImpressionInvestigation>((dynamic v) =>
                  ClinicalImpressionInvestigation.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      protocol: json['protocol'] != null
          ? (json['protocol'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      protocolElement: json['_protocol'] != null
          ? (json['_protocol'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      summary: json['summary'] != null ? FhirString(json['summary']) : null,
      summaryElement: json['_summary'] != null
          ? Element.fromJson(json['_summary'] as Map<String, dynamic>)
          : null,
      finding: json['finding'] != null
          ? (json['finding'] as List<dynamic>)
              .map<ClinicalImpressionFinding>((dynamic v) =>
                  ClinicalImpressionFinding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prognosisCodeableConcept: json['prognosisCodeableConcept'] != null
          ? (json['prognosisCodeableConcept'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prognosisReference: json['prognosisReference'] != null
          ? (json['prognosisReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClinicalImpression clone() => throw UnimplementedError();
  @override
  ClinicalImpression copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ClinicalImpressionStatus? status,
    Element? statusElement,
    CodeableConcept? statusReason,
    CodeableConcept? code,
    FhirString? description,
    Element? descriptionElement,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    FhirDateTime? date,
    Element? dateElement,
    Reference? assessor,
    Reference? previous,
    List<Reference>? problem,
    List<ClinicalImpressionInvestigation>? investigation,
    List<FhirUri>? protocol,
    List<Element>? protocolElement,
    FhirString? summary,
    Element? summaryElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      statusReason: statusReason ?? this.statusReason,
      code: code ?? this.code,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      assessor: assessor ?? this.assessor,
      previous: previous ?? this.previous,
      problem: problem ?? this.problem,
      investigation: investigation ?? this.investigation,
      protocol: protocol ?? this.protocol,
      protocolElement: protocolElement ?? this.protocolElement,
      summary: summary ?? this.summary,
      summaryElement: summaryElement ?? this.summaryElement,
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

  factory ClinicalImpression.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpression.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpression.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpression cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpression.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpression.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalImpressionInvestigation] /// One or more sets of investigations (signs, symptoms, etc.). The actual
/// grouping of investigations varies greatly depending on the type and context
/// of the assessment. These investigations may include data generated during
/// the assessment process, or data previously generated and recorded that is
/// pertinent to the outcomes.
class ClinicalImpressionInvestigation extends BackboneElement {
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

  @override
  String get fhirType => 'ClinicalImpressionInvestigation';

  @Id()
  int dbId = 0;

  /// [code] /// A name/code for the group ("set") of investigations. Typically, this will
  /// be something like "signs", "symptoms", "clinical", "diagnostic", but the
  /// list is not constrained, and others such groups such as
  /// (exposure|family|travel|nutritional) history may be used.
  final CodeableConcept code;

  /// [item] /// A record of a specific investigation that was undertaken.
  final List<Reference>? item;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['code'] = code.toJson();
    if (item != null && item!.isNotEmpty) {
      json['item'] = item!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClinicalImpressionInvestigation.fromJson(Map<String, dynamic> json) {
    return ClinicalImpressionInvestigation(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
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

  factory ClinicalImpressionInvestigation.fromYaml(dynamic yaml) => yaml
          is String
      ? ClinicalImpressionInvestigation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpressionInvestigation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpressionInvestigation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpressionInvestigation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpressionInvestigation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClinicalImpressionFinding] /// Specific findings or diagnoses that were considered likely or relevant to
/// ongoing treatment.
class ClinicalImpressionFinding extends BackboneElement {
  ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
    this.basisElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClinicalImpressionFinding';

  @Id()
  int dbId = 0;

  /// [itemCodeableConcept] /// Specific text or code for finding or diagnosis, which may include ruled-out
  /// or resolved conditions.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// Specific reference for finding or diagnosis, which may include ruled-out or
  /// resolved conditions.
  final Reference? itemReference;

  /// [basis] /// Which investigations support finding or diagnosis.
  final FhirString? basis;
  final Element? basisElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }
    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }
    if (basis?.value != null) {
      json['basis'] = basis!.value;
    }
    if (basisElement != null) {
      json['_basis'] = basisElement!.toJson();
    }
    return json;
  }

  factory ClinicalImpressionFinding.fromJson(Map<String, dynamic> json) {
    return ClinicalImpressionFinding(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>)
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>)
          : null,
      basis: json['basis'] != null ? FhirString(json['basis']) : null,
      basisElement: json['_basis'] != null
          ? Element.fromJson(json['_basis'] as Map<String, dynamic>)
          : null,
    );
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
    Element? basisElement,
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
      basisElement: basisElement ?? this.basisElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClinicalImpressionFinding.fromYaml(dynamic yaml) => yaml is String
      ? ClinicalImpressionFinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClinicalImpressionFinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClinicalImpressionFinding cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClinicalImpressionFinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClinicalImpressionFinding.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
