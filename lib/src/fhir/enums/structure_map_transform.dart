// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How data is copied/created.
class StructureMapTransform {
  // Private constructor for internal use (like enum)
  StructureMapTransform._(this.fhirCode, {this.element});

  /// Factory constructor to create [StructureMapTransform] from JSON.
  factory StructureMapTransform.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly.withElement(element);
    }
    return StructureMapTransform._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// StructureMapTransform values
  /// create
  static final StructureMapTransform create = StructureMapTransform._(
    'create',
  );

  /// copy
  static final StructureMapTransform copy = StructureMapTransform._(
    'copy',
  );

  /// truncate
  static final StructureMapTransform truncate = StructureMapTransform._(
    'truncate',
  );

  /// escape
  static final StructureMapTransform escape = StructureMapTransform._(
    'escape',
  );

  /// cast
  static final StructureMapTransform cast = StructureMapTransform._(
    'cast',
  );

  /// append
  static final StructureMapTransform append = StructureMapTransform._(
    'append',
  );

  /// translate
  static final StructureMapTransform translate = StructureMapTransform._(
    'translate',
  );

  /// reference
  static final StructureMapTransform reference = StructureMapTransform._(
    'reference',
  );

  /// dateOp
  static final StructureMapTransform dateOp = StructureMapTransform._(
    'dateOp',
  );

  /// uuid
  static final StructureMapTransform uuid = StructureMapTransform._(
    'uuid',
  );

  /// pointer
  static final StructureMapTransform pointer = StructureMapTransform._(
    'pointer',
  );

  /// evaluate
  static final StructureMapTransform evaluate = StructureMapTransform._(
    'evaluate',
  );

  /// cc
  static final StructureMapTransform cc = StructureMapTransform._(
    'cc',
  );

  /// c
  static final StructureMapTransform c = StructureMapTransform._(
    'c',
  );

  /// qty
  static final StructureMapTransform qty = StructureMapTransform._(
    'qty',
  );

  /// id
  static final StructureMapTransform id = StructureMapTransform._(
    'id',
  );

  /// cp
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

  /// String representation
  @override
  String toString() => fhirCode;
}
