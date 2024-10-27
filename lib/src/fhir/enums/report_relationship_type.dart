// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship between reports.
class ReportRelationshipType {
  // Private constructor for internal use (like enum)
  ReportRelationshipType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ReportRelationshipType values
  /// replaces
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType replaces = ReportRelationshipType._(
    'replaces',
  );

  /// amends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType amends = ReportRelationshipType._(
    'amends',
  );

  /// appends
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType appends = ReportRelationshipType._(
    'appends',
  );

  /// transforms
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType transforms = ReportRelationshipType._(
    'transforms',
  );

  /// replacedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType replacedWith = ReportRelationshipType._(
    'replacedWith',
  );

  /// amendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType amendedWith = ReportRelationshipType._(
    'amendedWith',
  );

  /// appendedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType appendedWith = ReportRelationshipType._(
    'appendedWith',
  );

  /// transformedWith
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ReportRelationshipType transformedWith =
      ReportRelationshipType._(
    'transformedWith',
  );

  /// For instances where an Element is present but not value

  static final ReportRelationshipType elementOnly =
      ReportRelationshipType._('');

  /// List of all enum-like values
  static final List<ReportRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ReportRelationshipType] from JSON.
  static ReportRelationshipType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType.elementOnly.withElement(element);
    }
    return ReportRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
