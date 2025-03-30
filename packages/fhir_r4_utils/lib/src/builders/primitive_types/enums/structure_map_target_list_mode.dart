// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// If field is a list, how to manage the production.
class StructureMapTargetListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapTargetListModeBuilder._({
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
  factory StructureMapTargetListModeBuilder(
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
    return StructureMapTargetListModeBuilder._(
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

  /// Create empty [StructureMapTargetListModeBuilder] with element only
  factory StructureMapTargetListModeBuilder.empty() =>
      StructureMapTargetListModeBuilder._(validatedValue: '');

  /// Factory constructor to create [StructureMapTargetListModeBuilder]
  /// from JSON.
  factory StructureMapTargetListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTargetListModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapTargetListModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// first
  static StructureMapTargetListModeBuilder first =
      StructureMapTargetListModeBuilder._(
    validatedValue: 'first',
    system:
        'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'First'.toFhirStringBuilder,
  );

  /// share
  static StructureMapTargetListModeBuilder share =
      StructureMapTargetListModeBuilder._(
    validatedValue: 'share',
    system:
        'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Share'.toFhirStringBuilder,
  );

  /// last
  static StructureMapTargetListModeBuilder last =
      StructureMapTargetListModeBuilder._(
    validatedValue: 'last',
    system:
        'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Last'.toFhirStringBuilder,
  );

  /// collate
  static StructureMapTargetListModeBuilder collate =
      StructureMapTargetListModeBuilder._(
    validatedValue: 'collate',
    system:
        'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Collate'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapTargetListModeBuilder elementOnly =
      StructureMapTargetListModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StructureMapTargetListModeBuilder> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Clones the current instance
  @override
  StructureMapTargetListModeBuilder clone() =>
      StructureMapTargetListModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapTargetListModeBuilder withElement(ElementBuilder? newElement) {
    return StructureMapTargetListModeBuilder._(
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
  StructureMapTargetListModeBuilder copyWith({
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
    return StructureMapTargetListModeBuilder._(
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
