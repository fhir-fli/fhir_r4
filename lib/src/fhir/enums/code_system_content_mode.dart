// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.
@Entity()
class CodeSystemContentMode extends FhirCode {
  /// Factory constructor to create [CodeSystemContentMode] from JSON.
  factory CodeSystemContentMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return CodeSystemContentMode._(value, element);
    }
    throw ArgumentError(
      'CodeSystemContentMode.fromJson: JSON value is not a valid value',
    );
  }

  /// not_present
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemContentMode.not_present([this.element])
      : dbValue = 'not-present',
        super('not-present', element);

  /// example
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemContentMode.example([this.element])
      : dbValue = 'example',
        super('example', element);

  /// fragment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemContentMode.fragment([this.element])
      : dbValue = 'fragment',
        super('fragment', element);

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemContentMode.complete([this.element])
      : dbValue = 'complete',
        super('complete', element);

  /// supplement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CodeSystemContentMode.supplement([this.element])
      : dbValue = 'supplement',
        super('supplement', element);

  /// For instances where an Element is present but not value

  CodeSystemContentMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CodeSystemContentMode._(super.input, [super.element])
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
    'not-present',
    'example',
    'fragment',
    'complete',
    'supplement',
  ];

  /// Returns the enum value with an element attached
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CodeSystemContentMode.$value';
}
