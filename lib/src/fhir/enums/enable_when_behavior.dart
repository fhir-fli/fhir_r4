// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Controls how multiple enableWhen values are interpreted - whether all or any must be true.
@Entity()
class EnableWhenBehavior extends FhirCode {
  /// Factory constructor to create [EnableWhenBehavior] from JSON.
  factory EnableWhenBehavior.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EnableWhenBehavior.elementOnly(element);
    }
    if (values.contains(value)) {
      return EnableWhenBehavior._(value, element);
    }
    throw ArgumentError(
      'EnableWhenBehavior.fromJson: JSON value is not a valid value',
    );
  }

  /// all
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnableWhenBehavior.all([this.element])
      : dbValue = 'all',
        super('all', element);

  /// any
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EnableWhenBehavior.any([this.element])
      : dbValue = 'any',
        super('any', element);

  /// For instances where an Element is present but not value

  EnableWhenBehavior.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EnableWhenBehavior._(super.input, [super.element])
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
    'all',
    'any',
  ];

  /// Returns the enum value with an element attached
  EnableWhenBehavior withElement(Element? newElement) {
    return EnableWhenBehavior._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EnableWhenBehavior.$value';
}
