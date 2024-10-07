import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ManufacturedItemDefinition extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept manufacturedDoseForm;
  final CodeableConcept? unitOfPresentation;
  final List<Reference>? manufacturer;
  final List<CodeableConcept>? ingredient;
  final List<ManufacturedItemDefinitionProperty>? property;

  ManufacturedItemDefinition({
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
    required this.status,
this.statusElement,
    required this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.ingredient,
    this.property,
  }) : super(resourceType: R4ResourceType.ManufacturedItemDefinition);

@override
ManufacturedItemDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ManufacturedItemDefinitionProperty extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final FhirDate? valueDate;
  final Element? valueDateElement;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  final Attachment? valueAttachment;

  ManufacturedItemDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
this.valueDateElement,
    this.valueBoolean,
this.valueBooleanElement,
    this.valueAttachment,
  });

@override
ManufacturedItemDefinitionProperty clone() => throw UnimplementedError();
}

