// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Observation values that indicate what change in a measurement value or score is indicative of an improvement in the measured item or scored issue.
class MeasureImprovementNotation extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureImprovementNotation._(super.value, [super.element]);

  /// Factory constructor to create [MeasureImprovementNotation] from JSON.
  factory MeasureImprovementNotation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureImprovementNotation.elementOnly.withElement(element);
    }
    return MeasureImprovementNotation._(value, element);
  }

  /// increase
  static final MeasureImprovementNotation increase =
      MeasureImprovementNotation._(
    'increase',
  );

  /// decrease
  static final MeasureImprovementNotation decrease =
      MeasureImprovementNotation._(
    'decrease',
  );

  /// For instances where an Element is present but not value

  static final MeasureImprovementNotation elementOnly =
      MeasureImprovementNotation._('');

  /// List of all enum-like values
  static final List<MeasureImprovementNotation> values = [
    increase,
    decrease,
  ];

  /// Clones the current instance
  @override
  MeasureImprovementNotation clone() => MeasureImprovementNotation._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureImprovementNotation setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureImprovementNotation._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureImprovementNotation withElement(Element? newElement) {
    return MeasureImprovementNotation._(value, newElement);
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
  MeasureImprovementNotation copyWith({
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
    return MeasureImprovementNotation._(
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
