part of 'packaged_product_definition.dart';

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
sealed class PeriodXPackagedProductDefinitionShelfLifeStorage {}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
class DurationPeriodPackagedProductDefinitionShelfLifeStorage
    extends FhirDuration
    implements PeriodXPackagedProductDefinitionShelfLifeStorage {
  /// Factory constructor for super class
  factory DurationPeriodPackagedProductDefinitionShelfLifeStorage.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDuration.fromJson(json)
          as DurationPeriodPackagedProductDefinitionShelfLifeStorage;
}

/// The shelf life time period can be specified using a numerical value for
/// the period of time and its unit of time measurement The unit of
/// measurement shall be specified in accordance with ISO 11240 and the
/// resulting terminology The symbol and the symbol identifier shall be
/// used.
class StringPeriodPackagedProductDefinitionShelfLifeStorage extends FhirString
    implements PeriodXPackagedProductDefinitionShelfLifeStorage {
  /// Constructor for [StringPeriodPackagedProductDefinitionShelfLifeStorage]
  StringPeriodPackagedProductDefinitionShelfLifeStorage(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringPeriodPackagedProductDefinitionShelfLifeStorage.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json)
          as StringPeriodPackagedProductDefinitionShelfLifeStorage;
}

/// A value for the characteristic.
sealed class ValueXPackagedProductDefinitionProperty {}

/// A value for the characteristic.
class CodeableConceptValuePackagedProductDefinitionProperty
    extends CodeableConcept implements ValueXPackagedProductDefinitionProperty {
  /// Factory constructor for super class
  factory CodeableConceptValuePackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValuePackagedProductDefinitionProperty;
}

/// A value for the characteristic.
class QuantityValuePackagedProductDefinitionProperty extends Quantity
    implements ValueXPackagedProductDefinitionProperty {
  /// Factory constructor for super class
  factory QuantityValuePackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValuePackagedProductDefinitionProperty;
}

/// A value for the characteristic.
class DateValuePackagedProductDefinitionProperty extends FhirDate
    implements ValueXPackagedProductDefinitionProperty {
  /// Factory constructor to create a [FhirDate] from a [String]
  factory DateValuePackagedProductDefinitionProperty.fromString(
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
      ) as DateValuePackagedProductDefinitionProperty;

  /// Factory constructor to create a [FhirDate] from a [DateTime]
  factory DateValuePackagedProductDefinitionProperty.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDate.fromDateTime(input, element: element)
          as DateValuePackagedProductDefinitionProperty;

  /// Factory constructor for super class
  factory DateValuePackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDate.fromJson(json) as DateValuePackagedProductDefinitionProperty;
}

/// A value for the characteristic.
class BooleanValuePackagedProductDefinitionProperty extends FhirBoolean
    implements ValueXPackagedProductDefinitionProperty {
  /// Constructor for [BooleanValuePackagedProductDefinitionProperty]
  BooleanValuePackagedProductDefinitionProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValuePackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json)
          as BooleanValuePackagedProductDefinitionProperty;
}

/// A value for the characteristic.
class AttachmentValuePackagedProductDefinitionProperty extends Attachment
    implements ValueXPackagedProductDefinitionProperty {
  /// Factory constructor for super class
  factory AttachmentValuePackagedProductDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Attachment.fromJson(json)
          as AttachmentValuePackagedProductDefinitionProperty;
}
