// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
enum ContributorRole {
  /// Display: Publisher
  /// Definition: Entity that makes the content available for public use
  publisher('publisher'),

  /// Display: Author/Creator
  /// Definition: An entity primarily responsible for making the resource, often called author or creator
  author('author'),

  /// Display: Reviewer
  /// Definition: Entity that examines the content, formally or informally, and suggests revisions or comments
  reviewer('reviewer'),

  /// Display: Endorser
  /// Definition: Entity that supports, approves, or advocates for the content
  endorser('endorser'),

  /// Display: Editor
  /// Definition: Entity that revises or has authority to control the content
  editor('editor'),

  /// Display: Informant
  /// Definition: Entity that supplies information
  informant('informant'),

  /// Display: Funder
  /// Definition: Entity that supplies financial support
  funder('funder'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContributorRole(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContributorRole] instances.
  static ContributorRole fromJson(
    Map<String, dynamic> json,
  ) {
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

  /// Returns the enum value with an element
  ContributorRole withElement(Element? newElement) {
    return ContributorRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
