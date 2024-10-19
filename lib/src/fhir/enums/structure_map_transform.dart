// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How data is copied/created.
@Entity()
class StructureMapTransform extends FhirCode {
  /// Factory constructor to create [StructureMapTransform] from JSON.
  factory StructureMapTransform.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly(element);
    }
    if (values.contains(value)) {
      return StructureMapTransform._(value, element);
    }
    throw ArgumentError(
      'StructureMapTransform.fromJson: JSON value is not a valid value',
    );
  }

  /// create
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.create([this.element])
      : dbValue = 'create',
        super('create', element);

  /// copy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.copy([this.element])
      : dbValue = 'copy',
        super('copy', element);

  /// truncate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.truncate([this.element])
      : dbValue = 'truncate',
        super('truncate', element);

  /// escape
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.escape([this.element])
      : dbValue = 'escape',
        super('escape', element);

  /// cast
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.cast([this.element])
      : dbValue = 'cast',
        super('cast', element);

  /// append
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.append([this.element])
      : dbValue = 'append',
        super('append', element);

  /// translate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.translate([this.element])
      : dbValue = 'translate',
        super('translate', element);

  /// reference
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.reference([this.element])
      : dbValue = 'reference',
        super('reference', element);

  /// dateOp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.dateOp([this.element])
      : dbValue = 'dateOp',
        super('dateOp', element);

  /// uuid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.uuid([this.element])
      : dbValue = 'uuid',
        super('uuid', element);

  /// pointer
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.pointer([this.element])
      : dbValue = 'pointer',
        super('pointer', element);

  /// evaluate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.evaluate([this.element])
      : dbValue = 'evaluate',
        super('evaluate', element);

  /// cc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.cc([this.element])
      : dbValue = 'cc',
        super('cc', element);

  /// c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.c([this.element])
      : dbValue = 'c',
        super('c', element);

  /// qty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.qty([this.element])
      : dbValue = 'qty',
        super('qty', element);

  /// id
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.id([this.element])
      : dbValue = 'id',
        super('id', element);

  /// cp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StructureMapTransform.cp([this.element])
      : dbValue = 'cp',
        super('cp', element);

  /// For instances where an Element is present but not value

  StructureMapTransform.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StructureMapTransform._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'create',
    'copy',
    'truncate',
    'escape',
    'cast',
    'append',
    'translate',
    'reference',
    'dateOp',
    'uuid',
    'pointer',
    'evaluate',
    'cc',
    'c',
    'qty',
    'id',
    'cp',
  ];

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StructureMapTransform.$value';
}
