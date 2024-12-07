// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Coverage Copayment Type codes.
class CoverageCopayTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CoverageCopayTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [CoverageCopayTypeCodes] from JSON.
  factory CoverageCopayTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageCopayTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CoverageCopayTypeCodes cannot be constructed from JSON.',
      );
    }
    return CoverageCopayTypeCodes._(value, element);
  }

  /// gpvisit
  static final CoverageCopayTypeCodes gpvisit = CoverageCopayTypeCodes._(
    'gpvisit',
  );

  /// spvisit
  static final CoverageCopayTypeCodes spvisit = CoverageCopayTypeCodes._(
    'spvisit',
  );

  /// emergency
  static final CoverageCopayTypeCodes emergency = CoverageCopayTypeCodes._(
    'emergency',
  );

  /// inpthosp
  static final CoverageCopayTypeCodes inpthosp = CoverageCopayTypeCodes._(
    'inpthosp',
  );

  /// televisit
  static final CoverageCopayTypeCodes televisit = CoverageCopayTypeCodes._(
    'televisit',
  );

  /// urgentcare
  static final CoverageCopayTypeCodes urgentcare = CoverageCopayTypeCodes._(
    'urgentcare',
  );

  /// copaypct
  static final CoverageCopayTypeCodes copaypct = CoverageCopayTypeCodes._(
    'copaypct',
  );

  /// copay
  static final CoverageCopayTypeCodes copay = CoverageCopayTypeCodes._(
    'copay',
  );

  /// deductible
  static final CoverageCopayTypeCodes deductible = CoverageCopayTypeCodes._(
    'deductible',
  );

  /// maxoutofpocket
  static final CoverageCopayTypeCodes maxoutofpocket = CoverageCopayTypeCodes._(
    'maxoutofpocket',
  );

  /// For instances where an Element is present but not value

  static final CoverageCopayTypeCodes elementOnly =
      CoverageCopayTypeCodes._('');

  /// List of all enum-like values
  static final List<CoverageCopayTypeCodes> values = [
    gpvisit,
    spvisit,
    emergency,
    inpthosp,
    televisit,
    urgentcare,
    copaypct,
    copay,
    deductible,
    maxoutofpocket,
  ];

  /// Clones the current instance
  @override
  CoverageCopayTypeCodes clone() => CoverageCopayTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CoverageCopayTypeCodes withElement(Element? newElement) {
    return CoverageCopayTypeCodes._(value, newElement);
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
  CoverageCopayTypeCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CoverageCopayTypeCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
