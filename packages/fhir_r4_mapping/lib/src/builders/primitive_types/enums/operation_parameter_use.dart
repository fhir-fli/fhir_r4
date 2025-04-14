// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OperationParameterUse
enum OperationParameterUseBuilderEnum {
  /// in
  in_,

  /// out
  out,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationParameterUseBuilderEnum.in_:
        return 'in';
      case OperationParameterUseBuilderEnum.out:
        return 'out';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationParameterUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationParameterUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationParameterUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in':
        return OperationParameterUseBuilderEnum.in_;
      case 'out':
        return OperationParameterUseBuilderEnum.out;
    }
    return null;
  }
}

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OperationParameterUseBuilder._({
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
  factory OperationParameterUseBuilder(
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
    final valueEnum = OperationParameterUseBuilderEnum.fromString(
      valueString,
    );
    return OperationParameterUseBuilder._(
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

  /// Create empty [OperationParameterUseBuilder]
  /// with element only
  factory OperationParameterUseBuilder.empty() =>
      OperationParameterUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [OperationParameterUseBuilder] from JSON.
  factory OperationParameterUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUseBuilder cannot be constructed from JSON.',
      );
    }
    return OperationParameterUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for OperationParameterUseBuilder
  final OperationParameterUseBuilderEnum? valueEnum;

  /// in_
  static OperationParameterUseBuilder in_ = OperationParameterUseBuilder._(
    valueString: 'in',
    valueEnum: OperationParameterUseBuilderEnum.in_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'In',
    ),
  );

  /// out
  static OperationParameterUseBuilder out = OperationParameterUseBuilder._(
    valueString: 'out',
    valueEnum: OperationParameterUseBuilderEnum.out,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Out',
    ),
  );

  /// For instances where an Element is present but not value
  static OperationParameterUseBuilder elementOnly =
      OperationParameterUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<OperationParameterUseBuilder> values = [
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  OperationParameterUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OperationParameterUseBuilder._(
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
