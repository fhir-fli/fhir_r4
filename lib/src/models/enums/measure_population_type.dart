// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of population.
class MeasurePopulationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasurePopulationType._(super.value, [super.element]);

  /// Factory constructor to create [MeasurePopulationType] from JSON.
  factory MeasurePopulationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasurePopulationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasurePopulationType cannot be constructed from JSON.',
      );
    }
    return MeasurePopulationType._(value, element);
  }

  /// initial_population
  static final MeasurePopulationType initial_population =
      MeasurePopulationType._(
    'initial-population',
  );

  /// numerator
  static final MeasurePopulationType numerator = MeasurePopulationType._(
    'numerator',
  );

  /// numerator_exclusion
  static final MeasurePopulationType numerator_exclusion =
      MeasurePopulationType._(
    'numerator-exclusion',
  );

  /// denominator
  static final MeasurePopulationType denominator = MeasurePopulationType._(
    'denominator',
  );

  /// denominator_exclusion
  static final MeasurePopulationType denominator_exclusion =
      MeasurePopulationType._(
    'denominator-exclusion',
  );

  /// denominator_exception
  static final MeasurePopulationType denominator_exception =
      MeasurePopulationType._(
    'denominator-exception',
  );

  /// measure_population
  static final MeasurePopulationType measure_population =
      MeasurePopulationType._(
    'measure-population',
  );

  /// measure_population_exclusion
  static final MeasurePopulationType measure_population_exclusion =
      MeasurePopulationType._(
    'measure-population-exclusion',
  );

  /// measure_observation
  static final MeasurePopulationType measure_observation =
      MeasurePopulationType._(
    'measure-observation',
  );

  /// For instances where an Element is present but not value

  static final MeasurePopulationType elementOnly = MeasurePopulationType._('');

  /// List of all enum-like values
  static final List<MeasurePopulationType> values = [
    initial_population,
    numerator,
    numerator_exclusion,
    denominator,
    denominator_exclusion,
    denominator_exception,
    measure_population,
    measure_population_exclusion,
    measure_observation,
  ];

  /// Clones the current instance
  @override
  MeasurePopulationType clone() => MeasurePopulationType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MeasurePopulationType setElement(
    String name,
    dynamic elementValue,
  ) {
    return MeasurePopulationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MeasurePopulationType withElement(Element? newElement) {
    return MeasurePopulationType._(value, newElement);
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
  MeasurePopulationType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MeasurePopulationType._(
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
