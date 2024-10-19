// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A categorisation for a frequency of occurence of an undesirable effect.
@collection
class UndesirablEffectFrequency {
  /// Constructor for internal use (like enum)
  UndesirablEffectFrequency({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// UndesirablEffectFrequency values
  /// Common
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UndesirablEffectFrequency Common = UndesirablEffectFrequency(
    fhirCode: 'Common',
  );

  /// Uncommon
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UndesirablEffectFrequency Uncommon = UndesirablEffectFrequency(
    fhirCode: 'Uncommon',
  );

  /// Rare
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final UndesirablEffectFrequency Rare = UndesirablEffectFrequency(
    fhirCode: 'Rare',
  );

  /// For instances where an Element is present but not value

  static final UndesirablEffectFrequency elementOnly =
      UndesirablEffectFrequency();

  /// List of all enum-like values
  static final List<UndesirablEffectFrequency> values = [
    Common,
    Uncommon,
    Rare,
  ];

  /// Returns the enum value with an element attached
  UndesirablEffectFrequency withElement(Element? newElement) {
    return UndesirablEffectFrequency(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [UndesirablEffectFrequency] from JSON.
  static UndesirablEffectFrequency fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UndesirablEffectFrequency.elementOnly.withElement(element);
    }
    return UndesirablEffectFrequency.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'UndesirablEffectFrequency.$fhirCode';
}
