// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DocumentRelationshipType
enum DocumentRelationshipTypeEnum {
  /// replaces
  replaces,

  /// transforms
  transforms,

  /// signs
  signs,

  /// appends
  appends,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DocumentRelationshipTypeEnum.replaces:
        return 'replaces';
      case DocumentRelationshipTypeEnum.transforms:
        return 'transforms';
      case DocumentRelationshipTypeEnum.signs:
        return 'signs';
      case DocumentRelationshipTypeEnum.appends:
        return 'appends';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DocumentRelationshipTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DocumentRelationshipTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DocumentRelationshipTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaces':
        return DocumentRelationshipTypeEnum.replaces;
      case 'transforms':
        return DocumentRelationshipTypeEnum.transforms;
      case 'signs':
        return DocumentRelationshipTypeEnum.signs;
      case 'appends':
        return DocumentRelationshipTypeEnum.appends;
    }
    return null;
  }
}

/// The type of relationship between documents.
class DocumentRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DocumentRelationshipType._({
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
  factory DocumentRelationshipType(
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
    final valueEnum = DocumentRelationshipTypeEnum.fromString(valueString);
    return DocumentRelationshipType._(
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

  /// Factory constructor to create [DocumentRelationshipType]
  /// from JSON.
  factory DocumentRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DocumentRelationshipTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentRelationshipType cannot be constructed from JSON.',
      );
    }
    return DocumentRelationshipType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DocumentRelationshipType
  final DocumentRelationshipTypeEnum? valueEnum;

  /// replaces
  static const DocumentRelationshipType replaces = DocumentRelationshipType._(
    valueString: 'replaces',
    valueEnum: DocumentRelationshipTypeEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// transforms
  static const DocumentRelationshipType transforms = DocumentRelationshipType._(
    valueString: 'transforms',
    valueEnum: DocumentRelationshipTypeEnum.transforms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transforms',
    ),
  );

  /// signs
  static const DocumentRelationshipType signs = DocumentRelationshipType._(
    valueString: 'signs',
    valueEnum: DocumentRelationshipTypeEnum.signs,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Signs',
    ),
  );

  /// appends
  static const DocumentRelationshipType appends = DocumentRelationshipType._(
    valueString: 'appends',
    valueEnum: DocumentRelationshipTypeEnum.appends,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/document-relationship-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appends',
    ),
  );

  /// List of all enum-like values
  static final List<DocumentRelationshipType> values = [
    replaces,
    transforms,
    signs,
    appends,
  ];

  /// Returns the enum value with an element attached
  DocumentRelationshipType withElement(Element? newElement) {
    return DocumentRelationshipType._(
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
  DocumentRelationshipType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DocumentRelationshipTypeCopyWithImpl<DocumentRelationshipType> get copyWith =>
      DocumentRelationshipTypeCopyWithImpl<DocumentRelationshipType>(
        this,
        (v) => v as DocumentRelationshipType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DocumentRelationshipTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DocumentRelationshipTypeCopyWithImpl(super._value, super._then);

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
      DocumentRelationshipType(
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
