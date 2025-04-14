// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AssertionDirectionType
enum AssertionDirectionTypeBuilderEnum {
  /// response
  response,

  /// request
  request,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AssertionDirectionTypeBuilderEnum.response:
        return 'response';
      case AssertionDirectionTypeBuilderEnum.request:
        return 'request';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AssertionDirectionTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AssertionDirectionTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AssertionDirectionTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'response':
        return AssertionDirectionTypeBuilderEnum.response;
      case 'request':
        return AssertionDirectionTypeBuilderEnum.request;
    }
    return null;
  }
}

/// The type of direction to use for assertion.
class AssertionDirectionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AssertionDirectionTypeBuilder._({
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
  factory AssertionDirectionTypeBuilder(
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
    final valueEnum = AssertionDirectionTypeBuilderEnum.fromString(
      valueString,
    );
    return AssertionDirectionTypeBuilder._(
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

  /// Create empty [AssertionDirectionTypeBuilder]
  /// with element only
  factory AssertionDirectionTypeBuilder.empty() =>
      AssertionDirectionTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AssertionDirectionTypeBuilder] from JSON.
  factory AssertionDirectionTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AssertionDirectionTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AssertionDirectionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AssertionDirectionTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AssertionDirectionTypeBuilder
  final AssertionDirectionTypeBuilderEnum? valueEnum;

  /// response
  static AssertionDirectionTypeBuilder response =
      AssertionDirectionTypeBuilder._(
    valueString: 'response',
    valueEnum: AssertionDirectionTypeBuilderEnum.response,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-direction-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'response',
    ),
  );

  /// request
  static AssertionDirectionTypeBuilder request =
      AssertionDirectionTypeBuilder._(
    valueString: 'request',
    valueEnum: AssertionDirectionTypeBuilderEnum.request,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/assert-direction-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'request',
    ),
  );

  /// For instances where an Element is present but not value
  static AssertionDirectionTypeBuilder elementOnly =
      AssertionDirectionTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AssertionDirectionTypeBuilder> values = [
    response,
    request,
  ];

  /// Returns the enum value with an element attached
  AssertionDirectionTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AssertionDirectionTypeBuilder._(
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
