import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class GuidanceResponse {
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
  final Identifier requestIdentifier;
  final List<Identifier> identifier;
  final String moduleUri;
  final PrimitiveElement ModuleUri;
  final String moduleCanonical;
  final PrimitiveElement ModuleCanonical;
  final CodeableConcept moduleCodeableConcept;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Reference performer;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<Reference> evaluationMessage;
  final Reference outputParameters;
  final Reference result;
  final List<DataRequirement> dataRequirement;
  const GuidanceResponse({
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
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.ModuleUri,
    this.moduleCanonical,
    this.ModuleCanonical,
    this.moduleCodeableConcept,
    this.status,
    this.Status,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.OccurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
  });
}
