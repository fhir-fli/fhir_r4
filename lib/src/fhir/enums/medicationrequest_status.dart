// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// MedicationRequest Status Codes
@Entity()
class MedicationrequestStatus extends FhirCode {
  /// Factory constructor to create [MedicationrequestStatus] from JSON.
  factory MedicationrequestStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicationrequestStatus._(value, element);
    }
    throw ArgumentError(
      'MedicationrequestStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.on_hold([this.element])
      : dbValue = 'on-hold',
        super('on-hold', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// stopped
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.stopped([this.element])
      : dbValue = 'stopped',
        super('stopped', element);

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.draft([this.element])
      : dbValue = 'draft',
        super('draft', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicationrequestStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  MedicationrequestStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicationrequestStatus._(super.input, [super.element])
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
    'active',
    'on-hold',
    'cancelled',
    'completed',
    'entered-in-error',
    'stopped',
    'draft',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationrequestStatus.$value';
}
