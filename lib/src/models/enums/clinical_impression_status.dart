// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes that reflect the current state of a clinical impression within its overall lifecycle.
class ClinicalImpressionStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ClinicalImpressionStatus._(super.value, [super.element]);

  /// Factory constructor to create [ClinicalImpressionStatus] from JSON.
  factory ClinicalImpressionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalImpressionStatus cannot be constructed from JSON.',
      );
    }
    return ClinicalImpressionStatus._(value, element);
  }

  /// preparation
  static final ClinicalImpressionStatus preparation =
      ClinicalImpressionStatus._(
    'preparation',
  );

  /// in_progress
  static final ClinicalImpressionStatus in_progress =
      ClinicalImpressionStatus._(
    'in-progress',
  );

  /// not_done
  static final ClinicalImpressionStatus not_done = ClinicalImpressionStatus._(
    'not-done',
  );

  /// on_hold
  static final ClinicalImpressionStatus on_hold = ClinicalImpressionStatus._(
    'on-hold',
  );

  /// stopped
  static final ClinicalImpressionStatus stopped = ClinicalImpressionStatus._(
    'stopped',
  );

  /// completed
  static final ClinicalImpressionStatus completed = ClinicalImpressionStatus._(
    'completed',
  );

  /// entered_in_error
  static final ClinicalImpressionStatus entered_in_error =
      ClinicalImpressionStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ClinicalImpressionStatus unknown = ClinicalImpressionStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ClinicalImpressionStatus elementOnly =
      ClinicalImpressionStatus._('');

  /// List of all enum-like values
  static final List<ClinicalImpressionStatus> values = [
    preparation,
    in_progress,
    not_done,
    on_hold,
    stopped,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ClinicalImpressionStatus clone() => ClinicalImpressionStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ClinicalImpressionStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ClinicalImpressionStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ClinicalImpressionStatus withElement(Element? newElement) {
    return ClinicalImpressionStatus._(value, newElement);
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
  ClinicalImpressionStatus copyWith({
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
    return ClinicalImpressionStatus._(
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
