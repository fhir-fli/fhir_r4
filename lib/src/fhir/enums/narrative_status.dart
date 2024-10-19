// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The status of a resource narrative.
@Entity()
class NarrativeStatus extends FhirCode {
  /// Factory constructor to create [NarrativeStatus] from JSON.
  factory NarrativeStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return NarrativeStatus._(value, element);
    }
    throw ArgumentError(
      'NarrativeStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// generated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NarrativeStatus.generated([this.element])
      : dbValue = 'generated',
        super('generated', element);

  /// extensions
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NarrativeStatus.extensions([this.element])
      : dbValue = 'extensions',
        super('extensions', element);

  /// additional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NarrativeStatus.additional([this.element])
      : dbValue = 'additional',
        super('additional', element);

  /// empty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  NarrativeStatus.empty([this.element])
      : dbValue = 'empty',
        super('empty', element);

  /// For instances where an Element is present but not value

  NarrativeStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  NarrativeStatus._(super.input, [super.element])
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
    'generated',
    'extensions',
    'additional',
    'empty',
  ];

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'NarrativeStatus.$value';
}
