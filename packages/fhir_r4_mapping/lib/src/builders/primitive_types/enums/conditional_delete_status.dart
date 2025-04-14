// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConditionalDeleteStatus
enum ConditionalDeleteStatusBuilderEnum {
  /// not-supported
  notSupported,

  /// single
  single,

  /// multiple
  multiple,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionalDeleteStatusBuilderEnum.notSupported:
        return 'not-supported';
      case ConditionalDeleteStatusBuilderEnum.single:
        return 'single';
      case ConditionalDeleteStatusBuilderEnum.multiple:
        return 'multiple';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionalDeleteStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionalDeleteStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionalDeleteStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return ConditionalDeleteStatusBuilderEnum.notSupported;
      case 'single':
        return ConditionalDeleteStatusBuilderEnum.single;
      case 'multiple':
        return ConditionalDeleteStatusBuilderEnum.multiple;
    }
    return null;
  }
}

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConditionalDeleteStatusBuilder._({
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
  factory ConditionalDeleteStatusBuilder(
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
    final valueEnum = ConditionalDeleteStatusBuilderEnum.fromString(
      valueString,
    );
    return ConditionalDeleteStatusBuilder._(
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

  /// Create empty [ConditionalDeleteStatusBuilder]
  /// with element only
  factory ConditionalDeleteStatusBuilder.empty() =>
      ConditionalDeleteStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConditionalDeleteStatusBuilder] from JSON.
  factory ConditionalDeleteStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalDeleteStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ConditionalDeleteStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConditionalDeleteStatusBuilder
  final ConditionalDeleteStatusBuilderEnum? valueEnum;

  /// not_supported
  static ConditionalDeleteStatusBuilder notSupported =
      ConditionalDeleteStatusBuilder._(
    valueString: 'not-supported',
    valueEnum: ConditionalDeleteStatusBuilderEnum.notSupported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Supported',
    ),
  );

  /// single
  static ConditionalDeleteStatusBuilder single =
      ConditionalDeleteStatusBuilder._(
    valueString: 'single',
    valueEnum: ConditionalDeleteStatusBuilderEnum.single,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Single Deletes Supported',
    ),
  );

  /// multiple
  static ConditionalDeleteStatusBuilder multiple =
      ConditionalDeleteStatusBuilder._(
    valueString: 'multiple',
    valueEnum: ConditionalDeleteStatusBuilderEnum.multiple,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Multiple Deletes Supported',
    ),
  );

  /// For instances where an Element is present but not value
  static ConditionalDeleteStatusBuilder elementOnly =
      ConditionalDeleteStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConditionalDeleteStatusBuilder> values = [
    notSupported,
    single,
    multiple,
  ];

  /// Returns the enum value with an element attached
  ConditionalDeleteStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConditionalDeleteStatusBuilder._(
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
