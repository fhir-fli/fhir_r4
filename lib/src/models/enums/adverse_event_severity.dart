// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The severity of the adverse event itself, in direct relation to the subject.
class AdverseEventSeverity extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdverseEventSeverity._(super.value, [super.element]);

  /// Factory constructor to create [AdverseEventSeverity] from JSON.
  factory AdverseEventSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventSeverity cannot be constructed from JSON.',
      );
    }
    return AdverseEventSeverity._(value, element);
  }

  /// mild
  static final AdverseEventSeverity mild = AdverseEventSeverity._(
    'mild',
  );

  /// moderate
  static final AdverseEventSeverity moderate = AdverseEventSeverity._(
    'moderate',
  );

  /// severe
  static final AdverseEventSeverity severe = AdverseEventSeverity._(
    'severe',
  );

  /// For instances where an Element is present but not value

  static final AdverseEventSeverity elementOnly = AdverseEventSeverity._('');

  /// List of all enum-like values
  static final List<AdverseEventSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Clones the current instance
  @override
  AdverseEventSeverity clone() => AdverseEventSeverity._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdverseEventSeverity withElement(Element? newElement) {
    return AdverseEventSeverity._(value, newElement);
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
  AdverseEventSeverity copyWith({
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
    return AdverseEventSeverity._(
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
