// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The handling of the variable in statistical analysis for exposures or outcomes (E.g. Dichotomous, Continuous, Descriptive).
class EvidenceVariableHandling extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EvidenceVariableHandling._(super.value, [super.element]);

  /// Factory constructor to create [EvidenceVariableHandling] from JSON.
  factory EvidenceVariableHandling.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceVariableHandling.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EvidenceVariableHandling cannot be constructed from JSON.',
      );
    }
    return EvidenceVariableHandling._(value, element);
  }

  /// continuous
  static final EvidenceVariableHandling continuous = EvidenceVariableHandling._(
    'continuous',
  );

  /// dichotomous
  static final EvidenceVariableHandling dichotomous =
      EvidenceVariableHandling._(
    'dichotomous',
  );

  /// ordinal
  static final EvidenceVariableHandling ordinal = EvidenceVariableHandling._(
    'ordinal',
  );

  /// polychotomous
  static final EvidenceVariableHandling polychotomous =
      EvidenceVariableHandling._(
    'polychotomous',
  );

  /// For instances where an Element is present but not value

  static final EvidenceVariableHandling elementOnly =
      EvidenceVariableHandling._('');

  /// List of all enum-like values
  static final List<EvidenceVariableHandling> values = [
    continuous,
    dichotomous,
    ordinal,
    polychotomous,
  ];

  /// Clones the current instance
  @override
  EvidenceVariableHandling clone() => EvidenceVariableHandling._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EvidenceVariableHandling withElement(Element? newElement) {
    return EvidenceVariableHandling._(value, newElement);
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
  EvidenceVariableHandling copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EvidenceVariableHandling._(
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
