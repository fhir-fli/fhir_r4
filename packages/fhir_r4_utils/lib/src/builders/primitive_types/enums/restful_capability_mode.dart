// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RestfulCapabilityMode
enum RestfulCapabilityModeBuilderEnum {
  /// client
  client,

  /// server
  server,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RestfulCapabilityModeBuilderEnum.client:
        return 'client';
      case RestfulCapabilityModeBuilderEnum.server:
        return 'server';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RestfulCapabilityModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return RestfulCapabilityModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RestfulCapabilityModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'client':
        return RestfulCapabilityModeBuilderEnum.client;
      case 'server':
        return RestfulCapabilityModeBuilderEnum.server;
    }
    return null;
  }
}

/// The mode of a RESTful capability statement.
class RestfulCapabilityModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  RestfulCapabilityModeBuilder._({
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
  factory RestfulCapabilityModeBuilder(
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
    final valueEnum = RestfulCapabilityModeBuilderEnum.fromString(
      valueString,
    );
    return RestfulCapabilityModeBuilder._(
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

  /// Create empty [RestfulCapabilityModeBuilder]
  /// with element only
  factory RestfulCapabilityModeBuilder.empty() =>
      RestfulCapabilityModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [RestfulCapabilityModeBuilder] from JSON.
  factory RestfulCapabilityModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulCapabilityModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RestfulCapabilityModeBuilder cannot be constructed from JSON.',
      );
    }
    return RestfulCapabilityModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for RestfulCapabilityModeBuilder
  final RestfulCapabilityModeBuilderEnum? valueEnum;

  /// client
  static RestfulCapabilityModeBuilder client = RestfulCapabilityModeBuilder._(
    valueString: 'client',
    valueEnum: RestfulCapabilityModeBuilderEnum.client,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/restful-capability-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Client',
    ),
  );

  /// server
  static RestfulCapabilityModeBuilder server = RestfulCapabilityModeBuilder._(
    valueString: 'server',
    valueEnum: RestfulCapabilityModeBuilderEnum.server,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/restful-capability-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Server',
    ),
  );

  /// For instances where an Element is present but not value
  static RestfulCapabilityModeBuilder elementOnly =
      RestfulCapabilityModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<RestfulCapabilityModeBuilder> values = [
    client,
    server,
  ];

  /// Returns the enum value with an element attached
  RestfulCapabilityModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return RestfulCapabilityModeBuilder._(
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
