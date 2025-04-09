// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for InvoiceStatus
enum InvoiceStatusEnum {
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
      case InvoiceStatusEnum.draft:
        return 'draft';
      case InvoiceStatusEnum.issued:
        return 'issued';
      case InvoiceStatusEnum.balanced:
        return 'balanced';
      case InvoiceStatusEnum.cancelled:
        return 'cancelled';
      case InvoiceStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InvoiceStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return InvoiceStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InvoiceStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return InvoiceStatusEnum.draft;
      case 'issued':
        return InvoiceStatusEnum.issued;
      case 'balanced':
        return InvoiceStatusEnum.balanced;
      case 'cancelled':
        return InvoiceStatusEnum.cancelled;
      case 'entered-in-error':
        return InvoiceStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const InvoiceStatus._({
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
  factory InvoiceStatus(
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
    final valueEnum = InvoiceStatusEnum.fromString(valueString);
    return InvoiceStatus._(
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

  /// Factory constructor to create [InvoiceStatus]
  /// from JSON.
  factory InvoiceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = InvoiceStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoiceStatus cannot be constructed from JSON.',
      );
    }
    return InvoiceStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for InvoiceStatus
  final InvoiceStatusEnum? valueEnum;

  /// draft
  static const InvoiceStatus draft = InvoiceStatus._(
    valueString: 'draft',
    valueEnum: InvoiceStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'draft',
    ),
  );

  /// issued
  static const InvoiceStatus issued = InvoiceStatus._(
    valueString: 'issued',
    valueEnum: InvoiceStatusEnum.issued,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'issued',
    ),
  );

  /// balanced
  static const InvoiceStatus balanced = InvoiceStatus._(
    valueString: 'balanced',
    valueEnum: InvoiceStatusEnum.balanced,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'balanced',
    ),
  );

  /// cancelled
  static const InvoiceStatus cancelled = InvoiceStatus._(
    valueString: 'cancelled',
    valueEnum: InvoiceStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'cancelled',
    ),
  );

  /// entered_in_error
  static const InvoiceStatus enteredInError = InvoiceStatus._(
    valueString: 'entered-in-error',
    valueEnum: InvoiceStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/invoice-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'entered in error',
    ),
  );

  /// List of all enum-like values
  static final List<InvoiceStatus> values = [
    draft,
    issued,
    balanced,
    cancelled,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus._(
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
  InvoiceStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  InvoiceStatusCopyWithImpl<InvoiceStatus> get copyWith =>
      InvoiceStatusCopyWithImpl<InvoiceStatus>(
        this,
        (v) => v as InvoiceStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class InvoiceStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  InvoiceStatusCopyWithImpl(super._value, super._then);

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
      InvoiceStatus(
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
