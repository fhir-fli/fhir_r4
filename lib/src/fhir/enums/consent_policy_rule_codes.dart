// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes sample Regulatory consent policy types from the US and other regions.
@collection
class ConsentPolicyRuleCodes {
  /// Constructor for internal use (like enum)
  ConsentPolicyRuleCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentPolicyRuleCodes values
  /// cric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes cric = ConsentPolicyRuleCodes(
    fhirCode: 'cric',
  );

  /// illinois_minor_procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes illinois_minor_procedure =
      ConsentPolicyRuleCodes(
    fhirCode: 'illinois-minor-procedure',
  );

  /// hipaa_auth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_auth = ConsentPolicyRuleCodes(
    fhirCode: 'hipaa-auth',
  );

  /// hipaa_npp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_npp = ConsentPolicyRuleCodes(
    fhirCode: 'hipaa-npp',
  );

  /// hipaa_restrictions
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_restrictions =
      ConsentPolicyRuleCodes(
    fhirCode: 'hipaa-restrictions',
  );

  /// hipaa_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_research = ConsentPolicyRuleCodes(
    fhirCode: 'hipaa-research',
  );

  /// hipaa_self_pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes hipaa_self_pay = ConsentPolicyRuleCodes(
    fhirCode: 'hipaa-self-pay',
  );

  /// mdhhs_5515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes mdhhs_5515 = ConsentPolicyRuleCodes(
    fhirCode: 'mdhhs-5515',
  );

  /// nyssipp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nyssipp = ConsentPolicyRuleCodes(
    fhirCode: 'nyssipp',
  );

  /// va_10_0484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_0484 = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-0484',
  );

  /// va_10_0485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_0485 = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-0485',
  );

  /// va_10_5345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345 = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-5345',
  );

  /// va_10_5345a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345a = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-5345a',
  );

  /// va_10_5345a_mhv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_5345a_mhv = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-5345a-mhv',
  );

  /// va_10_10116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_10_10116 = ConsentPolicyRuleCodes(
    fhirCode: 'va-10-10116',
  );

  /// va_21_4142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes va_21_4142 = ConsentPolicyRuleCodes(
    fhirCode: 'va-21-4142',
  );

  /// ssa_827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes ssa_827 = ConsentPolicyRuleCodes(
    fhirCode: 'ssa-827',
  );

  /// dch_3927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes dch_3927 = ConsentPolicyRuleCodes(
    fhirCode: 'dch-3927',
  );

  /// squaxin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes squaxin = ConsentPolicyRuleCodes(
    fhirCode: 'squaxin',
  );

  /// nl_lsp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nl_lsp = ConsentPolicyRuleCodes(
    fhirCode: 'nl-lsp',
  );

  /// at_elga
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes at_elga = ConsentPolicyRuleCodes(
    fhirCode: 'at-elga',
  );

  /// nih_hipaa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_hipaa = ConsentPolicyRuleCodes(
    fhirCode: 'nih-hipaa',
  );

  /// nci
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nci = ConsentPolicyRuleCodes(
    fhirCode: 'nci',
  );

  /// nih_grdr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_grdr = ConsentPolicyRuleCodes(
    fhirCode: 'nih-grdr',
  );

  /// nih_527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes nih_527 = ConsentPolicyRuleCodes(
    fhirCode: 'nih-527',
  );

  /// ga4gh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentPolicyRuleCodes ga4gh = ConsentPolicyRuleCodes(
    fhirCode: 'ga4gh',
  );

  /// For instances where an Element is present but not value

  static final ConsentPolicyRuleCodes elementOnly = ConsentPolicyRuleCodes();

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
    return ConsentPolicyRuleCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
