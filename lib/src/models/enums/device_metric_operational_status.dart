// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  DeviceMetricOperationalStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [DeviceMetricOperationalStatus] from JSON.
  factory DeviceMetricOperationalStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricOperationalStatus cannot be constructed from JSON.',
      );
    }
    return DeviceMetricOperationalStatus._(
      value,
      element: element,
    );
  }

  /// on_
  static final DeviceMetricOperationalStatus on_ =
      DeviceMetricOperationalStatus._(
    'on',
  );

  /// off
  static final DeviceMetricOperationalStatus off =
      DeviceMetricOperationalStatus._(
    'off',
  );

  /// standby
  static final DeviceMetricOperationalStatus standby =
      DeviceMetricOperationalStatus._(
    'standby',
  );

  /// entered_in_error
  static final DeviceMetricOperationalStatus entered_in_error =
      DeviceMetricOperationalStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricOperationalStatus elementOnly =
      DeviceMetricOperationalStatus._('');

  /// List of all enum-like values
  static final List<DeviceMetricOperationalStatus> values = [
    on_,
    off,
    standby,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DeviceMetricOperationalStatus clone() => DeviceMetricOperationalStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus._(
      value,
      element: newElement,
    );
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
  DeviceMetricOperationalStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DeviceMetricOperationalStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
