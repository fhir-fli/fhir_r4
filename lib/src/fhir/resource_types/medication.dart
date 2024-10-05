import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Medication extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept? code;
  final FhirCode? status;
  final Element? statusElement;
  final Reference? manufacturer;
  final CodeableConcept? form;
  final Ratio? amount;
  final List<MedicationIngredient>? ingredient;
  final MedicationBatch? batch;

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
  }): super(resourceType: R4ResourceType.Medication);

@override
Medication clone() => this;

}


@Data()
@JsonCodable()
class MedicationIngredient {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? itemCodeableConcept;
  final Reference? itemReference;
  final FhirBoolean? isActive;
  final Element? isActiveElement;
  final Ratio? strength;

  MedicationIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
  });

}


@Data()
@JsonCodable()
class MedicationBatch {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;

  MedicationBatch({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
  });

}



