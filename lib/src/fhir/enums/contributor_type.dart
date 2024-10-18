// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of contributor.
enum ContributorType {
  /// Display: Author
  /// Definition: An author of the content of the module.
  author('author'),

  /// Display: Editor
  /// Definition: An editor of the content of the module.
  editor('editor'),

  /// Display: Reviewer
  /// Definition: A reviewer of the content of the module.
  reviewer('reviewer'),

  /// Display: Endorser
  /// Definition: An endorser of the content of the module.
  endorser('endorser'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContributorType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContributorType] instances.
  static ContributorType fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ContributorType withElement(Element? newElement) {
    return ContributorType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
