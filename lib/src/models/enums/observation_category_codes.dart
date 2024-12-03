// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Observation Category codes.
class ObservationCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationCategoryCodes._(super.value, [super.element]);

  /// Factory constructor to create [ObservationCategoryCodes] from JSON.
  factory ObservationCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationCategoryCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationCategoryCodes cannot be constructed from JSON.',
      );
    }
    return ObservationCategoryCodes._(value, element);
  }

  /// social_history
  static final ObservationCategoryCodes social_history =
      ObservationCategoryCodes._(
    'social-history',
  );

  /// vital_signs
  static final ObservationCategoryCodes vital_signs =
      ObservationCategoryCodes._(
    'vital-signs',
  );

  /// imaging
  static final ObservationCategoryCodes imaging = ObservationCategoryCodes._(
    'imaging',
  );

  /// laboratory
  static final ObservationCategoryCodes laboratory = ObservationCategoryCodes._(
    'laboratory',
  );

  /// procedure
  static final ObservationCategoryCodes procedure = ObservationCategoryCodes._(
    'procedure',
  );

  /// survey
  static final ObservationCategoryCodes survey = ObservationCategoryCodes._(
    'survey',
  );

  /// exam
  static final ObservationCategoryCodes exam = ObservationCategoryCodes._(
    'exam',
  );

  /// therapy
  static final ObservationCategoryCodes therapy = ObservationCategoryCodes._(
    'therapy',
  );

  /// activity
  static final ObservationCategoryCodes activity = ObservationCategoryCodes._(
    'activity',
  );

  /// For instances where an Element is present but not value

  static final ObservationCategoryCodes elementOnly =
      ObservationCategoryCodes._('');

  /// List of all enum-like values
  static final List<ObservationCategoryCodes> values = [
    social_history,
    vital_signs,
    imaging,
    laboratory,
    procedure,
    survey,
    exam,
    therapy,
    activity,
  ];

  /// Clones the current instance
  @override
  ObservationCategoryCodes clone() => ObservationCategoryCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ObservationCategoryCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ObservationCategoryCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ObservationCategoryCodes withElement(Element? newElement) {
    return ObservationCategoryCodes._(value, newElement);
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
  ObservationCategoryCodes copyWith({
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
    return ObservationCategoryCodes._(
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
