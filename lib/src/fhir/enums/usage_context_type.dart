// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code that specifies a type of context being specified by a usage context.
class UsageContextType {
  // Private constructor for internal use (like enum)
  UsageContextType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// UsageContextType values
  /// gender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType gender = UsageContextType._(
    'gender',
  );

  /// age
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType age = UsageContextType._(
    'age',
  );

  /// focus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType focus = UsageContextType._(
    'focus',
  );

  /// user
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType user = UsageContextType._(
    'user',
  );

  /// workflow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType workflow = UsageContextType._(
    'workflow',
  );

  /// task
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType task = UsageContextType._(
    'task',
  );

  /// venue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType venue = UsageContextType._(
    'venue',
  );

  /// species
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType species = UsageContextType._(
    'species',
  );

  /// program
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UsageContextType program = UsageContextType._(
    'program',
  );

  /// For instances where an Element is present but not value

  static final UsageContextType elementOnly = UsageContextType._('');

  /// List of all enum-like values
  static final List<UsageContextType> values = [
    gender,
    age,
    focus,
    user,
    workflow,
    task,
    venue,
    species,
    program,
  ];

  /// Returns the enum value with an element attached
  UsageContextType withElement(Element? newElement) {
    return UsageContextType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [UsageContextType] from JSON.
  static UsageContextType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UsageContextType.elementOnly.withElement(element);
    }
    return UsageContextType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UsageContextType.$fhirCode';
}
