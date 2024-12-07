// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The format for display of the citation.
class CitationSummaryStyle extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitationSummaryStyle._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [CitationSummaryStyle] from JSON.
  factory CitationSummaryStyle.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationSummaryStyle.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitationSummaryStyle cannot be constructed from JSON.',
      );
    }
    return CitationSummaryStyle._(value: value, element: element);
  }

  /// vancouver
  static final CitationSummaryStyle vancouver = CitationSummaryStyle._(
    value: 'vancouver',
  );

  /// ama11
  static final CitationSummaryStyle ama11 = CitationSummaryStyle._(
    value: 'ama11',
  );

  /// apa7
  static final CitationSummaryStyle apa7 = CitationSummaryStyle._(
    value: 'apa7',
  );

  /// apa6
  static final CitationSummaryStyle apa6 = CitationSummaryStyle._(
    value: 'apa6',
  );

  /// asa6
  static final CitationSummaryStyle asa6 = CitationSummaryStyle._(
    value: 'asa6',
  );

  /// mla8
  static final CitationSummaryStyle mla8 = CitationSummaryStyle._(
    value: 'mla8',
  );

  /// cochrane
  static final CitationSummaryStyle cochrane = CitationSummaryStyle._(
    value: 'cochrane',
  );

  /// elsevier_harvard
  static final CitationSummaryStyle elsevier_harvard = CitationSummaryStyle._(
    value: 'elsevier-harvard',
  );

  /// nature
  static final CitationSummaryStyle nature = CitationSummaryStyle._(
    value: 'nature',
  );

  /// acs
  static final CitationSummaryStyle acs = CitationSummaryStyle._(
    value: 'acs',
  );

  /// chicago_a_17
  static final CitationSummaryStyle chicago_a_17 = CitationSummaryStyle._(
    value: 'chicago-a-17',
  );

  /// chicago_b_17
  static final CitationSummaryStyle chicago_b_17 = CitationSummaryStyle._(
    value: 'chicago-b-17',
  );

  /// ieee
  static final CitationSummaryStyle ieee = CitationSummaryStyle._(
    value: 'ieee',
  );

  /// comppub
  static final CitationSummaryStyle comppub = CitationSummaryStyle._(
    value: 'comppub',
  );

  /// For instances where an Element is present but not value

  static final CitationSummaryStyle elementOnly =
      CitationSummaryStyle._(value: '');

  /// List of all enum-like values
  static final List<CitationSummaryStyle> values = [
    vancouver,
    ama11,
    apa7,
    apa6,
    asa6,
    mla8,
    cochrane,
    elsevier_harvard,
    nature,
    acs,
    chicago_a_17,
    chicago_b_17,
    ieee,
    comppub,
  ];

  /// Clones the current instance
  @override
  CitationSummaryStyle clone() => CitationSummaryStyle._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CitationSummaryStyle withElement(Element? newElement) {
    return CitationSummaryStyle._(value: value, element: newElement);
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
  CitationSummaryStyle copyWith({
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
    return CitationSummaryStyle._(
      value: newValue ?? value,
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
