// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchEntryMode
enum SearchEntryModeEnum {
  /// match
  match,

  /// include
  include,

  /// outcome
  outcome,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SearchEntryModeEnum.match:
        return 'match';
      case SearchEntryModeEnum.include:
        return 'include';
      case SearchEntryModeEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchEntryModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchEntryModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchEntryModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'match':
        return SearchEntryModeEnum.match;
      case 'include':
        return SearchEntryModeEnum.include;
      case 'outcome':
        return SearchEntryModeEnum.outcome;
    }
    return null;
  }
}

/// Why an entry is in the result set - whether it's included as a match or
/// because of an _include requirement, or to convey information or warning
/// information about the search process.
class SearchEntryMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SearchEntryMode._({
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
  factory SearchEntryMode(
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
    final valueEnum = SearchEntryModeEnum.fromString(valueString);
    return SearchEntryMode._(
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

  /// Factory constructor to create [SearchEntryMode]
  /// from JSON.
  factory SearchEntryMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SearchEntryModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchEntryMode cannot be constructed from JSON.',
      );
    }
    return SearchEntryMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SearchEntryMode
  final SearchEntryModeEnum? valueEnum;

  /// match
  static const SearchEntryMode match = SearchEntryMode._(
    valueString: 'match',
    valueEnum: SearchEntryModeEnum.match,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Match',
    ),
  );

  /// include
  static const SearchEntryMode include = SearchEntryMode._(
    valueString: 'include',
    valueEnum: SearchEntryModeEnum.include,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Include',
    ),
  );

  /// outcome
  static const SearchEntryMode outcome = SearchEntryMode._(
    valueString: 'outcome',
    valueEnum: SearchEntryModeEnum.outcome,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Outcome',
    ),
  );

  /// List of all enum-like values
  static final List<SearchEntryMode> values = [
    match,
    include,
    outcome,
  ];

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

  @override
  SearchEntryMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SearchEntryModeCopyWithImpl<SearchEntryMode> get copyWith =>
      SearchEntryModeCopyWithImpl<SearchEntryMode>(
        this,
        (v) => v as SearchEntryMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SearchEntryModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SearchEntryModeCopyWithImpl(super._value, super._then);

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
      SearchEntryMode(
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
