// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SequenceType
enum SequenceTypeEnum {
  /// aa
  aa,

  /// dna
  dna,

  /// rna
  rna,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SequenceTypeEnum.aa:
        return 'aa';
      case SequenceTypeEnum.dna:
        return 'dna';
      case SequenceTypeEnum.rna:
        return 'rna';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SequenceTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SequenceTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SequenceTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'aa':
        return SequenceTypeEnum.aa;
      case 'dna':
        return SequenceTypeEnum.dna;
      case 'rna':
        return SequenceTypeEnum.rna;
    }
    return null;
  }
}

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
class SequenceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SequenceType._({
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
  factory SequenceType(
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
    final valueEnum = SequenceTypeEnum.fromString(valueString);
    return SequenceType._(
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

  /// Factory constructor to create [SequenceType]
  /// from JSON.
  factory SequenceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SequenceTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SequenceType cannot be constructed from JSON.',
      );
    }
    return SequenceType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SequenceType
  final SequenceTypeEnum? valueEnum;

  /// aa
  static const SequenceType aa = SequenceType._(
    valueString: 'aa',
    valueEnum: SequenceTypeEnum.aa,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'AA Sequence',
    ),
  );

  /// dna
  static const SequenceType dna = SequenceType._(
    valueString: 'dna',
    valueEnum: SequenceTypeEnum.dna,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DNA Sequence',
    ),
  );

  /// rna
  static const SequenceType rna = SequenceType._(
    valueString: 'rna',
    valueEnum: SequenceTypeEnum.rna,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'RNA Sequence',
    ),
  );

  /// List of all enum-like values
  static final List<SequenceType> values = [
    aa,
    dna,
    rna,
  ];

  /// Returns the enum value with an element attached
  SequenceType withElement(Element? newElement) {
    return SequenceType._(
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
  SequenceType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SequenceTypeCopyWithImpl<SequenceType> get copyWith =>
      SequenceTypeCopyWithImpl<SequenceType>(
        this,
        (v) => v as SequenceType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SequenceTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SequenceTypeCopyWithImpl(super._value, super._then);

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
      SequenceType(
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
