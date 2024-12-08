// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The kind of report, such as grouping of classifiers, search results, or human-compiled expression.
class EvidenceReportType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceReportType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EvidenceReportType] from JSON.
  factory EvidenceReportType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceReportType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceReportType cannot be constructed from JSON.',
      );
    }
    return EvidenceReportType._(value, element: element);
  }

  /// classification
  static final EvidenceReportType classification = EvidenceReportType._(
    'classification',
  );

  /// search_results
  static final EvidenceReportType search_results = EvidenceReportType._(
    'search-results',
  );

  /// resources_compiled
  static final EvidenceReportType resources_compiled = EvidenceReportType._(
    'resources-compiled',
  );

  /// text_structured
  static final EvidenceReportType text_structured = EvidenceReportType._(
    'text-structured',
  );

  /// For instances where an Element is present but not value

  static final EvidenceReportType elementOnly = EvidenceReportType._('');

  /// List of all enum-like values
  static final List<EvidenceReportType> values = [
    classification,
    search_results,
    resources_compiled,
    text_structured,
  ];

  /// Clones the current instance
  @override
  EvidenceReportType clone() => EvidenceReportType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceReportType withElement(Element? newElement) {
    return EvidenceReportType._(value, element: newElement);
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
  EvidenceReportType copyWith({
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
    return EvidenceReportType._(
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
