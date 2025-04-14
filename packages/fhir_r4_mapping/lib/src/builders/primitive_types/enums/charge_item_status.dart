// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ChargeItemStatus
enum ChargeItemStatusBuilderEnum {
  /// planned
  planned,

  /// billable
  billable,

  /// not-billable
  notBillable,

  /// aborted
  aborted,

  /// billed
  billed,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ChargeItemStatusBuilderEnum.planned:
        return 'planned';
      case ChargeItemStatusBuilderEnum.billable:
        return 'billable';
      case ChargeItemStatusBuilderEnum.notBillable:
        return 'not-billable';
      case ChargeItemStatusBuilderEnum.aborted:
        return 'aborted';
      case ChargeItemStatusBuilderEnum.billed:
        return 'billed';
      case ChargeItemStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case ChargeItemStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ChargeItemStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ChargeItemStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ChargeItemStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return ChargeItemStatusBuilderEnum.planned;
      case 'billable':
        return ChargeItemStatusBuilderEnum.billable;
      case 'not-billable':
        return ChargeItemStatusBuilderEnum.notBillable;
      case 'aborted':
        return ChargeItemStatusBuilderEnum.aborted;
      case 'billed':
        return ChargeItemStatusBuilderEnum.billed;
      case 'entered-in-error':
        return ChargeItemStatusBuilderEnum.enteredInError;
      case 'unknown':
        return ChargeItemStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a ChargeItem.
class ChargeItemStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ChargeItemStatusBuilder._({
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
  factory ChargeItemStatusBuilder(
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
    final valueEnum = ChargeItemStatusBuilderEnum.fromString(
      valueString,
    );
    return ChargeItemStatusBuilder._(
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

  /// Create empty [ChargeItemStatusBuilder]
  /// with element only
  factory ChargeItemStatusBuilder.empty() =>
      ChargeItemStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ChargeItemStatusBuilder] from JSON.
  factory ChargeItemStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChargeItemStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ChargeItemStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ChargeItemStatusBuilder
  final ChargeItemStatusBuilderEnum? valueEnum;

  /// planned
  static ChargeItemStatusBuilder planned = ChargeItemStatusBuilder._(
    valueString: 'planned',
    valueEnum: ChargeItemStatusBuilderEnum.planned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Planned',
    ),
  );

  /// billable
  static ChargeItemStatusBuilder billable = ChargeItemStatusBuilder._(
    valueString: 'billable',
    valueEnum: ChargeItemStatusBuilderEnum.billable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Billable',
    ),
  );

  /// not_billable
  static ChargeItemStatusBuilder notBillable = ChargeItemStatusBuilder._(
    valueString: 'not-billable',
    valueEnum: ChargeItemStatusBuilderEnum.notBillable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not billable',
    ),
  );

  /// aborted
  static ChargeItemStatusBuilder aborted = ChargeItemStatusBuilder._(
    valueString: 'aborted',
    valueEnum: ChargeItemStatusBuilderEnum.aborted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Aborted',
    ),
  );

  /// billed
  static ChargeItemStatusBuilder billed = ChargeItemStatusBuilder._(
    valueString: 'billed',
    valueEnum: ChargeItemStatusBuilderEnum.billed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Billed',
    ),
  );

  /// entered_in_error
  static ChargeItemStatusBuilder enteredInError = ChargeItemStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ChargeItemStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static ChargeItemStatusBuilder unknown = ChargeItemStatusBuilder._(
    valueString: 'unknown',
    valueEnum: ChargeItemStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static ChargeItemStatusBuilder elementOnly = ChargeItemStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ChargeItemStatusBuilder> values = [
    planned,
    billable,
    notBillable,
    aborted,
    billed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ChargeItemStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ChargeItemStatusBuilder._(
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
