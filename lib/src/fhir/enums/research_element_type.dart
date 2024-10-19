// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The possible types of research elements (E.g. Population, Exposure, Outcome).
@Entity()
class ResearchElementType extends FhirCode {
  /// Factory constructor to create [ResearchElementType] from JSON.
  factory ResearchElementType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResearchElementType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ResearchElementType._(value, element);
    }
    throw ArgumentError(
      'ResearchElementType.fromJson: JSON value is not a valid value',
    );
  }

  /// population
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchElementType.population([this.element])
      : dbValue = 'population',
        super('population', element);

  /// exposure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchElementType.exposure([this.element])
      : dbValue = 'exposure',
        super('exposure', element);

  /// outcome
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ResearchElementType.outcome([this.element])
      : dbValue = 'outcome',
        super('outcome', element);

  /// For instances where an Element is present but not value

  ResearchElementType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ResearchElementType._(super.input, [super.element])
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
    'population',
    'exposure',
    'outcome',
  ];

  /// Returns the enum value with an element attached
  ResearchElementType withElement(Element? newElement) {
    return ResearchElementType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResearchElementType.$value';
}
