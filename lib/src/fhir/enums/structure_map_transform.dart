// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How data is copied/created.
class StructureMapTransform {
  // Private constructor for internal use (like enum)
  StructureMapTransform._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapTransform values
  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform create = StructureMapTransform._(
    'create',
  );

  /// copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform copy = StructureMapTransform._(
    'copy',
  );

  /// truncate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform truncate = StructureMapTransform._(
    'truncate',
  );

  /// escape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform escape = StructureMapTransform._(
    'escape',
  );

  /// cast
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cast = StructureMapTransform._(
    'cast',
  );

  /// append
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform append = StructureMapTransform._(
    'append',
  );

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform translate = StructureMapTransform._(
    'translate',
  );

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform reference = StructureMapTransform._(
    'reference',
  );

  /// dateOp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform dateOp = StructureMapTransform._(
    'dateOp',
  );

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform uuid = StructureMapTransform._(
    'uuid',
  );

  /// pointer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform pointer = StructureMapTransform._(
    'pointer',
  );

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform evaluate = StructureMapTransform._(
    'evaluate',
  );

  /// cc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cc = StructureMapTransform._(
    'cc',
  );

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform c = StructureMapTransform._(
    'c',
  );

  /// qty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform qty = StructureMapTransform._(
    'qty',
  );

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform id = StructureMapTransform._(
    'id',
  );

  /// cp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cp = StructureMapTransform._(
    'cp',
  );

  /// For instances where an Element is present but not value

  static final StructureMapTransform elementOnly = StructureMapTransform._('');

  /// List of all enum-like values
  static final List<StructureMapTransform> values = [
    create,
    copy,
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
    id,
    cp,
  ];

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [StructureMapTransform] from JSON.
  static StructureMapTransform fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly.withElement(element);
    }
    return StructureMapTransform.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
