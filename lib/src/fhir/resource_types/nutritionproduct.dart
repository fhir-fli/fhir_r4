import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class NutritionProduct extends DomainResource {
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept? code;
  final List<Reference>? manufacturer;
  final List<NutritionProductNutrient>? nutrient;
  final List<NutritionProductIngredient>? ingredient;
  final List<CodeableReference>? knownAllergen;
  final List<NutritionProductProductCharacteristic>? productCharacteristic;
  final NutritionProductInstance? instance;
  final List<Annotation>? note;

  NutritionProduct({
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
    this.status,
    this.statusElement,
    this.category,
    this.code,
    this.manufacturer,
    this.nutrient,
    this.ingredient,
    this.knownAllergen,
    this.productCharacteristic,
    this.instance,
    this.note,
  }): super(resourceType: R4ResourceType.NutritionProduct);

@override
NutritionProduct clone() => this;

}


@Data()
@JsonCodable()
class NutritionProductNutrient {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference? item;
  final List<Ratio>? amount;

  NutritionProductNutrient({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.item,
    this.amount,
  });

}


@Data()
@JsonCodable()
class NutritionProductIngredient {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableReference item;
  final List<Ratio>? amount;

  NutritionProductIngredient({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.item,
    this.amount,
  });

}


@Data()
@JsonCodable()
class NutritionProductProductCharacteristic {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final CodeableConcept? valueCodeableConcept;
  final FhirString? valueString;
  final Element? valueStringElement;
  final Quantity? valueQuantity;
  final FhirString? valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final Attachment? valueAttachment;
  final bool? valueBoolean;
  final Element? valueBooleanElement;

  NutritionProductProductCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueString,
    this.valueStringElement,
    this.valueQuantity,
    this.valueBase64Binary,
    this.valueBase64BinaryElement,
    this.valueAttachment,
    this.valueBoolean,
    this.valueBooleanElement,
  });

}


@Data()
@JsonCodable()
class NutritionProductInstance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Quantity? quantity;
  final List<Identifier>? identifier;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final FhirDateTime? useBy;
  final Element? useByElement;

  NutritionProductInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.lotNumberElement,
    this.expiry,
    this.expiryElement,
    this.useBy,
    this.useByElement,
  });

}



