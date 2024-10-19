// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// SHALL applications comply with this constraint?
@Entity()
class ConstraintSeverity extends FhirCode {
  /// Factory constructor to create [ConstraintSeverity] from JSON.
  factory ConstraintSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConstraintSeverity._(value, element);
    }
    throw ArgumentError(
      'ConstraintSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConstraintSeverity.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// warning
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConstraintSeverity.warning([this.element])
      : dbValue = 'warning',
        super('warning', element);

  /// For instances where an Element is present but not value

  ConstraintSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConstraintSeverity._(super.input, [super.element])
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
    'error',
    'warning',
  ];

  /// Returns the enum value with an element attached
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConstraintSeverity.$value';
}
