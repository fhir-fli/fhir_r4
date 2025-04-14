// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EndpointStatus
enum EndpointStatusBuilderEnum {
  /// active
  active,

  /// suspended
  suspended,

  /// error
  error,

  /// off
  off,

  /// entered-in-error
  enteredInError,

  /// test
  test,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EndpointStatusBuilderEnum.active:
        return 'active';
      case EndpointStatusBuilderEnum.suspended:
        return 'suspended';
      case EndpointStatusBuilderEnum.error:
        return 'error';
      case EndpointStatusBuilderEnum.off:
        return 'off';
      case EndpointStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case EndpointStatusBuilderEnum.test:
        return 'test';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EndpointStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EndpointStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EndpointStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return EndpointStatusBuilderEnum.active;
      case 'suspended':
        return EndpointStatusBuilderEnum.suspended;
      case 'error':
        return EndpointStatusBuilderEnum.error;
      case 'off':
        return EndpointStatusBuilderEnum.off;
      case 'entered-in-error':
        return EndpointStatusBuilderEnum.enteredInError;
      case 'test':
        return EndpointStatusBuilderEnum.test;
    }
    return null;
  }
}

/// The status of the endpoint.
class EndpointStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EndpointStatusBuilder._({
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
  factory EndpointStatusBuilder(
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
    final valueEnum = EndpointStatusBuilderEnum.fromString(
      valueString,
    );
    return EndpointStatusBuilder._(
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

  /// Create empty [EndpointStatusBuilder]
  /// with element only
  factory EndpointStatusBuilder.empty() =>
      EndpointStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EndpointStatusBuilder] from JSON.
  factory EndpointStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EndpointStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EndpointStatusBuilder
  final EndpointStatusBuilderEnum? valueEnum;

  /// active
  static EndpointStatusBuilder active = EndpointStatusBuilder._(
    valueString: 'active',
    valueEnum: EndpointStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static EndpointStatusBuilder suspended = EndpointStatusBuilder._(
    valueString: 'suspended',
    valueEnum: EndpointStatusBuilderEnum.suspended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Suspended',
    ),
  );

  /// error
  static EndpointStatusBuilder error = EndpointStatusBuilder._(
    valueString: 'error',
    valueEnum: EndpointStatusBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// off
  static EndpointStatusBuilder off = EndpointStatusBuilder._(
    valueString: 'off',
    valueEnum: EndpointStatusBuilderEnum.off,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Off',
    ),
  );

  /// entered_in_error
  static EndpointStatusBuilder enteredInError = EndpointStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: EndpointStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in error',
    ),
  );

  /// test
  static EndpointStatusBuilder test = EndpointStatusBuilder._(
    valueString: 'test',
    valueEnum: EndpointStatusBuilderEnum.test,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Test',
    ),
  );

  /// For instances where an Element is present but not value
  static EndpointStatusBuilder elementOnly = EndpointStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EndpointStatusBuilder> values = [
    active,
    suspended,
    error,
    off,
    enteredInError,
    test,
  ];

  /// Returns the enum value with an element attached
  EndpointStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EndpointStatusBuilder._(
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
