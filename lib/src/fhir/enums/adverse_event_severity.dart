// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The severity of the adverse event itself, in direct relation to the subject.
@Entity()
class AdverseEventSeverity extends FhirCode {
  /// Factory constructor to create [AdverseEventSeverity] from JSON.
  factory AdverseEventSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventSeverity._(value, element);
    }
    throw ArgumentError(
      'AdverseEventSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// mild
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeverity.mild([this.element])
      : dbValue = 'mild',
        super('mild', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeverity.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// severe
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventSeverity.severe([this.element])
      : dbValue = 'severe',
        super('severe', element);

  /// For instances where an Element is present but not value

  AdverseEventSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventSeverity._(super.input, [super.element])
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
    'mild',
    'moderate',
    'severe',
  ];

  /// Returns the enum value with an element attached
  AdverseEventSeverity withElement(Element? newElement) {
    return AdverseEventSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventSeverity.$value';
}
