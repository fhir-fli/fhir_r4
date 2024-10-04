import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PackagedProductDefinition {
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
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  final List<Reference> packageFor;
  final CodeableConcept status;
  final FhirDateTime statusDate;
  final PrimitiveElement StatusDate;
  final List<Quantity> containedItemQuantity;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<PackagedProductDefinitionLegalStatusOfSupply> legalStatusOfSupply;
  final List<MarketingStatus> marketingStatus;
  final List<CodeableConcept> characteristic;
  final FhirBoolean copackagedIndicator;
  final PrimitiveElement CopackagedIndicator;
  final List<Reference> manufacturer;
  final PackagedProductDefinition_Package package;
  const PackagedProductDefinition({
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
    this.name,
    this.Name,
    this.type,
    this.packageFor,
    this.status,
    this.statusDate,
    this.StatusDate,
    this.containedItemQuantity,
    this.description,
    this.Description,
    this.legalStatusOfSupply,
    this.marketingStatus,
    this.characteristic,
    this.copackagedIndicator,
    this.CopackagedIndicator,
    this.manufacturer,
    this.package,
  });
}
