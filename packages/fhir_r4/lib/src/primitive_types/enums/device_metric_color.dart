// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceMetricColor
enum DeviceMetricColorEnum {
  /// black
  black,

  /// red
  red,

  /// green
  green,

  /// yellow
  yellow,

  /// blue
  blue,

  /// magenta
  magenta,

  /// cyan
  cyan,

  /// white
  white,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceMetricColorEnum.black:
        return 'black';
      case DeviceMetricColorEnum.red:
        return 'red';
      case DeviceMetricColorEnum.green:
        return 'green';
      case DeviceMetricColorEnum.yellow:
        return 'yellow';
      case DeviceMetricColorEnum.blue:
        return 'blue';
      case DeviceMetricColorEnum.magenta:
        return 'magenta';
      case DeviceMetricColorEnum.cyan:
        return 'cyan';
      case DeviceMetricColorEnum.white:
        return 'white';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricColorEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricColorEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricColorEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'black':
        return DeviceMetricColorEnum.black;
      case 'red':
        return DeviceMetricColorEnum.red;
      case 'green':
        return DeviceMetricColorEnum.green;
      case 'yellow':
        return DeviceMetricColorEnum.yellow;
      case 'blue':
        return DeviceMetricColorEnum.blue;
      case 'magenta':
        return DeviceMetricColorEnum.magenta;
      case 'cyan':
        return DeviceMetricColorEnum.cyan;
      case 'white':
        return DeviceMetricColorEnum.white;
    }
    return null;
  }
}

/// Describes the typical color of representation.
class DeviceMetricColor extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceMetricColor._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = DeviceMetricColorEnum.fromString(valueString);
    return DeviceMetricColor._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [DeviceMetricColor]
  /// from JSON.
  factory DeviceMetricColor.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceMetricColorEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColor._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricColor cannot be constructed from JSON.',
      );
    }
    return DeviceMetricColor._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceMetricColor
  final DeviceMetricColorEnum? valueEnum;

  /// black
  static const DeviceMetricColor black = DeviceMetricColor._(
    valueString: 'black',
    valueEnum: DeviceMetricColorEnum.black,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Black',
    ),
  );

  /// red
  static const DeviceMetricColor red = DeviceMetricColor._(
    valueString: 'red',
    valueEnum: DeviceMetricColorEnum.red,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Red',
    ),
  );

  /// green
  static const DeviceMetricColor green = DeviceMetricColor._(
    valueString: 'green',
    valueEnum: DeviceMetricColorEnum.green,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Green',
    ),
  );

  /// yellow
  static const DeviceMetricColor yellow = DeviceMetricColor._(
    valueString: 'yellow',
    valueEnum: DeviceMetricColorEnum.yellow,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Yellow',
    ),
  );

  /// blue
  static const DeviceMetricColor blue = DeviceMetricColor._(
    valueString: 'blue',
    valueEnum: DeviceMetricColorEnum.blue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Blue',
    ),
  );

  /// magenta
  static const DeviceMetricColor magenta = DeviceMetricColor._(
    valueString: 'magenta',
    valueEnum: DeviceMetricColorEnum.magenta,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Magenta',
    ),
  );

  /// cyan
  static const DeviceMetricColor cyan = DeviceMetricColor._(
    valueString: 'cyan',
    valueEnum: DeviceMetricColorEnum.cyan,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color Cyan',
    ),
  );

  /// white
  static const DeviceMetricColor white = DeviceMetricColor._(
    valueString: 'white',
    valueEnum: DeviceMetricColorEnum.white,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Color White',
    ),
  );

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

  @override
  DeviceMetricColor clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceMetricColorCopyWithImpl<DeviceMetricColor> get copyWith =>
      DeviceMetricColorCopyWithImpl<DeviceMetricColor>(
        this,
        (v) => v as DeviceMetricColor,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceMetricColorCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceMetricColorCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      DeviceMetricColor(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
