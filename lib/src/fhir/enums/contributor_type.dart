// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The type of contributor.
@collection
class ContributorType {
  /// Constructor for internal use (like enum)
  ContributorType({this.fhirCode, this.element})
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

  /// ContributorType values
  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorType author = ContributorType(
    fhirCode: 'author',
  );

  /// editor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorType editor = ContributorType(
    fhirCode: 'editor',
  );

  /// reviewer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorType reviewer = ContributorType(
    fhirCode: 'reviewer',
  );

  /// endorser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorType endorser = ContributorType(
    fhirCode: 'endorser',
  );

  /// For instances where an Element is present but not value

  static final ContributorType elementOnly = ContributorType();

  /// List of all enum-like values
  static final List<ContributorType> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Returns the enum value with an element attached
  ContributorType withElement(Element? newElement) {
    return ContributorType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContributorType] from JSON.
  static ContributorType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType.elementOnly.withElement(element);
    }
    return ContributorType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorType.$fhirCode';
}
