// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Citation classification type
class CitationClassificationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitationClassificationType._(super.value, [super.element]);

  /// Factory constructor to create [CitationClassificationType] from JSON.
  factory CitationClassificationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationClassificationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CitationClassificationType cannot be constructed from JSON.',
      );
    }
    return CitationClassificationType._(value, element);
  }

  /// citation_source
  static final CitationClassificationType citation_source =
      CitationClassificationType._(
    'citation-source',
  );

  /// medline_owner
  static final CitationClassificationType medline_owner =
      CitationClassificationType._(
    'medline-owner',
  );

  /// fevir_platform_use
  static final CitationClassificationType fevir_platform_use =
      CitationClassificationType._(
    'fevir-platform-use',
  );

  /// For instances where an Element is present but not value

  static final CitationClassificationType elementOnly =
      CitationClassificationType._('');

  /// List of all enum-like values
  static final List<CitationClassificationType> values = [
    citation_source,
    medline_owner,
    fevir_platform_use,
  ];

  /// Clones the current instance
  @override
  CitationClassificationType clone() => CitationClassificationType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CitationClassificationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return CitationClassificationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CitationClassificationType withElement(Element? newElement) {
    return CitationClassificationType._(value, newElement);
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
  CitationClassificationType copyWith({
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
    return CitationClassificationType._(
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
