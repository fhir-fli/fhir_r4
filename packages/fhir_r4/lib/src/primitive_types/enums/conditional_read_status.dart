part of '../primitive_types.dart';

/// Actual enum for ConditionalReadStatus
enum ConditionalReadStatusEnum {
  /// not-supported
  notSupported,

  /// modified-since
  modifiedSince,

  /// not-match
  notMatch,

  /// full-support
  fullSupport,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionalReadStatusEnum.notSupported:
        return 'not-supported';
      case ConditionalReadStatusEnum.modifiedSince:
        return 'modified-since';
      case ConditionalReadStatusEnum.notMatch:
        return 'not-match';
      case ConditionalReadStatusEnum.fullSupport:
        return 'full-support';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionalReadStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionalReadStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionalReadStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return ConditionalReadStatusEnum.notSupported;
      case 'modified-since':
        return ConditionalReadStatusEnum.modifiedSince;
      case 'not-match':
        return ConditionalReadStatusEnum.notMatch;
      case 'full-support':
        return ConditionalReadStatusEnum.fullSupport;
    }
    return null;
  }
}

/// A code that indicates how the server supports conditional read.
class ConditionalReadStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConditionalReadStatus._({
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
  factory ConditionalReadStatus(
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
    final valueEnum = ConditionalReadStatusEnum.fromString(valueString);
    return ConditionalReadStatus._(
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

  /// Factory constructor to create [ConditionalReadStatus]
  /// from JSON.
  factory ConditionalReadStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConditionalReadStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalReadStatus cannot be constructed from JSON.',
      );
    }
    return ConditionalReadStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConditionalReadStatus
  final ConditionalReadStatusEnum? valueEnum;

  /// not_supported
  static const ConditionalReadStatus notSupported = ConditionalReadStatus._(
    valueString: 'not-supported',
    valueEnum: ConditionalReadStatusEnum.notSupported,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Supported',
    ),
  );

  /// modified_since
  static const ConditionalReadStatus modifiedSince = ConditionalReadStatus._(
    valueString: 'modified-since',
    valueEnum: ConditionalReadStatusEnum.modifiedSince,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'If-Modified-Since',
    ),
  );

  /// not_match
  static const ConditionalReadStatus notMatch = ConditionalReadStatus._(
    valueString: 'not-match',
    valueEnum: ConditionalReadStatusEnum.notMatch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'If-None-Match',
    ),
  );

  /// full_support
  static const ConditionalReadStatus fullSupport = ConditionalReadStatus._(
    valueString: 'full-support',
    valueEnum: ConditionalReadStatusEnum.fullSupport,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Full Support',
    ),
  );

  /// List of all enum-like values
  static final List<ConditionalReadStatus> values = [
    notSupported,
    modifiedSince,
    notMatch,
    fullSupport,
  ];

  /// Returns the enum value with an element attached
  ConditionalReadStatus withElement(Element? newElement) {
    return ConditionalReadStatus._(
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
  ConditionalReadStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConditionalReadStatusCopyWithImpl<ConditionalReadStatus> get copyWith =>
      ConditionalReadStatusCopyWithImpl<ConditionalReadStatus>(
        this,
        (v) => v as ConditionalReadStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConditionalReadStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConditionalReadStatusCopyWithImpl(super._value, super._then);

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
      ConditionalReadStatus(
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
