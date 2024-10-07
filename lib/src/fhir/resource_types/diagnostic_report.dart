import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.DiagnosticReport);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this report by the performer or other systems.
  final List<Identifier>? identifier;

  /// [basedOn] /// Details concerning a service requested.
  final List<Reference>? basedOn;

  /// [status] /// The status of the diagnostic report.
  final FhirCode status;
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
  DiagnosticReport clone() => throw UnimplementedError();
  DiagnosticReport copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    FhirCode? status,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [comment] /// A comment about the image. Typically, this is used to provide an
  /// explanation for why the image is included, or to draw the viewer's
  /// attention to important features.
  final FhirString? comment;
  final Element? commentElement;

  /// [link] /// Reference to the image source.
  final Reference link;
  @override
  DiagnosticReportMedia clone() => throw UnimplementedError();
  DiagnosticReportMedia copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? comment,
    Element? commentElement,
    Reference? link,
  }) {
    return DiagnosticReportMedia(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
      link: link ?? this.link,
    );
  }
}
