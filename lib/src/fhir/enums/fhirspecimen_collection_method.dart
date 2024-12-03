// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the method by which a specimen was collected.
class FHIRSpecimenCollectionMethod extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRSpecimenCollectionMethod._(super.value, [super.element]);

  /// Factory constructor to create [FHIRSpecimenCollectionMethod] from JSON.
  factory FHIRSpecimenCollectionMethod.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSpecimenCollectionMethod.elementOnly.withElement(element);
    }
    return FHIRSpecimenCollectionMethod._(value, element);
  }

  /// value129316008
  static final FHIRSpecimenCollectionMethod value129316008 =
      FHIRSpecimenCollectionMethod._(
    '129316008',
  );

  /// value129314006
  static final FHIRSpecimenCollectionMethod value129314006 =
      FHIRSpecimenCollectionMethod._(
    '129314006',
  );

  /// value129300006
  static final FHIRSpecimenCollectionMethod value129300006 =
      FHIRSpecimenCollectionMethod._(
    '129300006',
  );

  /// value129304002
  static final FHIRSpecimenCollectionMethod value129304002 =
      FHIRSpecimenCollectionMethod._(
    '129304002',
  );

  /// value129323009
  static final FHIRSpecimenCollectionMethod value129323009 =
      FHIRSpecimenCollectionMethod._(
    '129323009',
  );

  /// value73416001
  static final FHIRSpecimenCollectionMethod value73416001 =
      FHIRSpecimenCollectionMethod._(
    '73416001',
  );

  /// value225113003
  static final FHIRSpecimenCollectionMethod value225113003 =
      FHIRSpecimenCollectionMethod._(
    '225113003',
  );

  /// value70777001
  static final FHIRSpecimenCollectionMethod value70777001 =
      FHIRSpecimenCollectionMethod._(
    '70777001',
  );

  /// value386089008
  static final FHIRSpecimenCollectionMethod value386089008 =
      FHIRSpecimenCollectionMethod._(
    '386089008',
  );

  /// value278450005
  static final FHIRSpecimenCollectionMethod value278450005 =
      FHIRSpecimenCollectionMethod._(
    '278450005',
  );

  /// For instances where an Element is present but not value

  static final FHIRSpecimenCollectionMethod elementOnly =
      FHIRSpecimenCollectionMethod._('');

  /// List of all enum-like values
  static final List<FHIRSpecimenCollectionMethod> values = [
    value129316008,
    value129314006,
    value129300006,
    value129304002,
    value129323009,
    value73416001,
    value225113003,
    value70777001,
    value386089008,
    value278450005,
  ];

  /// Clones the current instance
  @override
  FHIRSpecimenCollectionMethod clone() => FHIRSpecimenCollectionMethod._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FHIRSpecimenCollectionMethod setElement(
    String name,
    dynamic elementValue,
  ) {
    return FHIRSpecimenCollectionMethod._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FHIRSpecimenCollectionMethod withElement(Element? newElement) {
    return FHIRSpecimenCollectionMethod._(value, newElement);
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
  FHIRSpecimenCollectionMethod copyWith({
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
    return FHIRSpecimenCollectionMethod._(
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
