// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How data is copied/created.
class StructureMapTransform extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureMapTransform._({
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
  factory StructureMapTransform(
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
    return StructureMapTransform._(
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

  /// Create empty [StructureMapTransform] with element only
  factory StructureMapTransform.empty() =>
      StructureMapTransform._(validatedValue: '');

  /// Factory constructor to create [StructureMapTransform] from JSON.
  factory StructureMapTransform.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTransform cannot be constructed from JSON.',
      );
    }
    return StructureMapTransform._(
      validatedValue: value,
      element: element,
    );
  }

  /// create
  static final StructureMapTransform create = StructureMapTransform._(
    validatedValue: 'create',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'create'.toFhirString,
  );

  /// copy
  static final StructureMapTransform copy_ = StructureMapTransform._(
    validatedValue: 'copy',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'copy'.toFhirString,
  );

  /// truncate
  static final StructureMapTransform truncate = StructureMapTransform._(
    validatedValue: 'truncate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'truncate'.toFhirString,
  );

  /// escape
  static final StructureMapTransform escape = StructureMapTransform._(
    validatedValue: 'escape',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'escape'.toFhirString,
  );

  /// cast
  static final StructureMapTransform cast = StructureMapTransform._(
    validatedValue: 'cast',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cast'.toFhirString,
  );

  /// append
  static final StructureMapTransform append = StructureMapTransform._(
    validatedValue: 'append',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'append'.toFhirString,
  );

  /// translate
  static final StructureMapTransform translate = StructureMapTransform._(
    validatedValue: 'translate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'translate'.toFhirString,
  );

  /// reference
  static final StructureMapTransform reference = StructureMapTransform._(
    validatedValue: 'reference',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'reference'.toFhirString,
  );

  /// dateOp
  static final StructureMapTransform dateOp = StructureMapTransform._(
    validatedValue: 'dateOp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateOp'.toFhirString,
  );

  /// uuid
  static final StructureMapTransform uuid = StructureMapTransform._(
    validatedValue: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uuid'.toFhirString,
  );

  /// pointer
  static final StructureMapTransform pointer = StructureMapTransform._(
    validatedValue: 'pointer',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'pointer'.toFhirString,
  );

  /// evaluate
  static final StructureMapTransform evaluate = StructureMapTransform._(
    validatedValue: 'evaluate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'evaluate'.toFhirString,
  );

  /// cc
  static final StructureMapTransform cc = StructureMapTransform._(
    validatedValue: 'cc',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cc'.toFhirString,
  );

  /// c
  static final StructureMapTransform c = StructureMapTransform._(
    validatedValue: 'c',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'c'.toFhirString,
  );

  /// qty
  static final StructureMapTransform qty = StructureMapTransform._(
    validatedValue: 'qty',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'qty'.toFhirString,
  );

  /// id
  static final StructureMapTransform id_ = StructureMapTransform._(
    validatedValue: 'id',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'id'.toFhirString,
  );

  /// cp
  static final StructureMapTransform cp = StructureMapTransform._(
    validatedValue: 'cp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cp'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureMapTransform elementOnly =
      StructureMapTransform._(validatedValue: '');

  /// List of all enum-like values
  static final List<StructureMapTransform> values = [
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
  StructureMapTransform clone() => StructureMapTransform._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(validatedValue: value, element: newElement);
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
  StructureMapTransform copyWith({
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
    return StructureMapTransform._(
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
