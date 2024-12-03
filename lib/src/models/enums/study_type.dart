// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of study the evidence was derived from.
class StudyType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StudyType._(super.value, [super.element]);

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
    return StudyType._(value, element);
  }

  /// RCT
  static final StudyType RCT = StudyType._(
    'RCT',
  );

  /// CCT
  static final StudyType CCT = StudyType._(
    'CCT',
  );

  /// cohort
  static final StudyType cohort = StudyType._(
    'cohort',
  );

  /// case_control
  static final StudyType case_control = StudyType._(
    'case-control',
  );

  /// series
  static final StudyType series = StudyType._(
    'series',
  );

  /// case_report
  static final StudyType case_report = StudyType._(
    'case-report',
  );

  /// mixed
  static final StudyType mixed = StudyType._(
    'mixed',
  );

  /// For instances where an Element is present but not value

  static final StudyType elementOnly = StudyType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  StudyType setElement(
    String name,
    dynamic elementValue,
  ) {
    return StudyType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  StudyType withElement(Element? newElement) {
    return StudyType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StudyType._(
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
