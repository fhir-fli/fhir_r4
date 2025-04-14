// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceMetricColor
enum DeviceMetricColorBuilderEnum {
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
      case DeviceMetricColorBuilderEnum.black:
        return 'black';
      case DeviceMetricColorBuilderEnum.red:
        return 'red';
      case DeviceMetricColorBuilderEnum.green:
        return 'green';
      case DeviceMetricColorBuilderEnum.yellow:
        return 'yellow';
      case DeviceMetricColorBuilderEnum.blue:
        return 'blue';
      case DeviceMetricColorBuilderEnum.magenta:
        return 'magenta';
      case DeviceMetricColorBuilderEnum.cyan:
        return 'cyan';
      case DeviceMetricColorBuilderEnum.white:
        return 'white';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricColorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricColorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricColorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'black':
        return DeviceMetricColorBuilderEnum.black;
      case 'red':
        return DeviceMetricColorBuilderEnum.red;
      case 'green':
        return DeviceMetricColorBuilderEnum.green;
      case 'yellow':
        return DeviceMetricColorBuilderEnum.yellow;
      case 'blue':
        return DeviceMetricColorBuilderEnum.blue;
      case 'magenta':
        return DeviceMetricColorBuilderEnum.magenta;
      case 'cyan':
        return DeviceMetricColorBuilderEnum.cyan;
      case 'white':
        return DeviceMetricColorBuilderEnum.white;
    }
    return null;
  }
}

/// Describes the typical color of representation.
class DeviceMetricColorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricColorBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory DeviceMetricColorBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = DeviceMetricColorBuilderEnum.fromString(
      valueString,
    );
    return DeviceMetricColorBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [DeviceMetricColorBuilder]
  /// with element only
  factory DeviceMetricColorBuilder.empty() =>
      DeviceMetricColorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceMetricColorBuilder] from JSON.
  factory DeviceMetricColorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricColorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricColorBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricColorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceMetricColorBuilder
  final DeviceMetricColorBuilderEnum? valueEnum;

  /// black
  static DeviceMetricColorBuilder black = DeviceMetricColorBuilder._(
    valueString: 'black',
    valueEnum: DeviceMetricColorBuilderEnum.black,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Black',
    ),
  );

  /// red
  static DeviceMetricColorBuilder red = DeviceMetricColorBuilder._(
    valueString: 'red',
    valueEnum: DeviceMetricColorBuilderEnum.red,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Red',
    ),
  );

  /// green
  static DeviceMetricColorBuilder green = DeviceMetricColorBuilder._(
    valueString: 'green',
    valueEnum: DeviceMetricColorBuilderEnum.green,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Green',
    ),
  );

  /// yellow
  static DeviceMetricColorBuilder yellow = DeviceMetricColorBuilder._(
    valueString: 'yellow',
    valueEnum: DeviceMetricColorBuilderEnum.yellow,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Yellow',
    ),
  );

  /// blue
  static DeviceMetricColorBuilder blue = DeviceMetricColorBuilder._(
    valueString: 'blue',
    valueEnum: DeviceMetricColorBuilderEnum.blue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Blue',
    ),
  );

  /// magenta
  static DeviceMetricColorBuilder magenta = DeviceMetricColorBuilder._(
    valueString: 'magenta',
    valueEnum: DeviceMetricColorBuilderEnum.magenta,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Magenta',
    ),
  );

  /// cyan
  static DeviceMetricColorBuilder cyan = DeviceMetricColorBuilder._(
    valueString: 'cyan',
    valueEnum: DeviceMetricColorBuilderEnum.cyan,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color Cyan',
    ),
  );

  /// white
  static DeviceMetricColorBuilder white = DeviceMetricColorBuilder._(
    valueString: 'white',
    valueEnum: DeviceMetricColorBuilderEnum.white,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-color',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Color White',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceMetricColorBuilder elementOnly = DeviceMetricColorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceMetricColorBuilder> values = [
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
  DeviceMetricColorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricColorBuilder._(
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
}
