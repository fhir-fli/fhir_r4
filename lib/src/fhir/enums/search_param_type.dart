// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Data types allowed to be used for search parameters.
@Entity()
class SearchParamType extends FhirCode {
  /// Factory constructor to create [SearchParamType] from JSON.
  factory SearchParamType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SearchParamType._(value, element);
    }
    throw ArgumentError(
      'SearchParamType.fromJson: JSON value is not a valid value',
    );
  }

  /// number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.number([this.element])
      : dbValue = 'number',
        super('number', element);

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.date([this.element])
      : dbValue = 'date',
        super('date', element);

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.string([this.element])
      : dbValue = 'string',
        super('string', element);

  /// token
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.token([this.element])
      : dbValue = 'token',
        super('token', element);

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.reference([this.element])
      : dbValue = 'reference',
        super('reference', element);

  /// composite
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.composite([this.element])
      : dbValue = 'composite',
        super('composite', element);

  /// quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.quantity([this.element])
      : dbValue = 'quantity',
        super('quantity', element);

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.uri([this.element])
      : dbValue = 'uri',
        super('uri', element);

  /// special
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchParamType.special([this.element])
      : dbValue = 'special',
        super('special', element);

  /// For instances where an Element is present but not value

  SearchParamType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SearchParamType._(super.input, [super.element])
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
    'number',
    'date',
    'string',
    'token',
    'reference',
    'composite',
    'quantity',
    'uri',
    'special',
  ];

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchParamType.$value';
}
