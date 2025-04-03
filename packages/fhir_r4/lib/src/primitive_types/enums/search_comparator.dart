// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// What Search Comparator Codes are supported in search.
class SearchComparator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SearchComparator._({
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
  factory SearchComparator(
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
    return SearchComparator._(
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

  /// Create empty [SearchComparator] with element only
  factory SearchComparator.empty() => SearchComparator._(valueString: '');

  /// Factory constructor to create [SearchComparator] from JSON.
  factory SearchComparator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchComparator cannot be constructed from JSON.',
      );
    }
    return SearchComparator._(
      valueString: value,
      element: element,
    );
  }

  /// eq
  static final SearchComparator eq = SearchComparator._(
    valueString: 'eq',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Equals'.toFhirString,
  );

  /// ne
  static final SearchComparator ne = SearchComparator._(
    valueString: 'ne',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Equals'.toFhirString,
  );

  /// gt
  static final SearchComparator gt = SearchComparator._(
    valueString: 'gt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than'.toFhirString,
  );

  /// lt
  static final SearchComparator lt = SearchComparator._(
    valueString: 'lt',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than'.toFhirString,
  );

  /// ge
  static final SearchComparator ge = SearchComparator._(
    valueString: 'ge',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater or Equals'.toFhirString,
  );

  /// le
  static final SearchComparator le = SearchComparator._(
    valueString: 'le',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less of Equal'.toFhirString,
  );

  /// sa
  static final SearchComparator sa = SearchComparator._(
    valueString: 'sa',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Starts After'.toFhirString,
  );

  /// eb
  static final SearchComparator eb = SearchComparator._(
    valueString: 'eb',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ends Before'.toFhirString,
  );

  /// ap
  static final SearchComparator ap = SearchComparator._(
    valueString: 'ap',
    system: 'http://hl7.org/fhir/ValueSet/search-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Approximately'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SearchComparator elementOnly =
      SearchComparator._(valueString: '');

  /// List of all enum-like values
  static final List<SearchComparator> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
  ];

  /// Clones the current instance
  @override
  SearchComparator clone() => SearchComparator._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(
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
  SearchComparator copyWith({
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
      throw ArgumentError('Invalid input for SearchComparator: $newValue');
    }
    return SearchComparator._(
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
