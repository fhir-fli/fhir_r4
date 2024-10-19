// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Provider Qualification codes.
@Entity()
class ExampleProviderQualificationCodes extends FhirCode {
  /// Factory constructor to create [ExampleProviderQualificationCodes] from JSON.
  factory ExampleProviderQualificationCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProviderQualificationCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleProviderQualificationCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleProviderQualificationCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value311405
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProviderQualificationCodes.value311405([this.element])
      : dbValue = '311405',
        super('311405', element);

  /// value604215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProviderQualificationCodes.value604215([this.element])
      : dbValue = '604215',
        super('604215', element);

  /// value604210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleProviderQualificationCodes.value604210([this.element])
      : dbValue = '604210',
        super('604210', element);

  /// For instances where an Element is present but not value

  ExampleProviderQualificationCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleProviderQualificationCodes._(super.input, [super.element])
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
    '311405',
    '604215',
    '604210',
  ];

  /// Returns the enum value with an element attached
  ExampleProviderQualificationCodes withElement(Element? newElement) {
    return ExampleProviderQualificationCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleProviderQualificationCodes.$value';
}
