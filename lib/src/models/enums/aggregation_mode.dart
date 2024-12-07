// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How resource references can be aggregated.
class AggregationMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AggregationMode._(super.value, [super.element]);

  /// Factory constructor to create [AggregationMode] from JSON.
  factory AggregationMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AggregationMode cannot be constructed from JSON.',
      );
    }
    return AggregationMode._(value, element);
  }

  /// contained
  static final AggregationMode contained = AggregationMode._(
    'contained',
  );

  /// referenced
  static final AggregationMode referenced = AggregationMode._(
    'referenced',
  );

  /// bundled
  static final AggregationMode bundled = AggregationMode._(
    'bundled',
  );

  /// For instances where an Element is present but not value

  static final AggregationMode elementOnly = AggregationMode._('');

  /// List of all enum-like values
  static final List<AggregationMode> values = [
    contained,
    referenced,
    bundled,
  ];

  /// Clones the current instance
  @override
  AggregationMode clone() => AggregationMode._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AggregationMode withElement(Element? newElement) {
    return AggregationMode._(value, newElement);
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
  AggregationMode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AggregationMode._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
