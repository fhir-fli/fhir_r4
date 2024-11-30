// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Related Claim Relationship codes.
class ExampleRelatedClaimRelationshipCodes {
  // Private constructor for internal use (like enum)
  ExampleRelatedClaimRelationshipCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ExampleRelatedClaimRelationshipCodes values
  /// prior
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRelatedClaimRelationshipCodes prior =
      ExampleRelatedClaimRelationshipCodes._(
    'prior',
  );

  /// associated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ExampleRelatedClaimRelationshipCodes associated =
      ExampleRelatedClaimRelationshipCodes._(
    'associated',
  );

  /// For instances where an Element is present but not value

  static final ExampleRelatedClaimRelationshipCodes elementOnly =
      ExampleRelatedClaimRelationshipCodes._('');

  /// List of all enum-like values
  static final List<ExampleRelatedClaimRelationshipCodes> values = [
    prior,
    associated,
  ];

  /// Returns the enum value with an element attached
  ExampleRelatedClaimRelationshipCodes withElement(Element? newElement) {
    return ExampleRelatedClaimRelationshipCodes._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ExampleRelatedClaimRelationshipCodes] from JSON.
  static ExampleRelatedClaimRelationshipCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRelatedClaimRelationshipCodes.elementOnly
          .withElement(element);
    }
    return ExampleRelatedClaimRelationshipCodes._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
