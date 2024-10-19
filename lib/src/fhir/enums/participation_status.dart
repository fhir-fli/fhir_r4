// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The Participation status of an appointment.
@Entity()
class ParticipationStatus extends FhirCode {
  /// Factory constructor to create [ParticipationStatus] from JSON.
  factory ParticipationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ParticipationStatus._(value, element);
    }
    throw ArgumentError(
      'ParticipationStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// accepted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipationStatus.accepted([this.element])
      : dbValue = 'accepted',
        super('accepted', element);

  /// declined
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipationStatus.declined([this.element])
      : dbValue = 'declined',
        super('declined', element);

  /// tentative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipationStatus.tentative([this.element])
      : dbValue = 'tentative',
        super('tentative', element);

  /// needs_action
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ParticipationStatus.needs_action([this.element])
      : dbValue = 'needs-action',
        super('needs-action', element);

  /// For instances where an Element is present but not value

  ParticipationStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ParticipationStatus._(super.input, [super.element])
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
    'accepted',
    'declined',
    'tentative',
    'needs-action',
  ];

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ParticipationStatus.$value';
}
