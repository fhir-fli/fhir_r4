// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Exception codes.
@Entity()
class ExceptionCodes extends FhirCode {
  /// Factory constructor to create [ExceptionCodes] from JSON.
  factory ExceptionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExceptionCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExceptionCodes._(value, element);
    }
    throw ArgumentError(
      'ExceptionCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// student
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExceptionCodes.student([this.element])
      : dbValue = 'student',
        super('student', element);

  /// disabled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExceptionCodes.disabled([this.element])
      : dbValue = 'disabled',
        super('disabled', element);

  /// For instances where an Element is present but not value

  ExceptionCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExceptionCodes._(super.input, [super.element])
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
    'student',
    'disabled',
  ];

  /// Returns the enum value with an element attached
  ExceptionCodes withElement(Element? newElement) {
    return ExceptionCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExceptionCodes.$value';
}
