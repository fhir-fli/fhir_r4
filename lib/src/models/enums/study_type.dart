// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of study the evidence was derived from.
class StudyType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StudyType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [StudyType] from JSON.
  factory StudyType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StudyType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StudyType cannot be constructed from JSON.',
      );
    }
    return StudyType._(value: value, element: element);
  }

  /// RCT
  static final StudyType RCT = StudyType._(
    value: 'RCT',
  );

  /// CCT
  static final StudyType CCT = StudyType._(
    value: 'CCT',
  );

  /// cohort
  static final StudyType cohort = StudyType._(
    value: 'cohort',
  );

  /// case_control
  static final StudyType case_control = StudyType._(
    value: 'case-control',
  );

  /// series
  static final StudyType series = StudyType._(
    value: 'series',
  );

  /// case_report
  static final StudyType case_report = StudyType._(
    value: 'case-report',
  );

  /// mixed
  static final StudyType mixed = StudyType._(
    value: 'mixed',
  );

  /// For instances where an Element is present but not value

  static final StudyType elementOnly = StudyType._(value: '');

  /// List of all enum-like values
  static final List<StudyType> values = [
    RCT,
    CCT,
    cohort,
    case_control,
    series,
    case_report,
    mixed,
  ];

  /// Clones the current instance
  @override
  StudyType clone() => StudyType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StudyType withElement(Element? newElement) {
    return StudyType._(value: value, element: newElement);
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
  StudyType copyWith({
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
    return StudyType._(
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
