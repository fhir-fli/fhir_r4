import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MeasureReport {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirCanonical measure;
  final Reference subject;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference reporter;
  final Period period;
  final CodeableConcept improvementNotation;
  final List<MeasureReportGroup> group;
  final List<Reference> evaluatedResource;
  const MeasureReport({
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
    this.status,
    this.Status,
    this.type,
    this.Type,
    required this.measure,
    this.subject,
    this.date,
    this.Date,
    this.reporter,
    required this.period,
    this.improvementNotation,
    this.group,
    this.evaluatedResource,
  });
}
