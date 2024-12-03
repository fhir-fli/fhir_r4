// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The format for display of the citation.
class CitationSummaryStyle extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitationSummaryStyle._(super.value, [super.element]);

  /// Factory constructor to create [CitationSummaryStyle] from JSON.
  factory CitationSummaryStyle.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationSummaryStyle.elementOnly.withElement(element);
    }
    return CitationSummaryStyle._(value, element);
  }

  /// vancouver
  static final CitationSummaryStyle vancouver = CitationSummaryStyle._(
    'vancouver',
  );

  /// ama11
  static final CitationSummaryStyle ama11 = CitationSummaryStyle._(
    'ama11',
  );

  /// apa7
  static final CitationSummaryStyle apa7 = CitationSummaryStyle._(
    'apa7',
  );

  /// apa6
  static final CitationSummaryStyle apa6 = CitationSummaryStyle._(
    'apa6',
  );

  /// asa6
  static final CitationSummaryStyle asa6 = CitationSummaryStyle._(
    'asa6',
  );

  /// mla8
  static final CitationSummaryStyle mla8 = CitationSummaryStyle._(
    'mla8',
  );

  /// cochrane
  static final CitationSummaryStyle cochrane = CitationSummaryStyle._(
    'cochrane',
  );

  /// elsevier_harvard
  static final CitationSummaryStyle elsevier_harvard = CitationSummaryStyle._(
    'elsevier-harvard',
  );

  /// nature
  static final CitationSummaryStyle nature = CitationSummaryStyle._(
    'nature',
  );

  /// acs
  static final CitationSummaryStyle acs = CitationSummaryStyle._(
    'acs',
  );

  /// chicago_a_17
  static final CitationSummaryStyle chicago_a_17 = CitationSummaryStyle._(
    'chicago-a-17',
  );

  /// chicago_b_17
  static final CitationSummaryStyle chicago_b_17 = CitationSummaryStyle._(
    'chicago-b-17',
  );

  /// ieee
  static final CitationSummaryStyle ieee = CitationSummaryStyle._(
    'ieee',
  );

  /// comppub
  static final CitationSummaryStyle comppub = CitationSummaryStyle._(
    'comppub',
  );

  /// For instances where an Element is present but not value

  static final CitationSummaryStyle elementOnly = CitationSummaryStyle._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CitationSummaryStyle setElement(
    String name,
    dynamic elementValue,
  ) {
    return CitationSummaryStyle._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CitationSummaryStyle withElement(Element? newElement) {
    return CitationSummaryStyle._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CitationSummaryStyle._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
