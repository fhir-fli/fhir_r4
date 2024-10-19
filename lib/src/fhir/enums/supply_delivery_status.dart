// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Status of the supply delivery.
@Entity()
class SupplyDeliveryStatus extends FhirCode {
  /// Factory constructor to create [SupplyDeliveryStatus] from JSON.
  factory SupplyDeliveryStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return SupplyDeliveryStatus._(value, element);
    }
    throw ArgumentError(
      'SupplyDeliveryStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// in_progress
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyDeliveryStatus.in_progress([this.element])
      : dbValue = 'in-progress',
        super('in-progress', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyDeliveryStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// abandoned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyDeliveryStatus.abandoned([this.element])
      : dbValue = 'abandoned',
        super('abandoned', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyDeliveryStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  SupplyDeliveryStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SupplyDeliveryStatus._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'in-progress',
    'completed',
    'abandoned',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyDeliveryStatus.$value';
}
