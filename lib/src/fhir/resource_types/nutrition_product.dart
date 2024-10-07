import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
@Entity()
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
  final CodeableReference? item;
  final List<Ratio>? amount;
  @override
  NutritionProductNutrient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
  final CodeableReference item;
  final List<Ratio>? amount;
  @override
  NutritionProductIngredient clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
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
@Entity()
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
