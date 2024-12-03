// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The scoring type of the measure.
class MeasureScoring extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureScoring._(super.value, [super.element]);

  /// Factory constructor to create [MeasureScoring] from JSON.
  factory MeasureScoring.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureScoring.elementOnly.withElement(element);
    }
    return MeasureScoring._(value, element);
  }

  /// proportion
  static final MeasureScoring proportion = MeasureScoring._(
    'proportion',
  );

  /// ratio
  static final MeasureScoring ratio = MeasureScoring._(
    'ratio',
  );

  /// continuous_variable
  static final MeasureScoring continuous_variable = MeasureScoring._(
    'continuous-variable',
  );

  /// cohort
  static final MeasureScoring cohort = MeasureScoring._(
    'cohort',
  );

  /// For instances where an Element is present but not value

  static final MeasureScoring elementOnly = MeasureScoring._('');

  /// List of all enum-like values
  static final List<MeasureScoring> values = [
    proportion,
    ratio,
    continuous_variable,
    cohort,
  ];

  /// Clones the current instance
  @override
  MeasureScoring clone() => MeasureScoring._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasureScoring setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasureScoring._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasureScoring withElement(Element? newElement) {
    return MeasureScoring._(value, newElement);
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
  MeasureScoring copyWith({
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
    return MeasureScoring._(
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
