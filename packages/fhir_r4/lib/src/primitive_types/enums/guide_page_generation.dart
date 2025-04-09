// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GuidePageGeneration
enum GuidePageGenerationEnum {
  /// html
  html,

  /// markdown
  markdown,

  /// xml
  xml,

  /// generated
  generated,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GuidePageGenerationEnum.html:
        return 'html';
      case GuidePageGenerationEnum.markdown:
        return 'markdown';
      case GuidePageGenerationEnum.xml:
        return 'xml';
      case GuidePageGenerationEnum.generated:
        return 'generated';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuidePageGenerationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GuidePageGenerationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuidePageGenerationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'html':
        return GuidePageGenerationEnum.html;
      case 'markdown':
        return GuidePageGenerationEnum.markdown;
      case 'xml':
        return GuidePageGenerationEnum.xml;
      case 'generated':
        return GuidePageGenerationEnum.generated;
    }
    return null;
  }
}

/// A code that indicates how the page is generated.
class GuidePageGeneration extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GuidePageGeneration._({
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
  factory GuidePageGeneration(
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
    final valueEnum = GuidePageGenerationEnum.fromString(valueString);
    return GuidePageGeneration._(
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

  /// Factory constructor to create [GuidePageGeneration]
  /// from JSON.
  factory GuidePageGeneration.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GuidePageGenerationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidePageGeneration._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidePageGeneration cannot be constructed from JSON.',
      );
    }
    return GuidePageGeneration._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GuidePageGeneration
  final GuidePageGenerationEnum? valueEnum;

  /// html
  static const GuidePageGeneration html = GuidePageGeneration._(
    valueString: 'html',
    valueEnum: GuidePageGenerationEnum.html,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HTML',
    ),
  );

  /// markdown
  static const GuidePageGeneration markdown = GuidePageGeneration._(
    valueString: 'markdown',
    valueEnum: GuidePageGenerationEnum.markdown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Markdown',
    ),
  );

  /// xml
  static const GuidePageGeneration xml = GuidePageGeneration._(
    valueString: 'xml',
    valueEnum: GuidePageGenerationEnum.xml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'XML',
    ),
  );

  /// generated
  static const GuidePageGeneration generated = GuidePageGeneration._(
    valueString: 'generated',
    valueEnum: GuidePageGenerationEnum.generated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guide-page-generation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Generated',
    ),
  );

  /// List of all enum-like values
  static final List<GuidePageGeneration> values = [
    html,
    markdown,
    xml,
    generated,
  ];

  /// Returns the enum value with an element attached
  GuidePageGeneration withElement(Element? newElement) {
    return GuidePageGeneration._(
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
  GuidePageGeneration clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GuidePageGenerationCopyWithImpl<GuidePageGeneration> get copyWith =>
      GuidePageGenerationCopyWithImpl<GuidePageGeneration>(
        this,
        (v) => v as GuidePageGeneration,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GuidePageGenerationCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GuidePageGenerationCopyWithImpl(super._value, super._then);

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
      GuidePageGeneration(
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
