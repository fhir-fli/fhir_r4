// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of trigger.
class TriggerType {
  // Private constructor for internal use (like enum)
  TriggerType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// TriggerType values
  /// named_event
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType named_event = TriggerType._(
    'named-event',
  );

  /// periodic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType periodic = TriggerType._(
    'periodic',
  );

  /// data_changed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_changed = TriggerType._(
    'data-changed',
  );

  /// data_added
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_added = TriggerType._(
    'data-added',
  );

  /// data_modified
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_modified = TriggerType._(
    'data-modified',
  );

  /// data_removed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_removed = TriggerType._(
    'data-removed',
  );

  /// data_accessed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_accessed = TriggerType._(
    'data-accessed',
  );

  /// data_access_ended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final TriggerType data_access_ended = TriggerType._(
    'data-access-ended',
  );

  /// For instances where an Element is present but not value

  static final TriggerType elementOnly = TriggerType._('');

  /// List of all enum-like values
  static final List<TriggerType> values = [
    named_event,
    periodic,
    data_changed,
    data_added,
    data_modified,
    data_removed,
    data_accessed,
    data_access_ended,
  ];

  /// Returns the enum value with an element attached
  TriggerType withElement(Element? newElement) {
    return TriggerType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [TriggerType] from JSON.
  static TriggerType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType.elementOnly.withElement(element);
    }
    return TriggerType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
