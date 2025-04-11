// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventAgentNetworkType
enum AuditEventAgentNetworkTypeEnum {
  /// 1
  value1,

  /// 2
  value2,

  /// 3
  value3,

  /// 4
  value4,

  /// 5
  value5,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventAgentNetworkTypeEnum.value1:
        return '1';
      case AuditEventAgentNetworkTypeEnum.value2:
        return '2';
      case AuditEventAgentNetworkTypeEnum.value3:
        return '3';
      case AuditEventAgentNetworkTypeEnum.value4:
        return '4';
      case AuditEventAgentNetworkTypeEnum.value5:
        return '5';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventAgentNetworkTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventAgentNetworkTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventAgentNetworkTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '1':
        return AuditEventAgentNetworkTypeEnum.value1;
      case '2':
        return AuditEventAgentNetworkTypeEnum.value2;
      case '3':
        return AuditEventAgentNetworkTypeEnum.value3;
      case '4':
        return AuditEventAgentNetworkTypeEnum.value4;
      case '5':
        return AuditEventAgentNetworkTypeEnum.value5;
    }
    return null;
  }
}

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AuditEventAgentNetworkType._({
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
  factory AuditEventAgentNetworkType(
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
    final valueEnum = AuditEventAgentNetworkTypeEnum.fromString(valueString);
    return AuditEventAgentNetworkType._(
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

  /// Factory constructor to create [AuditEventAgentNetworkType]
  /// from JSON.
  factory AuditEventAgentNetworkType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AuditEventAgentNetworkTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAgentNetworkType cannot be constructed from JSON.',
      );
    }
    return AuditEventAgentNetworkType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AuditEventAgentNetworkType
  final AuditEventAgentNetworkTypeEnum? valueEnum;

  /// value1
  static const AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType._(
    valueString: '1',
    valueEnum: AuditEventAgentNetworkTypeEnum.value1,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Machine Name',
    ),
  );

  /// value2
  static const AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType._(
    valueString: '2',
    valueEnum: AuditEventAgentNetworkTypeEnum.value2,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'IP Address',
    ),
  );

  /// value3
  static const AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType._(
    valueString: '3',
    valueEnum: AuditEventAgentNetworkTypeEnum.value3,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Telephone Number',
    ),
  );

  /// value4
  static const AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType._(
    valueString: '4',
    valueEnum: AuditEventAgentNetworkTypeEnum.value4,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Email address',
    ),
  );

  /// value5
  static const AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType._(
    valueString: '5',
    valueEnum: AuditEventAgentNetworkTypeEnum.value5,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'URI',
    ),
  );

  /// List of all enum-like values
  static final List<AuditEventAgentNetworkType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(
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
  AuditEventAgentNetworkType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AuditEventAgentNetworkTypeCopyWithImpl<AuditEventAgentNetworkType>
      get copyWith =>
          AuditEventAgentNetworkTypeCopyWithImpl<AuditEventAgentNetworkType>(
            this,
            (v) => v as AuditEventAgentNetworkType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AuditEventAgentNetworkTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AuditEventAgentNetworkTypeCopyWithImpl(super._value, super._then);

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
      AuditEventAgentNetworkType(
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
