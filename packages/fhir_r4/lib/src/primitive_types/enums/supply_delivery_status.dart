// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SupplyDeliveryStatus
enum SupplyDeliveryStatusEnum {
  /// in-progress
  inProgress,

  /// completed
  completed,

  /// abandoned
  abandoned,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SupplyDeliveryStatusEnum.inProgress:
        return 'in-progress';
      case SupplyDeliveryStatusEnum.completed:
        return 'completed';
      case SupplyDeliveryStatusEnum.abandoned:
        return 'abandoned';
      case SupplyDeliveryStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SupplyDeliveryStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SupplyDeliveryStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SupplyDeliveryStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return SupplyDeliveryStatusEnum.inProgress;
      case 'completed':
        return SupplyDeliveryStatusEnum.completed;
      case 'abandoned':
        return SupplyDeliveryStatusEnum.abandoned;
      case 'entered-in-error':
        return SupplyDeliveryStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Status of the supply delivery.
class SupplyDeliveryStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SupplyDeliveryStatus._({
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
  factory SupplyDeliveryStatus(
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
    final valueEnum = SupplyDeliveryStatusEnum.fromString(valueString);
    return SupplyDeliveryStatus._(
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

  /// Factory constructor to create [SupplyDeliveryStatus]
  /// from JSON.
  factory SupplyDeliveryStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SupplyDeliveryStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyDeliveryStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyDeliveryStatus cannot be constructed from JSON.',
      );
    }
    return SupplyDeliveryStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SupplyDeliveryStatus
  final SupplyDeliveryStatusEnum? valueEnum;

  /// in_progress
  static const SupplyDeliveryStatus inProgress = SupplyDeliveryStatus._(
    valueString: 'in-progress',
    valueEnum: SupplyDeliveryStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// completed
  static const SupplyDeliveryStatus completed = SupplyDeliveryStatus._(
    valueString: 'completed',
    valueEnum: SupplyDeliveryStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Delivered',
    ),
  );

  /// abandoned
  static const SupplyDeliveryStatus abandoned = SupplyDeliveryStatus._(
    valueString: 'abandoned',
    valueEnum: SupplyDeliveryStatusEnum.abandoned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Abandoned',
    ),
  );

  /// entered_in_error
  static const SupplyDeliveryStatus enteredInError = SupplyDeliveryStatus._(
    valueString: 'entered-in-error',
    valueEnum: SupplyDeliveryStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/supplydelivery-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<SupplyDeliveryStatus> values = [
    inProgress,
    completed,
    abandoned,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  SupplyDeliveryStatus withElement(Element? newElement) {
    return SupplyDeliveryStatus._(
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
  SupplyDeliveryStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SupplyDeliveryStatusCopyWithImpl<SupplyDeliveryStatus> get copyWith =>
      SupplyDeliveryStatusCopyWithImpl<SupplyDeliveryStatus>(
        this,
        (v) => v as SupplyDeliveryStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SupplyDeliveryStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SupplyDeliveryStatusCopyWithImpl(super._value, super._then);

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
      SupplyDeliveryStatus(
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
