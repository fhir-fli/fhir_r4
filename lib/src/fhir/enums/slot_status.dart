// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The free/busy status of the slot.
@collection
class SlotStatus {
  /// Constructor for internal use (like enum)
  SlotStatus({this.fhirCode, this.element})
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

  /// SlotStatus values
  /// busy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlotStatus busy = SlotStatus(
    fhirCode: 'busy',
  );

  /// free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlotStatus free = SlotStatus(
    fhirCode: 'free',
  );

  /// busy_unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlotStatus busy_unavailable = SlotStatus(
    fhirCode: 'busy-unavailable',
  );

  /// busy_tentative
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlotStatus busy_tentative = SlotStatus(
    fhirCode: 'busy-tentative',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlotStatus entered_in_error = SlotStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final SlotStatus elementOnly = SlotStatus();

  /// List of all enum-like values
  static final List<SlotStatus> values = [
    busy,
    free,
    busy_unavailable,
    busy_tentative,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  SlotStatus withElement(Element? newElement) {
    return SlotStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SlotStatus] from JSON.
  static SlotStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatus.elementOnly.withElement(element);
    }
    return SlotStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SlotStatus.$fhirCode';
}
