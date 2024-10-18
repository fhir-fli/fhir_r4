// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How slices are interpreted when evaluating an instance.
enum SlicingRules {
  /// Display: Closed
  /// Definition: No additional content is allowed other than that described by the slices in this profile.
  closed('closed'),

  /// Display: Open
  /// Definition: Additional content is allowed anywhere in the list.
  open('open'),

  /// Display: Open at End
  /// Definition: Additional content is allowed, but only at the end of the list. Note that using this requires that the slices be ordered, which makes it hard to share uses. This should only be done where absolutely required.
  openAtEnd('openAtEnd'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SlicingRules(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SlicingRules] instances.
  static SlicingRules fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules.elementOnly.withElement(
        element,
      );
    }
    return SlicingRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SlicingRules withElement(Element? newElement) {
    return SlicingRules.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
