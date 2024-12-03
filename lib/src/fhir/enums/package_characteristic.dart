// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A characteristic of a package.
class PackageCharacteristic extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PackageCharacteristic._(super.value, [super.element]);

  /// Factory constructor to create [PackageCharacteristic] from JSON.
  factory PackageCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackageCharacteristic.elementOnly.withElement(element);
    }
    return PackageCharacteristic._(value, element);
  }

  /// HospitalPack
  static final PackageCharacteristic HospitalPack = PackageCharacteristic._(
    'HospitalPack',
  );

  /// NursePrescribable
  static final PackageCharacteristic NursePrescribable =
      PackageCharacteristic._(
    'NursePrescribable',
  );

  /// CalendarPack
  static final PackageCharacteristic CalendarPack = PackageCharacteristic._(
    'CalendarPack',
  );

  /// For instances where an Element is present but not value

  static final PackageCharacteristic elementOnly = PackageCharacteristic._('');

  /// List of all enum-like values
  static final List<PackageCharacteristic> values = [
    HospitalPack,
    NursePrescribable,
    CalendarPack,
  ];

  /// Clones the current instance
  @override
  PackageCharacteristic clone() => PackageCharacteristic._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PackageCharacteristic setElement(
    String name,
    dynamic elementValue,
  ) {
    return PackageCharacteristic._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PackageCharacteristic withElement(Element? newElement) {
    return PackageCharacteristic._(value, newElement);
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
  PackageCharacteristic copyWith({
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
    return PackageCharacteristic._(
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
