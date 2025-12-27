part of '../primitive_types.dart';

/// Actual enum for FlagStatus
enum FlagStatusBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FlagStatusBuilderEnum.active:
        return 'active';
      case FlagStatusBuilderEnum.inactive:
        return 'inactive';
      case FlagStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FlagStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FlagStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FlagStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FlagStatusBuilderEnum.active;
      case 'inactive':
        return FlagStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return FlagStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Indicates whether this flag is active and needs to be displayed to a
/// user, or whether it is no longer needed or was entered in error.
class FlagStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FlagStatusBuilder._({
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
  factory FlagStatusBuilder(
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
    final valueEnum = FlagStatusBuilderEnum.fromString(
      valueString,
    );
    return FlagStatusBuilder._(
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

  /// Create empty [FlagStatusBuilder]
  /// with element only
  factory FlagStatusBuilder.empty() => FlagStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FlagStatusBuilder] from JSON.
  factory FlagStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FlagStatusBuilder cannot be constructed from JSON.',
      );
    }
    return FlagStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FlagStatusBuilder
  final FlagStatusBuilderEnum? valueEnum;

  /// active
  static FlagStatusBuilder active = FlagStatusBuilder._(
    valueString: 'active',
    valueEnum: FlagStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/flag-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static FlagStatusBuilder inactive = FlagStatusBuilder._(
    valueString: 'inactive',
    valueEnum: FlagStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/flag-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static FlagStatusBuilder enteredInError = FlagStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FlagStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/flag-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static FlagStatusBuilder elementOnly = FlagStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FlagStatusBuilder> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FlagStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FlagStatusBuilder._(
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
