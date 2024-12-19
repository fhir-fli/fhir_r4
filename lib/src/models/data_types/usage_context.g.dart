part of 'usage_context.dart';

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
sealed class ValueXUsageContextUsageContext {}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
class CodeableConceptValueUsageContextUsageContext extends CodeableConcept
    implements ValueXUsageContextUsageContext {
  /// Factory constructor for super class
  factory CodeableConceptValueUsageContextUsageContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueUsageContextUsageContext;
}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
class QuantityValueUsageContextUsageContext extends Quantity
    implements ValueXUsageContextUsageContext {
  /// Factory constructor for super class
  factory QuantityValueUsageContextUsageContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueUsageContextUsageContext;
}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
class RangeValueUsageContextUsageContext extends Range
    implements ValueXUsageContextUsageContext {
  /// Factory constructor for super class
  factory RangeValueUsageContextUsageContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueUsageContextUsageContext;
}

/// A value that defines the context specified in this context of use. The
/// interpretation of the value is defined by the code.
class ReferenceValueUsageContextUsageContext extends Reference
    implements ValueXUsageContextUsageContext {
  /// Factory constructor for super class
  factory ReferenceValueUsageContextUsageContext.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueUsageContextUsageContext;
}
