import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ManufacturedItemDefinition {
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
  final CodeableConcept manufacturedDoseForm;
  final CodeableConcept unitOfPresentation;
  final List<Reference> manufacturer;
  final List<CodeableConcept> ingredient;
  final List<ManufacturedItemDefinitionProperty> property;
  const ManufacturedItemDefinition({
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
    required this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.ingredient,
    this.property,
  });
}
