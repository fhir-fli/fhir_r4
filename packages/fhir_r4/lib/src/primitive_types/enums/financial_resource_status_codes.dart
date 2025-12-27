part of '../primitive_types.dart';

/// Actual enum for FinancialResourceStatusCodes
enum FinancialResourceStatusCodesEnum {
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
      case FinancialResourceStatusCodesEnum.active:
        return 'active';
      case FinancialResourceStatusCodesEnum.cancelled:
        return 'cancelled';
      case FinancialResourceStatusCodesEnum.draft:
        return 'draft';
      case FinancialResourceStatusCodesEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FinancialResourceStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FinancialResourceStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FinancialResourceStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FinancialResourceStatusCodesEnum.active;
      case 'cancelled':
        return FinancialResourceStatusCodesEnum.cancelled;
      case 'draft':
        return FinancialResourceStatusCodesEnum.draft;
      case 'entered-in-error':
        return FinancialResourceStatusCodesEnum.enteredInError;
    }
    return null;
  }
}

/// This value set includes Status codes.
class FinancialResourceStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FinancialResourceStatusCodes._({
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
  factory FinancialResourceStatusCodes(
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
    final valueEnum = FinancialResourceStatusCodesEnum.fromString(valueString);
    return FinancialResourceStatusCodes._(
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

  /// Factory constructor to create [FinancialResourceStatusCodes]
  /// from JSON.
  factory FinancialResourceStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FinancialResourceStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FinancialResourceStatusCodes cannot be constructed from JSON.',
      );
    }
    return FinancialResourceStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FinancialResourceStatusCodes
  final FinancialResourceStatusCodesEnum? valueEnum;

  /// active
  static const FinancialResourceStatusCodes active =
      FinancialResourceStatusCodes._(
    valueString: 'active',
    valueEnum: FinancialResourceStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// cancelled
  static const FinancialResourceStatusCodes cancelled =
      FinancialResourceStatusCodes._(
    valueString: 'cancelled',
    valueEnum: FinancialResourceStatusCodesEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// draft
  static const FinancialResourceStatusCodes draft =
      FinancialResourceStatusCodes._(
    valueString: 'draft',
    valueEnum: FinancialResourceStatusCodesEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// entered_in_error
  static const FinancialResourceStatusCodes enteredInError =
      FinancialResourceStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: FinancialResourceStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/fm-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<FinancialResourceStatusCodes> values = [
    active,
    cancelled,
    draft,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes._(
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
  FinancialResourceStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FinancialResourceStatusCodesCopyWithImpl<FinancialResourceStatusCodes>
      get copyWith => FinancialResourceStatusCodesCopyWithImpl<
              FinancialResourceStatusCodes>(
            this,
            (v) => v as FinancialResourceStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FinancialResourceStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FinancialResourceStatusCodesCopyWithImpl(super._value, super._then);

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
      FinancialResourceStatusCodes(
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
