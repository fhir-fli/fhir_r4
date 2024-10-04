import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class DiagnosticReport {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<Reference> basedOn;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String effectiveDateTime;
  final PrimitiveElement EffectiveDateTime;
  final Period effectivePeriod;
  final FhirInstant issued;
  final PrimitiveElement Issued;
  final List<Reference> performer;
  final List<Reference> resultsInterpreter;
  final List<Reference> specimen;
  final List<Reference> result;
  final List<Reference> imagingStudy;
  final List<DiagnosticReportMedia> media;
  final String conclusion;
  final PrimitiveElement Conclusion;
  final List<CodeableConcept> conclusionCode;
  final List<Attachment> presentedForm;
  const DiagnosticReport({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    this.status,
    this.Status,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.EffectiveDateTime,
    this.effectivePeriod,
    this.issued,
    this.Issued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.Conclusion,
    this.conclusionCode,
    this.presentedForm,
  });
}
