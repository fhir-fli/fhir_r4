import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Specimen {
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
  final Identifier accessionIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final Reference subject;
  final FhirDateTime receivedTime;
  final PrimitiveElement ReceivedTime;
  final List<Reference> parent;
  final List<Reference> request;
  final Specimen_Collection collection;
  final List<SpecimenProcessing> processing;
  final List<SpecimenContainer> container;
  final List<CodeableConcept> condition;
  final List<Annotation> note;
  const Specimen({
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
    this.accessionIdentifier,
    this.status,
    this.Status,
    this.type,
    this.subject,
    this.receivedTime,
    this.ReceivedTime,
    this.parent,
    this.request,
    this.collection,
    this.processing,
    this.container,
    this.condition,
    this.note,
  });
}
