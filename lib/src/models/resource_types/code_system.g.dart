part of 'code_system.dart';

/// The value of this property.
sealed class ValueXCodeSystemProperty extends DataType {}

/// The value of this property.
class CodeValueCodeSystemProperty extends FhirCode
    implements ValueXCodeSystemProperty {
  /// Constructor for [CodeValueCodeSystemProperty]
  CodeValueCodeSystemProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueCodeSystemProperty;
}

/// The value of this property.
class CodingValueCodeSystemProperty extends Coding
    implements ValueXCodeSystemProperty {
  /// Factory constructor for super class
  factory CodingValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      Coding.fromJson(json) as CodingValueCodeSystemProperty;
}

/// The value of this property.
class StringValueCodeSystemProperty extends FhirString
    implements ValueXCodeSystemProperty {
  /// Constructor for [StringValueCodeSystemProperty]
  StringValueCodeSystemProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueCodeSystemProperty;
}

/// The value of this property.
class IntegerValueCodeSystemProperty extends FhirInteger
    implements ValueXCodeSystemProperty {
  /// Constructor for [IntegerValueCodeSystemProperty]
  IntegerValueCodeSystemProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueCodeSystemProperty;
}

/// The value of this property.
class BooleanValueCodeSystemProperty extends FhirBoolean
    implements ValueXCodeSystemProperty {
  /// Constructor for [BooleanValueCodeSystemProperty]
  BooleanValueCodeSystemProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueCodeSystemProperty;
}

/// The value of this property.
class DateTimeValueCodeSystemProperty extends FhirDateTime
    implements ValueXCodeSystemProperty {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueCodeSystemProperty.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeValueCodeSystemProperty;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueCodeSystemProperty.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueCodeSystemProperty;

  /// Factory constructor for super class
  factory DateTimeValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueCodeSystemProperty;
}

/// The value of this property.
class DecimalValueCodeSystemProperty extends FhirDecimal
    implements ValueXCodeSystemProperty {
  /// Constructor for [DecimalValueCodeSystemProperty]
  DecimalValueCodeSystemProperty(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueCodeSystemProperty.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueCodeSystemProperty;
}
