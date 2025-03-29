// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible sort directions, ascending or descending.
class SortDirection extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SortDirection._({
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
  factory SortDirection(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return SortDirection._(
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

  /// Create empty [SortDirection] with element only
  factory SortDirection.empty() => SortDirection._(validatedValue: '');

  /// Factory constructor to create [SortDirection] from JSON.
  factory SortDirection.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirection.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SortDirection cannot be constructed from JSON.',
      );
    }
    return SortDirection._(
      validatedValue: value,
      element: element,
    );
  }

  /// ascending
  static final SortDirection ascending = SortDirection._(
    validatedValue: 'ascending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ascending'.toFhirString,
  );

  /// descending
  static final SortDirection descending = SortDirection._(
    validatedValue: 'descending',
    system: 'http://hl7.org/fhir/ValueSet/sort-direction'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Descending'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SortDirection elementOnly = SortDirection._(validatedValue: '');

  /// List of all enum-like values
  static final List<SortDirection> values = [
    ascending,
    descending,
  ];

  /// Clones the current instance
  @override
  SortDirection clone() => SortDirection._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SortDirection withElement(Element? newElement) {
    return SortDirection._(
      validatedValue: value,
      element: newElement,
    );
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
  SortDirection copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SortDirection._(
      validatedValue: newValue ?? value,
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
