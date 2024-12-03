// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of medicinal product packs
class MedicinalProductPackageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicinalProductPackageType._(super.value, [super.element]);

  /// Factory constructor to create [MedicinalProductPackageType] from JSON.
  factory MedicinalProductPackageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductPackageType.elementOnly.withElement(element);
    }
    return MedicinalProductPackageType._(value, element);
  }

  /// value100000073490
  static final MedicinalProductPackageType value100000073490 =
      MedicinalProductPackageType._(
    '100000073490',
  );

  /// value100000073491
  static final MedicinalProductPackageType value100000073491 =
      MedicinalProductPackageType._(
    '100000073491',
  );

  /// value100000073492
  static final MedicinalProductPackageType value100000073492 =
      MedicinalProductPackageType._(
    '100000073492',
  );

  /// value100000073493
  static final MedicinalProductPackageType value100000073493 =
      MedicinalProductPackageType._(
    '100000073493',
  );

  /// value100000073494
  static final MedicinalProductPackageType value100000073494 =
      MedicinalProductPackageType._(
    '100000073494',
  );

  /// value100000073495
  static final MedicinalProductPackageType value100000073495 =
      MedicinalProductPackageType._(
    '100000073495',
  );

  /// value100000073496
  static final MedicinalProductPackageType value100000073496 =
      MedicinalProductPackageType._(
    '100000073496',
  );

  /// value100000073497
  static final MedicinalProductPackageType value100000073497 =
      MedicinalProductPackageType._(
    '100000073497',
  );

  /// value100000073498
  static final MedicinalProductPackageType value100000073498 =
      MedicinalProductPackageType._(
    '100000073498',
  );

  /// value100000073547
  static final MedicinalProductPackageType value100000073547 =
      MedicinalProductPackageType._(
    '100000073547',
  );

  /// value100000073563
  static final MedicinalProductPackageType value100000073563 =
      MedicinalProductPackageType._(
    '100000073563',
  );

  /// value100000143555
  static final MedicinalProductPackageType value100000143555 =
      MedicinalProductPackageType._(
    '100000143555',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductPackageType elementOnly =
      MedicinalProductPackageType._('');

  /// List of all enum-like values
  static final List<MedicinalProductPackageType> values = [
    value100000073490,
    value100000073491,
    value100000073492,
    value100000073493,
    value100000073494,
    value100000073495,
    value100000073496,
    value100000073497,
    value100000073498,
    value100000073547,
    value100000073563,
    value100000143555,
  ];

  /// Clones the current instance
  @override
  MedicinalProductPackageType clone() => MedicinalProductPackageType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicinalProductPackageType setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicinalProductPackageType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicinalProductPackageType withElement(Element? newElement) {
    return MedicinalProductPackageType._(value, newElement);
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
  MedicinalProductPackageType copyWith({
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
    return MedicinalProductPackageType._(
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
