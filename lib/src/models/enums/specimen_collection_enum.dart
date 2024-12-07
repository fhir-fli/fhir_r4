// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Actions that can be taken for the collection of specimen from a subject.
class SpecimenCollectionEnum extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SpecimenCollectionEnum._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [SpecimenCollectionEnum] from JSON.
  factory SpecimenCollectionEnum.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenCollectionEnum.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenCollectionEnum cannot be constructed from JSON.',
      );
    }
    return SpecimenCollectionEnum._(value: value, element: element);
  }

  /// value129316008
  static final SpecimenCollectionEnum value129316008 = SpecimenCollectionEnum._(
    value: '129316008',
  );

  /// value129314006
  static final SpecimenCollectionEnum value129314006 = SpecimenCollectionEnum._(
    value: '129314006',
  );

  /// value129300006
  static final SpecimenCollectionEnum value129300006 = SpecimenCollectionEnum._(
    value: '129300006',
  );

  /// value129304002
  static final SpecimenCollectionEnum value129304002 = SpecimenCollectionEnum._(
    value: '129304002',
  );

  /// value129323009
  static final SpecimenCollectionEnum value129323009 = SpecimenCollectionEnum._(
    value: '129323009',
  );

  /// value73416001
  static final SpecimenCollectionEnum value73416001 = SpecimenCollectionEnum._(
    value: '73416001',
  );

  /// value225113003
  static final SpecimenCollectionEnum value225113003 = SpecimenCollectionEnum._(
    value: '225113003',
  );

  /// value70777001
  static final SpecimenCollectionEnum value70777001 = SpecimenCollectionEnum._(
    value: '70777001',
  );

  /// value386089008
  static final SpecimenCollectionEnum value386089008 = SpecimenCollectionEnum._(
    value: '386089008',
  );

  /// value278450005
  static final SpecimenCollectionEnum value278450005 = SpecimenCollectionEnum._(
    value: '278450005',
  );

  /// For instances where an Element is present but not value

  static final SpecimenCollectionEnum elementOnly =
      SpecimenCollectionEnum._(value: '');

  /// List of all enum-like values
  static final List<SpecimenCollectionEnum> values = [
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
  SpecimenCollectionEnum clone() => SpecimenCollectionEnum._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SpecimenCollectionEnum withElement(Element? newElement) {
    return SpecimenCollectionEnum._(value: value, element: newElement);
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
  SpecimenCollectionEnum copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SpecimenCollectionEnum._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
