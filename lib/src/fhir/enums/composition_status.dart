// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The workflow/clinical status of the composition.
class CompositionStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CompositionStatus._(super.value, [super.element]);

  /// Factory constructor to create [CompositionStatus] from JSON.
  factory CompositionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatus.elementOnly.withElement(element);
    }
    return CompositionStatus._(value, element);
  }

  /// preliminary
  static final CompositionStatus preliminary = CompositionStatus._(
    'preliminary',
  );

  /// final_
  static final CompositionStatus final_ = CompositionStatus._(
    'final',
  );

  /// amended
  static final CompositionStatus amended = CompositionStatus._(
    'amended',
  );

  /// entered_in_error
  static final CompositionStatus entered_in_error = CompositionStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CompositionStatus elementOnly = CompositionStatus._('');

  /// List of all enum-like values
  static final List<CompositionStatus> values = [
    preliminary,
    final_,
    amended,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CompositionStatus clone() => CompositionStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CompositionStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return CompositionStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CompositionStatus withElement(Element? newElement) {
    return CompositionStatus._(value, newElement);
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
  CompositionStatus copyWith({
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
    return CompositionStatus._(
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
