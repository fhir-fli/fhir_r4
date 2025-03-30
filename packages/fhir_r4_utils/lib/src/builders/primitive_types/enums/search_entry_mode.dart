// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Why an entry is in the result set - whether it's included as a match or
/// because of an _include requirement, or to convey information or warning
/// information about the search process.
class SearchEntryModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SearchEntryModeBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return SearchEntryModeBuilder._(
      validatedValue: validated,
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

  /// Create empty [SearchEntryModeBuilder] with element only
  factory SearchEntryModeBuilder.empty() =>
      SearchEntryModeBuilder._(validatedValue: '');

  /// Factory constructor to create [SearchEntryModeBuilder]
  /// from JSON.
  factory SearchEntryModeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchEntryModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SearchEntryModeBuilder cannot be constructed from JSON.',
      );
    }
    return SearchEntryModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// match
  static SearchEntryModeBuilder match = SearchEntryModeBuilder._(
    validatedValue: 'match',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Match'.toFhirStringBuilder,
  );

  /// include
  static SearchEntryModeBuilder include = SearchEntryModeBuilder._(
    validatedValue: 'include',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Include'.toFhirStringBuilder,
  );

  /// outcome
  static SearchEntryModeBuilder outcome = SearchEntryModeBuilder._(
    validatedValue: 'outcome',
    system: 'http://hl7.org/fhir/ValueSet/search-entry-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Outcome'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SearchEntryModeBuilder elementOnly =
      SearchEntryModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SearchEntryModeBuilder> values = [
    match,
    include,
    outcome,
  ];

  /// Clones the current instance
  @override
  SearchEntryModeBuilder clone() => SearchEntryModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SearchEntryModeBuilder withElement(ElementBuilder? newElement) {
    return SearchEntryModeBuilder._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  SearchEntryModeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SearchEntryModeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
