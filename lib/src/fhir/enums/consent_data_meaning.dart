// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How a resource reference is interpreted when testing consent restrictions.
@collection
class ConsentDataMeaning {
  /// Constructor for internal use (like enum)
  ConsentDataMeaning({this.fhirCode, this.element})
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

  /// ConsentDataMeaning values
  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning instance = ConsentDataMeaning(
    fhirCode: 'instance',
  );

  /// related
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning related = ConsentDataMeaning(
    fhirCode: 'related',
  );

  /// dependents
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning dependents = ConsentDataMeaning(
    fhirCode: 'dependents',
  );

  /// authoredby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning authoredby = ConsentDataMeaning(
    fhirCode: 'authoredby',
  );

  /// For instances where an Element is present but not value

  static final ConsentDataMeaning elementOnly = ConsentDataMeaning();

  /// List of all enum-like values
  static final List<ConsentDataMeaning> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentDataMeaning] from JSON.
  static ConsentDataMeaning fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    }
    return ConsentDataMeaning.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentDataMeaning.$fhirCode';
}
