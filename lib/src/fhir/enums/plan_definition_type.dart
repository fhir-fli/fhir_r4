// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of PlanDefinition.
class PlanDefinitionType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PlanDefinitionType._(super.value, [super.element]);

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
          'PlanDefinitionType cannot be constructed from JSON.');
    }
    return PlanDefinitionType._(value, element);
  }

  /// order_set
  static final PlanDefinitionType order_set = PlanDefinitionType._(
    'order-set',
  );

  /// clinical_protocol
  static final PlanDefinitionType clinical_protocol = PlanDefinitionType._(
    'clinical-protocol',
  );

  /// eca_rule
  static final PlanDefinitionType eca_rule = PlanDefinitionType._(
    'eca-rule',
  );

  /// workflow_definition
  static final PlanDefinitionType workflow_definition = PlanDefinitionType._(
    'workflow-definition',
  );

  /// For instances where an Element is present but not value

  static final PlanDefinitionType elementOnly = PlanDefinitionType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PlanDefinitionType setElement(
    String name,
    dynamic elementValue,
  ) {
    return PlanDefinitionType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PlanDefinitionType withElement(Element? newElement) {
    return PlanDefinitionType._(value, newElement);
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
    return PlanDefinitionType._(
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
