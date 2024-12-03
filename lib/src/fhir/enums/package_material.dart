// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A material used in the construction of packages and their components.
class PackageMaterial extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PackageMaterial._(super.value, [super.element]);

  /// Factory constructor to create [PackageMaterial] from JSON.
  factory PackageMaterial.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageMaterial.elementOnly.withElement(element);
    }
    return PackageMaterial._(value, element);
  }

  /// value200000003200
  static final PackageMaterial value200000003200 = PackageMaterial._(
    '200000003200',
  );

  /// value200000003201
  static final PackageMaterial value200000003201 = PackageMaterial._(
    '200000003201',
  );

  /// value200000003202
  static final PackageMaterial value200000003202 = PackageMaterial._(
    '200000003202',
  );

  /// value200000003203
  static final PackageMaterial value200000003203 = PackageMaterial._(
    '200000003203',
  );

  /// value200000003204
  static final PackageMaterial value200000003204 = PackageMaterial._(
    '200000003204',
  );

  /// value200000003205
  static final PackageMaterial value200000003205 = PackageMaterial._(
    '200000003205',
  );

  /// value200000003206
  static final PackageMaterial value200000003206 = PackageMaterial._(
    '200000003206',
  );

  /// value200000003207
  static final PackageMaterial value200000003207 = PackageMaterial._(
    '200000003207',
  );

  /// value200000003208
  static final PackageMaterial value200000003208 = PackageMaterial._(
    '200000003208',
  );

  /// value200000003209
  static final PackageMaterial value200000003209 = PackageMaterial._(
    '200000003209',
  );

  /// value200000003210
  static final PackageMaterial value200000003210 = PackageMaterial._(
    '200000003210',
  );

  /// value200000003211
  static final PackageMaterial value200000003211 = PackageMaterial._(
    '200000003211',
  );

  /// value200000003212
  static final PackageMaterial value200000003212 = PackageMaterial._(
    '200000003212',
  );

  /// value200000003213
  static final PackageMaterial value200000003213 = PackageMaterial._(
    '200000003213',
  );

  /// value200000003214
  static final PackageMaterial value200000003214 = PackageMaterial._(
    '200000003214',
  );

  /// value200000003215
  static final PackageMaterial value200000003215 = PackageMaterial._(
    '200000003215',
  );

  /// value200000003216
  static final PackageMaterial value200000003216 = PackageMaterial._(
    '200000003216',
  );

  /// value200000003217
  static final PackageMaterial value200000003217 = PackageMaterial._(
    '200000003217',
  );

  /// value200000003218
  static final PackageMaterial value200000003218 = PackageMaterial._(
    '200000003218',
  );

  /// value200000003219
  static final PackageMaterial value200000003219 = PackageMaterial._(
    '200000003219',
  );

  /// value200000003220
  static final PackageMaterial value200000003220 = PackageMaterial._(
    '200000003220',
  );

  /// value200000003221
  static final PackageMaterial value200000003221 = PackageMaterial._(
    '200000003221',
  );

  /// value200000003222
  static final PackageMaterial value200000003222 = PackageMaterial._(
    '200000003222',
  );

  /// value200000003223
  static final PackageMaterial value200000003223 = PackageMaterial._(
    '200000003223',
  );

  /// value200000003224
  static final PackageMaterial value200000003224 = PackageMaterial._(
    '200000003224',
  );

  /// value200000003225
  static final PackageMaterial value200000003225 = PackageMaterial._(
    '200000003225',
  );

  /// value200000003226
  static final PackageMaterial value200000003226 = PackageMaterial._(
    '200000003226',
  );

  /// value200000003227
  static final PackageMaterial value200000003227 = PackageMaterial._(
    '200000003227',
  );

  /// value200000003228
  static final PackageMaterial value200000003228 = PackageMaterial._(
    '200000003228',
  );

  /// value200000003229
  static final PackageMaterial value200000003229 = PackageMaterial._(
    '200000003229',
  );

  /// value200000003529
  static final PackageMaterial value200000003529 = PackageMaterial._(
    '200000003529',
  );

  /// value200000012514
  static final PackageMaterial value200000012514 = PackageMaterial._(
    '200000012514',
  );

  /// value200000012515
  static final PackageMaterial value200000012515 = PackageMaterial._(
    '200000012515',
  );

  /// value200000012521
  static final PackageMaterial value200000012521 = PackageMaterial._(
    '200000012521',
  );

  /// value200000012522
  static final PackageMaterial value200000012522 = PackageMaterial._(
    '200000012522',
  );

  /// value200000012523
  static final PackageMaterial value200000012523 = PackageMaterial._(
    '200000012523',
  );

  /// value200000012524
  static final PackageMaterial value200000012524 = PackageMaterial._(
    '200000012524',
  );

  /// value200000012538
  static final PackageMaterial value200000012538 = PackageMaterial._(
    '200000012538',
  );

  /// value200000015521
  static final PackageMaterial value200000015521 = PackageMaterial._(
    '200000015521',
  );

  /// value200000023330
  static final PackageMaterial value200000023330 = PackageMaterial._(
    '200000023330',
  );

  /// value200000023332
  static final PackageMaterial value200000023332 = PackageMaterial._(
    '200000023332',
  );

  /// value200000025255
  static final PackageMaterial value200000025255 = PackageMaterial._(
    '200000025255',
  );

  /// value200000025257
  static final PackageMaterial value200000025257 = PackageMaterial._(
    '200000025257',
  );

  /// For instances where an Element is present but not value

  static final PackageMaterial elementOnly = PackageMaterial._('');

  /// List of all enum-like values
  static final List<PackageMaterial> values = [
    value200000003200,
    value200000003201,
    value200000003202,
    value200000003203,
    value200000003204,
    value200000003205,
    value200000003206,
    value200000003207,
    value200000003208,
    value200000003209,
    value200000003210,
    value200000003211,
    value200000003212,
    value200000003213,
    value200000003214,
    value200000003215,
    value200000003216,
    value200000003217,
    value200000003218,
    value200000003219,
    value200000003220,
    value200000003221,
    value200000003222,
    value200000003223,
    value200000003224,
    value200000003225,
    value200000003226,
    value200000003227,
    value200000003228,
    value200000003229,
    value200000003529,
    value200000012514,
    value200000012515,
    value200000012521,
    value200000012522,
    value200000012523,
    value200000012524,
    value200000012538,
    value200000015521,
    value200000023330,
    value200000023332,
    value200000025255,
    value200000025257,
  ];

  /// Clones the current instance
  @override
  PackageMaterial clone() => PackageMaterial._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PackageMaterial setElement(
    String name,
    dynamic elementValue,
  ) {
    return PackageMaterial._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PackageMaterial withElement(Element? newElement) {
    return PackageMaterial._(value, newElement);
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
  PackageMaterial copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PackageMaterial._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
