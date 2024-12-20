part of 'nutrition_product.dart';

/// The actual characteristic value corresponding to the type.
sealed class ValueXNutritionProductProductCharacteristic extends DataType {}

/// The actual characteristic value corresponding to the type.
class CodeableConceptValueNutritionProductProductCharacteristic
    extends CodeableConcept
    implements ValueXNutritionProductProductCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueNutritionProductProductCharacteristic;
}

/// The actual characteristic value corresponding to the type.
class StringValueNutritionProductProductCharacteristic extends FhirString
    implements ValueXNutritionProductProductCharacteristic {
  /// Constructor for [StringValueNutritionProductProductCharacteristic]
  StringValueNutritionProductProductCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringValueNutritionProductProductCharacteristic;
}

/// The actual characteristic value corresponding to the type.
class QuantityValueNutritionProductProductCharacteristic extends Quantity
    implements ValueXNutritionProductProductCharacteristic {
  /// Factory constructor for super class
  factory QuantityValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueNutritionProductProductCharacteristic;
}

/// The actual characteristic value corresponding to the type.
class Base64BinaryValueNutritionProductProductCharacteristic
    extends FhirBase64Binary
    implements ValueXNutritionProductProductCharacteristic {
  /// Constructor for [Base64BinaryValueNutritionProductProductCharacteristic]
  Base64BinaryValueNutritionProductProductCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory Base64BinaryValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBase64Binary.fromJson(json)
          as Base64BinaryValueNutritionProductProductCharacteristic;
}

/// The actual characteristic value corresponding to the type.
class AttachmentValueNutritionProductProductCharacteristic extends Attachment
    implements ValueXNutritionProductProductCharacteristic {
  /// Factory constructor for super class
  factory AttachmentValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValueNutritionProductProductCharacteristic;
}

/// The actual characteristic value corresponding to the type.
class BooleanValueNutritionProductProductCharacteristic extends FhirBoolean
    implements ValueXNutritionProductProductCharacteristic {
  /// Constructor for [BooleanValueNutritionProductProductCharacteristic]
  BooleanValueNutritionProductProductCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueNutritionProductProductCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValueNutritionProductProductCharacteristic;
}
