part of '../primitive_types.dart';

/// Actual enum for InvoiceStatus
enum InvoiceStatusBuilderEnum {
  /// draft
  draft,

  /// issued
  issued,

  /// balanced
  balanced,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InvoiceStatusBuilderEnum.draft:
        return 'draft';
      case InvoiceStatusBuilderEnum.issued:
        return 'issued';
      case InvoiceStatusBuilderEnum.balanced:
        return 'balanced';
      case InvoiceStatusBuilderEnum.cancelled:
        return 'cancelled';
      case InvoiceStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InvoiceStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InvoiceStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InvoiceStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return InvoiceStatusBuilderEnum.draft;
      case 'issued':
        return InvoiceStatusBuilderEnum.issued;
      case 'balanced':
        return InvoiceStatusBuilderEnum.balanced;
      case 'cancelled':
        return InvoiceStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return InvoiceStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InvoiceStatusBuilder._({
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
  factory InvoiceStatusBuilder(
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
    final valueEnum = InvoiceStatusBuilderEnum.fromString(
      valueString,
    );
    return InvoiceStatusBuilder._(
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

  /// Create empty [InvoiceStatusBuilder]
  /// with element only
  factory InvoiceStatusBuilder.empty() =>
      InvoiceStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InvoiceStatusBuilder] from JSON.
  factory InvoiceStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoiceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return InvoiceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InvoiceStatusBuilder
  final InvoiceStatusBuilderEnum? valueEnum;

  /// draft
  static InvoiceStatusBuilder draft = InvoiceStatusBuilder._(
    valueString: 'draft',
    valueEnum: InvoiceStatusBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'draft',
    ),
  );

  /// issued
  static InvoiceStatusBuilder issued = InvoiceStatusBuilder._(
    valueString: 'issued',
    valueEnum: InvoiceStatusBuilderEnum.issued,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'issued',
    ),
  );

  /// balanced
  static InvoiceStatusBuilder balanced = InvoiceStatusBuilder._(
    valueString: 'balanced',
    valueEnum: InvoiceStatusBuilderEnum.balanced,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'balanced',
    ),
  );

  /// cancelled
  static InvoiceStatusBuilder cancelled = InvoiceStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: InvoiceStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'cancelled',
    ),
  );

  /// entered_in_error
  static InvoiceStatusBuilder enteredInError = InvoiceStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: InvoiceStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'entered in error',
    ),
  );

  /// For instances where an Element is present but not value
  static InvoiceStatusBuilder elementOnly = InvoiceStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InvoiceStatusBuilder> values = [
    draft,
    issued,
    balanced,
    cancelled,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  InvoiceStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InvoiceStatusBuilder._(
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
