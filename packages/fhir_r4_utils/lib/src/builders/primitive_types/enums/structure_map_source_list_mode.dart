// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// If field is a list, how to manage the source.
class StructureMapSourceListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapSourceListModeBuilder._({
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
  factory StructureMapSourceListModeBuilder(
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
    return StructureMapSourceListModeBuilder._(
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

  /// Create empty [StructureMapSourceListModeBuilder] with element only
  factory StructureMapSourceListModeBuilder.empty() =>
      StructureMapSourceListModeBuilder._(validatedValue: '');

  /// Factory constructor to create [StructureMapSourceListModeBuilder]
  /// from JSON.
  factory StructureMapSourceListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapSourceListModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapSourceListModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// first
  static StructureMapSourceListModeBuilder first =
      StructureMapSourceListModeBuilder._(
    validatedValue: 'first',
    system:
        'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'First'.toFhirStringBuilder,
  );

  /// not_first
  static StructureMapSourceListModeBuilder not_first =
      StructureMapSourceListModeBuilder._(
    validatedValue: 'not_first',
    system:
        'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'All but the first'.toFhirStringBuilder,
  );

  /// last
  static StructureMapSourceListModeBuilder last =
      StructureMapSourceListModeBuilder._(
    validatedValue: 'last',
    system:
        'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Last'.toFhirStringBuilder,
  );

  /// not_last
  static StructureMapSourceListModeBuilder not_last =
      StructureMapSourceListModeBuilder._(
    validatedValue: 'not_last',
    system:
        'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'All but the last'.toFhirStringBuilder,
  );

  /// only_one
  static StructureMapSourceListModeBuilder only_one =
      StructureMapSourceListModeBuilder._(
    validatedValue: 'only_one',
    system:
        'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Enforce only one'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapSourceListModeBuilder elementOnly =
      StructureMapSourceListModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StructureMapSourceListModeBuilder> values = [
    first,
    not_first,
    last,
    not_last,
    only_one,
  ];

  /// Clones the current instance
  @override
  StructureMapSourceListModeBuilder clone() =>
      StructureMapSourceListModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapSourceListModeBuilder withElement(ElementBuilder? newElement) {
    return StructureMapSourceListModeBuilder._(
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
  StructureMapSourceListModeBuilder copyWith({
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
    return StructureMapSourceListModeBuilder._(
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
