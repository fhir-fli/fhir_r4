// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible sort directions, ascending or descending.
class SortDirectionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SortDirectionBuilder._({
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
  factory SortDirectionBuilder(
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
    return SortDirectionBuilder._(
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

  /// Create empty [SortDirectionBuilder] with element only
  factory SortDirectionBuilder.empty() =>
      SortDirectionBuilder._(valueString: '');

  /// Factory constructor to create [SortDirectionBuilder]
  /// from JSON.
  factory SortDirectionBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirectionBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SortDirectionBuilder cannot be constructed from JSON.',
      );
    }
    return SortDirectionBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// ascending
  static SortDirectionBuilder ascending = SortDirectionBuilder._(
    valueString: 'ascending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ascending'.toFhirStringBuilder,
  );

  /// descending
  static SortDirectionBuilder descending = SortDirectionBuilder._(
    valueString: 'descending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Descending'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SortDirectionBuilder elementOnly =
      SortDirectionBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SortDirectionBuilder> values = [
    ascending,
    descending,
  ];

  /// Clones the current instance
  @override
  SortDirectionBuilder clone() => SortDirectionBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SortDirectionBuilder withElement(ElementBuilder? newElement) {
    return SortDirectionBuilder._(
        valueString: valueString, element: newElement);
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
  SortDirectionBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for SortDirection: $newValue');
    }
    return SortDirectionBuilder._(
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
