// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The kind of response to a message.
@Entity()
class ResponseType extends FhirCode {
  /// Factory constructor to create [ResponseType] from JSON.
  factory ResponseType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResponseType._(value, element);
    }
    throw ArgumentError(
      'ResponseType.fromJson: JSON value is not a valid value',
    );
  }

  /// ok
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResponseType.ok([this.element])
      : dbValue = 'ok',
        super('ok', element);

  /// transient_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResponseType.transient_error([this.element])
      : dbValue = 'transient-error',
        super('transient-error', element);

  /// fatal_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResponseType.fatal_error([this.element])
      : dbValue = 'fatal-error',
        super('fatal-error', element);

  /// For instances where an Element is present but not value

  ResponseType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResponseType._(super.input, [super.element])
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
    'ok',
    'transient-error',
    'fatal-error',
  ];

  /// Returns the enum value with an element attached
  ResponseType withElement(Element? newElement) {
    return ResponseType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResponseType.$value';
}
