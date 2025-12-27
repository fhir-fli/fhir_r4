part of '../primitive_types.dart';

/// Actual enum for RelatedArtifactType
enum RelatedArtifactTypeEnum {
  /// documentation
  documentation,

  /// justification
  justification,

  /// citation
  citation,

  /// predecessor
  predecessor,

  /// successor
  successor,

  /// derived-from
  derivedFrom,

  /// depends-on
  dependsOn,

  /// composed-of
  composedOf,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RelatedArtifactTypeEnum.documentation:
        return 'documentation';
      case RelatedArtifactTypeEnum.justification:
        return 'justification';
      case RelatedArtifactTypeEnum.citation:
        return 'citation';
      case RelatedArtifactTypeEnum.predecessor:
        return 'predecessor';
      case RelatedArtifactTypeEnum.successor:
        return 'successor';
      case RelatedArtifactTypeEnum.derivedFrom:
        return 'derived-from';
      case RelatedArtifactTypeEnum.dependsOn:
        return 'depends-on';
      case RelatedArtifactTypeEnum.composedOf:
        return 'composed-of';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RelatedArtifactTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RelatedArtifactTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RelatedArtifactTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'documentation':
        return RelatedArtifactTypeEnum.documentation;
      case 'justification':
        return RelatedArtifactTypeEnum.justification;
      case 'citation':
        return RelatedArtifactTypeEnum.citation;
      case 'predecessor':
        return RelatedArtifactTypeEnum.predecessor;
      case 'successor':
        return RelatedArtifactTypeEnum.successor;
      case 'derived-from':
        return RelatedArtifactTypeEnum.derivedFrom;
      case 'depends-on':
        return RelatedArtifactTypeEnum.dependsOn;
      case 'composed-of':
        return RelatedArtifactTypeEnum.composedOf;
    }
    return null;
  }
}

/// The type of relationship to the related artifact.
class RelatedArtifactType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RelatedArtifactType._({
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
  factory RelatedArtifactType(
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
    final valueEnum = RelatedArtifactTypeEnum.fromString(valueString);
    return RelatedArtifactType._(
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

  /// Factory constructor to create [RelatedArtifactType]
  /// from JSON.
  factory RelatedArtifactType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RelatedArtifactTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RelatedArtifactType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RelatedArtifactType cannot be constructed from JSON.',
      );
    }
    return RelatedArtifactType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RelatedArtifactType
  final RelatedArtifactTypeEnum? valueEnum;

  /// documentation
  static const RelatedArtifactType documentation = RelatedArtifactType._(
    valueString: 'documentation',
    valueEnum: RelatedArtifactTypeEnum.documentation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Documentation',
    ),
  );

  /// justification
  static const RelatedArtifactType justification = RelatedArtifactType._(
    valueString: 'justification',
    valueEnum: RelatedArtifactTypeEnum.justification,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Justification',
    ),
  );

  /// citation
  static const RelatedArtifactType citation = RelatedArtifactType._(
    valueString: 'citation',
    valueEnum: RelatedArtifactTypeEnum.citation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Citation',
    ),
  );

  /// predecessor
  static const RelatedArtifactType predecessor = RelatedArtifactType._(
    valueString: 'predecessor',
    valueEnum: RelatedArtifactTypeEnum.predecessor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Predecessor',
    ),
  );

  /// successor
  static const RelatedArtifactType successor = RelatedArtifactType._(
    valueString: 'successor',
    valueEnum: RelatedArtifactTypeEnum.successor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Successor',
    ),
  );

  /// derived_from
  static const RelatedArtifactType derivedFrom = RelatedArtifactType._(
    valueString: 'derived-from',
    valueEnum: RelatedArtifactTypeEnum.derivedFrom,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Derived From',
    ),
  );

  /// depends_on
  static const RelatedArtifactType dependsOn = RelatedArtifactType._(
    valueString: 'depends-on',
    valueEnum: RelatedArtifactTypeEnum.dependsOn,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Depends On',
    ),
  );

  /// composed_of
  static const RelatedArtifactType composedOf = RelatedArtifactType._(
    valueString: 'composed-of',
    valueEnum: RelatedArtifactTypeEnum.composedOf,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/related-artifact-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Composed Of',
    ),
  );

  /// List of all enum-like values
  static final List<RelatedArtifactType> values = [
    documentation,
    justification,
    citation,
    predecessor,
    successor,
    derivedFrom,
    dependsOn,
    composedOf,
  ];

  /// Returns the enum value with an element attached
  RelatedArtifactType withElement(Element? newElement) {
    return RelatedArtifactType._(
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
  RelatedArtifactType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RelatedArtifactTypeCopyWithImpl<RelatedArtifactType> get copyWith =>
      RelatedArtifactTypeCopyWithImpl<RelatedArtifactType>(
        this,
        (v) => v as RelatedArtifactType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RelatedArtifactTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RelatedArtifactTypeCopyWithImpl(super._value, super._then);

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
      RelatedArtifactType(
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
