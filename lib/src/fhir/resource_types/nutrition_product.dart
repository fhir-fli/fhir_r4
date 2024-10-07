import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class NutritionProduct extends DomainResource {
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
    required this.status,
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
  }) : super(resourceType: R4ResourceType.NutritionProduct);

  final FhirCode status;
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
  @override
  NutritionProduct clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class NutritionProductNutrient extends BackboneElement {
  NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
  });

  final CodeableReference? item;
  final List<Ratio>? amount;
  @override
  NutritionProductNutrient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class NutritionProductIngredient extends BackboneElement {
  NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
  });

  final CodeableReference item;
  final List<Ratio>? amount;
  @override
  NutritionProductIngredient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class NutritionProductProductCharacteristic extends BackboneElement {
  NutritionProductProductCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueString,
    this.valueStringElement,
    required this.valueQuantity,
    required this.valueBase64Binary,
    this.valueBase64BinaryElement,
    required this.valueAttachment,
    required this.valueBoolean,
    this.valueBooleanElement,
  });

  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final FhirString valueString;
  final Element? valueStringElement;
  final Quantity valueQuantity;
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;
  final Attachment valueAttachment;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  @override
  NutritionProductProductCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class NutritionProductInstance extends BackboneElement {
  NutritionProductInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.quantity,
    this.identifier,
    this.lotNumber,
    this.lotNumberElement,
    this.expiry,
    this.expiryElement,
    this.useBy,
    this.useByElement,
  });

  final Quantity? quantity;
  final List<Identifier>? identifier;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final FhirDateTime? useBy;
  final Element? useByElement;
  @override
  NutritionProductInstance clone() => throw UnimplementedError();
}
