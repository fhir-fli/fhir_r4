// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How the causality was assessed - questionnaire, Bayesian, checklist.
class AdverseEventCausalityMethod extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventCausalityMethod._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdverseEventCausalityMethod] from JSON.
  factory AdverseEventCausalityMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityMethod.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventCausalityMethod cannot be constructed from JSON.',
      );
    }
    return AdverseEventCausalityMethod._(value, element: element);
  }

  /// ProbabilityScale
  static final AdverseEventCausalityMethod ProbabilityScale =
      AdverseEventCausalityMethod._(
    'ProbabilityScale',
  );

  /// Bayesian
  static final AdverseEventCausalityMethod Bayesian =
      AdverseEventCausalityMethod._(
    'Bayesian',
  );

  /// Checklist
  static final AdverseEventCausalityMethod Checklist =
      AdverseEventCausalityMethod._(
    'Checklist',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCausalityMethod elementOnly =
      AdverseEventCausalityMethod._('');

  /// List of all enum-like values
  static final List<AdverseEventCausalityMethod> values = [
    ProbabilityScale,
    Bayesian,
    Checklist,
  ];

  /// Clones the current instance
  @override
  AdverseEventCausalityMethod clone() => AdverseEventCausalityMethod._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventCausalityMethod withElement(Element? newElement) {
    return AdverseEventCausalityMethod._(
      value,
      element: newElement,
    );
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
  AdverseEventCausalityMethod copyWith({
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
    return AdverseEventCausalityMethod._(
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
