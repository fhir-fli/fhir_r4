part of '../primitive_types.dart';

/// Actual enum for FinancialResourceStatusCodes
enum FinancialResourceStatusCodesBuilderEnum {
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
      case FinancialResourceStatusCodesBuilderEnum.active:
        return 'active';
      case FinancialResourceStatusCodesBuilderEnum.cancelled:
        return 'cancelled';
      case FinancialResourceStatusCodesBuilderEnum.draft:
        return 'draft';
      case FinancialResourceStatusCodesBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FinancialResourceStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return FinancialResourceStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FinancialResourceStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FinancialResourceStatusCodesBuilderEnum.active;
      case 'cancelled':
        return FinancialResourceStatusCodesBuilderEnum.cancelled;
      case 'draft':
        return FinancialResourceStatusCodesBuilderEnum.draft;
      case 'entered-in-error':
        return FinancialResourceStatusCodesBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// This value set includes Status codes.
class FinancialResourceStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  FinancialResourceStatusCodesBuilder._({
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
  factory FinancialResourceStatusCodesBuilder(
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
    final valueEnum = FinancialResourceStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return FinancialResourceStatusCodesBuilder._(
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

  /// Create empty [FinancialResourceStatusCodesBuilder]
  /// with element only
  factory FinancialResourceStatusCodesBuilder.empty() =>
      FinancialResourceStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [FinancialResourceStatusCodesBuilder] from JSON.
  factory FinancialResourceStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FinancialResourceStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return FinancialResourceStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for FinancialResourceStatusCodesBuilder
  final FinancialResourceStatusCodesBuilderEnum? valueEnum;

  /// active
  static FinancialResourceStatusCodesBuilder active =
      FinancialResourceStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: FinancialResourceStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// cancelled
  static FinancialResourceStatusCodesBuilder cancelled =
      FinancialResourceStatusCodesBuilder._(
    valueString: 'cancelled',
    valueEnum: FinancialResourceStatusCodesBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// draft
  static FinancialResourceStatusCodesBuilder draft =
      FinancialResourceStatusCodesBuilder._(
    valueString: 'draft',
    valueEnum: FinancialResourceStatusCodesBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Draft',
    ),
  );

  /// entered_in_error
  static FinancialResourceStatusCodesBuilder enteredInError =
      FinancialResourceStatusCodesBuilder._(
    valueString: 'entered-in-error',
    valueEnum: FinancialResourceStatusCodesBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static FinancialResourceStatusCodesBuilder elementOnly =
      FinancialResourceStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<FinancialResourceStatusCodesBuilder> values = [
    active,
    cancelled,
    draft,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return FinancialResourceStatusCodesBuilder._(
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
