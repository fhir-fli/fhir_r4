// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A set of flags that defines how references are supported.
class ReferenceHandlingPolicy {
  // Private constructor for internal use (like enum)
  ReferenceHandlingPolicy._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReferenceHandlingPolicy values
  /// literal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceHandlingPolicy literal = ReferenceHandlingPolicy._(
    'literal',
  );

  /// logical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceHandlingPolicy logical = ReferenceHandlingPolicy._(
    'logical',
  );

  /// resolves
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceHandlingPolicy resolves = ReferenceHandlingPolicy._(
    'resolves',
  );

  /// enforced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceHandlingPolicy enforced = ReferenceHandlingPolicy._(
    'enforced',
  );

  /// local
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReferenceHandlingPolicy local = ReferenceHandlingPolicy._(
    'local',
  );

  /// For instances where an Element is present but not value

  static final ReferenceHandlingPolicy elementOnly =
      ReferenceHandlingPolicy._('');

  /// List of all enum-like values
  static final List<ReferenceHandlingPolicy> values = [
    literal,
    logical,
    resolves,
    enforced,
    local,
  ];

  /// Returns the enum value with an element attached
  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReferenceHandlingPolicy] from JSON.
  static ReferenceHandlingPolicy fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy.elementOnly.withElement(element);
    }
    return ReferenceHandlingPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferenceHandlingPolicy.$fhirCode';
}
