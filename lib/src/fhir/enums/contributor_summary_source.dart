// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the producer or rule for creating the display string.
class ContributorSummarySource extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContributorSummarySource._(super.value, [super.element]);

  /// Factory constructor to create [ContributorSummarySource] from JSON.
  factory ContributorSummarySource.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummarySource.elementOnly.withElement(element);
    }
    return ContributorSummarySource._(value, element);
  }

  /// publisher_data
  static final ContributorSummarySource publisher_data =
      ContributorSummarySource._(
    'publisher-data',
  );

  /// article_copy
  static final ContributorSummarySource article_copy =
      ContributorSummarySource._(
    'article-copy',
  );

  /// citation_manager
  static final ContributorSummarySource citation_manager =
      ContributorSummarySource._(
    'citation-manager',
  );

  /// custom
  static final ContributorSummarySource custom = ContributorSummarySource._(
    'custom',
  );

  /// For instances where an Element is present but not value

  static final ContributorSummarySource elementOnly =
      ContributorSummarySource._('');

  /// List of all enum-like values
  static final List<ContributorSummarySource> values = [
    publisher_data,
    article_copy,
    citation_manager,
    custom,
  ];

  /// Clones the current instance
  @override
  ContributorSummarySource clone() =>
      ContributorSummarySource._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContributorSummarySource setElement(String name, dynamic elementValue) {
    return ContributorSummarySource._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContributorSummarySource withElement(Element? newElement) {
    return ContributorSummarySource._(value, newElement);
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
  ContributorSummarySource copyWith({
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
    return ContributorSummarySource._(
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
