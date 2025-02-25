// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the typical color of representation.
class DeviceMetricColor extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  DeviceMetricColor._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [DeviceMetricColor] with element only
  factory DeviceMetricColor.empty() => DeviceMetricColor._('');

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
    return DeviceMetricColor._(
      value,
      element: element,
    );
  }

  /// black
  static final DeviceMetricColor black = DeviceMetricColor._(
    'black',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Black'.toFhirString,
  );

  /// red
  static final DeviceMetricColor red = DeviceMetricColor._(
    'red',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Red'.toFhirString,
  );

  /// green
  static final DeviceMetricColor green = DeviceMetricColor._(
    'green',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Green'.toFhirString,
  );

  /// yellow
  static final DeviceMetricColor yellow = DeviceMetricColor._(
    'yellow',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Yellow'.toFhirString,
  );

  /// blue
  static final DeviceMetricColor blue = DeviceMetricColor._(
    'blue',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Blue'.toFhirString,
  );

  /// magenta
  static final DeviceMetricColor magenta = DeviceMetricColor._(
    'magenta',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Magenta'.toFhirString,
  );

  /// cyan
  static final DeviceMetricColor cyan = DeviceMetricColor._(
    'cyan',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Cyan'.toFhirString,
  );

  /// white
  static final DeviceMetricColor white = DeviceMetricColor._(
    'white',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color White'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricColor elementOnly = DeviceMetricColor._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor._(
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
  DeviceMetricColor copyWith({
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
    return DeviceMetricColor._(
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
