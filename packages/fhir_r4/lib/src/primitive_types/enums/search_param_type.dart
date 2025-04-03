// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Data types allowed to be used for search parameters.
class SearchParamType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SearchParamType._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SearchParamType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return SearchParamType._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [SearchParamType] with element only
  factory SearchParamType.empty() => SearchParamType._(valueString: '');

  /// Factory constructor to create [SearchParamType] from JSON.
  factory SearchParamType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchParamType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchParamType cannot be constructed from JSON.',
      );
    }
    return SearchParamType._(
      valueString: value,
      element: element,
    );
  }

  /// number
  static final SearchParamType number = SearchParamType._(
    valueString: 'number',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Number'.toFhirString,
  );

  /// date
  static final SearchParamType date = SearchParamType._(
    valueString: 'date',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Date/DateTime'.toFhirString,
  );

  /// string
  static final SearchParamType string = SearchParamType._(
    valueString: 'string',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'String'.toFhirString,
  );

  /// token
  static final SearchParamType token = SearchParamType._(
    valueString: 'token',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Token'.toFhirString,
  );

  /// reference
  static final SearchParamType reference = SearchParamType._(
    valueString: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reference'.toFhirString,
  );

  /// composite
  static final SearchParamType composite = SearchParamType._(
    valueString: 'composite',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Composite'.toFhirString,
  );

  /// quantity
  static final SearchParamType quantity = SearchParamType._(
    valueString: 'quantity',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Quantity'.toFhirString,
  );

  /// uri
  static final SearchParamType uri = SearchParamType._(
    valueString: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URI'.toFhirString,
  );

  /// special
  static final SearchParamType special = SearchParamType._(
    valueString: 'special',
    system: 'http://hl7.org/fhir/ValueSet/search-param-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Special'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SearchParamType elementOnly = SearchParamType._(valueString: '');

  /// List of all enum-like values
  static final List<SearchParamType> values = [
    number,
    date,
    string,
    token,
    reference,
    composite,
    quantity,
    uri,
    special,
  ];

  /// Clones the current instance
  @override
  SearchParamType clone() => SearchParamType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchParamType withElement(Element? newElement) {
    return SearchParamType._(
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

  /// Creates a modified copy with updated properties.
  @override
  SearchParamType copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for SearchParamType: $newValue');
    }
    return SearchParamType._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
