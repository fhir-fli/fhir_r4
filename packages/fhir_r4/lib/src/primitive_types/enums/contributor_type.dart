part of '../primitive_types.dart';

/// Actual enum for ContributorType
enum ContributorTypeEnum {
  /// author
  author,

  /// editor
  editor,

  /// reviewer
  reviewer,

  /// endorser
  endorser,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ContributorTypeEnum.author:
        return 'author';
      case ContributorTypeEnum.editor:
        return 'editor';
      case ContributorTypeEnum.reviewer:
        return 'reviewer';
      case ContributorTypeEnum.endorser:
        return 'endorser';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContributorTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ContributorTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContributorTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'author':
        return ContributorTypeEnum.author;
      case 'editor':
        return ContributorTypeEnum.editor;
      case 'reviewer':
        return ContributorTypeEnum.reviewer;
      case 'endorser':
        return ContributorTypeEnum.endorser;
    }
    return null;
  }
}

/// The type of contributor.
class ContributorType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ContributorType._({
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
  factory ContributorType(
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
    final valueEnum = ContributorTypeEnum.fromString(valueString);
    return ContributorType._(
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

  /// Factory constructor to create [ContributorType]
  /// from JSON.
  factory ContributorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ContributorTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorType cannot be constructed from JSON.',
      );
    }
    return ContributorType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ContributorType
  final ContributorTypeEnum? valueEnum;

  /// author
  static const ContributorType author = ContributorType._(
    valueString: 'author',
    valueEnum: ContributorTypeEnum.author,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Author',
    ),
  );

  /// editor
  static const ContributorType editor = ContributorType._(
    valueString: 'editor',
    valueEnum: ContributorTypeEnum.editor,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Editor',
    ),
  );

  /// reviewer
  static const ContributorType reviewer = ContributorType._(
    valueString: 'reviewer',
    valueEnum: ContributorTypeEnum.reviewer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reviewer',
    ),
  );

  /// endorser
  static const ContributorType endorser = ContributorType._(
    valueString: 'endorser',
    valueEnum: ContributorTypeEnum.endorser,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Endorser',
    ),
  );

  /// List of all enum-like values
  static final List<ContributorType> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Returns the enum value with an element attached
  ContributorType withElement(Element? newElement) {
    return ContributorType._(
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
  ContributorType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ContributorTypeCopyWithImpl<ContributorType> get copyWith =>
      ContributorTypeCopyWithImpl<ContributorType>(
        this,
        (v) => v as ContributorType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ContributorTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ContributorTypeCopyWithImpl(super._value, super._then);

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
      ContributorType(
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
