import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [NutritionProduct] /// A food or fluid product that is consumed by patients.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [status] /// The current state of the product.
  final FhirCode status;
  final Element? statusElement;

  /// [category] /// Nutrition products can have different classifications - according to its
  /// nutritional properties, preparation methods, etc.
  final List<CodeableConcept>? category;

  /// [code] /// The code assigned to the product, for example a manufacturer number or
  /// other terminology.
  final CodeableConcept? code;

  /// [manufacturer] /// The organisation (manufacturer, representative or legal authorisation
  /// holder) that is responsible for the device.
  final List<Reference>? manufacturer;

  /// [nutrient] /// The product's nutritional information expressed by the nutrients.
  final List<NutritionProductNutrient>? nutrient;

  /// [ingredient] /// Ingredients contained in this product.
  final List<NutritionProductIngredient>? ingredient;

  /// [knownAllergen] /// Allergens that are known or suspected to be a part of this nutrition
  /// product.
  final List<CodeableReference>? knownAllergen;

  /// [productCharacteristic] /// Specifies descriptive properties of the nutrition product.
  final List<NutritionProductProductCharacteristic>? productCharacteristic;

  /// [instance] /// Conveys instance-level information about this product item. One or several
  /// physical, countable instances or occurrences of the product.
  final NutritionProductInstance? instance;

  /// [note] /// Comments made about the product.
  final List<Annotation>? note;
  @override
  NutritionProduct clone() => throw UnimplementedError();
  NutritionProduct copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? status,
    Element? statusElement,
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Reference>? manufacturer,
    List<NutritionProductNutrient>? nutrient,
    List<NutritionProductIngredient>? ingredient,
    List<CodeableReference>? knownAllergen,
    List<NutritionProductProductCharacteristic>? productCharacteristic,
    NutritionProductInstance? instance,
    List<Annotation>? note,
  }) {
    return NutritionProduct(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      category: category ?? this.category,
      code: code ?? this.code,
      manufacturer: manufacturer ?? this.manufacturer,
      nutrient: nutrient ?? this.nutrient,
      ingredient: ingredient ?? this.ingredient,
      knownAllergen: knownAllergen ?? this.knownAllergen,
      productCharacteristic:
          productCharacteristic ?? this.productCharacteristic,
      instance: instance ?? this.instance,
      note: note ?? this.note,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionProductNutrient] /// The product's nutritional information expressed by the nutrients.
class NutritionProductNutrient extends BackboneElement {
  NutritionProductNutrient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.item,
    this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [item] /// The (relevant) nutrients in the product.
  final CodeableReference? item;

  /// [amount] /// The amount of nutrient expressed in one or more units: X per pack / per
  /// serving / per dose.
  final List<Ratio>? amount;
  @override
  NutritionProductNutrient clone() => throw UnimplementedError();
  NutritionProductNutrient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
  }) {
    return NutritionProductNutrient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionProductIngredient] /// Ingredients contained in this product.
class NutritionProductIngredient extends BackboneElement {
  NutritionProductIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.item,
    this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [item] /// The ingredient contained in the product.
  final CodeableReference item;

  /// [amount] /// The amount of ingredient that is in the product.
  final List<Ratio>? amount;
  @override
  NutritionProductIngredient clone() => throw UnimplementedError();
  NutritionProductIngredient copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? item,
    List<Ratio>? amount,
  }) {
    return NutritionProductIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      item: item ?? this.item,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionProductProductCharacteristic] /// Specifies descriptive properties of the nutrition product.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code specifying which characteristic of the product is being described
  /// (for example, colour, shape).
  final CodeableConcept type;

  /// [valueCodeableConcept] /// The actual characteristic value corresponding to the type.
  final CodeableConcept valueCodeableConcept;

  /// [valueString] /// The actual characteristic value corresponding to the type.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueQuantity] /// The actual characteristic value corresponding to the type.
  final Quantity valueQuantity;

  /// [valueBase64Binary] /// The actual characteristic value corresponding to the type.
  final FhirBase64Binary valueBase64Binary;
  final Element? valueBase64BinaryElement;

  /// [valueAttachment] /// The actual characteristic value corresponding to the type.
  final Attachment valueAttachment;

  /// [valueBoolean] /// The actual characteristic value corresponding to the type.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  @override
  NutritionProductProductCharacteristic clone() => throw UnimplementedError();
  NutritionProductProductCharacteristic copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    FhirString? valueString,
    Element? valueStringElement,
    Quantity? valueQuantity,
    FhirBase64Binary? valueBase64Binary,
    Element? valueBase64BinaryElement,
    Attachment? valueAttachment,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
  }) {
    return NutritionProductProductCharacteristic(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueBase64Binary: valueBase64Binary ?? this.valueBase64Binary,
      valueBase64BinaryElement:
          valueBase64BinaryElement ?? this.valueBase64BinaryElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [NutritionProductInstance] /// Conveys instance-level information about this product item. One or several
/// physical, countable instances or occurrences of the product.
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [quantity] /// The amount of items or instances that the resource considers, for instance
  /// when referring to 2 identical units together.
  final Quantity? quantity;

  /// [identifier] /// The identifier for the physical instance, typically a serial number.
  final List<Identifier>? identifier;

  /// [lotNumber] /// The identification of the batch or lot of the product.
  final FhirString? lotNumber;
  final Element? lotNumberElement;

  /// [expiry] /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? expiry;
  final Element? expiryElement;

  /// [useBy] /// The time after which the product is no longer expected to be in proper
  /// condition, or its use is not advised or not allowed.
  final FhirDateTime? useBy;
  final Element? useByElement;
  @override
  NutritionProductInstance clone() => throw UnimplementedError();
  NutritionProductInstance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Quantity? quantity,
    List<Identifier>? identifier,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirDateTime? expiry,
    Element? expiryElement,
    FhirDateTime? useBy,
    Element? useByElement,
  }) {
    return NutritionProductInstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      quantity: quantity ?? this.quantity,
      identifier: identifier ?? this.identifier,
      lotNumber: lotNumber ?? this.lotNumber,
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      expiry: expiry ?? this.expiry,
      expiryElement: expiryElement ?? this.expiryElement,
      useBy: useBy ?? this.useBy,
      useByElement: useByElement ?? this.useByElement,
    );
  }
}
