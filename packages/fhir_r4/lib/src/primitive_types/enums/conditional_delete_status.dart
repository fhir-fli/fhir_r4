part of '../primitive_types.dart';

/// Actual enum for ConditionalDeleteStatus
enum ConditionalDeleteStatusEnum {
  /// not-supported
  notSupported,

  /// single
  single,

  /// multiple
  multiple,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionalDeleteStatusEnum.notSupported:
        return 'not-supported';
      case ConditionalDeleteStatusEnum.single:
        return 'single';
      case ConditionalDeleteStatusEnum.multiple:
        return 'multiple';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionalDeleteStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionalDeleteStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionalDeleteStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return ConditionalDeleteStatusEnum.notSupported;
      case 'single':
        return ConditionalDeleteStatusEnum.single;
      case 'multiple':
        return ConditionalDeleteStatusEnum.multiple;
    }
    return null;
  }
}

/// A code that indicates how the server supports conditional delete.
class ConditionalDeleteStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConditionalDeleteStatus._({
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
  factory ConditionalDeleteStatus(
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
    final valueEnum = ConditionalDeleteStatusEnum.fromString(valueString);
    return ConditionalDeleteStatus._(
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

  /// Factory constructor to create [ConditionalDeleteStatus]
  /// from JSON.
  factory ConditionalDeleteStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConditionalDeleteStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalDeleteStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalDeleteStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalDeleteStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConditionalDeleteStatus
  final ConditionalDeleteStatusEnum? valueEnum;

  /// not_supported
  static const ConditionalDeleteStatus notSupported = ConditionalDeleteStatus._(
    valueString: 'not-supported',
    valueEnum: ConditionalDeleteStatusEnum.notSupported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Supported',
    ),
  );

  /// single
  static const ConditionalDeleteStatus single = ConditionalDeleteStatus._(
    valueString: 'single',
    valueEnum: ConditionalDeleteStatusEnum.single,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Single Deletes Supported',
    ),
  );

  /// multiple
  static const ConditionalDeleteStatus multiple = ConditionalDeleteStatus._(
    valueString: 'multiple',
    valueEnum: ConditionalDeleteStatusEnum.multiple,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-delete-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Multiple Deletes Supported',
    ),
  );

  /// List of all enum-like values
  static final List<ConditionalDeleteStatus> values = [
    notSupported,
    single,
    multiple,
  ];

  /// Returns the enum value with an element attached
  ConditionalDeleteStatus withElement(Element? newElement) {
    return ConditionalDeleteStatus._(
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
  ConditionalDeleteStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConditionalDeleteStatusCopyWithImpl<ConditionalDeleteStatus> get copyWith =>
      ConditionalDeleteStatusCopyWithImpl<ConditionalDeleteStatus>(
        this,
        (v) => v as ConditionalDeleteStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConditionalDeleteStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConditionalDeleteStatusCopyWithImpl(super._value, super._then);

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
      ConditionalDeleteStatus(
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
