// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Why an entry is in the result set - whether it's included as a match or
/// because of an _include requirement, or to convey information or warning
/// information about the search process.
class SearchEntryMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SearchEntryMode._({
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
  factory SearchEntryMode(
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
    return SearchEntryMode._(
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

  /// Create empty [SearchEntryMode] with element only
  factory SearchEntryMode.empty() => SearchEntryMode._(valueString: '');

  /// Factory constructor to create [SearchEntryMode] from JSON.
  factory SearchEntryMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchEntryMode cannot be constructed from JSON.',
      );
    }
    return SearchEntryMode._(
      valueString: value,
      element: element,
    );
  }

  /// match
  static final SearchEntryMode match = SearchEntryMode._(
    valueString: 'match',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Match'.toFhirString,
  );

  /// include
  static final SearchEntryMode include = SearchEntryMode._(
    valueString: 'include',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Include'.toFhirString,
  );

  /// outcome
  static final SearchEntryMode outcome = SearchEntryMode._(
    valueString: 'outcome',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Outcome'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SearchEntryMode elementOnly = SearchEntryMode._(valueString: '');

  /// List of all enum-like values
  static final List<SearchEntryMode> values = [
    match,
    include,
    outcome,
  ];

  /// Clones the current instance
  @override
  SearchEntryMode clone() => SearchEntryMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SearchEntryMode withElement(Element? newElement) {
    return SearchEntryMode._(
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
  SearchEntryMode copyWith({
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
      throw ArgumentError('Invalid input for SearchEntryMode: $newValue');
    }
    return SearchEntryMode._(
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
