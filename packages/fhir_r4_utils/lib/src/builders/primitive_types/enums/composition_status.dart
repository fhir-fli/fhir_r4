// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CompositionStatus
enum CompositionStatusBuilderEnum {
  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompositionStatusBuilderEnum.preliminary:
        return 'preliminary';
      case CompositionStatusBuilderEnum.final_:
        return 'final';
      case CompositionStatusBuilderEnum.amended:
        return 'amended';
      case CompositionStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompositionStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CompositionStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompositionStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preliminary':
        return CompositionStatusBuilderEnum.preliminary;
      case 'final':
        return CompositionStatusBuilderEnum.final_;
      case 'amended':
        return CompositionStatusBuilderEnum.amended;
      case 'entered-in-error':
        return CompositionStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The workflow/clinical status of the composition.
class CompositionStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompositionStatusBuilder._({
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
  factory CompositionStatusBuilder(
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
    final valueEnum = CompositionStatusBuilderEnum.fromString(
      valueString,
    );
    return CompositionStatusBuilder._(
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

  /// Create empty [CompositionStatusBuilder]
  /// with element only
  factory CompositionStatusBuilder.empty() =>
      CompositionStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CompositionStatusBuilder] from JSON.
  factory CompositionStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionStatusBuilder cannot be constructed from JSON.',
      );
    }
    return CompositionStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CompositionStatusBuilder
  final CompositionStatusBuilderEnum? valueEnum;

  /// preliminary
  static CompositionStatusBuilder preliminary = CompositionStatusBuilder._(
    valueString: 'preliminary',
    valueEnum: CompositionStatusBuilderEnum.preliminary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static CompositionStatusBuilder final_ = CompositionStatusBuilder._(
    valueString: 'final',
    valueEnum: CompositionStatusBuilderEnum.final_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Final',
    ),
  );

  /// amended
  static CompositionStatusBuilder amended = CompositionStatusBuilder._(
    valueString: 'amended',
    valueEnum: CompositionStatusBuilderEnum.amended,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended',
    ),
  );

  /// entered_in_error
  static CompositionStatusBuilder enteredInError = CompositionStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: CompositionStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static CompositionStatusBuilder elementOnly = CompositionStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CompositionStatusBuilder> values = [
    preliminary,
    final_,
    amended,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  CompositionStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CompositionStatusBuilder._(
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
