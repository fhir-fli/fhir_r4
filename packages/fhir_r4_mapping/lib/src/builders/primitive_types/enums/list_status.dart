// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ListStatus
enum ListStatusBuilderEnum {
  /// current
  current,

  /// retired
  retired,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ListStatusBuilderEnum.current:
        return 'current';
      case ListStatusBuilderEnum.retired:
        return 'retired';
      case ListStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ListStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ListStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ListStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'current':
        return ListStatusBuilderEnum.current;
      case 'retired':
        return ListStatusBuilderEnum.retired;
      case 'entered-in-error':
        return ListStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The current state of the list.
class ListStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ListStatusBuilder._({
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
  factory ListStatusBuilder(
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
    final valueEnum = ListStatusBuilderEnum.fromString(
      valueString,
    );
    return ListStatusBuilder._(
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

  /// Create empty [ListStatusBuilder]
  /// with element only
  factory ListStatusBuilder.empty() => ListStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ListStatusBuilder] from JSON.
  factory ListStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ListStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ListStatusBuilder
  final ListStatusBuilderEnum? valueEnum;

  /// current
  static ListStatusBuilder current = ListStatusBuilder._(
    valueString: 'current',
    valueEnum: ListStatusBuilderEnum.current,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Current',
    ),
  );

  /// retired
  static ListStatusBuilder retired = ListStatusBuilder._(
    valueString: 'retired',
    valueEnum: ListStatusBuilderEnum.retired,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Retired',
    ),
  );

  /// entered_in_error
  static ListStatusBuilder enteredInError = ListStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ListStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static ListStatusBuilder elementOnly = ListStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ListStatusBuilder> values = [
    current,
    retired,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ListStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ListStatusBuilder._(
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
