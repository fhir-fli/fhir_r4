// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRSubstanceStatus
enum FHIRSubstanceStatusBuilderEnum {
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
      case FHIRSubstanceStatusBuilderEnum.active:
        return 'active';
      case FHIRSubstanceStatusBuilderEnum.inactive:
        return 'inactive';
      case FHIRSubstanceStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRSubstanceStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRSubstanceStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRSubstanceStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FHIRSubstanceStatusBuilderEnum.active;
      case 'inactive':
        return FHIRSubstanceStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return FHIRSubstanceStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// A code to indicate if the substance is actively used.
class FHIRSubstanceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FHIRSubstanceStatusBuilder._({
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
  factory FHIRSubstanceStatusBuilder(
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
    final valueEnum = FHIRSubstanceStatusBuilderEnum.fromString(
      valueString,
    );
    return FHIRSubstanceStatusBuilder._(
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

  /// Create empty [FHIRSubstanceStatusBuilder]
  /// with element only
  factory FHIRSubstanceStatusBuilder.empty() =>
      FHIRSubstanceStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FHIRSubstanceStatusBuilder] from JSON.
  factory FHIRSubstanceStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRSubstanceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return FHIRSubstanceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FHIRSubstanceStatusBuilder
  final FHIRSubstanceStatusBuilderEnum? valueEnum;

  /// active
  static FHIRSubstanceStatusBuilder active = FHIRSubstanceStatusBuilder._(
    valueString: 'active',
    valueEnum: FHIRSubstanceStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static FHIRSubstanceStatusBuilder inactive = FHIRSubstanceStatusBuilder._(
    valueString: 'inactive',
    valueEnum: FHIRSubstanceStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static FHIRSubstanceStatusBuilder enteredInError =
      FHIRSubstanceStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FHIRSubstanceStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static FHIRSubstanceStatusBuilder elementOnly = FHIRSubstanceStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FHIRSubstanceStatusBuilder> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FHIRSubstanceStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FHIRSubstanceStatusBuilder._(
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
