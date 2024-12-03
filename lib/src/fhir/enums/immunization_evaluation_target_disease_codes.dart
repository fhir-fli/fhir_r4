// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the disease that the evaluation is against. This value set is provided as a suggestive example and includes the SNOMED CT concepts from the 64572001 (Disease) hierarchy.
class ImmunizationEvaluationTargetDiseaseCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationTargetDiseaseCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationEvaluationTargetDiseaseCodes] from JSON.
  factory ImmunizationEvaluationTargetDiseaseCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationTargetDiseaseCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationTargetDiseaseCodes._(value, element);
  }

  /// value1857005
  static final ImmunizationEvaluationTargetDiseaseCodes value1857005 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '1857005',
  );

  /// value397430003
  static final ImmunizationEvaluationTargetDiseaseCodes value397430003 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '397430003',
  );

  /// value14189004
  static final ImmunizationEvaluationTargetDiseaseCodes value14189004 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '14189004',
  );

  /// value36989005
  static final ImmunizationEvaluationTargetDiseaseCodes value36989005 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '36989005',
  );

  /// value36653000
  static final ImmunizationEvaluationTargetDiseaseCodes value36653000 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '36653000',
  );

  /// value76902006
  static final ImmunizationEvaluationTargetDiseaseCodes value76902006 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '76902006',
  );

  /// value709410003
  static final ImmunizationEvaluationTargetDiseaseCodes value709410003 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '709410003',
  );

  /// value27836007
  static final ImmunizationEvaluationTargetDiseaseCodes value27836007 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '27836007',
  );

  /// value398102009
  static final ImmunizationEvaluationTargetDiseaseCodes value398102009 =
      ImmunizationEvaluationTargetDiseaseCodes._(
    '398102009',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationTargetDiseaseCodes elementOnly =
      ImmunizationEvaluationTargetDiseaseCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationTargetDiseaseCodes> values = [
    value1857005,
    value397430003,
    value14189004,
    value36989005,
    value36653000,
    value76902006,
    value709410003,
    value27836007,
    value398102009,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationTargetDiseaseCodes clone() =>
      ImmunizationEvaluationTargetDiseaseCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationEvaluationTargetDiseaseCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationEvaluationTargetDiseaseCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationEvaluationTargetDiseaseCodes withElement(Element? newElement) {
    return ImmunizationEvaluationTargetDiseaseCodes._(value, newElement);
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
  ImmunizationEvaluationTargetDiseaseCodes copyWith({
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
    return ImmunizationEvaluationTargetDiseaseCodes._(
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
