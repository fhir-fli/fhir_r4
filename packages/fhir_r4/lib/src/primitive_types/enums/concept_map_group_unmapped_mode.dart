// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ConceptMapGroupUnmappedMode._({
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
  factory ConceptMapGroupUnmappedMode(
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
    return ConceptMapGroupUnmappedMode._(
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

  /// Create empty [ConceptMapGroupUnmappedMode] with element only
  factory ConceptMapGroupUnmappedMode.empty() =>
      ConceptMapGroupUnmappedMode._(valueString: '');

  /// Factory constructor to create [ConceptMapGroupUnmappedMode] from JSON.
  factory ConceptMapGroupUnmappedMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapGroupUnmappedMode cannot be constructed from JSON.',
      );
    }
    return ConceptMapGroupUnmappedMode._(
      valueString: value,
      element: element,
    );
  }

  /// provided
  static final ConceptMapGroupUnmappedMode provided =
      ConceptMapGroupUnmappedMode._(
    valueString: 'provided',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Provided Code'.toFhirString,
  );

  /// fixed
  static final ConceptMapGroupUnmappedMode fixed =
      ConceptMapGroupUnmappedMode._(
    valueString: 'fixed',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fixed Code'.toFhirString,
  );

  /// other_map
  static final ConceptMapGroupUnmappedMode other_map =
      ConceptMapGroupUnmappedMode._(
    valueString: 'other-map',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other Map'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ConceptMapGroupUnmappedMode elementOnly =
      ConceptMapGroupUnmappedMode._(valueString: '');

  /// List of all enum-like values
  static final List<ConceptMapGroupUnmappedMode> values = [
    provided,
    fixed,
    other_map,
  ];

  /// Clones the current instance
  @override
  ConceptMapGroupUnmappedMode clone() => ConceptMapGroupUnmappedMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedMode withElement(Element? newElement) {
    return ConceptMapGroupUnmappedMode._(
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
  ConceptMapGroupUnmappedMode copyWith({
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
      throw ArgumentError(
          'Invalid input for ConceptMapGroupUnmappedMode: $newValue',);
    }
    return ConceptMapGroupUnmappedMode._(
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
