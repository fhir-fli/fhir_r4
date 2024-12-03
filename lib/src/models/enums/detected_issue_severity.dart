// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
class DetectedIssueSeverity extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DetectedIssueSeverity._(super.value, [super.element]);

  /// Factory constructor to create [DetectedIssueSeverity] from JSON.
  factory DetectedIssueSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueSeverity cannot be constructed from JSON.',
      );
    }
    return DetectedIssueSeverity._(value, element);
  }

  /// high
  static final DetectedIssueSeverity high = DetectedIssueSeverity._(
    'high',
  );

  /// moderate
  static final DetectedIssueSeverity moderate = DetectedIssueSeverity._(
    'moderate',
  );

  /// low
  static final DetectedIssueSeverity low = DetectedIssueSeverity._(
    'low',
  );

  /// For instances where an Element is present but not value

  static final DetectedIssueSeverity elementOnly = DetectedIssueSeverity._('');

  /// List of all enum-like values
  static final List<DetectedIssueSeverity> values = [
    high,
    moderate,
    low,
  ];

  /// Clones the current instance
  @override
  DetectedIssueSeverity clone() => DetectedIssueSeverity._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DetectedIssueSeverity setElement(
    String name,
    dynamic elementValue,
  ) {
    return DetectedIssueSeverity._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity._(value, newElement);
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
  DetectedIssueSeverity copyWith({
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
    return DetectedIssueSeverity._(
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
