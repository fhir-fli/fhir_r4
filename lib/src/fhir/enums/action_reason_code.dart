// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Provides examples of reasons for actions to be performed.
class ActionReasonCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ActionReasonCode._(super.value, [super.element]);

  /// Factory constructor to create [ActionReasonCode] from JSON.
  factory ActionReasonCode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionReasonCode.elementOnly.withElement(element);
    }
    return ActionReasonCode._(value, element);
  }

  /// off_pathway
  static final ActionReasonCode off_pathway = ActionReasonCode._(
    'off-pathway',
  );

  /// risk_assessment
  static final ActionReasonCode risk_assessment = ActionReasonCode._(
    'risk-assessment',
  );

  /// care_gap
  static final ActionReasonCode care_gap = ActionReasonCode._(
    'care-gap',
  );

  /// drug_drug_interaction
  static final ActionReasonCode drug_drug_interaction = ActionReasonCode._(
    'drug-drug-interaction',
  );

  /// quality_measure
  static final ActionReasonCode quality_measure = ActionReasonCode._(
    'quality-measure',
  );

  /// For instances where an Element is present but not value

  static final ActionReasonCode elementOnly = ActionReasonCode._('');

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
  ActionReasonCode clone() =>
      ActionReasonCode._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ActionReasonCode setElement(String name, dynamic elementValue) {
    return ActionReasonCode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ActionReasonCode withElement(Element? newElement) {
    return ActionReasonCode._(value, newElement);
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
    return ActionReasonCode._(
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
