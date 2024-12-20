part of 'medicinal_product_definition.dart';

/// A value for the characteristic.
sealed class ValueXMedicinalProductDefinitionCharacteristic extends DataType {}

/// A value for the characteristic.
class CodeableConceptValueMedicinalProductDefinitionCharacteristic
    extends CodeableConcept
    implements ValueXMedicinalProductDefinitionCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptValueMedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueMedicinalProductDefinitionCharacteristic;
}

/// A value for the characteristic.
class QuantityValueMedicinalProductDefinitionCharacteristic extends Quantity
    implements ValueXMedicinalProductDefinitionCharacteristic {
  /// Factory constructor for super class
  factory QuantityValueMedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueMedicinalProductDefinitionCharacteristic;
}

/// A value for the characteristic.
class DateValueMedicinalProductDefinitionCharacteristic extends FhirDate
    implements ValueXMedicinalProductDefinitionCharacteristic {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueMedicinalProductDefinitionCharacteristic.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDate.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateValueMedicinalProductDefinitionCharacteristic;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueMedicinalProductDefinitionCharacteristic.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueMedicinalProductDefinitionCharacteristic;

  /// Factory constructor for super class
  factory DateValueMedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateValueMedicinalProductDefinitionCharacteristic;
}

/// A value for the characteristic.
class BooleanValueMedicinalProductDefinitionCharacteristic extends FhirBoolean
    implements ValueXMedicinalProductDefinitionCharacteristic {
  /// Constructor for [BooleanValueMedicinalProductDefinitionCharacteristic]
  BooleanValueMedicinalProductDefinitionCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueMedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValueMedicinalProductDefinitionCharacteristic;
}

/// A value for the characteristic.
class AttachmentValueMedicinalProductDefinitionCharacteristic extends Attachment
    implements ValueXMedicinalProductDefinitionCharacteristic {
  /// Factory constructor for super class
  factory AttachmentValueMedicinalProductDefinitionCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValueMedicinalProductDefinitionCharacteristic;
}
