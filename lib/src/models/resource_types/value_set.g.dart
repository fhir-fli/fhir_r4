part of 'value_set.dart';

/// The value of the parameter.
sealed class ValueXValueSetParameter {}

/// The value of the parameter.
class StringValueValueSetParameter extends FhirString
    implements ValueXValueSetParameter {
  /// Constructor for [StringValueValueSetParameter]
  StringValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringValueValueSetParameter;
}

/// The value of the parameter.
class BooleanValueValueSetParameter extends FhirBoolean
    implements ValueXValueSetParameter {
  /// Constructor for [BooleanValueValueSetParameter]
  BooleanValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueValueSetParameter;
}

/// The value of the parameter.
class IntegerValueValueSetParameter extends FhirInteger
    implements ValueXValueSetParameter {
  /// Constructor for [IntegerValueValueSetParameter]
  IntegerValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerValueValueSetParameter;
}

/// The value of the parameter.
class DecimalValueValueSetParameter extends FhirDecimal
    implements ValueXValueSetParameter {
  /// Constructor for [DecimalValueValueSetParameter]
  DecimalValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory DecimalValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDecimal.fromJson(json) as DecimalValueValueSetParameter;
}

/// The value of the parameter.
class UriValueValueSetParameter extends FhirUri
    implements ValueXValueSetParameter {
  /// Constructor for [UriValueValueSetParameter]
  UriValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriValueValueSetParameter;
}

/// The value of the parameter.
class CodeValueValueSetParameter extends FhirCode
    implements ValueXValueSetParameter {
  /// Constructor for [CodeValueValueSetParameter]
  CodeValueValueSetParameter(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CodeValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCode.fromJson(json) as CodeValueValueSetParameter;
}

/// The value of the parameter.
class DateTimeValueValueSetParameter extends FhirDateTime
    implements ValueXValueSetParameter {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeValueValueSetParameter.fromString(
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
      ) as DateTimeValueValueSetParameter;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeValueValueSetParameter.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeValueValueSetParameter;

  /// Factory constructor for super class
  factory DateTimeValueValueSetParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeValueValueSetParameter;
}
