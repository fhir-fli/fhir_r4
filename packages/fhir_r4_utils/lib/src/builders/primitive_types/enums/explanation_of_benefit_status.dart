// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ExplanationOfBenefitStatus
enum ExplanationOfBenefitStatusBuilderEnum {
  /// active
  active,

  /// cancelled
  cancelled,

  /// draft
  draft,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExplanationOfBenefitStatusBuilderEnum.active:
        return 'active';
      case ExplanationOfBenefitStatusBuilderEnum.cancelled:
        return 'cancelled';
      case ExplanationOfBenefitStatusBuilderEnum.draft:
        return 'draft';
      case ExplanationOfBenefitStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExplanationOfBenefitStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ExplanationOfBenefitStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExplanationOfBenefitStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return ExplanationOfBenefitStatusBuilderEnum.active;
      case 'cancelled':
        return ExplanationOfBenefitStatusBuilderEnum.cancelled;
      case 'draft':
        return ExplanationOfBenefitStatusBuilderEnum.draft;
      case 'entered-in-error':
        return ExplanationOfBenefitStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExplanationOfBenefitStatusBuilder._({
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
  factory ExplanationOfBenefitStatusBuilder(
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
    final valueEnum = ExplanationOfBenefitStatusBuilderEnum.fromString(
      valueString,
    );
    return ExplanationOfBenefitStatusBuilder._(
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

  /// Create empty [ExplanationOfBenefitStatusBuilder]
  /// with element only
  factory ExplanationOfBenefitStatusBuilder.empty() =>
      ExplanationOfBenefitStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ExplanationOfBenefitStatusBuilder] from JSON.
  factory ExplanationOfBenefitStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ExplanationOfBenefitStatusBuilder
  final ExplanationOfBenefitStatusBuilderEnum? valueEnum;

  /// active
  static ExplanationOfBenefitStatusBuilder active =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'active',
    valueEnum: ExplanationOfBenefitStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// cancelled
  static ExplanationOfBenefitStatusBuilder cancelled =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: ExplanationOfBenefitStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// draft
  static ExplanationOfBenefitStatusBuilder draft =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'draft',
    valueEnum: ExplanationOfBenefitStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// entered_in_error
  static ExplanationOfBenefitStatusBuilder enteredInError =
      ExplanationOfBenefitStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ExplanationOfBenefitStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/explanationofbenefit-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static ExplanationOfBenefitStatusBuilder elementOnly =
      ExplanationOfBenefitStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ExplanationOfBenefitStatusBuilder> values = [
    active,
    cancelled,
    draft,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ExplanationOfBenefitStatusBuilder._(
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
