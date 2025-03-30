// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible sort directions, ascending or descending.
class SortDirectionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SortDirectionBuilder._({
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
  factory SortDirectionBuilder(
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
    return SortDirectionBuilder._(
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

  /// Create empty [SortDirectionBuilder] with element only
  factory SortDirectionBuilder.empty() =>
      SortDirectionBuilder._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// ascending
  static SortDirectionBuilder ascending = SortDirectionBuilder._(
    validatedValue: 'ascending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ascending'.toFhirStringBuilder,
  );

  /// descending
  static SortDirectionBuilder descending = SortDirectionBuilder._(
    validatedValue: 'descending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Descending'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SortDirectionBuilder elementOnly =
      SortDirectionBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SortDirectionBuilder> values = [
    ascending,
    descending,
  ];

  /// Clones the current instance
  @override
  SortDirectionBuilder clone() => SortDirectionBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SortDirectionBuilder withElement(ElementBuilder? newElement) {
    return SortDirectionBuilder._(validatedValue: value, element: newElement);
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
  SortDirectionBuilder copyWith({
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
    return SortDirectionBuilder._(
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
