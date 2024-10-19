// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The mode of a message capability statement.
@collection
class EventCapabilityMode {
  /// Constructor for internal use (like enum)
  EventCapabilityMode({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EventCapabilityMode values
  /// sender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventCapabilityMode sender = EventCapabilityMode(
    fhirCode: 'sender',
  );

  /// receiver
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EventCapabilityMode receiver = EventCapabilityMode(
    fhirCode: 'receiver',
  );

  /// For instances where an Element is present but not value

  static final EventCapabilityMode elementOnly = EventCapabilityMode();

  /// List of all enum-like values
  static final List<EventCapabilityMode> values = [
    sender,
    receiver,
  ];

  /// Returns the enum value with an element attached
  EventCapabilityMode withElement(Element? newElement) {
    return EventCapabilityMode(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EventCapabilityMode] from JSON.
  static EventCapabilityMode fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityMode.elementOnly.withElement(element);
    }
    return EventCapabilityMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EventCapabilityMode.$fhirCode';
}
