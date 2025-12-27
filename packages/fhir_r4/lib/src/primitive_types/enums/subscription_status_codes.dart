part of '../primitive_types.dart';

/// Actual enum for SubscriptionStatusCodes
enum SubscriptionStatusCodesEnum {
  /// requested
  requested,

  /// active
  active,

  /// error
  error,

  /// off
  off,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionStatusCodesEnum.requested:
        return 'requested';
      case SubscriptionStatusCodesEnum.active:
        return 'active';
      case SubscriptionStatusCodesEnum.error:
        return 'error';
      case SubscriptionStatusCodesEnum.off:
        return 'off';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'requested':
        return SubscriptionStatusCodesEnum.requested;
      case 'active':
        return SubscriptionStatusCodesEnum.active;
      case 'error':
        return SubscriptionStatusCodesEnum.error;
      case 'off':
        return SubscriptionStatusCodesEnum.off;
    }
    return null;
  }
}

/// The status of a subscription.
class SubscriptionStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubscriptionStatusCodes._({
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
  factory SubscriptionStatusCodes(
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
    final valueEnum = SubscriptionStatusCodesEnum.fromString(valueString);
    return SubscriptionStatusCodes._(
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

  /// Factory constructor to create [SubscriptionStatusCodes]
  /// from JSON.
  factory SubscriptionStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubscriptionStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionStatusCodes cannot be constructed from JSON.',
      );
    }
    return SubscriptionStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubscriptionStatusCodes
  final SubscriptionStatusCodesEnum? valueEnum;

  /// requested
  static const SubscriptionStatusCodes requested = SubscriptionStatusCodes._(
    valueString: 'requested',
    valueEnum: SubscriptionStatusCodesEnum.requested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Requested',
    ),
  );

  /// active
  static const SubscriptionStatusCodes active = SubscriptionStatusCodes._(
    valueString: 'active',
    valueEnum: SubscriptionStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// error
  static const SubscriptionStatusCodes error = SubscriptionStatusCodes._(
    valueString: 'error',
    valueEnum: SubscriptionStatusCodesEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// off
  static const SubscriptionStatusCodes off = SubscriptionStatusCodes._(
    valueString: 'off',
    valueEnum: SubscriptionStatusCodesEnum.off,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Off',
    ),
  );

  /// List of all enum-like values
  static final List<SubscriptionStatusCodes> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Returns the enum value with an element attached
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes._(
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
  SubscriptionStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubscriptionStatusCodesCopyWithImpl<SubscriptionStatusCodes> get copyWith =>
      SubscriptionStatusCodesCopyWithImpl<SubscriptionStatusCodes>(
        this,
        (v) => v as SubscriptionStatusCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubscriptionStatusCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubscriptionStatusCodesCopyWithImpl(super._value, super._then);

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
      SubscriptionStatusCodes(
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
