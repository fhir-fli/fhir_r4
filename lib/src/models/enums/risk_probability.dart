// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes representing the likelihood of a particular outcome in a risk assessment.
class RiskProbability extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RiskProbability._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [RiskProbability] from JSON.
  factory RiskProbability.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RiskProbability.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RiskProbability cannot be constructed from JSON.',
      );
    }
    return RiskProbability._(value: value, element: element);
  }

  /// negligible
  static final RiskProbability negligible = RiskProbability._(
    value: 'negligible',
  );

  /// low
  static final RiskProbability low = RiskProbability._(
    value: 'low',
  );

  /// moderate
  static final RiskProbability moderate = RiskProbability._(
    value: 'moderate',
  );

  /// high
  static final RiskProbability high = RiskProbability._(
    value: 'high',
  );

  /// certain
  static final RiskProbability certain = RiskProbability._(
    value: 'certain',
  );

  /// For instances where an Element is present but not value

  static final RiskProbability elementOnly = RiskProbability._(value: '');

  /// List of all enum-like values
  static final List<RiskProbability> values = [
    negligible,
    low,
    moderate,
    high,
    certain,
  ];

  /// Clones the current instance
  @override
  RiskProbability clone() => RiskProbability._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  RiskProbability withElement(Element? newElement) {
    return RiskProbability._(value: value, element: newElement);
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
  RiskProbability copyWith({
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
    return RiskProbability._(
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
