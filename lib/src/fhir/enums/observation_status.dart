// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status of an observation.
class ObservationStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationStatus._(super.value, [super.element]);

  /// Factory constructor to create [ObservationStatus] from JSON.
  factory ObservationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly.withElement(element);
    }
    return ObservationStatus._(value, element);
  }

  /// registered
  static final ObservationStatus registered = ObservationStatus._(
    'registered',
  );

  /// preliminary
  static final ObservationStatus preliminary = ObservationStatus._(
    'preliminary',
  );

  /// final_
  static final ObservationStatus final_ = ObservationStatus._(
    'final',
  );

  /// amended
  static final ObservationStatus amended = ObservationStatus._(
    'amended',
  );

  /// corrected
  static final ObservationStatus corrected = ObservationStatus._(
    'corrected',
  );

  /// cancelled
  static final ObservationStatus cancelled = ObservationStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final ObservationStatus entered_in_error = ObservationStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ObservationStatus unknown = ObservationStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ObservationStatus elementOnly = ObservationStatus._('');

  /// List of all enum-like values
  static final List<ObservationStatus> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ObservationStatus clone() => ObservationStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ObservationStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ObservationStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus._(value, newElement);
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
  ObservationStatus copyWith({
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
    return ObservationStatus._(
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
