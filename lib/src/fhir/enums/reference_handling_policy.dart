// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A set of flags that defines how references are supported.
@Entity()
class ReferenceHandlingPolicy extends FhirCode {
  /// Factory constructor to create [ReferenceHandlingPolicy] from JSON.
  factory ReferenceHandlingPolicy.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReferenceHandlingPolicy._(value, element);
    }
    throw ArgumentError(
      'ReferenceHandlingPolicy.fromJson: JSON value is not a valid value',
    );
  }

  /// literal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceHandlingPolicy.literal([this.element])
      : dbValue = 'literal',
        super('literal', element);

  /// logical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceHandlingPolicy.logical([this.element])
      : dbValue = 'logical',
        super('logical', element);

  /// resolves
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceHandlingPolicy.resolves([this.element])
      : dbValue = 'resolves',
        super('resolves', element);

  /// enforced
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceHandlingPolicy.enforced([this.element])
      : dbValue = 'enforced',
        super('enforced', element);

  /// local
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceHandlingPolicy.local([this.element])
      : dbValue = 'local',
        super('local', element);

  /// For instances where an Element is present but not value

  ReferenceHandlingPolicy.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReferenceHandlingPolicy._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'literal',
    'logical',
    'resolves',
    'enforced',
    'local',
  ];

  /// Returns the enum value with an element attached
  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferenceHandlingPolicy.$value';
}
