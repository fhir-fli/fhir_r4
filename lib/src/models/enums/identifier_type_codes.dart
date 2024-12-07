// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.
class IdentifierTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  IdentifierTypeCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [IdentifierTypeCodes] from JSON.
  factory IdentifierTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierTypeCodes cannot be constructed from JSON.',
      );
    }
    return IdentifierTypeCodes._(value: value, element: element);
  }

  /// DL
  static final IdentifierTypeCodes DL = IdentifierTypeCodes._(
    value: 'DL',
  );

  /// PPN
  static final IdentifierTypeCodes PPN = IdentifierTypeCodes._(
    value: 'PPN',
  );

  /// BRN
  static final IdentifierTypeCodes BRN = IdentifierTypeCodes._(
    value: 'BRN',
  );

  /// MR
  static final IdentifierTypeCodes MR = IdentifierTypeCodes._(
    value: 'MR',
  );

  /// MCN
  static final IdentifierTypeCodes MCN = IdentifierTypeCodes._(
    value: 'MCN',
  );

  /// EN
  static final IdentifierTypeCodes EN = IdentifierTypeCodes._(
    value: 'EN',
  );

  /// TAX
  static final IdentifierTypeCodes TAX = IdentifierTypeCodes._(
    value: 'TAX',
  );

  /// NIIP
  static final IdentifierTypeCodes NIIP = IdentifierTypeCodes._(
    value: 'NIIP',
  );

  /// PRN
  static final IdentifierTypeCodes PRN = IdentifierTypeCodes._(
    value: 'PRN',
  );

  /// MD
  static final IdentifierTypeCodes MD = IdentifierTypeCodes._(
    value: 'MD',
  );

  /// DR
  static final IdentifierTypeCodes DR = IdentifierTypeCodes._(
    value: 'DR',
  );

  /// ACSN
  static final IdentifierTypeCodes ACSN = IdentifierTypeCodes._(
    value: 'ACSN',
  );

  /// UDI
  static final IdentifierTypeCodes UDI = IdentifierTypeCodes._(
    value: 'UDI',
  );

  /// SNO
  static final IdentifierTypeCodes SNO = IdentifierTypeCodes._(
    value: 'SNO',
  );

  /// SB
  static final IdentifierTypeCodes SB = IdentifierTypeCodes._(
    value: 'SB',
  );

  /// PLAC
  static final IdentifierTypeCodes PLAC = IdentifierTypeCodes._(
    value: 'PLAC',
  );

  /// FILL
  static final IdentifierTypeCodes FILL = IdentifierTypeCodes._(
    value: 'FILL',
  );

  /// JHN
  static final IdentifierTypeCodes JHN = IdentifierTypeCodes._(
    value: 'JHN',
  );

  /// For instances where an Element is present but not value

  static final IdentifierTypeCodes elementOnly =
      IdentifierTypeCodes._(value: '');

  /// List of all enum-like values
  static final List<IdentifierTypeCodes> values = [
    DL,
    PPN,
    BRN,
    MR,
    MCN,
    EN,
    TAX,
    NIIP,
    PRN,
    MD,
    DR,
    ACSN,
    UDI,
    SNO,
    SB,
    PLAC,
    FILL,
    JHN,
  ];

  /// Clones the current instance
  @override
  IdentifierTypeCodes clone() => IdentifierTypeCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  IdentifierTypeCodes withElement(Element? newElement) {
    return IdentifierTypeCodes._(value: value, element: newElement);
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
  IdentifierTypeCodes copyWith({
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
    return IdentifierTypeCodes._(
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
