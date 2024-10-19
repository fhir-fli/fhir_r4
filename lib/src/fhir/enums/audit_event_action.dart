// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicator for type of action performed during the event that generated the event.
@Entity()
class AuditEventAction extends FhirCode {
  /// Factory constructor to create [AuditEventAction] from JSON.
  factory AuditEventAction.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAction.elementOnly(element);
    }
    if (values.contains(value)) {
      return AuditEventAction._(value, element);
    }
    throw ArgumentError(
      'AuditEventAction.fromJson: JSON value is not a valid value',
    );
  }

  /// C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAction.C([this.element])
      : dbValue = 'C',
        super('C', element);

  /// R
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAction.R([this.element])
      : dbValue = 'R',
        super('R', element);

  /// U
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAction.U([this.element])
      : dbValue = 'U',
        super('U', element);

  /// D
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAction.D([this.element])
      : dbValue = 'D',
        super('D', element);

  /// E
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AuditEventAction.E([this.element])
      : dbValue = 'E',
        super('E', element);

  /// For instances where an Element is present but not value

  AuditEventAction.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AuditEventAction._(super.input, [super.element])
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
    'C',
    'R',
    'U',
    'D',
    'E',
  ];

  /// Returns the enum value with an element attached
  AuditEventAction withElement(Element? newElement) {
    return AuditEventAction._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AuditEventAction.$value';
}
