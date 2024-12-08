// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Evidence focus characteristic code.
class FocusCharacteristicCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FocusCharacteristicCode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FocusCharacteristicCode] from JSON.
  factory FocusCharacteristicCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FocusCharacteristicCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FocusCharacteristicCode cannot be constructed from JSON.',
      );
    }
    return FocusCharacteristicCode._(value, element: element);
  }

  /// citation
  static final FocusCharacteristicCode citation = FocusCharacteristicCode._(
    'citation',
  );

  /// clinical_outcomes_observed
  static final FocusCharacteristicCode clinical_outcomes_observed =
      FocusCharacteristicCode._(
    'clinical-outcomes-observed',
  );

  /// population
  static final FocusCharacteristicCode population = FocusCharacteristicCode._(
    'population',
  );

  /// exposure
  static final FocusCharacteristicCode exposure = FocusCharacteristicCode._(
    'exposure',
  );

  /// comparator
  static final FocusCharacteristicCode comparator = FocusCharacteristicCode._(
    'comparator',
  );

  /// outcome
  static final FocusCharacteristicCode outcome = FocusCharacteristicCode._(
    'outcome',
  );

  /// medication_exposures
  static final FocusCharacteristicCode medication_exposures =
      FocusCharacteristicCode._(
    'medication-exposures',
  );

  /// study_type
  static final FocusCharacteristicCode study_type = FocusCharacteristicCode._(
    'study-type',
  );

  /// For instances where an Element is present but not value

  static final FocusCharacteristicCode elementOnly =
      FocusCharacteristicCode._('');

  /// List of all enum-like values
  static final List<FocusCharacteristicCode> values = [
    citation,
    clinical_outcomes_observed,
    population,
    exposure,
    comparator,
    outcome,
    medication_exposures,
    study_type,
  ];

  /// Clones the current instance
  @override
  FocusCharacteristicCode clone() => FocusCharacteristicCode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FocusCharacteristicCode withElement(Element? newElement) {
    return FocusCharacteristicCode._(value, element: newElement);
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
  FocusCharacteristicCode copyWith({
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
    return FocusCharacteristicCode._(
      newValue ?? value,
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
