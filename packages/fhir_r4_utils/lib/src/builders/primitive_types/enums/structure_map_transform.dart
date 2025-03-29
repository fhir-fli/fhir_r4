// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How data is copied/created.
class StructureMapTransformBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapTransformBuilder._({
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
  factory StructureMapTransformBuilder(
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
    return StructureMapTransformBuilder._(
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

  /// Create empty [StructureMapTransformBuilder] with element only
  factory StructureMapTransformBuilder.empty() =>
      StructureMapTransformBuilder._(validatedValue: '');

  /// Factory constructor to create [StructureMapTransformBuilder] from JSON.
  factory StructureMapTransformBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransformBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTransformBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapTransformBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// create
  static StructureMapTransformBuilder create = StructureMapTransformBuilder._(
    validatedValue: 'create',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'create'.toFhirStringBuilder,
  );

  /// copy
  static StructureMapTransformBuilder copy_ = StructureMapTransformBuilder._(
    validatedValue: 'copy',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'copy'.toFhirStringBuilder,
  );

  /// truncate
  static StructureMapTransformBuilder truncate = StructureMapTransformBuilder._(
    validatedValue: 'truncate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'truncate'.toFhirStringBuilder,
  );

  /// escape
  static StructureMapTransformBuilder escape = StructureMapTransformBuilder._(
    validatedValue: 'escape',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'escape'.toFhirStringBuilder,
  );

  /// cast
  static StructureMapTransformBuilder cast = StructureMapTransformBuilder._(
    validatedValue: 'cast',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'cast'.toFhirStringBuilder,
  );

  /// append
  static StructureMapTransformBuilder append = StructureMapTransformBuilder._(
    validatedValue: 'append',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'append'.toFhirStringBuilder,
  );

  /// translate
  static StructureMapTransformBuilder translate =
      StructureMapTransformBuilder._(
    validatedValue: 'translate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'translate'.toFhirStringBuilder,
  );

  /// reference
  static StructureMapTransformBuilder reference =
      StructureMapTransformBuilder._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'reference'.toFhirStringBuilder,
  );

  /// dateOp
  static StructureMapTransformBuilder dateOp = StructureMapTransformBuilder._(
    validatedValue: 'dateOp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dateOp'.toFhirStringBuilder,
  );

  /// uuid
  static StructureMapTransformBuilder uuid = StructureMapTransformBuilder._(
    validatedValue: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'uuid'.toFhirStringBuilder,
  );

  /// pointer
  static StructureMapTransformBuilder pointer = StructureMapTransformBuilder._(
    validatedValue: 'pointer',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'pointer'.toFhirStringBuilder,
  );

  /// evaluate
  static StructureMapTransformBuilder evaluate = StructureMapTransformBuilder._(
    validatedValue: 'evaluate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'evaluate'.toFhirStringBuilder,
  );

  /// cc
  static StructureMapTransformBuilder cc = StructureMapTransformBuilder._(
    validatedValue: 'cc',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'cc'.toFhirStringBuilder,
  );

  /// c
  static StructureMapTransformBuilder c = StructureMapTransformBuilder._(
    validatedValue: 'c',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'c'.toFhirStringBuilder,
  );

  /// qty
  static StructureMapTransformBuilder qty = StructureMapTransformBuilder._(
    validatedValue: 'qty',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'qty'.toFhirStringBuilder,
  );

  /// id
  static StructureMapTransformBuilder id_ = StructureMapTransformBuilder._(
    validatedValue: 'id',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'id'.toFhirStringBuilder,
  );

  /// cp
  static StructureMapTransformBuilder cp = StructureMapTransformBuilder._(
    validatedValue: 'cp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'cp'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapTransformBuilder elementOnly =
      StructureMapTransformBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<StructureMapTransformBuilder> values = [
    create,
    copy_,
    truncate,
    escape,
    cast,
    append,
    translate,
    reference,
    dateOp,
    uuid,
    pointer,
    evaluate,
    cc,
    c,
    qty,
    id_,
    cp,
  ];

  /// Clones the current instance
  @override
  StructureMapTransformBuilder clone() => StructureMapTransformBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapTransformBuilder withElement(ElementBuilder? newElement) {
    return StructureMapTransformBuilder._(
        validatedValue: value, element: newElement);
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
  StructureMapTransformBuilder copyWith({
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
    return StructureMapTransformBuilder._(
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
