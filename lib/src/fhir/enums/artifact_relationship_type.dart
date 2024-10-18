// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Artifact Relationship Type
enum ArtifactRelationshipType {
  /// Display: Replaces
  /// Definition: Replaces
  replaces('replaces'),

  /// Display: Amends
  /// Definition: Amends
  amends('amends'),

  /// Display: Appends
  /// Definition: Appends
  appends('appends'),

  /// Display: Transforms
  /// Definition: Transforms
  transforms('transforms'),

  /// Display: Replaced with
  /// Definition: Replaced with
  replaced_with('replaced-with'),

  /// Display: Amended with
  /// Definition: Amended with
  amended_with('amended-with'),

  /// Display: Appended with
  /// Definition: Appended with
  appended_with('appended-with'),

  /// Display: Transformed with
  /// Definition: Transformed with
  transformed_with('transformed-with'),

  /// Display: Derived from
  /// Definition: Derived from
  derived_from('derived-from'),

  /// Display: Transformed into
  /// Definition: Transformed into
  transformed_into('transformed-into'),

  /// Display: Composed of
  /// Definition: Composed of
  composed_of('composed-of'),

  /// Display: Part of
  /// Definition: Part of
  part_of('part-of'),

  /// Display: Supports
  /// Definition: Supports
  supports('supports'),

  /// Display: Supported with
  /// Definition: Supported with
  supported_with('supported-with'),

  /// Display: Depends on
  /// Definition: Depends on
  depends_on('depends-on'),

  /// Display: Similar to
  /// Definition: Similar to
  similar_to('similar-to'),

  /// Display: Cites
  /// Definition: Cites
  cites('cites'),

  /// Display: Cited by
  /// Definition: Cited by
  cited_by('cited-by'),

  /// Display: Retracts
  /// Definition: Retracts
  retracts('retracts'),

  /// Display: Retracted by
  /// Definition: Retracted by
  retracted_by('retracted-by'),

  /// Display: Comments On
  /// Definition: Comments On
  comments_on('comments-on'),

  /// Display: Comment In
  /// Definition: Comment In
  comment_in('comment-in'),

  /// Display: Corrects
  /// Definition: Corrects
  corrects('corrects'),

  /// Display: Correction In
  /// Definition: Correction In
  correction_in('correction-in'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ArtifactRelationshipType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ArtifactRelationshipType] instances.
  static ArtifactRelationshipType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ArtifactRelationshipType.elementOnly.withElement(
        element,
      );
    }
    return ArtifactRelationshipType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ArtifactRelationshipType withElement(Element? newElement) {
    return ArtifactRelationshipType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
