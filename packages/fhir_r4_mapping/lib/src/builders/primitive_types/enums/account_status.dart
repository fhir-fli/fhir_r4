// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AccountStatus
enum AccountStatusBuilderEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,

  /// on-hold
  onHold,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AccountStatusBuilderEnum.active:
        return 'active';
      case AccountStatusBuilderEnum.inactive:
        return 'inactive';
      case AccountStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
      case AccountStatusBuilderEnum.onHold:
        return 'on-hold';
      case AccountStatusBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AccountStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AccountStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AccountStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return AccountStatusBuilderEnum.active;
      case 'inactive':
        return AccountStatusBuilderEnum.inactive;
      case 'entered-in-error':
        return AccountStatusBuilderEnum.enteredInError;
      case 'on-hold':
        return AccountStatusBuilderEnum.onHold;
      case 'unknown':
        return AccountStatusBuilderEnum.unknown;
    }
    return null;
  }
}

/// Indicates whether the account is available to be used.
class AccountStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AccountStatusBuilder._({
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
  factory AccountStatusBuilder(
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
    final valueEnum = AccountStatusBuilderEnum.fromString(
      valueString,
    );
    return AccountStatusBuilder._(
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

  /// Create empty [AccountStatusBuilder]
  /// with element only
  factory AccountStatusBuilder.empty() =>
      AccountStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AccountStatusBuilder] from JSON.
  factory AccountStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AccountStatusBuilder cannot be constructed from JSON.',
      );
    }
    return AccountStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AccountStatusBuilder
  final AccountStatusBuilderEnum? valueEnum;

  /// active
  static AccountStatusBuilder active = AccountStatusBuilder._(
    valueString: 'active',
    valueEnum: AccountStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static AccountStatusBuilder inactive = AccountStatusBuilder._(
    valueString: 'inactive',
    valueEnum: AccountStatusBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static AccountStatusBuilder enteredInError = AccountStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: AccountStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in error',
    ),
  );

  /// on_hold
  static AccountStatusBuilder onHold = AccountStatusBuilder._(
    valueString: 'on-hold',
    valueEnum: AccountStatusBuilderEnum.onHold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// unknown
  static AccountStatusBuilder unknown = AccountStatusBuilder._(
    valueString: 'unknown',
    valueEnum: AccountStatusBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static AccountStatusBuilder elementOnly = AccountStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AccountStatusBuilder> values = [
    active,
    inactive,
    enteredInError,
    onHold,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AccountStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AccountStatusBuilder._(
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
