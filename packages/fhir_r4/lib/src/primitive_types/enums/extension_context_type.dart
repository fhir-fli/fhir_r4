// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ExtensionContextType
enum ExtensionContextTypeEnum {
  /// fhirpath
  fhirpath,

  /// element
  element_,

  /// extension
  extensionValue,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExtensionContextTypeEnum.fhirpath:
        return 'fhirpath';
      case ExtensionContextTypeEnum.element_:
        return 'element';
      case ExtensionContextTypeEnum.extensionValue:
        return 'extension';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExtensionContextTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ExtensionContextTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExtensionContextTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fhirpath':
        return ExtensionContextTypeEnum.fhirpath;
      case 'element':
        return ExtensionContextTypeEnum.element_;
      case 'extension':
        return ExtensionContextTypeEnum.extensionValue;
    }
    return null;
  }
}

/// How an extension context is interpreted.
class ExtensionContextType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ExtensionContextType._({
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
  factory ExtensionContextType(
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
    final valueEnum = ExtensionContextTypeEnum.fromString(valueString);
    return ExtensionContextType._(
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

  /// Factory constructor to create [ExtensionContextType]
  /// from JSON.
  factory ExtensionContextType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ExtensionContextTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtensionContextType cannot be constructed from JSON.',
      );
    }
    return ExtensionContextType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ExtensionContextType
  final ExtensionContextTypeEnum? valueEnum;

  /// fhirpath
  static const ExtensionContextType fhirpath = ExtensionContextType._(
    valueString: 'fhirpath',
    valueEnum: ExtensionContextTypeEnum.fhirpath,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'FHIRPath',
    ),
  );

  /// element_
  static const ExtensionContextType element_ = ExtensionContextType._(
    valueString: 'element',
    valueEnum: ExtensionContextTypeEnum.element_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Element ID',
    ),
  );

  /// extension_
  static const ExtensionContextType extensionValue = ExtensionContextType._(
    valueString: 'extension',
    valueEnum: ExtensionContextTypeEnum.extensionValue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Extension URL',
    ),
  );

  /// List of all enum-like values
  static final List<ExtensionContextType> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Returns the enum value with an element attached
  ExtensionContextType withElement(Element? newElement) {
    return ExtensionContextType._(
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
  ExtensionContextType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ExtensionContextTypeCopyWithImpl<ExtensionContextType> get copyWith =>
      ExtensionContextTypeCopyWithImpl<ExtensionContextType>(
        this,
        (v) => v as ExtensionContextType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ExtensionContextTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ExtensionContextTypeCopyWithImpl(super._value, super._then);

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
      ExtensionContextType(
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
