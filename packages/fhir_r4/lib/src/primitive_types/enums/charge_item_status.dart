part of '../primitive_types.dart';

/// Actual enum for ChargeItemStatus
enum ChargeItemStatusEnum {
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
      case ChargeItemStatusEnum.planned:
        return 'planned';
      case ChargeItemStatusEnum.billable:
        return 'billable';
      case ChargeItemStatusEnum.notBillable:
        return 'not-billable';
      case ChargeItemStatusEnum.aborted:
        return 'aborted';
      case ChargeItemStatusEnum.billed:
        return 'billed';
      case ChargeItemStatusEnum.enteredInError:
        return 'entered-in-error';
      case ChargeItemStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ChargeItemStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ChargeItemStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ChargeItemStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return ChargeItemStatusEnum.planned;
      case 'billable':
        return ChargeItemStatusEnum.billable;
      case 'not-billable':
        return ChargeItemStatusEnum.notBillable;
      case 'aborted':
        return ChargeItemStatusEnum.aborted;
      case 'billed':
        return ChargeItemStatusEnum.billed;
      case 'entered-in-error':
        return ChargeItemStatusEnum.enteredInError;
      case 'unknown':
        return ChargeItemStatusEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a ChargeItem.
class ChargeItemStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ChargeItemStatus._({
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
  factory ChargeItemStatus(
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
    final valueEnum = ChargeItemStatusEnum.fromString(valueString);
    return ChargeItemStatus._(
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

  /// Factory constructor to create [ChargeItemStatus]
  /// from JSON.
  factory ChargeItemStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ChargeItemStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChargeItemStatus cannot be constructed from JSON.',
      );
    }
    return ChargeItemStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ChargeItemStatus
  final ChargeItemStatusEnum? valueEnum;

  /// planned
  static const ChargeItemStatus planned = ChargeItemStatus._(
    valueString: 'planned',
    valueEnum: ChargeItemStatusEnum.planned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Planned',
    ),
  );

  /// billable
  static const ChargeItemStatus billable = ChargeItemStatus._(
    valueString: 'billable',
    valueEnum: ChargeItemStatusEnum.billable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Billable',
    ),
  );

  /// not_billable
  static const ChargeItemStatus notBillable = ChargeItemStatus._(
    valueString: 'not-billable',
    valueEnum: ChargeItemStatusEnum.notBillable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not billable',
    ),
  );

  /// aborted
  static const ChargeItemStatus aborted = ChargeItemStatus._(
    valueString: 'aborted',
    valueEnum: ChargeItemStatusEnum.aborted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Aborted',
    ),
  );

  /// billed
  static const ChargeItemStatus billed = ChargeItemStatus._(
    valueString: 'billed',
    valueEnum: ChargeItemStatusEnum.billed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Billed',
    ),
  );

  /// entered_in_error
  static const ChargeItemStatus enteredInError = ChargeItemStatus._(
    valueString: 'entered-in-error',
    valueEnum: ChargeItemStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ChargeItemStatus unknown = ChargeItemStatus._(
    valueString: 'unknown',
    valueEnum: ChargeItemStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/chargeitem-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ChargeItemStatus> values = [
    planned,
    billable,
    notBillable,
    aborted,
    billed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ChargeItemStatus withElement(Element? newElement) {
    return ChargeItemStatus._(
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
  ChargeItemStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ChargeItemStatusCopyWithImpl<ChargeItemStatus> get copyWith =>
      ChargeItemStatusCopyWithImpl<ChargeItemStatus>(
        this,
        (v) => v as ChargeItemStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ChargeItemStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ChargeItemStatusCopyWithImpl(super._value, super._then);

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
      ChargeItemStatus(
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
