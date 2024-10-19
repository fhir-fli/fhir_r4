// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes example Payment Type codes.
@Entity()
class ExamplePaymentTypeCodes extends FhirCode {
  /// Factory constructor to create [ExamplePaymentTypeCodes] from JSON.
  factory ExamplePaymentTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExamplePaymentTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExamplePaymentTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ExamplePaymentTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExamplePaymentTypeCodes.complete([this.element])
      : dbValue = 'complete',
        super('complete', element);

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExamplePaymentTypeCodes.partial([this.element])
      : dbValue = 'partial',
        super('partial', element);

  /// For instances where an Element is present but not value

  ExamplePaymentTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExamplePaymentTypeCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'complete',
    'partial',
  ];

  /// Returns the enum value with an element attached
  ExamplePaymentTypeCodes withElement(Element? newElement) {
    return ExamplePaymentTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExamplePaymentTypeCodes.$value';
}
