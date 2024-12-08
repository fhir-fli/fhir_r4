// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code author list statement, contributorship statement, and such.
class ContributorSummaryType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContributorSummaryType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContributorSummaryType] from JSON.
  factory ContributorSummaryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorSummaryType cannot be constructed from JSON.',
      );
    }
    return ContributorSummaryType._(value, element: element);
  }

  /// author_string
  static final ContributorSummaryType author_string = ContributorSummaryType._(
    'author-string',
  );

  /// contributorship_list
  static final ContributorSummaryType contributorship_list =
      ContributorSummaryType._(
    'contributorship-list',
  );

  /// contributorship_statement
  static final ContributorSummaryType contributorship_statement =
      ContributorSummaryType._(
    'contributorship-statement',
  );

  /// acknowledgement_list
  static final ContributorSummaryType acknowledgement_list =
      ContributorSummaryType._(
    'acknowledgement-list',
  );

  /// acknowledgment_statement
  static final ContributorSummaryType acknowledgment_statement =
      ContributorSummaryType._(
    'acknowledgment-statement',
  );

  /// funding_statement
  static final ContributorSummaryType funding_statement =
      ContributorSummaryType._(
    'funding-statement',
  );

  /// competing_interests_statement
  static final ContributorSummaryType competing_interests_statement =
      ContributorSummaryType._(
    'competing-interests-statement',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummaryType elementOnly =
      ContributorSummaryType._('');

  /// List of all enum-like values
  static final List<ContributorSummaryType> values = [
    author_string,
    contributorship_list,
    contributorship_statement,
    acknowledgement_list,
    acknowledgment_statement,
    funding_statement,
    competing_interests_statement,
  ];

  /// Clones the current instance
  @override
  ContributorSummaryType clone() => ContributorSummaryType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContributorSummaryType withElement(Element? newElement) {
    return ContributorSummaryType._(value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ContributorSummaryType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ContributorSummaryType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
