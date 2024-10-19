// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Identifies the purpose for this identifier, if known .
@collection
class IdentifierUse {
  /// Constructor for internal use (like enum)
  IdentifierUse({this.fhirCode, this.element})
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

  /// IdentifierUse values
  /// usual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierUse usual = IdentifierUse(
    fhirCode: 'usual',
  );

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierUse official = IdentifierUse(
    fhirCode: 'official',
  );

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierUse temp = IdentifierUse(
    fhirCode: 'temp',
  );

  /// secondary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierUse secondary = IdentifierUse(
    fhirCode: 'secondary',
  );

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final IdentifierUse old = IdentifierUse(
    fhirCode: 'old',
  );

  /// For instances where an Element is present but not value

  static final IdentifierUse elementOnly = IdentifierUse();

  /// List of all enum-like values
  static final List<IdentifierUse> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [IdentifierUse] from JSON.
  static IdentifierUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly.withElement(element);
    }
    return IdentifierUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentifierUse.$fhirCode';
}
