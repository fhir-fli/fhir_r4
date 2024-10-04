import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ImagingStudy {
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
  final List<Coding> modality;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime started;
  final PrimitiveElement Started;
  final List<Reference> basedOn;
  final Reference referrer;
  final List<Reference> interpreter;
  final List<Reference> endpoint;
  final FhirUnsignedInt numberOfSeries;
  final PrimitiveElement NumberOfSeries;
  final FhirUnsignedInt numberOfInstances;
  final PrimitiveElement NumberOfInstances;
  final Reference procedureReference;
  final List<CodeableConcept> procedureCode;
  final Reference location;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final String description;
  final PrimitiveElement Description;
  final List<ImagingStudySeries> series;
  const ImagingStudy({
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
    this.modality,
    required this.subject,
    this.encounter,
    this.started,
    this.Started,
    this.basedOn,
    this.referrer,
    this.interpreter,
    this.endpoint,
    this.numberOfSeries,
    this.NumberOfSeries,
    this.numberOfInstances,
    this.NumberOfInstances,
    this.procedureReference,
    this.procedureCode,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.description,
    this.Description,
    this.series,
  });
}
