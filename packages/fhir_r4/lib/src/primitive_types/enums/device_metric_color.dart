// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Describes the typical color of representation.
class DeviceMetricColor extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DeviceMetricColor._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DeviceMetricColor(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return DeviceMetricColor._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DeviceMetricColor] with element only
  factory DeviceMetricColor.empty() => DeviceMetricColor._(valueString: '');

  /// Factory constructor to create [DeviceMetricColor] from JSON.
  factory DeviceMetricColor.fromJson(Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// black
  static final DeviceMetricColor black = DeviceMetricColor._(
    valueString: 'black',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Black'.toFhirString,
  );

  /// red
  static final DeviceMetricColor red = DeviceMetricColor._(
    valueString: 'red',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Red'.toFhirString,
  );

  /// green
  static final DeviceMetricColor green = DeviceMetricColor._(
    valueString: 'green',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Green'.toFhirString,
  );

  /// yellow
  static final DeviceMetricColor yellow = DeviceMetricColor._(
    valueString: 'yellow',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Yellow'.toFhirString,
  );

  /// blue
  static final DeviceMetricColor blue = DeviceMetricColor._(
    valueString: 'blue',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Blue'.toFhirString,
  );

  /// magenta
  static final DeviceMetricColor magenta = DeviceMetricColor._(
    valueString: 'magenta',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Magenta'.toFhirString,
  );

  /// cyan
  static final DeviceMetricColor cyan = DeviceMetricColor._(
    valueString: 'cyan',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color Cyan'.toFhirString,
  );

  /// white
  static final DeviceMetricColor white = DeviceMetricColor._(
    valueString: 'white',
    system: 'http://hl7.org/fhir/ValueSet/metric-color'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Color White'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DeviceMetricColor elementOnly =
      DeviceMetricColor._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceMetricColor withElement(Element? newElement) {
    return DeviceMetricColor._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DeviceMetricColor copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for DeviceMetricColor: $newValue');
    }
    return DeviceMetricColor._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
