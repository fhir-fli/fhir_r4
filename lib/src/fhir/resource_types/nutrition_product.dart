import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class NutritionProduct extends DomainResource {
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept? code;
  final List<Reference>? manufacturer;
  final List<BackboneElement>? nutrient;
  final List<BackboneElement>? ingredient;
  final List<CodeableReference>? knownAllergen;
  final List<BackboneElement>? productCharacteristic;
  final BackboneElement? instance;
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

@override
NutritionProduct clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionProductNutrient extends BackboneElement {
  final CodeableReference? item;
  final List<Ratio>? amount;

  NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
  });

@override
NutritionProductNutrient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionProductIngredient extends BackboneElement {
  final CodeableReference item;
  final List<Ratio>? amount;

  NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
  });

@override
NutritionProductIngredient clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionProductProductCharacteristic extends BackboneElement {
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final FhirString valueFhirString;
  final Element? valueFhirStringElement;
  final Quantity valueQuantity;
  final FhirBase64Binary valueFhirBase64Binary;
  final Element? valueFhirBase64BinaryElement;
  final Attachment valueAttachment;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;

  NutritionProductProductCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueFhirString,
this.valueFhirStringElement,
    required this.valueQuantity,
    required this.valueFhirBase64Binary,
this.valueFhirBase64BinaryElement,
    required this.valueAttachment,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
  });

@override
NutritionProductProductCharacteristic clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class NutritionProductInstance extends BackboneElement {
  final Quantity? quantity;
  final List<Identifier>? identifier;
  final FhirString? lotNumber;
  final Element? lotNumberElement;
  final FhirDateTime? expiry;
  final Element? expiryElement;
  final FhirDateTime? useBy;
  final Element? useByElement;

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

@override
NutritionProductInstance clone() => throw UnimplementedError();
}
