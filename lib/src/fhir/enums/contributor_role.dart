// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Used to code the format of the display string.
@collection
class ContributorRole {
  /// Constructor for internal use (like enum)
  ContributorRole({this.fhirCode, this.element})
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

  /// ContributorRole values
  /// publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole publisher = ContributorRole(
    fhirCode: 'publisher',
  );

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole author = ContributorRole(
    fhirCode: 'author',
  );

  /// reviewer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole reviewer = ContributorRole(
    fhirCode: 'reviewer',
  );

  /// endorser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole endorser = ContributorRole(
    fhirCode: 'endorser',
  );

  /// editor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole editor = ContributorRole(
    fhirCode: 'editor',
  );

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole informant = ContributorRole(
    fhirCode: 'informant',
  );

  /// funder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole funder = ContributorRole(
    fhirCode: 'funder',
  );

  /// For instances where an Element is present but not value

  static final ContributorRole elementOnly = ContributorRole();

  /// List of all enum-like values
  static final List<ContributorRole> values = [
    publisher,
    author,
    reviewer,
    endorser,
    editor,
    informant,
    funder,
  ];

  /// Returns the enum value with an element attached
  ContributorRole withElement(Element? newElement) {
    return ContributorRole(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContributorRole] from JSON.
  static ContributorRole fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorRole.elementOnly.withElement(element);
    }
    return ContributorRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContributorRole.$fhirCode';
}
