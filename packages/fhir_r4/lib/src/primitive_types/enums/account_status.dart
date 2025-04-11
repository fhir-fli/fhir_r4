// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AccountStatus
enum AccountStatusEnum {
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
      case AccountStatusEnum.active:
        return 'active';
      case AccountStatusEnum.inactive:
        return 'inactive';
      case AccountStatusEnum.enteredInError:
        return 'entered-in-error';
      case AccountStatusEnum.onHold:
        return 'on-hold';
      case AccountStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AccountStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AccountStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AccountStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return AccountStatusEnum.active;
      case 'inactive':
        return AccountStatusEnum.inactive;
      case 'entered-in-error':
        return AccountStatusEnum.enteredInError;
      case 'on-hold':
        return AccountStatusEnum.onHold;
      case 'unknown':
        return AccountStatusEnum.unknown;
    }
    return null;
  }
}

/// Indicates whether the account is available to be used.
class AccountStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AccountStatus._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory AccountStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = AccountStatusEnum.fromString(valueString);
    return AccountStatus._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [AccountStatus]
  /// from JSON.
  factory AccountStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AccountStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AccountStatus cannot be constructed from JSON.',
      );
    }
    return AccountStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AccountStatus
  final AccountStatusEnum? valueEnum;

  /// active
  static const AccountStatus active = AccountStatus._(
    valueString: 'active',
    valueEnum: AccountStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const AccountStatus inactive = AccountStatus._(
    valueString: 'inactive',
    valueEnum: AccountStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const AccountStatus enteredInError = AccountStatus._(
    valueString: 'entered-in-error',
    valueEnum: AccountStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in error',
    ),
  );

  /// on_hold
  static const AccountStatus onHold = AccountStatus._(
    valueString: 'on-hold',
    valueEnum: AccountStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// unknown
  static const AccountStatus unknown = AccountStatus._(
    valueString: 'unknown',
    valueEnum: AccountStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/account-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<AccountStatus> values = [
    active,
    inactive,
    enteredInError,
    onHold,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AccountStatus withElement(Element? newElement) {
    return AccountStatus._(
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

  @override
  AccountStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AccountStatusCopyWithImpl<AccountStatus> get copyWith =>
      AccountStatusCopyWithImpl<AccountStatus>(
        this,
        (v) => v as AccountStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AccountStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AccountStatusCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      AccountStatus(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
