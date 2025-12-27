part of '../primitive_types.dart';

/// Actual enum for StructureDefinitionKind
enum StructureDefinitionKindEnum {
  /// primitive-type
  primitiveType,

  /// complex-type
  complexType,

  /// resource
  resource,

  /// logical
  logical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureDefinitionKindEnum.primitiveType:
        return 'primitive-type';
      case StructureDefinitionKindEnum.complexType:
        return 'complex-type';
      case StructureDefinitionKindEnum.resource:
        return 'resource';
      case StructureDefinitionKindEnum.logical:
        return 'logical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureDefinitionKindEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureDefinitionKindEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureDefinitionKindEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'primitive-type':
        return StructureDefinitionKindEnum.primitiveType;
      case 'complex-type':
        return StructureDefinitionKindEnum.complexType;
      case 'resource':
        return StructureDefinitionKindEnum.resource;
      case 'logical':
        return StructureDefinitionKindEnum.logical;
    }
    return null;
  }
}

/// Defines the type of structure that a definition is describing.
class StructureDefinitionKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureDefinitionKind._({
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
  factory StructureDefinitionKind(
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
    final valueEnum = StructureDefinitionKindEnum.fromString(valueString);
    return StructureDefinitionKind._(
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

  /// Factory constructor to create [StructureDefinitionKind]
  /// from JSON.
  factory StructureDefinitionKind.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureDefinitionKindEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKind._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureDefinitionKind cannot be constructed from JSON.',
      );
    }
    return StructureDefinitionKind._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureDefinitionKind
  final StructureDefinitionKindEnum? valueEnum;

  /// primitive_type
  static const StructureDefinitionKind primitiveType =
      StructureDefinitionKind._(
    valueString: 'primitive-type',
    valueEnum: StructureDefinitionKindEnum.primitiveType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Primitive Data Type',
    ),
  );

  /// complex_type
  static const StructureDefinitionKind complexType = StructureDefinitionKind._(
    valueString: 'complex-type',
    valueEnum: StructureDefinitionKindEnum.complexType,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Complex Data Type',
    ),
  );

  /// resource
  static const StructureDefinitionKind resource = StructureDefinitionKind._(
    valueString: 'resource',
    valueEnum: StructureDefinitionKindEnum.resource,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Resource',
    ),
  );

  /// logical
  static const StructureDefinitionKind logical = StructureDefinitionKind._(
    valueString: 'logical',
    valueEnum: StructureDefinitionKindEnum.logical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Logical',
    ),
  );

  /// List of all enum-like values
  static final List<StructureDefinitionKind> values = [
    primitiveType,
    complexType,
    resource,
    logical,
  ];

  /// Returns the enum value with an element attached
  StructureDefinitionKind withElement(Element? newElement) {
    return StructureDefinitionKind._(
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
  StructureDefinitionKind clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureDefinitionKindCopyWithImpl<StructureDefinitionKind> get copyWith =>
      StructureDefinitionKindCopyWithImpl<StructureDefinitionKind>(
        this,
        (v) => v as StructureDefinitionKind,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureDefinitionKindCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureDefinitionKindCopyWithImpl(super._value, super._then);

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
      StructureDefinitionKind(
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
