// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates whether the event succeeded or failed.
@Entity()
class AuditEventOutcome extends FhirCode {
  /// Factory constructor to create [AuditEventOutcome] from JSON.
  factory AuditEventOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly(element);
    }
    if (values.contains(value)) {
      return AuditEventOutcome._(value, element);
    }
    throw ArgumentError(
      'AuditEventOutcome.fromJson: JSON value is not a valid value',
    );
  }

  /// value0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventOutcome.value0([this.element])
      : dbValue = '0',
        super('0', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventOutcome.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventOutcome.value8([this.element])
      : dbValue = '8',
        super('8', element);

  /// value12
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventOutcome.value12([this.element])
      : dbValue = '12',
        super('12', element);

  /// For instances where an Element is present but not value

  AuditEventOutcome.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AuditEventOutcome._(super.input, [super.element])
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
    '0',
    '4',
    '8',
    '12',
  ];

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventOutcome.$value';
}
