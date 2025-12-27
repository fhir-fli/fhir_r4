part of '../primitive_types.dart';

/// Actual enum for LocationMode
enum LocationModeBuilderEnum {
  /// instance
  instance,

  /// kind
  kind,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LocationModeBuilderEnum.instance:
        return 'instance';
      case LocationModeBuilderEnum.kind:
        return 'kind';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LocationModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return LocationModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LocationModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return LocationModeBuilderEnum.instance;
      case 'kind':
        return LocationModeBuilderEnum.kind;
    }
    return null;
  }
}

/// Indicates whether a resource instance represents a specific location or
/// a class of locations.
class LocationModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LocationModeBuilder._({
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
  factory LocationModeBuilder(
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
    final valueEnum = LocationModeBuilderEnum.fromString(
      valueString,
    );
    return LocationModeBuilder._(
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

  /// Create empty [LocationModeBuilder]
  /// with element only
  factory LocationModeBuilder.empty() =>
      LocationModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [LocationModeBuilder] from JSON.
  factory LocationModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationModeBuilder cannot be constructed from JSON.',
      );
    }
    return LocationModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for LocationModeBuilder
  final LocationModeBuilderEnum? valueEnum;

  /// instance
  static LocationModeBuilder instance = LocationModeBuilder._(
    valueString: 'instance',
    valueEnum: LocationModeBuilderEnum.instance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance',
    ),
  );

  /// kind
  static LocationModeBuilder kind = LocationModeBuilder._(
    valueString: 'kind',
    valueEnum: LocationModeBuilderEnum.kind,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Kind',
    ),
  );

  /// For instances where an Element is present but not value
  static LocationModeBuilder elementOnly = LocationModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<LocationModeBuilder> values = [
    instance,
    kind,
  ];

  /// Returns the enum value with an element attached
  LocationModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return LocationModeBuilder._(
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
