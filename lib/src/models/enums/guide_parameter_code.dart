// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code of parameter that is input to the guide.
class GuideParameterCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GuideParameterCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [GuideParameterCode] from JSON.
  factory GuideParameterCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuideParameterCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuideParameterCode cannot be constructed from JSON.',
      );
    }
    return GuideParameterCode._(value: value, element: element);
  }

  /// apply
  static final GuideParameterCode apply = GuideParameterCode._(
    value: 'apply',
  );

  /// path_resource
  static final GuideParameterCode path_resource = GuideParameterCode._(
    value: 'path-resource',
  );

  /// path_pages
  static final GuideParameterCode path_pages = GuideParameterCode._(
    value: 'path-pages',
  );

  /// path_tx_cache
  static final GuideParameterCode path_tx_cache = GuideParameterCode._(
    value: 'path-tx-cache',
  );

  /// expansion_parameter
  static final GuideParameterCode expansion_parameter = GuideParameterCode._(
    value: 'expansion-parameter',
  );

  /// rule_broken_links
  static final GuideParameterCode rule_broken_links = GuideParameterCode._(
    value: 'rule-broken-links',
  );

  /// generate_xml
  static final GuideParameterCode generate_xml = GuideParameterCode._(
    value: 'generate-xml',
  );

  /// generate_json
  static final GuideParameterCode generate_json = GuideParameterCode._(
    value: 'generate-json',
  );

  /// generate_turtle
  static final GuideParameterCode generate_turtle = GuideParameterCode._(
    value: 'generate-turtle',
  );

  /// html_template
  static final GuideParameterCode html_template = GuideParameterCode._(
    value: 'html-template',
  );

  /// For instances where an Element is present but not value

  static final GuideParameterCode elementOnly = GuideParameterCode._(value: '');

  /// List of all enum-like values
  static final List<GuideParameterCode> values = [
    apply,
    path_resource,
    path_pages,
    path_tx_cache,
    expansion_parameter,
    rule_broken_links,
    generate_xml,
    generate_json,
    generate_turtle,
    html_template,
  ];

  /// Clones the current instance
  @override
  GuideParameterCode clone() => GuideParameterCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuideParameterCode withElement(Element? newElement) {
    return GuideParameterCode._(value: value, element: newElement);
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
  GuideParameterCode copyWith({
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
    return GuideParameterCode._(
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
