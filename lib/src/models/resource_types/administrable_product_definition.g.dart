part of 'administrable_product_definition.dart';

/// A value for the characteristic.
sealed class ValueXAdministrableProductDefinitionProperty {}

/// A value for the characteristic.
class CodeableConceptValueAdministrableProductDefinitionProperty
    extends CodeableConcept
    implements ValueXAdministrableProductDefinitionProperty {
  /// Factory constructor for super class
  factory CodeableConceptValueAdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueAdministrableProductDefinitionProperty;
}

/// A value for the characteristic.
class QuantityValueAdministrableProductDefinitionProperty extends Quantity
    implements ValueXAdministrableProductDefinitionProperty {
  /// Factory constructor for super class
  factory QuantityValueAdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json)
          as QuantityValueAdministrableProductDefinitionProperty;
}

/// A value for the characteristic.
class DateValueAdministrableProductDefinitionProperty extends FhirDate
    implements ValueXAdministrableProductDefinitionProperty {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValueAdministrableProductDefinitionProperty.fromString(
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
      ) as DateValueAdministrableProductDefinitionProperty;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValueAdministrableProductDefinitionProperty.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValueAdministrableProductDefinitionProperty;

  /// Factory constructor for super class
  factory DateValueAdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json)
          as DateValueAdministrableProductDefinitionProperty;
}

/// A value for the characteristic.
class BooleanValueAdministrableProductDefinitionProperty extends FhirBoolean
    implements ValueXAdministrableProductDefinitionProperty {
  /// Constructor for [BooleanValueAdministrableProductDefinitionProperty]
  BooleanValueAdministrableProductDefinitionProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueAdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValueAdministrableProductDefinitionProperty;
}

/// A value for the characteristic.
class AttachmentValueAdministrableProductDefinitionProperty extends Attachment
    implements ValueXAdministrableProductDefinitionProperty {
  /// Factory constructor for super class
  factory AttachmentValueAdministrableProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValueAdministrableProductDefinitionProperty;
}
