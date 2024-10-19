// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes for the reason why a communication did not happen.
@Entity()
class CommunicationNotDoneReason extends FhirCode {
  /// Factory constructor to create [CommunicationNotDoneReason] from JSON.
  factory CommunicationNotDoneReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationNotDoneReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return CommunicationNotDoneReason._(value, element);
    }
    throw ArgumentError(
      'CommunicationNotDoneReason.fromJson: JSON value is not a valid value',
    );
  }

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// system_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.system_error([this.element])
      : dbValue = 'system-error',
        super('system-error', element);

  /// invalid_phone_number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.invalid_phone_number([this.element])
      : dbValue = 'invalid-phone-number',
        super('invalid-phone-number', element);

  /// recipient_unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.recipient_unavailable([this.element])
      : dbValue = 'recipient-unavailable',
        super('recipient-unavailable', element);

  /// family_objection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.family_objection([this.element])
      : dbValue = 'family-objection',
        super('family-objection', element);

  /// patient_objection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CommunicationNotDoneReason.patient_objection([this.element])
      : dbValue = 'patient-objection',
        super('patient-objection', element);

  /// For instances where an Element is present but not value

  CommunicationNotDoneReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CommunicationNotDoneReason._(super.input, [super.element])
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
    'unknown',
    'system-error',
    'invalid-phone-number',
    'recipient-unavailable',
    'family-objection',
    'patient-objection',
  ];

  /// Returns the enum value with an element attached
  CommunicationNotDoneReason withElement(Element? newElement) {
    return CommunicationNotDoneReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CommunicationNotDoneReason.$value';
}
