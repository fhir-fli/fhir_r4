import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [DiagnosticReport] /// The findings and interpretation of diagnostic tests performed on patients,
/// groups of patients, devices, and locations, and/or specimens derived from
/// these. The report includes clinical context such as requesting and provider
/// information, and some mix of atomic results, images, textual and coded
/// interpretations, and formatted representation of diagnostic reports.
class DiagnosticReport extends DomainResource {
  DiagnosticReport({
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
    this.basedOn,
    required this.status,
    this.statusElement,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.issued,
    this.issuedElement,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.conclusionElement,
    this.conclusionCode,
    this.presentedForm,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.DiagnosticReport);

  @override
  String get fhirType => 'DiagnosticReport';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this report by the performer or other systems.
  final List<Identifier>? identifier;

  /// [basedOn] /// Details concerning a service requested.
  final List<Reference>? basedOn;

  /// [status] /// The status of the diagnostic report.
  final DiagnosticReportStatus status;
  final Element? statusElement;

  /// [category] /// A code that classifies the clinical discipline, department or diagnostic
  /// service that created the report (e.g. cardiology, biochemistry, hematology,
  /// MRI). This is used for searching, sorting and display purposes.
  final List<CodeableConcept>? category;

  /// [code] /// A code or name that describes this diagnostic report.
  final CodeableConcept code;

  /// [subject] /// The subject of the report. Usually, but not always, this is a patient.
  /// However, diagnostic services also perform analyses on specimens collected
  /// from a variety of other sources.
  final Reference? subject;

  /// [encounter] /// The healthcare event (e.g. a patient and healthcare provider interaction)
  /// which this DiagnosticReport is about.
  final Reference? encounter;

  /// [effectiveDateTime] /// The time or time-period the observed values are related to. When the
  /// subject of the report is a patient, this is usually either the time of the
  /// procedure or of specimen collection(s), but very often the source of the
  /// date/time is not known, only the date/time itself.
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;

  /// [effectivePeriod] /// The time or time-period the observed values are related to. When the
  /// subject of the report is a patient, this is usually either the time of the
  /// procedure or of specimen collection(s), but very often the source of the
  /// date/time is not known, only the date/time itself.
  final Period? effectivePeriod;

  /// [issued] /// The date and time that this version of the report was made available to
  /// providers, typically after the report was reviewed and verified.
  final FhirInstant? issued;
  final Element? issuedElement;

  /// [performer] /// The diagnostic service that is responsible for issuing the report.
  final List<Reference>? performer;

  /// [resultsInterpreter] /// The practitioner or organization that is responsible for the report's
  /// conclusions and interpretations.
  final List<Reference>? resultsInterpreter;

  /// [specimen] /// Details about the specimens on which this diagnostic report is based.
  final List<Reference>? specimen;

  /// [result] /// [Observations](observation.html) that are part of this diagnostic report.
  final List<Reference>? result;

  /// [imagingStudy] /// One or more links to full details of any imaging performed during the
  /// diagnostic investigation. Typically, this is imaging performed by DICOM
  /// enabled modalities, but this is not required. A fully enabled PACS viewer
  /// can use this information to provide views of the source images.
  final List<Reference>? imagingStudy;

  /// [media] /// A list of key images associated with this report. The images are generally
  /// created during the diagnostic process, and may be directly of the patient,
  /// or of treated specimens (i.e. slides of interest).
  final List<DiagnosticReportMedia>? media;

  /// [conclusion] /// Concise and clinically contextualized summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  final FhirString? conclusion;
  final Element? conclusionElement;

  /// [conclusionCode] /// One or more codes that represent the summary conclusion
  /// (interpretation/impression) of the diagnostic report.
  final List<CodeableConcept>? conclusionCode;

  /// [presentedForm] /// Rich text representation of the entire result as issued by the diagnostic
  /// service. Multiple formats are allowed but they SHALL be semantically
  /// equivalent.
  final List<Attachment>? presentedForm;
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
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
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
    if (issued?.value != null) {
      json['issued'] = issued!.value;
    }
    if (issuedElement != null) {
      json['_issued'] = issuedElement!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] =
          performer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (resultsInterpreter != null && resultsInterpreter!.isNotEmpty) {
      json['resultsInterpreter'] = resultsInterpreter!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (specimen != null && specimen!.isNotEmpty) {
      json['specimen'] =
          specimen!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (result != null && result!.isNotEmpty) {
      json['result'] =
          result!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (imagingStudy != null && imagingStudy!.isNotEmpty) {
      json['imagingStudy'] =
          imagingStudy!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (media != null && media!.isNotEmpty) {
      json['media'] =
          media!.map<dynamic>((DiagnosticReportMedia v) => v.toJson()).toList();
    }
    if (conclusion?.value != null) {
      json['conclusion'] = conclusion!.value;
    }
    if (conclusionElement != null) {
      json['_conclusion'] = conclusionElement!.toJson();
    }
    if (conclusionCode != null && conclusionCode!.isNotEmpty) {
      json['conclusionCode'] = conclusionCode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (presentedForm != null && presentedForm!.isNotEmpty) {
      json['presentedForm'] =
          presentedForm!.map<dynamic>((Attachment v) => v.toJson()).toList();
    }
    return json;
  }

  factory DiagnosticReport.fromJson(Map<String, dynamic> json) {
    return DiagnosticReport(
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
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: DiagnosticReportStatus.fromJson(
          json['status'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
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
      issued: json['issued'] != null ? FhirInstant(json['issued']) : null,
      issuedElement: json['_issued'] != null
          ? Element.fromJson(json['_issued'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      resultsInterpreter: json['resultsInterpreter'] != null
          ? (json['resultsInterpreter'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specimen: json['specimen'] != null
          ? (json['specimen'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      result: json['result'] != null
          ? (json['result'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      imagingStudy: json['imagingStudy'] != null
          ? (json['imagingStudy'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      media: json['media'] != null
          ? (json['media'] as List<dynamic>)
              .map<DiagnosticReportMedia>((dynamic v) =>
                  DiagnosticReportMedia.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      conclusion:
          json['conclusion'] != null ? FhirString(json['conclusion']) : null,
      conclusionElement: json['_conclusion'] != null
          ? Element.fromJson(json['_conclusion'] as Map<String, dynamic>)
          : null,
      conclusionCode: json['conclusionCode'] != null
          ? (json['conclusionCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      presentedForm: json['presentedForm'] != null
          ? (json['presentedForm'] as List<dynamic>)
              .map<Attachment>(
                  (dynamic v) => Attachment.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  DiagnosticReport clone() => throw UnimplementedError();
  @override
  DiagnosticReport copyWith({
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
    List<Reference>? basedOn,
    DiagnosticReportStatus? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? effectiveDateTime,
    Element? effectiveDateTimeElement,
    Period? effectivePeriod,
    FhirInstant? issued,
    Element? issuedElement,
    List<Reference>? performer,
    List<Reference>? resultsInterpreter,
    List<Reference>? specimen,
    List<Reference>? result,
    List<Reference>? imagingStudy,
    List<DiagnosticReportMedia>? media,
    FhirString? conclusion,
    Element? conclusionElement,
    List<CodeableConcept>? conclusionCode,
    List<Attachment>? presentedForm,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DiagnosticReport(
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
      basedOn: basedOn ?? this.basedOn,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      effectiveDateTime: effectiveDateTime ?? this.effectiveDateTime,
      effectiveDateTimeElement:
          effectiveDateTimeElement ?? this.effectiveDateTimeElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      issued: issued ?? this.issued,
      issuedElement: issuedElement ?? this.issuedElement,
      performer: performer ?? this.performer,
      resultsInterpreter: resultsInterpreter ?? this.resultsInterpreter,
      specimen: specimen ?? this.specimen,
      result: result ?? this.result,
      imagingStudy: imagingStudy ?? this.imagingStudy,
      media: media ?? this.media,
      conclusion: conclusion ?? this.conclusion,
      conclusionElement: conclusionElement ?? this.conclusionElement,
      conclusionCode: conclusionCode ?? this.conclusionCode,
      presentedForm: presentedForm ?? this.presentedForm,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DiagnosticReport.fromYaml(dynamic yaml) => yaml is String
      ? DiagnosticReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DiagnosticReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DiagnosticReport cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DiagnosticReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DiagnosticReport.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [DiagnosticReportMedia] /// A list of key images associated with this report. The images are generally
/// created during the diagnostic process, and may be directly of the patient,
/// or of treated specimens (i.e. slides of interest).
class DiagnosticReportMedia extends BackboneElement {
  DiagnosticReportMedia({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.comment,
    this.commentElement,
    required this.link,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'DiagnosticReportMedia';

  @Id()
  int dbId = 0;

  /// [comment] /// A comment about the image. Typically, this is used to provide an
  /// explanation for why the image is included, or to draw the viewer's
  /// attention to important features.
  final FhirString? comment;
  final Element? commentElement;

  /// [link] /// Reference to the image source.
  final Reference link;
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
    if (comment?.value != null) {
      json['comment'] = comment!.value;
    }
    if (commentElement != null) {
      json['_comment'] = commentElement!.toJson();
    }
    json['link'] = link.toJson();
    return json;
  }

  factory DiagnosticReportMedia.fromJson(Map<String, dynamic> json) {
    return DiagnosticReportMedia(
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
      comment: json['comment'] != null ? FhirString(json['comment']) : null,
      commentElement: json['_comment'] != null
          ? Element.fromJson(json['_comment'] as Map<String, dynamic>)
          : null,
      link: Reference.fromJson(json['link'] as Map<String, dynamic>),
    );
  }
  @override
  DiagnosticReportMedia clone() => throw UnimplementedError();
  @override
  DiagnosticReportMedia copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? comment,
    Element? commentElement,
    Reference? link,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DiagnosticReportMedia(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      link: link ?? this.link,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory DiagnosticReportMedia.fromYaml(dynamic yaml) => yaml is String
      ? DiagnosticReportMedia.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? DiagnosticReportMedia.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'DiagnosticReportMedia cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory DiagnosticReportMedia.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DiagnosticReportMedia.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
