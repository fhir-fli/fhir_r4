// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A categorisation for incidence of occurence of an interaction.
@Entity()
class InteractionIncidence extends FhirCode {
  /// Factory constructor to create [InteractionIncidence] from JSON.
  factory InteractionIncidence.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionIncidence.elementOnly(element);
    }
    if (values.contains(value)) {
      return InteractionIncidence._(value, element);
    }
    throw ArgumentError(
      'InteractionIncidence.fromJson: JSON value is not a valid value',
    );
  }

  /// Theoretical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionIncidence.Theoretical([this.element])
      : dbValue = 'Theoretical',
        super('Theoretical', element);

  /// Observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InteractionIncidence.Observed([this.element])
      : dbValue = 'Observed',
        super('Observed', element);

  /// For instances where an Element is present but not value

  InteractionIncidence.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  InteractionIncidence._(super.input, [super.element])
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
    'Theoretical',
    'Observed',
  ];

  /// Returns the enum value with an element attached
  InteractionIncidence withElement(Element? newElement) {
    return InteractionIncidence._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InteractionIncidence.$value';
}
