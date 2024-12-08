// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// All published FHIR Versions.
class FHIRVersion extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRVersion._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [FHIRVersion] from JSON.
  factory FHIRVersion.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRVersion cannot be constructed from JSON.',
      );
    }
    return FHIRVersion._(value, element: element);
  }

  /// value0_01
  static final FHIRVersion value0_01 = FHIRVersion._(
    '0.01',
  );

  /// value0_05
  static final FHIRVersion value0_05 = FHIRVersion._(
    '0.05',
  );

  /// value0_06
  static final FHIRVersion value0_06 = FHIRVersion._(
    '0.06',
  );

  /// value0_11
  static final FHIRVersion value0_11 = FHIRVersion._(
    '0.11',
  );

  /// value0_0_80
  static final FHIRVersion value0_0_80 = FHIRVersion._(
    '0.0.80',
  );

  /// value0_0_81
  static final FHIRVersion value0_0_81 = FHIRVersion._(
    '0.0.81',
  );

  /// value0_0_82
  static final FHIRVersion value0_0_82 = FHIRVersion._(
    '0.0.82',
  );

  /// value0_4_0
  static final FHIRVersion value0_4_0 = FHIRVersion._(
    '0.4.0',
  );

  /// value0_5_0
  static final FHIRVersion value0_5_0 = FHIRVersion._(
    '0.5.0',
  );

  /// value1_0_0
  static final FHIRVersion value1_0_0 = FHIRVersion._(
    '1.0.0',
  );

  /// value1_0_1
  static final FHIRVersion value1_0_1 = FHIRVersion._(
    '1.0.1',
  );

  /// value1_0_2
  static final FHIRVersion value1_0_2 = FHIRVersion._(
    '1.0.2',
  );

  /// value1_1_0
  static final FHIRVersion value1_1_0 = FHIRVersion._(
    '1.1.0',
  );

  /// value1_4_0
  static final FHIRVersion value1_4_0 = FHIRVersion._(
    '1.4.0',
  );

  /// value1_6_0
  static final FHIRVersion value1_6_0 = FHIRVersion._(
    '1.6.0',
  );

  /// value1_8_0
  static final FHIRVersion value1_8_0 = FHIRVersion._(
    '1.8.0',
  );

  /// value3_0_0
  static final FHIRVersion value3_0_0 = FHIRVersion._(
    '3.0.0',
  );

  /// value3_0_1
  static final FHIRVersion value3_0_1 = FHIRVersion._(
    '3.0.1',
  );

  /// value3_0_2
  static final FHIRVersion value3_0_2 = FHIRVersion._(
    '3.0.2',
  );

  /// value3_3_0
  static final FHIRVersion value3_3_0 = FHIRVersion._(
    '3.3.0',
  );

  /// value3_5_0
  static final FHIRVersion value3_5_0 = FHIRVersion._(
    '3.5.0',
  );

  /// value4_0_0
  static final FHIRVersion value4_0_0 = FHIRVersion._(
    '4.0.0',
  );

  /// value4_0_1
  static final FHIRVersion value4_0_1 = FHIRVersion._(
    '4.0.1',
  );

  /// value4_1_0
  static final FHIRVersion value4_1_0 = FHIRVersion._(
    '4.1.0',
  );

  /// value4_3_0_cibuild
  static final FHIRVersion value4_3_0_cibuild = FHIRVersion._(
    '4.3.0-cibuild',
  );

  /// value4_3_0_snapshot1
  static final FHIRVersion value4_3_0_snapshot1 = FHIRVersion._(
    '4.3.0-snapshot1',
  );

  /// value4_3_0
  static final FHIRVersion value4_3_0 = FHIRVersion._(
    '4.3.0',
  );

  /// For instances where an Element is present but not value

  static final FHIRVersion elementOnly = FHIRVersion._('');

  /// List of all enum-like values
  static final List<FHIRVersion> values = [
    value0_01,
    value0_05,
    value0_06,
    value0_11,
    value0_0_80,
    value0_0_81,
    value0_0_82,
    value0_4_0,
    value0_5_0,
    value1_0_0,
    value1_0_1,
    value1_0_2,
    value1_1_0,
    value1_4_0,
    value1_6_0,
    value1_8_0,
    value3_0_0,
    value3_0_1,
    value3_0_2,
    value3_3_0,
    value3_5_0,
    value4_0_0,
    value4_0_1,
    value4_1_0,
    value4_3_0_cibuild,
    value4_3_0_snapshot1,
    value4_3_0,
  ];

  /// Clones the current instance
  @override
  FHIRVersion clone() => FHIRVersion._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion._(value, element: newElement);
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
  FHIRVersion copyWith({
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
    return FHIRVersion._(
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
