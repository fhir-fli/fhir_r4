part of '../primitive_types.dart';

/// Actual enum for FamilyHistoryStatus
enum FamilyHistoryStatusEnum {
  /// partial
  partial,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// health-unknown
  healthUnknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FamilyHistoryStatusEnum.partial:
        return 'partial';
      case FamilyHistoryStatusEnum.completed:
        return 'completed';
      case FamilyHistoryStatusEnum.enteredInError:
        return 'entered-in-error';
      case FamilyHistoryStatusEnum.healthUnknown:
        return 'health-unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FamilyHistoryStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FamilyHistoryStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FamilyHistoryStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'partial':
        return FamilyHistoryStatusEnum.partial;
      case 'completed':
        return FamilyHistoryStatusEnum.completed;
      case 'entered-in-error':
        return FamilyHistoryStatusEnum.enteredInError;
      case 'health-unknown':
        return FamilyHistoryStatusEnum.healthUnknown;
    }
    return null;
  }
}

/// A code that identifies the status of the family history record.
class FamilyHistoryStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FamilyHistoryStatus._({
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
  factory FamilyHistoryStatus(
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
    final valueEnum = FamilyHistoryStatusEnum.fromString(valueString);
    return FamilyHistoryStatus._(
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

  /// Factory constructor to create [FamilyHistoryStatus]
  /// from JSON.
  factory FamilyHistoryStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FamilyHistoryStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FamilyHistoryStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FamilyHistoryStatus cannot be constructed from JSON.',
      );
    }
    return FamilyHistoryStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FamilyHistoryStatus
  final FamilyHistoryStatusEnum? valueEnum;

  /// partial
  static const FamilyHistoryStatus partial = FamilyHistoryStatus._(
    valueString: 'partial',
    valueEnum: FamilyHistoryStatusEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Partial',
    ),
  );

  /// completed
  static const FamilyHistoryStatus completed = FamilyHistoryStatus._(
    valueString: 'completed',
    valueEnum: FamilyHistoryStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const FamilyHistoryStatus enteredInError = FamilyHistoryStatus._(
    valueString: 'entered-in-error',
    valueEnum: FamilyHistoryStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// health_unknown
  static const FamilyHistoryStatus healthUnknown = FamilyHistoryStatus._(
    valueString: 'health-unknown',
    valueEnum: FamilyHistoryStatusEnum.healthUnknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/history-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Health Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<FamilyHistoryStatus> values = [
    partial,
    completed,
    enteredInError,
    healthUnknown,
  ];

  /// Returns the enum value with an element attached
  FamilyHistoryStatus withElement(Element? newElement) {
    return FamilyHistoryStatus._(
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
  FamilyHistoryStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FamilyHistoryStatusCopyWithImpl<FamilyHistoryStatus> get copyWith =>
      FamilyHistoryStatusCopyWithImpl<FamilyHistoryStatus>(
        this,
        (v) => v as FamilyHistoryStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FamilyHistoryStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FamilyHistoryStatusCopyWithImpl(super._value, super._then);

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
      FamilyHistoryStatus(
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
