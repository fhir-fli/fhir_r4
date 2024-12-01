// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the source of the vaccine administered. This value set is provided as a suggestive example.
class ImmunizationFundingSource {
  // Private constructor for internal use (like enum)
  ImmunizationFundingSource._(this.fhirCode, {this.element});

  /// Factory constructor to create [ImmunizationFundingSource] from JSON.
  factory ImmunizationFundingSource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFundingSource.elementOnly.withElement(element);
    }
    return ImmunizationFundingSource._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ImmunizationFundingSource values
  /// private
  static final ImmunizationFundingSource private = ImmunizationFundingSource._(
    'private',
  );

  /// public
  static final ImmunizationFundingSource public = ImmunizationFundingSource._(
    'public',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationFundingSource elementOnly =
      ImmunizationFundingSource._('');

  /// List of all enum-like values
  static final List<ImmunizationFundingSource> values = [
    private,
    public,
  ];

  /// Returns the enum value with an element attached
  ImmunizationFundingSource withElement(Element? newElement) {
    return ImmunizationFundingSource._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
