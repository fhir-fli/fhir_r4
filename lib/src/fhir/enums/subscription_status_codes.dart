// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of a subscription.
@Entity()
class SubscriptionStatusCodes extends FhirCode {
  /// Factory constructor to create [SubscriptionStatusCodes] from JSON.
  factory SubscriptionStatusCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubscriptionStatusCodes._(value, element);
    }
    throw ArgumentError(
      'SubscriptionStatusCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// requested
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionStatusCodes.requested([this.element])
      : dbValue = 'requested',
        super('requested', element);

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionStatusCodes.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionStatusCodes.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionStatusCodes.off([this.element])
      : dbValue = 'off',
        super('off', element);

  /// For instances where an Element is present but not value

  SubscriptionStatusCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubscriptionStatusCodes._(super.input, [super.element])
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
    'requested',
    'active',
    'error',
    'off',
  ];

  /// Returns the enum value with an element attached
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriptionStatusCodes.$value';
}
