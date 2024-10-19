// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to express the usage type of an EpisodeOfCare record.
@Entity()
class EpisodeOfCareType extends FhirCode {
  /// Factory constructor to create [EpisodeOfCareType] from JSON.
  factory EpisodeOfCareType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareType.elementOnly(element);
    }
    if (values.contains(value)) {
      return EpisodeOfCareType._(value, element);
    }
    throw ArgumentError(
      'EpisodeOfCareType.fromJson: JSON value is not a valid value',
    );
  }

  /// hacc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareType.hacc([this.element])
      : dbValue = 'hacc',
        super('hacc', element);

  /// pac
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareType.pac([this.element])
      : dbValue = 'pac',
        super('pac', element);

  /// diab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareType.diab([this.element])
      : dbValue = 'diab',
        super('diab', element);

  /// da
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareType.da([this.element])
      : dbValue = 'da',
        super('da', element);

  /// cacp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EpisodeOfCareType.cacp([this.element])
      : dbValue = 'cacp',
        super('cacp', element);

  /// For instances where an Element is present but not value

  EpisodeOfCareType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EpisodeOfCareType._(super.input, [super.element])
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
    'hacc',
    'pac',
    'diab',
    'da',
    'cacp',
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareType withElement(Element? newElement) {
    return EpisodeOfCareType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EpisodeOfCareType.$value';
}
