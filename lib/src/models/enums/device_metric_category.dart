// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Describes the category of the metric.
class DeviceMetricCategory extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  DeviceMetricCategory._(
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

  /// Create empty [DeviceMetricCategory] with element only
  factory DeviceMetricCategory.empty() => DeviceMetricCategory._('');

  /// Factory constructor to create [DeviceMetricCategory] from JSON.
  factory DeviceMetricCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCategory cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCategory._(
      value,
      element: element,
    );
  }

  /// measurement
  static final DeviceMetricCategory measurement = DeviceMetricCategory._(
    'measurement',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Measurement'.toFhirString,
  );

  /// setting
  static final DeviceMetricCategory setting = DeviceMetricCategory._(
    'setting',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Setting'.toFhirString,
  );

  /// calculation
  static final DeviceMetricCategory calculation = DeviceMetricCategory._(
    'calculation',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Calculation'.toFhirString,
  );

  /// unspecified
  static final DeviceMetricCategory unspecified = DeviceMetricCategory._(
    'unspecified',
    system: 'http://hl7.org/fhir/ValueSet/metric-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unspecified'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final DeviceMetricCategory elementOnly = DeviceMetricCategory._('');

  /// List of all enum-like values
  static final List<DeviceMetricCategory> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Clones the current instance
  @override
  DeviceMetricCategory clone() => DeviceMetricCategory._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory._(
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
  DeviceMetricCategory copyWith({
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
    return DeviceMetricCategory._(
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
