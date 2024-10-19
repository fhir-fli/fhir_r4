// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How the issue affects the success of the action.
@Entity()
class IssueSeverity extends FhirCode {
  /// Factory constructor to create [IssueSeverity] from JSON.
  factory IssueSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return IssueSeverity._(value, element);
    }
    throw ArgumentError(
      'IssueSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// fatal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueSeverity.fatal([this.element])
      : dbValue = 'fatal',
        super('fatal', element);

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueSeverity.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueSeverity.warning([this.element])
      : dbValue = 'warning',
        super('warning', element);

  /// information
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IssueSeverity.information([this.element])
      : dbValue = 'information',
        super('information', element);

  /// For instances where an Element is present but not value

  IssueSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IssueSeverity._(super.input, [super.element])
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
    'fatal',
    'error',
    'warning',
    'information',
  ];

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IssueSeverity.$value';
}
