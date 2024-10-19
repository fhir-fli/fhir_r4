// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A material used in the construction of packages and their components.
@Entity()
class PackageMaterial extends FhirCode {
  /// Factory constructor to create [PackageMaterial] from JSON.
  factory PackageMaterial.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageMaterial.elementOnly(element);
    }
    if (values.contains(value)) {
      return PackageMaterial._(value, element);
    }
    throw ArgumentError(
      'PackageMaterial.fromJson: JSON value is not a valid value',
    );
  }

  /// value200000003200
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003200([this.element])
      : dbValue = '200000003200',
        super('200000003200', element);

  /// value200000003201
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003201([this.element])
      : dbValue = '200000003201',
        super('200000003201', element);

  /// value200000003202
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003202([this.element])
      : dbValue = '200000003202',
        super('200000003202', element);

  /// value200000003203
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003203([this.element])
      : dbValue = '200000003203',
        super('200000003203', element);

  /// value200000003204
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003204([this.element])
      : dbValue = '200000003204',
        super('200000003204', element);

  /// value200000003205
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003205([this.element])
      : dbValue = '200000003205',
        super('200000003205', element);

  /// value200000003206
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003206([this.element])
      : dbValue = '200000003206',
        super('200000003206', element);

  /// value200000003207
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003207([this.element])
      : dbValue = '200000003207',
        super('200000003207', element);

  /// value200000003208
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003208([this.element])
      : dbValue = '200000003208',
        super('200000003208', element);

  /// value200000003209
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003209([this.element])
      : dbValue = '200000003209',
        super('200000003209', element);

  /// value200000003210
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003210([this.element])
      : dbValue = '200000003210',
        super('200000003210', element);

  /// value200000003211
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003211([this.element])
      : dbValue = '200000003211',
        super('200000003211', element);

  /// value200000003212
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003212([this.element])
      : dbValue = '200000003212',
        super('200000003212', element);

  /// value200000003213
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003213([this.element])
      : dbValue = '200000003213',
        super('200000003213', element);

  /// value200000003214
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003214([this.element])
      : dbValue = '200000003214',
        super('200000003214', element);

  /// value200000003215
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003215([this.element])
      : dbValue = '200000003215',
        super('200000003215', element);

  /// value200000003216
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003216([this.element])
      : dbValue = '200000003216',
        super('200000003216', element);

  /// value200000003217
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003217([this.element])
      : dbValue = '200000003217',
        super('200000003217', element);

  /// value200000003218
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003218([this.element])
      : dbValue = '200000003218',
        super('200000003218', element);

  /// value200000003219
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003219([this.element])
      : dbValue = '200000003219',
        super('200000003219', element);

  /// value200000003220
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003220([this.element])
      : dbValue = '200000003220',
        super('200000003220', element);

  /// value200000003221
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003221([this.element])
      : dbValue = '200000003221',
        super('200000003221', element);

  /// value200000003222
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003222([this.element])
      : dbValue = '200000003222',
        super('200000003222', element);

  /// value200000003223
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003223([this.element])
      : dbValue = '200000003223',
        super('200000003223', element);

  /// value200000003224
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003224([this.element])
      : dbValue = '200000003224',
        super('200000003224', element);

  /// value200000003225
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003225([this.element])
      : dbValue = '200000003225',
        super('200000003225', element);

  /// value200000003226
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003226([this.element])
      : dbValue = '200000003226',
        super('200000003226', element);

  /// value200000003227
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003227([this.element])
      : dbValue = '200000003227',
        super('200000003227', element);

  /// value200000003228
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003228([this.element])
      : dbValue = '200000003228',
        super('200000003228', element);

  /// value200000003229
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003229([this.element])
      : dbValue = '200000003229',
        super('200000003229', element);

  /// value200000003529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000003529([this.element])
      : dbValue = '200000003529',
        super('200000003529', element);

  /// value200000012514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012514([this.element])
      : dbValue = '200000012514',
        super('200000012514', element);

  /// value200000012515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012515([this.element])
      : dbValue = '200000012515',
        super('200000012515', element);

  /// value200000012521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012521([this.element])
      : dbValue = '200000012521',
        super('200000012521', element);

  /// value200000012522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012522([this.element])
      : dbValue = '200000012522',
        super('200000012522', element);

  /// value200000012523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012523([this.element])
      : dbValue = '200000012523',
        super('200000012523', element);

  /// value200000012524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012524([this.element])
      : dbValue = '200000012524',
        super('200000012524', element);

  /// value200000012538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000012538([this.element])
      : dbValue = '200000012538',
        super('200000012538', element);

  /// value200000015521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000015521([this.element])
      : dbValue = '200000015521',
        super('200000015521', element);

  /// value200000023330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000023330([this.element])
      : dbValue = '200000023330',
        super('200000023330', element);

  /// value200000023332
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000023332([this.element])
      : dbValue = '200000023332',
        super('200000023332', element);

  /// value200000025255
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000025255([this.element])
      : dbValue = '200000025255',
        super('200000025255', element);

  /// value200000025257
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackageMaterial.value200000025257([this.element])
      : dbValue = '200000025257',
        super('200000025257', element);

  /// For instances where an Element is present but not value

  PackageMaterial.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PackageMaterial._(super.input, [super.element])
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
    '200000003200',
    '200000003201',
    '200000003202',
    '200000003203',
    '200000003204',
    '200000003205',
    '200000003206',
    '200000003207',
    '200000003208',
    '200000003209',
    '200000003210',
    '200000003211',
    '200000003212',
    '200000003213',
    '200000003214',
    '200000003215',
    '200000003216',
    '200000003217',
    '200000003218',
    '200000003219',
    '200000003220',
    '200000003221',
    '200000003222',
    '200000003223',
    '200000003224',
    '200000003225',
    '200000003226',
    '200000003227',
    '200000003228',
    '200000003229',
    '200000003529',
    '200000012514',
    '200000012515',
    '200000012521',
    '200000012522',
    '200000012523',
    '200000012524',
    '200000012538',
    '200000015521',
    '200000023330',
    '200000023332',
    '200000025255',
    '200000025257',
  ];

  /// Returns the enum value with an element attached
  PackageMaterial withElement(Element? newElement) {
    return PackageMaterial._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackageMaterial.$value';
}
