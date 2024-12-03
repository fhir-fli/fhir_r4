// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A high level categorisation of a package.
class PackageType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PackageType._(super.value, [super.element]);

  /// Factory constructor to create [PackageType] from JSON.
  factory PackageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PackageType cannot be constructed from JSON.',
      );
    }
    return PackageType._(value, element);
  }

  /// MedicinalProductPack
  static final PackageType MedicinalProductPack = PackageType._(
    'MedicinalProductPack',
  );

  /// RawMaterialPackage
  static final PackageType RawMaterialPackage = PackageType._(
    'RawMaterialPackage',
  );

  /// Shipping_TransportContainer
  static final PackageType Shipping_TransportContainer = PackageType._(
    'Shipping-TransportContainer',
  );

  /// For instances where an Element is present but not value

  static final PackageType elementOnly = PackageType._('');

  /// List of all enum-like values
  static final List<PackageType> values = [
    MedicinalProductPack,
    RawMaterialPackage,
    Shipping_TransportContainer,
  ];

  /// Clones the current instance
  @override
  PackageType clone() => PackageType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PackageType setElement(
    String name,
    dynamic elementValue,
  ) {
    return PackageType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PackageType withElement(Element? newElement) {
    return PackageType._(value, newElement);
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
  PackageType copyWith({
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
    return PackageType._(
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
