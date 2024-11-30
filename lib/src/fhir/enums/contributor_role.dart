// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
class ContributorRole {
  // Private constructor for internal use (like enum)
  ContributorRole._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContributorRole values
  /// publisher
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole publisher = ContributorRole._(
    'publisher',
  );

  /// author
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole author = ContributorRole._(
    'author',
  );

  /// reviewer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole reviewer = ContributorRole._(
    'reviewer',
  );

  /// endorser
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole endorser = ContributorRole._(
    'endorser',
  );

  /// editor
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole editor = ContributorRole._(
    'editor',
  );

  /// informant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole informant = ContributorRole._(
    'informant',
  );

  /// funder
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContributorRole funder = ContributorRole._(
    'funder',
  );

  /// For instances where an Element is present but not value

  static final ContributorRole elementOnly = ContributorRole._('');

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
    return ContributorRole._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return ContributorRole._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
