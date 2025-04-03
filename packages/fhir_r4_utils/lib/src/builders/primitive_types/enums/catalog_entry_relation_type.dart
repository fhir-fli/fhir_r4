// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relations between entries.
class CatalogEntryRelationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CatalogEntryRelationTypeBuilder._({
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
  factory CatalogEntryRelationTypeBuilder(
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
    return CatalogEntryRelationTypeBuilder._(
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

  /// Create empty [CatalogEntryRelationTypeBuilder] with element only
  factory CatalogEntryRelationTypeBuilder.empty() =>
      CatalogEntryRelationTypeBuilder._(valueString: '');

  /// Factory constructor to create [CatalogEntryRelationTypeBuilder]
  /// from JSON.
  factory CatalogEntryRelationTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CatalogEntryRelationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return CatalogEntryRelationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// triggers
  static CatalogEntryRelationTypeBuilder triggers =
      CatalogEntryRelationTypeBuilder._(
    valueString: 'triggers',
    system: 'http://hl7.org/fhir/ValueSet/relation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Triggers'.toFhirStringBuilder,
  );

  /// is_replaced_by
  static CatalogEntryRelationTypeBuilder is_replaced_by =
      CatalogEntryRelationTypeBuilder._(
    valueString: 'is-replaced-by',
    system: 'http://hl7.org/fhir/ValueSet/relation-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Replaced By'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CatalogEntryRelationTypeBuilder elementOnly =
      CatalogEntryRelationTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CatalogEntryRelationTypeBuilder> values = [
    triggers,
    is_replaced_by,
  ];

  /// Clones the current instance
  @override
  CatalogEntryRelationTypeBuilder clone() => CatalogEntryRelationTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CatalogEntryRelationTypeBuilder withElement(ElementBuilder? newElement) {
    return CatalogEntryRelationTypeBuilder._(
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
  CatalogEntryRelationTypeBuilder copyWith({
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
      throw ArgumentError(
          'Invalid input for CatalogEntryRelationType: $newValue');
    }
    return CatalogEntryRelationTypeBuilder._(
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
