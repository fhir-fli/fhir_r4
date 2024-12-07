// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of reasons for actions to be performed.
class ActionReasonCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionReasonCode._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ActionReasonCode] from JSON.
  factory ActionReasonCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionReasonCode cannot be constructed from JSON.',
      );
    }
    return ActionReasonCode._(value: value, element: element);
  }

  /// off_pathway
  static final ActionReasonCode off_pathway = ActionReasonCode._(
    value: 'off-pathway',
  );

  /// risk_assessment
  static final ActionReasonCode risk_assessment = ActionReasonCode._(
    value: 'risk-assessment',
  );

  /// care_gap
  static final ActionReasonCode care_gap = ActionReasonCode._(
    value: 'care-gap',
  );

  /// drug_drug_interaction
  static final ActionReasonCode drug_drug_interaction = ActionReasonCode._(
    value: 'drug-drug-interaction',
  );

  /// quality_measure
  static final ActionReasonCode quality_measure = ActionReasonCode._(
    value: 'quality-measure',
  );

  /// For instances where an Element is present but not value

  static final ActionReasonCode elementOnly = ActionReasonCode._(value: '');

  /// List of all enum-like values
  static final List<ActionReasonCode> values = [
    off_pathway,
    risk_assessment,
    care_gap,
    drug_drug_interaction,
    quality_measure,
  ];

  /// Clones the current instance
  @override
  ActionReasonCode clone() => ActionReasonCode._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode._(value: value, element: newElement);
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
  ActionReasonCode copyWith({
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
    return ActionReasonCode._(
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
