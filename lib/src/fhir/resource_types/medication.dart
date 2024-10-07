import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Medication extends DomainResource {
  Medication({
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
    this.code,
    this.status,
    this.statusElement,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  }) : super(resourceType: R4ResourceType.Medication);

  final List<Identifier>? identifier;
  final CodeableConcept? code;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? manufacturer;
  final CodeableConcept? form;
  final Ratio? amount;
  final List<MedicationIngredient>? ingredient;
  final MedicationBatch? batch;
  @override
  Medication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationIngredient extends BackboneElement {
  MedicationIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

  final CodeableConcept itemCodeableConcept;
  final Reference itemReference;
  final FhirBoolean? isActive;
  final Element? isActiveElement;
  final Ratio? strength;
  @override
  MedicationIngredient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationBatch extends BackboneElement {
  MedicationBatch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
  });

  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;
  @override
  MedicationBatch clone() => throw UnimplementedError();
}
