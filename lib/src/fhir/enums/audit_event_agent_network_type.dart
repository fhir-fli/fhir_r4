// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of network access point of this agent in the audit event.
@Entity()
class AuditEventAgentNetworkType extends FhirCode {
  /// Factory constructor to create [AuditEventAgentNetworkType] from JSON.
  factory AuditEventAgentNetworkType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly(element);
    }
    if (values.contains(value)) {
      return AuditEventAgentNetworkType._(value, element);
    }
    throw ArgumentError(
      'AuditEventAgentNetworkType.fromJson: JSON value is not a valid value',
    );
  }

  /// value1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAgentNetworkType.value1([this.element])
      : dbValue = '1',
        super('1', element);

  /// value2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAgentNetworkType.value2([this.element])
      : dbValue = '2',
        super('2', element);

  /// value3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAgentNetworkType.value3([this.element])
      : dbValue = '3',
        super('3', element);

  /// value4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAgentNetworkType.value4([this.element])
      : dbValue = '4',
        super('4', element);

  /// value5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAgentNetworkType.value5([this.element])
      : dbValue = '5',
        super('5', element);

  /// For instances where an Element is present but not value

  AuditEventAgentNetworkType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AuditEventAgentNetworkType._(super.input, [super.element])
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
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventAgentNetworkType.$value';
}
