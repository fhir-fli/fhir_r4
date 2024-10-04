import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class BodyStructure {
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
  final FhirBoolean active;
  final PrimitiveElement Active;
  final CodeableConcept morphology;
  final CodeableConcept location;
  final List<CodeableConcept> locationQualifier;
  final String description;
  final PrimitiveElement Description;
  final List<Attachment> image;
  final Reference patient;
  const BodyStructure({
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
    this.active,
    this.Active,
    this.morphology,
    this.location,
    this.locationQualifier,
    this.description,
    this.Description,
    this.image,
    required this.patient,
  });
}
