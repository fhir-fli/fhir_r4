// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Regulatory consent policy types from the US and other regions.
class ConsentPolicyRuleCodes {
  // Private constructor for internal use (like enum)
  ConsentPolicyRuleCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentPolicyRuleCodes values
  /// cric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes cric = ConsentPolicyRuleCodes._(
    'cric',
  );

  /// illinois_minor_procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes illinois_minor_procedure =
      ConsentPolicyRuleCodes._(
    'illinois-minor-procedure',
  );

  /// hipaa_auth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_auth = ConsentPolicyRuleCodes._(
    'hipaa-auth',
  );

  /// hipaa_npp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_npp = ConsentPolicyRuleCodes._(
    'hipaa-npp',
  );

  /// hipaa_restrictions
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_restrictions =
      ConsentPolicyRuleCodes._(
    'hipaa-restrictions',
  );

  /// hipaa_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_research = ConsentPolicyRuleCodes._(
    'hipaa-research',
  );

  /// hipaa_self_pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_self_pay = ConsentPolicyRuleCodes._(
    'hipaa-self-pay',
  );

  /// mdhhs_5515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes mdhhs_5515 = ConsentPolicyRuleCodes._(
    'mdhhs-5515',
  );

  /// nyssipp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nyssipp = ConsentPolicyRuleCodes._(
    'nyssipp',
  );

  /// va_10_0484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_0484 = ConsentPolicyRuleCodes._(
    'va-10-0484',
  );

  /// va_10_0485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_0485 = ConsentPolicyRuleCodes._(
    'va-10-0485',
  );

  /// va_10_5345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345 = ConsentPolicyRuleCodes._(
    'va-10-5345',
  );

  /// va_10_5345a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345a = ConsentPolicyRuleCodes._(
    'va-10-5345a',
  );

  /// va_10_5345a_mhv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345a_mhv =
      ConsentPolicyRuleCodes._(
    'va-10-5345a-mhv',
  );

  /// va_10_10116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_10116 = ConsentPolicyRuleCodes._(
    'va-10-10116',
  );

  /// va_21_4142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_21_4142 = ConsentPolicyRuleCodes._(
    'va-21-4142',
  );

  /// ssa_827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes ssa_827 = ConsentPolicyRuleCodes._(
    'ssa-827',
  );

  /// dch_3927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes dch_3927 = ConsentPolicyRuleCodes._(
    'dch-3927',
  );

  /// squaxin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes squaxin = ConsentPolicyRuleCodes._(
    'squaxin',
  );

  /// nl_lsp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nl_lsp = ConsentPolicyRuleCodes._(
    'nl-lsp',
  );

  /// at_elga
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes at_elga = ConsentPolicyRuleCodes._(
    'at-elga',
  );

  /// nih_hipaa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_hipaa = ConsentPolicyRuleCodes._(
    'nih-hipaa',
  );

  /// nci
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nci = ConsentPolicyRuleCodes._(
    'nci',
  );

  /// nih_grdr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_grdr = ConsentPolicyRuleCodes._(
    'nih-grdr',
  );

  /// nih_527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_527 = ConsentPolicyRuleCodes._(
    'nih-527',
  );

  /// ga4gh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes ga4gh = ConsentPolicyRuleCodes._(
    'ga4gh',
  );

  /// For instances where an Element is present but not value

  static final ConsentPolicyRuleCodes elementOnly =
      ConsentPolicyRuleCodes._('');

  /// List of all enum-like values
  static final List<ConsentPolicyRuleCodes> values = [
    cric,
    illinois_minor_procedure,
    hipaa_auth,
    hipaa_npp,
    hipaa_restrictions,
    hipaa_research,
    hipaa_self_pay,
    mdhhs_5515,
    nyssipp,
    va_10_0484,
    va_10_0485,
    va_10_5345,
    va_10_5345a,
    va_10_5345a_mhv,
    va_10_10116,
    va_21_4142,
    ssa_827,
    dch_3927,
    squaxin,
    nl_lsp,
    at_elga,
    nih_hipaa,
    nci,
    nih_grdr,
    nih_527,
    ga4gh,
  ];

  /// Returns the enum value with an element attached
  ConsentPolicyRuleCodes withElement(Element? newElement) {
    return ConsentPolicyRuleCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentPolicyRuleCodes] from JSON.
  static ConsentPolicyRuleCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentPolicyRuleCodes.elementOnly.withElement(element);
    }
    return ConsentPolicyRuleCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentPolicyRuleCodes.$fhirCode';
}
