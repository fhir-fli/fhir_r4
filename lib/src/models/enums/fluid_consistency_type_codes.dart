// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// FluidConsistencyType : Codes used to represent the consistency of fluids and liquids provided to the patient. This value set includes concepts from [SNOMED CT](http://snomed.info/sct)(US Extension) where concept is a 435681000124103 (Dietary liquid consistency diet (regime/therapy)). It is provided as a suggestive example.
class FluidConsistencyTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FluidConsistencyTypeCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FluidConsistencyTypeCodes] from JSON.
  factory FluidConsistencyTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FluidConsistencyTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FluidConsistencyTypeCodes cannot be constructed from JSON.',
      );
    }
    return FluidConsistencyTypeCodes._(value, element: element);
  }

  /// value439031000124108
  static final FluidConsistencyTypeCodes value439031000124108 =
      FluidConsistencyTypeCodes._(
    '439031000124108',
  );

  /// value439021000124105
  static final FluidConsistencyTypeCodes value439021000124105 =
      FluidConsistencyTypeCodes._(
    '439021000124105',
  );

  /// value439041000124103
  static final FluidConsistencyTypeCodes value439041000124103 =
      FluidConsistencyTypeCodes._(
    '439041000124103',
  );

  /// value439081000124109
  static final FluidConsistencyTypeCodes value439081000124109 =
      FluidConsistencyTypeCodes._(
    '439081000124109',
  );

  /// For instances where an Element is present but not value

  static final FluidConsistencyTypeCodes elementOnly =
      FluidConsistencyTypeCodes._('');

  /// List of all enum-like values
  static final List<FluidConsistencyTypeCodes> values = [
    value439031000124108,
    value439021000124105,
    value439041000124103,
    value439081000124109,
  ];

  /// Clones the current instance
  @override
  FluidConsistencyTypeCodes clone() => FluidConsistencyTypeCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FluidConsistencyTypeCodes withElement(Element? newElement) {
    return FluidConsistencyTypeCodes._(value, element: newElement);
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
  FluidConsistencyTypeCodes copyWith({
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
    return FluidConsistencyTypeCodes._(
      newValue ?? value,
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
