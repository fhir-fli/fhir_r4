import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdministrableProductDefinition {
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
  final List<Reference> formOf;
  final CodeableConcept administrableDoseForm;
  final CodeableConcept unitOfPresentation;
  final List<Reference> producedFrom;
  final List<CodeableConcept> ingredient;
  final Reference device;
  final List<AdministrableProductDefinitionProperty> property;
  final List<AdministrableProductDefinitionRouteOfAdministration> routeOfAdministration;
  const AdministrableProductDefinition({
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
    this.formOf,
    this.administrableDoseForm,
    this.unitOfPresentation,
    this.producedFrom,
    this.ingredient,
    this.device,
    this.property,
    required this.routeOfAdministration,
  });
}
