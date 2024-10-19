// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A categorisation for incidence of occurence of an interaction.
@collection
class InteractionIncidence {
  /// Constructor for internal use (like enum)
  InteractionIncidence({this.fhirCode, this.element})
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

  /// InteractionIncidence values
  /// Theoretical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionIncidence Theoretical = InteractionIncidence(
    fhirCode: 'Theoretical',
  );

  /// Observed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final InteractionIncidence Observed = InteractionIncidence(
    fhirCode: 'Observed',
  );

  /// For instances where an Element is present but not value

  static final InteractionIncidence elementOnly = InteractionIncidence();

  /// List of all enum-like values
  static final List<InteractionIncidence> values = [
    Theoretical,
    Observed,
  ];

  /// Returns the enum value with an element attached
  InteractionIncidence withElement(Element? newElement) {
    return InteractionIncidence(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [InteractionIncidence] from JSON.
  static InteractionIncidence fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionIncidence.elementOnly.withElement(element);
    }
    return InteractionIncidence.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InteractionIncidence.$fhirCode';
}
