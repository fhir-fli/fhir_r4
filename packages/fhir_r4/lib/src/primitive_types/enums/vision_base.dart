part of '../primitive_types.dart';

/// Actual enum for VisionBase
enum VisionBaseEnum {
  /// up
  up,

  /// down
  down,

  /// in
  in_,

  /// out
  out,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VisionBaseEnum.up:
        return 'up';
      case VisionBaseEnum.down:
        return 'down';
      case VisionBaseEnum.in_:
        return 'in';
      case VisionBaseEnum.out:
        return 'out';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VisionBaseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return VisionBaseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VisionBaseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'up':
        return VisionBaseEnum.up;
      case 'down':
        return VisionBaseEnum.down;
      case 'in':
        return VisionBaseEnum.in_;
      case 'out':
        return VisionBaseEnum.out;
    }
    return null;
  }
}

/// A coded concept listing the base codes.
class VisionBase extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const VisionBase._({
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
  factory VisionBase(
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
    final valueEnum = VisionBaseEnum.fromString(valueString);
    return VisionBase._(
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

  /// Factory constructor to create [VisionBase]
  /// from JSON.
  factory VisionBase.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = VisionBaseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionBase cannot be constructed from JSON.',
      );
    }
    return VisionBase._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for VisionBase
  final VisionBaseEnum? valueEnum;

  /// up
  static const VisionBase up = VisionBase._(
    valueString: 'up',
    valueEnum: VisionBaseEnum.up,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Up',
    ),
  );

  /// down
  static const VisionBase down = VisionBase._(
    valueString: 'down',
    valueEnum: VisionBaseEnum.down,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Down',
    ),
  );

  /// in_
  static const VisionBase in_ = VisionBase._(
    valueString: 'in',
    valueEnum: VisionBaseEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In',
    ),
  );

  /// out
  static const VisionBase out = VisionBase._(
    valueString: 'out',
    valueEnum: VisionBaseEnum.out,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-base-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Out',
    ),
  );

  /// List of all enum-like values
  static final List<VisionBase> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase._(
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
  VisionBase clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  VisionBaseCopyWithImpl<VisionBase> get copyWith =>
      VisionBaseCopyWithImpl<VisionBase>(
        this,
        (v) => v as VisionBase,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class VisionBaseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  VisionBaseCopyWithImpl(super._value, super._then);

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
      VisionBase(
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
