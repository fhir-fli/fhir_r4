// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example value set for the type of stages of cancer and other conditions
class ConditionStageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConditionStageType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConditionStageType] from JSON.
  factory ConditionStageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionStageType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionStageType cannot be constructed from JSON.',
      );
    }
    return ConditionStageType._(value: value, element: element);
  }

  /// value261023001
  static final ConditionStageType value261023001 = ConditionStageType._(
    value: '261023001',
  );

  /// value260998006
  static final ConditionStageType value260998006 = ConditionStageType._(
    value: '260998006',
  );

  /// For instances where an Element is present but not value

  static final ConditionStageType elementOnly = ConditionStageType._(value: '');

  /// List of all enum-like values
  static final List<ConditionStageType> values = [
    value261023001,
    value260998006,
  ];

  /// Clones the current instance
  @override
  ConditionStageType clone() => ConditionStageType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConditionStageType withElement(Element? newElement) {
    return ConditionStageType._(value: value, element: newElement);
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
  ConditionStageType copyWith({
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
    return ConditionStageType._(
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
