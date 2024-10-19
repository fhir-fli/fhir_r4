// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of publication such as book, database, or journal.
@Entity()
class PublishedInType extends FhirCode {
  /// Factory constructor to create [PublishedInType] from JSON.
  factory PublishedInType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublishedInType.elementOnly(element);
    }
    if (values.contains(value)) {
      return PublishedInType._(value, element);
    }
    throw ArgumentError(
      'PublishedInType.fromJson: JSON value is not a valid value',
    );
  }

  /// D020492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PublishedInType.D020492([this.element])
      : dbValue = 'D020492',
        super('D020492', element);

  /// D019991
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PublishedInType.D019991([this.element])
      : dbValue = 'D019991',
        super('D019991', element);

  /// D001877
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PublishedInType.D001877([this.element])
      : dbValue = 'D001877',
        super('D001877', element);

  /// D064886
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PublishedInType.D064886([this.element])
      : dbValue = 'D064886',
        super('D064886', element);

  /// For instances where an Element is present but not value

  PublishedInType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PublishedInType._(super.input, [super.element])
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
    'D020492',
    'D019991',
    'D001877',
    'D064886',
  ];

  /// Returns the enum value with an element attached
  PublishedInType withElement(Element? newElement) {
    return PublishedInType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PublishedInType.$value';
}
