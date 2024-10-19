// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Data types allowed to be used for search parameters.
@collection
class SearchParamType {
  /// Constructor for internal use (like enum)
  SearchParamType({this.fhirCode, this.element})
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

  /// SearchParamType values
  /// number
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType number = SearchParamType(
    fhirCode: 'number',
  );

  /// date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType date = SearchParamType(
    fhirCode: 'date',
  );

  /// string
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType string = SearchParamType(
    fhirCode: 'string',
  );

  /// token
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType token = SearchParamType(
    fhirCode: 'token',
  );

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType reference = SearchParamType(
    fhirCode: 'reference',
  );

  /// composite
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType composite = SearchParamType(
    fhirCode: 'composite',
  );

  /// quantity
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType quantity = SearchParamType(
    fhirCode: 'quantity',
  );

  /// uri
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType uri = SearchParamType(
    fhirCode: 'uri',
  );

  /// special
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SearchParamType special = SearchParamType(
    fhirCode: 'special',
  );

  /// For instances where an Element is present but not value

  static final SearchParamType elementOnly = SearchParamType();

  /// List of all enum-like values
  static final List<SearchParamType> values = [
    number,
    date,
    string,
    token,
    reference,
    composite,
    quantity,
    uri,
    special,
  ];

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SearchParamType] from JSON.
  static SearchParamType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    }
    return SearchParamType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchParamType.$fhirCode';
}
