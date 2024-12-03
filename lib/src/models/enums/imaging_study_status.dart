// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the ImagingStudy.
class ImagingStudyStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImagingStudyStatus._(super.value, [super.element]);

  /// Factory constructor to create [ImagingStudyStatus] from JSON.
  factory ImagingStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingStudyStatus cannot be constructed from JSON.',
      );
    }
    return ImagingStudyStatus._(value, element);
  }

  /// registered
  static final ImagingStudyStatus registered = ImagingStudyStatus._(
    'registered',
  );

  /// available
  static final ImagingStudyStatus available = ImagingStudyStatus._(
    'available',
  );

  /// cancelled
  static final ImagingStudyStatus cancelled = ImagingStudyStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final ImagingStudyStatus entered_in_error = ImagingStudyStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ImagingStudyStatus unknown = ImagingStudyStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ImagingStudyStatus elementOnly = ImagingStudyStatus._('');

  /// List of all enum-like values
  static final List<ImagingStudyStatus> values = [
    registered,
    available,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ImagingStudyStatus clone() => ImagingStudyStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImagingStudyStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImagingStudyStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus._(value, newElement);
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
  ImagingStudyStatus copyWith({
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
    return ImagingStudyStatus._(
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
