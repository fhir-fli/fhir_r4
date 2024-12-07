// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status of the device.
class FHIRDeviceStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRDeviceStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FHIRDeviceStatus] from JSON.
  factory FHIRDeviceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatus cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatus._(value: value, element: element);
  }

  /// active
  static final FHIRDeviceStatus active = FHIRDeviceStatus._(
    value: 'active',
  );

  /// inactive
  static final FHIRDeviceStatus inactive = FHIRDeviceStatus._(
    value: 'inactive',
  );

  /// entered_in_error
  static final FHIRDeviceStatus entered_in_error = FHIRDeviceStatus._(
    value: 'entered-in-error',
  );

  /// unknown
  static final FHIRDeviceStatus unknown = FHIRDeviceStatus._(
    value: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final FHIRDeviceStatus elementOnly = FHIRDeviceStatus._(value: '');

  /// List of all enum-like values
  static final List<FHIRDeviceStatus> values = [
    active,
    inactive,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  FHIRDeviceStatus clone() => FHIRDeviceStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus._(value: value, element: newElement);
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
  FHIRDeviceStatus copyWith({
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
    return FHIRDeviceStatus._(
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
