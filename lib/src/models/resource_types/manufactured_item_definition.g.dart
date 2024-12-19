part of 'manufactured_item_definition.dart';

/// A value for the characteristic.
sealed class ValueXManufacturedItemDefinitionProperty {}

/// A value for the characteristic.
class CodeableConceptValueManufacturedItemDefinitionProperty
    extends CodeableConcept
    implements ValueXManufacturedItemDefinitionProperty {
  /// Factory constructor for super class
  factory CodeableConceptValueManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueManufacturedItemDefinitionProperty;
}

/// A value for the characteristic.
class QuantityValueManufacturedItemDefinitionProperty extends Quantity
    implements ValueXManufacturedItemDefinitionProperty {
  /// Factory constructor for super class
  factory QuantityValueManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueManufacturedItemDefinitionProperty;
}

/// A value for the characteristic.
class DateValueManufacturedItemDefinitionProperty extends FhirDate
    implements ValueXManufacturedItemDefinitionProperty {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueManufacturedItemDefinitionProperty.fromString(
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
      ) as DateValueManufacturedItemDefinitionProperty;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueManufacturedItemDefinitionProperty.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueManufacturedItemDefinitionProperty;

  /// Factory constructor for super class
  factory DateValueManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValueManufacturedItemDefinitionProperty;
}

/// A value for the characteristic.
class BooleanValueManufacturedItemDefinitionProperty extends FhirBoolean
    implements ValueXManufacturedItemDefinitionProperty {
  /// Constructor for [BooleanValueManufacturedItemDefinitionProperty]
  BooleanValueManufacturedItemDefinitionProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValueManufacturedItemDefinitionProperty;
}

/// A value for the characteristic.
class AttachmentValueManufacturedItemDefinitionProperty extends Attachment
    implements ValueXManufacturedItemDefinitionProperty {
  /// Factory constructor for super class
  factory AttachmentValueManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValueManufacturedItemDefinitionProperty;
}
