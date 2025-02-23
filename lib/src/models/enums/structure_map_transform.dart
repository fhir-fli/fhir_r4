// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// How data is copied/created.
class StructureMapTransform extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  StructureMapTransform._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [StructureMapTransform] with element only
  factory StructureMapTransform.empty() => StructureMapTransform._('');

  /// Factory constructor to create [StructureMapTransform] from JSON.
  factory StructureMapTransform.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// create
  static final StructureMapTransform create = StructureMapTransform._(
    'create',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'create'.toFhirString,
  );

  /// copy
  static final StructureMapTransform copy_ = StructureMapTransform._(
    'copy',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'copy'.toFhirString,
  );

  /// truncate
  static final StructureMapTransform truncate = StructureMapTransform._(
    'truncate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'truncate'.toFhirString,
  );

  /// escape
  static final StructureMapTransform escape = StructureMapTransform._(
    'escape',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'escape'.toFhirString,
  );

  /// cast
  static final StructureMapTransform cast = StructureMapTransform._(
    'cast',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cast'.toFhirString,
  );

  /// append
  static final StructureMapTransform append = StructureMapTransform._(
    'append',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'append'.toFhirString,
  );

  /// translate
  static final StructureMapTransform translate = StructureMapTransform._(
    'translate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'translate'.toFhirString,
  );

  /// reference
  static final StructureMapTransform reference = StructureMapTransform._(
    'reference',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'reference'.toFhirString,
  );

  /// dateOp
  static final StructureMapTransform dateOp = StructureMapTransform._(
    'dateOp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dateOp'.toFhirString,
  );

  /// uuid
  static final StructureMapTransform uuid = StructureMapTransform._(
    'uuid',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'uuid'.toFhirString,
  );

  /// pointer
  static final StructureMapTransform pointer = StructureMapTransform._(
    'pointer',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'pointer'.toFhirString,
  );

  /// evaluate
  static final StructureMapTransform evaluate = StructureMapTransform._(
    'evaluate',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'evaluate'.toFhirString,
  );

  /// cc
  static final StructureMapTransform cc = StructureMapTransform._(
    'cc',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cc'.toFhirString,
  );

  /// c
  static final StructureMapTransform c = StructureMapTransform._(
    'c',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'c'.toFhirString,
  );

  /// qty
  static final StructureMapTransform qty = StructureMapTransform._(
    'qty',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'qty'.toFhirString,
  );

  /// id
  static final StructureMapTransform id_ = StructureMapTransform._(
    'id',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'id'.toFhirString,
  );

  /// cp
  static final StructureMapTransform cp = StructureMapTransform._(
    'cp',
    system: 'http://hl7.org/fhir/ValueSet/map-transform'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'cp'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final StructureMapTransform elementOnly = StructureMapTransform._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(
      value,
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
      newValue ?? value,
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
