part of 'group.dart';

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
sealed class ValueXGroupCharacteristic {}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
class CodeableConceptValueGroupCharacteristic extends CodeableConcept
    implements ValueXGroupCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptValueGroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json) as CodeableConceptValueGroupCharacteristic;
}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
class BooleanValueGroupCharacteristic extends FhirBoolean
    implements ValueXGroupCharacteristic {
  /// Constructor for [BooleanValueGroupCharacteristic]
  BooleanValueGroupCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanValueGroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanValueGroupCharacteristic;
}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
class QuantityValueGroupCharacteristic extends Quantity
    implements ValueXGroupCharacteristic {
  /// Factory constructor for super class
  factory QuantityValueGroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueGroupCharacteristic;
}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
class RangeValueGroupCharacteristic extends Range
    implements ValueXGroupCharacteristic {
  /// Factory constructor for super class
  factory RangeValueGroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueGroupCharacteristic;
}

/// The value of the trait that holds (or does not hold - see 'exclude')
/// for members of the group.
class ReferenceValueGroupCharacteristic extends Reference
    implements ValueXGroupCharacteristic {
  /// Factory constructor for super class
  factory ReferenceValueGroupCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceValueGroupCharacteristic;
}
