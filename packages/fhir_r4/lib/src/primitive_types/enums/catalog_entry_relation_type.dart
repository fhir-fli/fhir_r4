// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relations between entries.
class CatalogEntryRelationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CatalogEntryRelationType._({
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
  factory CatalogEntryRelationType(
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
    return CatalogEntryRelationType._(
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

  /// Create empty [CatalogEntryRelationType] with element only
  factory CatalogEntryRelationType.empty() =>
      CatalogEntryRelationType._(valueString: '');

  /// Factory constructor to create [CatalogEntryRelationType] from JSON.
  factory CatalogEntryRelationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CatalogEntryRelationType cannot be constructed from JSON.',
      );
    }
    return CatalogEntryRelationType._(
      valueString: value,
      element: element,
    );
  }

  /// triggers
  static final CatalogEntryRelationType triggers = CatalogEntryRelationType._(
    valueString: 'triggers',
    system: 'http://hl7.org/fhir/ValueSet/relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Triggers'.toFhirString,
  );

  /// is_replaced_by
  static final CatalogEntryRelationType is_replaced_by =
      CatalogEntryRelationType._(
    valueString: 'is-replaced-by',
    system: 'http://hl7.org/fhir/ValueSet/relation-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Replaced By'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CatalogEntryRelationType elementOnly =
      CatalogEntryRelationType._(valueString: '');

  /// List of all enum-like values
  static final List<CatalogEntryRelationType> values = [
    triggers,
    is_replaced_by,
  ];

  /// Clones the current instance
  @override
  CatalogEntryRelationType clone() => CatalogEntryRelationType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CatalogEntryRelationType withElement(Element? newElement) {
    return CatalogEntryRelationType._(
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
  CatalogEntryRelationType copyWith({
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
          'Invalid input for CatalogEntryRelationType: $newValue');
    }
    return CatalogEntryRelationType._(
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
