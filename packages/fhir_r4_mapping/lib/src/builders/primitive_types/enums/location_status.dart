// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LocationStatus
enum LocationStatusBuilderEnum {
  /// active
  active,

  /// suspended
  suspended,

  /// inactive
  inactive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LocationStatusBuilderEnum.active:
        return 'active';
      case LocationStatusBuilderEnum.suspended:
        return 'suspended';
      case LocationStatusBuilderEnum.inactive:
        return 'inactive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LocationStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return LocationStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LocationStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return LocationStatusBuilderEnum.active;
      case 'suspended':
        return LocationStatusBuilderEnum.suspended;
      case 'inactive':
        return LocationStatusBuilderEnum.inactive;
    }
    return null;
  }
}

/// Indicates whether the location is still in use.
class LocationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LocationStatusBuilder._({
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
  factory LocationStatusBuilder(
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
    final valueEnum = LocationStatusBuilderEnum.fromString(
      valueString,
    );
    return LocationStatusBuilder._(
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

  /// Create empty [LocationStatusBuilder]
  /// with element only
  factory LocationStatusBuilder.empty() =>
      LocationStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [LocationStatusBuilder] from JSON.
  factory LocationStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return LocationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for LocationStatusBuilder
  final LocationStatusBuilderEnum? valueEnum;

  /// active
  static LocationStatusBuilder active = LocationStatusBuilder._(
    valueString: 'active',
    valueEnum: LocationStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static LocationStatusBuilder suspended = LocationStatusBuilder._(
    valueString: 'suspended',
    valueEnum: LocationStatusBuilderEnum.suspended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Suspended',
    ),
  );

  /// inactive
  static LocationStatusBuilder inactive = LocationStatusBuilder._(
    valueString: 'inactive',
    valueEnum: LocationStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// For instances where an Element is present but not value
  static LocationStatusBuilder elementOnly = LocationStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<LocationStatusBuilder> values = [
    active,
    suspended,
    inactive,
  ];

  /// Returns the enum value with an element attached
  LocationStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return LocationStatusBuilder._(
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
