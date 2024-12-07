// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the typical color of representation.
class DeviceMetricColor extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DeviceMetricColor._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DeviceMetricColor] from JSON.
  factory DeviceMetricColor.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricColor cannot be constructed from JSON.',
      );
    }
    return DeviceMetricColor._(value: value, element: element);
  }

  /// black
  static final DeviceMetricColor black = DeviceMetricColor._(
    value: 'black',
  );

  /// red
  static final DeviceMetricColor red = DeviceMetricColor._(
    value: 'red',
  );

  /// green
  static final DeviceMetricColor green = DeviceMetricColor._(
    value: 'green',
  );

  /// yellow
  static final DeviceMetricColor yellow = DeviceMetricColor._(
    value: 'yellow',
  );

  /// blue
  static final DeviceMetricColor blue = DeviceMetricColor._(
    value: 'blue',
  );

  /// magenta
  static final DeviceMetricColor magenta = DeviceMetricColor._(
    value: 'magenta',
  );

  /// cyan
  static final DeviceMetricColor cyan = DeviceMetricColor._(
    value: 'cyan',
  );

  /// white
  static final DeviceMetricColor white = DeviceMetricColor._(
    value: 'white',
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricColor elementOnly = DeviceMetricColor._(value: '');

  /// List of all enum-like values
  static final List<DeviceMetricColor> values = [
    black,
    red,
    green,
    yellow,
    blue,
    magenta,
    cyan,
    white,
  ];

  /// Clones the current instance
  @override
  DeviceMetricColor clone() => DeviceMetricColor._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor._(value: value, element: newElement);
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
  DeviceMetricColor copyWith({
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
    return DeviceMetricColor._(
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
