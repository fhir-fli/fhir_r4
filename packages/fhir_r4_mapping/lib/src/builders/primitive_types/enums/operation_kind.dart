// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for OperationKind
enum OperationKindBuilderEnum {
  /// operation
  operation,

  /// query
  query,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationKindBuilderEnum.operation:
        return 'operation';
      case OperationKindBuilderEnum.query:
        return 'query';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationKindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationKindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationKindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'operation':
        return OperationKindBuilderEnum.operation;
      case 'query':
        return OperationKindBuilderEnum.query;
    }
    return null;
  }
}

/// Whether an operation is a normal operation or a query.
class OperationKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OperationKindBuilder._({
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
  factory OperationKindBuilder(
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
    final valueEnum = OperationKindBuilderEnum.fromString(
      valueString,
    );
    return OperationKindBuilder._(
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

  /// Create empty [OperationKindBuilder]
  /// with element only
  factory OperationKindBuilder.empty() =>
      OperationKindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [OperationKindBuilder] from JSON.
  factory OperationKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationKindBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationKindBuilder cannot be constructed from JSON.',
      );
    }
    return OperationKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for OperationKindBuilder
  final OperationKindBuilderEnum? valueEnum;

  /// operation
  static OperationKindBuilder operation = OperationKindBuilder._(
    valueString: 'operation',
    valueEnum: OperationKindBuilderEnum.operation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Operation',
    ),
  );

  /// query
  static OperationKindBuilder query = OperationKindBuilder._(
    valueString: 'query',
    valueEnum: OperationKindBuilderEnum.query,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Query',
    ),
  );

  /// For instances where an Element is present but not value
  static OperationKindBuilder elementOnly = OperationKindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<OperationKindBuilder> values = [
    operation,
    query,
  ];

  /// Returns the enum value with an element attached
  OperationKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OperationKindBuilder._(
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
