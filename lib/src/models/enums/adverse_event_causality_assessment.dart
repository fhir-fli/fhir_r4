// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the assessment of whether the entity caused the event.
class AdverseEventCausalityAssessment extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventCausalityAssessment._(super.value, [super.element]);

  /// Factory constructor to create [AdverseEventCausalityAssessment] from JSON.
  factory AdverseEventCausalityAssessment.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventCausalityAssessment.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventCausalityAssessment cannot be constructed from JSON.',
      );
    }
    return AdverseEventCausalityAssessment._(value, element);
  }

  /// Certain
  static final AdverseEventCausalityAssessment Certain =
      AdverseEventCausalityAssessment._(
    'Certain',
  );

  /// Probably_Likely
  static final AdverseEventCausalityAssessment Probably_Likely =
      AdverseEventCausalityAssessment._(
    'Probably-Likely',
  );

  /// Possible
  static final AdverseEventCausalityAssessment Possible =
      AdverseEventCausalityAssessment._(
    'Possible',
  );

  /// Unlikely
  static final AdverseEventCausalityAssessment Unlikely =
      AdverseEventCausalityAssessment._(
    'Unlikely',
  );

  /// Conditional_Classified
  static final AdverseEventCausalityAssessment Conditional_Classified =
      AdverseEventCausalityAssessment._(
    'Conditional-Classified',
  );

  /// Unassessable_Unclassifiable
  static final AdverseEventCausalityAssessment Unassessable_Unclassifiable =
      AdverseEventCausalityAssessment._(
    'Unassessable-Unclassifiable',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventCausalityAssessment elementOnly =
      AdverseEventCausalityAssessment._('');

  /// List of all enum-like values
  static final List<AdverseEventCausalityAssessment> values = [
    Certain,
    Probably_Likely,
    Possible,
    Unlikely,
    Conditional_Classified,
    Unassessable_Unclassifiable,
  ];

  /// Clones the current instance
  @override
  AdverseEventCausalityAssessment clone() => AdverseEventCausalityAssessment._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventCausalityAssessment withElement(Element? newElement) {
    return AdverseEventCausalityAssessment._(value, newElement);
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
  AdverseEventCausalityAssessment copyWith({
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
    return AdverseEventCausalityAssessment._(
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
