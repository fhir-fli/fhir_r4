// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of PlanDefinition.
class PlanDefinitionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PlanDefinitionType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [PlanDefinitionType] from JSON.
  factory PlanDefinitionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PlanDefinitionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PlanDefinitionType cannot be constructed from JSON.',
      );
    }
    return PlanDefinitionType._(value: value, element: element);
  }

  /// order_set
  static final PlanDefinitionType order_set = PlanDefinitionType._(
    value: 'order-set',
  );

  /// clinical_protocol
  static final PlanDefinitionType clinical_protocol = PlanDefinitionType._(
    value: 'clinical-protocol',
  );

  /// eca_rule
  static final PlanDefinitionType eca_rule = PlanDefinitionType._(
    value: 'eca-rule',
  );

  /// workflow_definition
  static final PlanDefinitionType workflow_definition = PlanDefinitionType._(
    value: 'workflow-definition',
  );

  /// For instances where an Element is present but not value

  static final PlanDefinitionType elementOnly = PlanDefinitionType._(value: '');

  /// List of all enum-like values
  static final List<PlanDefinitionType> values = [
    order_set,
    clinical_protocol,
    eca_rule,
    workflow_definition,
  ];

  /// Clones the current instance
  @override
  PlanDefinitionType clone() => PlanDefinitionType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PlanDefinitionType withElement(Element? newElement) {
    return PlanDefinitionType._(value: value, element: newElement);
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
  PlanDefinitionType copyWith({
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
    return PlanDefinitionType._(
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
