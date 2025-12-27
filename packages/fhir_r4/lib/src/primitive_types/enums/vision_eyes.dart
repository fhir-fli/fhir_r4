part of '../primitive_types.dart';

/// Actual enum for VisionEyes
enum VisionEyesEnum {
  /// right
  right,

  /// left
  left,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case VisionEyesEnum.right:
        return 'right';
      case VisionEyesEnum.left:
        return 'left';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static VisionEyesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return VisionEyesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static VisionEyesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'right':
        return VisionEyesEnum.right;
      case 'left':
        return VisionEyesEnum.left;
    }
    return null;
  }
}

/// A coded concept listing the eye codes.
class VisionEyes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const VisionEyes._({
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
  factory VisionEyes(
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
    final valueEnum = VisionEyesEnum.fromString(valueString);
    return VisionEyes._(
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

  /// Factory constructor to create [VisionEyes]
  /// from JSON.
  factory VisionEyes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = VisionEyesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionEyes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VisionEyes cannot be constructed from JSON.',
      );
    }
    return VisionEyes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for VisionEyes
  final VisionEyesEnum? valueEnum;

  /// right
  static const VisionEyes right = VisionEyes._(
    valueString: 'right',
    valueEnum: VisionEyesEnum.right,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-eye-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Right Eye',
    ),
  );

  /// left
  static const VisionEyes left = VisionEyes._(
    valueString: 'left',
    valueEnum: VisionEyesEnum.left,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/vision-eye-codes',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Left Eye',
    ),
  );

  /// List of all enum-like values
  static final List<VisionEyes> values = [
    right,
    left,
  ];

  /// Returns the enum value with an element attached
  VisionEyes withElement(Element? newElement) {
    return VisionEyes._(
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
  VisionEyes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  VisionEyesCopyWithImpl<VisionEyes> get copyWith =>
      VisionEyesCopyWithImpl<VisionEyes>(
        this,
        (v) => v as VisionEyes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class VisionEyesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  VisionEyesCopyWithImpl(super._value, super._then);

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
      VisionEyes(
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
