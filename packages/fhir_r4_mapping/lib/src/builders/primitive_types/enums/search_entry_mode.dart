// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SearchEntryMode
enum SearchEntryModeBuilderEnum {
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
      case SearchEntryModeBuilderEnum.match:
        return 'match';
      case SearchEntryModeBuilderEnum.include:
        return 'include';
      case SearchEntryModeBuilderEnum.outcome:
        return 'outcome';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SearchEntryModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SearchEntryModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SearchEntryModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'match':
        return SearchEntryModeBuilderEnum.match;
      case 'include':
        return SearchEntryModeBuilderEnum.include;
      case 'outcome':
        return SearchEntryModeBuilderEnum.outcome;
    }
    return null;
  }
}

/// Why an entry is in the result set - whether it's included as a match or
/// because of an _include requirement, or to convey information or warning
/// information about the search process.
class SearchEntryModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchEntryModeBuilder._({
    required super.valueString,
    this.valueEnum,
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
  factory SearchEntryModeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = SearchEntryModeBuilderEnum.fromString(
      valueString,
    );
    return SearchEntryModeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [SearchEntryModeBuilder]
  /// with element only
  factory SearchEntryModeBuilder.empty() =>
      SearchEntryModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SearchEntryModeBuilder] from JSON.
  factory SearchEntryModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchEntryModeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchEntryModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SearchEntryModeBuilder
  final SearchEntryModeBuilderEnum? valueEnum;

  /// match
  static SearchEntryModeBuilder match = SearchEntryModeBuilder._(
    valueString: 'match',
    valueEnum: SearchEntryModeBuilderEnum.match,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Match',
    ),
  );

  /// include
  static SearchEntryModeBuilder include = SearchEntryModeBuilder._(
    valueString: 'include',
    valueEnum: SearchEntryModeBuilderEnum.include,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Include',
    ),
  );

  /// outcome
  static SearchEntryModeBuilder outcome = SearchEntryModeBuilder._(
    valueString: 'outcome',
    valueEnum: SearchEntryModeBuilderEnum.outcome,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-entry-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Outcome',
    ),
  );

  /// For instances where an Element is present but not value
  static SearchEntryModeBuilder elementOnly = SearchEntryModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SearchEntryModeBuilder> values = [
    match,
    include,
    outcome,
  ];

  /// Returns the enum value with an element attached
  SearchEntryModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SearchEntryModeBuilder._(
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
}
