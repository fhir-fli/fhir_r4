// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The optical rotation type of a substance.
@Entity()
class Stereochemistry extends FhirCode {
  /// Factory constructor to create [Stereochemistry] from JSON.
  factory Stereochemistry.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Stereochemistry.elementOnly(element);
    }
    if (values.contains(value)) {
      return Stereochemistry._(value, element);
    }
    throw ArgumentError(
      'Stereochemistry.fromJson: JSON value is not a valid value',
    );
  }

  /// ConstitutionalIsomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Stereochemistry.ConstitutionalIsomer([this.element])
      : dbValue = 'ConstitutionalIsomer',
        super('ConstitutionalIsomer', element);

  /// Stereoisomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Stereochemistry.Stereoisomer([this.element])
      : dbValue = 'Stereoisomer',
        super('Stereoisomer', element);

  /// Enantiomer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Stereochemistry.Enantiomer([this.element])
      : dbValue = 'Enantiomer',
        super('Enantiomer', element);

  /// For instances where an Element is present but not value

  Stereochemistry.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  Stereochemistry._(super.input, [super.element])
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
    'ConstitutionalIsomer',
    'Stereoisomer',
    'Enantiomer',
  ];

  /// Returns the enum value with an element attached
  Stereochemistry withElement(Element? newElement) {
    return Stereochemistry._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Stereochemistry.$value';
}
