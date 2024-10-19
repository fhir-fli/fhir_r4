// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How data is copied/created.
@collection
class StructureMapTransform {
  /// Constructor for internal use (like enum)
  StructureMapTransform({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapTransform values
  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform create = StructureMapTransform(
    fhirCode: 'create',
  );

  /// copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform copy = StructureMapTransform(
    fhirCode: 'copy',
  );

  /// truncate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform truncate = StructureMapTransform(
    fhirCode: 'truncate',
  );

  /// escape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform escape = StructureMapTransform(
    fhirCode: 'escape',
  );

  /// cast
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cast = StructureMapTransform(
    fhirCode: 'cast',
  );

  /// append
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform append = StructureMapTransform(
    fhirCode: 'append',
  );

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform translate = StructureMapTransform(
    fhirCode: 'translate',
  );

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform reference = StructureMapTransform(
    fhirCode: 'reference',
  );

  /// dateOp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform dateOp = StructureMapTransform(
    fhirCode: 'dateOp',
  );

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform uuid = StructureMapTransform(
    fhirCode: 'uuid',
  );

  /// pointer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform pointer = StructureMapTransform(
    fhirCode: 'pointer',
  );

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform evaluate = StructureMapTransform(
    fhirCode: 'evaluate',
  );

  /// cc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cc = StructureMapTransform(
    fhirCode: 'cc',
  );

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform c = StructureMapTransform(
    fhirCode: 'c',
  );

  /// qty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform qty = StructureMapTransform(
    fhirCode: 'qty',
  );

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform id = StructureMapTransform(
    fhirCode: 'id',
  );

  /// cp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final StructureMapTransform cp = StructureMapTransform(
    fhirCode: 'cp',
  );

  /// For instances where an Element is present but not value

  static final StructureMapTransform elementOnly = StructureMapTransform();

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
    return StructureMapTransform(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapTransform.$fhirCode';
}
