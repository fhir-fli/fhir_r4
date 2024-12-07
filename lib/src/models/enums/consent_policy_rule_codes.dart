// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Regulatory consent policy types from the US and other regions.
class ConsentPolicyRuleCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ConsentPolicyRuleCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ConsentPolicyRuleCodes] from JSON.
  factory ConsentPolicyRuleCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentPolicyRuleCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentPolicyRuleCodes cannot be constructed from JSON.',
      );
    }
    return ConsentPolicyRuleCodes._(value: value, element: element);
  }

  /// cric
  static final ConsentPolicyRuleCodes cric = ConsentPolicyRuleCodes._(
    value: 'cric',
  );

  /// illinois_minor_procedure
  static final ConsentPolicyRuleCodes illinois_minor_procedure =
      ConsentPolicyRuleCodes._(
    value: 'illinois-minor-procedure',
  );

  /// hipaa_auth
  static final ConsentPolicyRuleCodes hipaa_auth = ConsentPolicyRuleCodes._(
    value: 'hipaa-auth',
  );

  /// hipaa_npp
  static final ConsentPolicyRuleCodes hipaa_npp = ConsentPolicyRuleCodes._(
    value: 'hipaa-npp',
  );

  /// hipaa_restrictions
  static final ConsentPolicyRuleCodes hipaa_restrictions =
      ConsentPolicyRuleCodes._(
    value: 'hipaa-restrictions',
  );

  /// hipaa_research
  static final ConsentPolicyRuleCodes hipaa_research = ConsentPolicyRuleCodes._(
    value: 'hipaa-research',
  );

  /// hipaa_self_pay
  static final ConsentPolicyRuleCodes hipaa_self_pay = ConsentPolicyRuleCodes._(
    value: 'hipaa-self-pay',
  );

  /// mdhhs_5515
  static final ConsentPolicyRuleCodes mdhhs_5515 = ConsentPolicyRuleCodes._(
    value: 'mdhhs-5515',
  );

  /// nyssipp
  static final ConsentPolicyRuleCodes nyssipp = ConsentPolicyRuleCodes._(
    value: 'nyssipp',
  );

  /// va_10_0484
  static final ConsentPolicyRuleCodes va_10_0484 = ConsentPolicyRuleCodes._(
    value: 'va-10-0484',
  );

  /// va_10_0485
  static final ConsentPolicyRuleCodes va_10_0485 = ConsentPolicyRuleCodes._(
    value: 'va-10-0485',
  );

  /// va_10_5345
  static final ConsentPolicyRuleCodes va_10_5345 = ConsentPolicyRuleCodes._(
    value: 'va-10-5345',
  );

  /// va_10_5345a
  static final ConsentPolicyRuleCodes va_10_5345a = ConsentPolicyRuleCodes._(
    value: 'va-10-5345a',
  );

  /// va_10_5345a_mhv
  static final ConsentPolicyRuleCodes va_10_5345a_mhv =
      ConsentPolicyRuleCodes._(
    value: 'va-10-5345a-mhv',
  );

  /// va_10_10116
  static final ConsentPolicyRuleCodes va_10_10116 = ConsentPolicyRuleCodes._(
    value: 'va-10-10116',
  );

  /// va_21_4142
  static final ConsentPolicyRuleCodes va_21_4142 = ConsentPolicyRuleCodes._(
    value: 'va-21-4142',
  );

  /// ssa_827
  static final ConsentPolicyRuleCodes ssa_827 = ConsentPolicyRuleCodes._(
    value: 'ssa-827',
  );

  /// dch_3927
  static final ConsentPolicyRuleCodes dch_3927 = ConsentPolicyRuleCodes._(
    value: 'dch-3927',
  );

  /// squaxin
  static final ConsentPolicyRuleCodes squaxin = ConsentPolicyRuleCodes._(
    value: 'squaxin',
  );

  /// nl_lsp
  static final ConsentPolicyRuleCodes nl_lsp = ConsentPolicyRuleCodes._(
    value: 'nl-lsp',
  );

  /// at_elga
  static final ConsentPolicyRuleCodes at_elga = ConsentPolicyRuleCodes._(
    value: 'at-elga',
  );

  /// nih_hipaa
  static final ConsentPolicyRuleCodes nih_hipaa = ConsentPolicyRuleCodes._(
    value: 'nih-hipaa',
  );

  /// nci
  static final ConsentPolicyRuleCodes nci = ConsentPolicyRuleCodes._(
    value: 'nci',
  );

  /// nih_grdr
  static final ConsentPolicyRuleCodes nih_grdr = ConsentPolicyRuleCodes._(
    value: 'nih-grdr',
  );

  /// nih_527
  static final ConsentPolicyRuleCodes nih_527 = ConsentPolicyRuleCodes._(
    value: 'nih-527',
  );

  /// ga4gh
  static final ConsentPolicyRuleCodes ga4gh = ConsentPolicyRuleCodes._(
    value: 'ga4gh',
  );

  /// For instances where an Element is present but not value

  static final ConsentPolicyRuleCodes elementOnly =
      ConsentPolicyRuleCodes._(value: '');

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

  /// Clones the current instance
  @override
  ConsentPolicyRuleCodes clone() => ConsentPolicyRuleCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ConsentPolicyRuleCodes withElement(Element? newElement) {
    return ConsentPolicyRuleCodes._(value: value, element: newElement);
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
  ConsentPolicyRuleCodes copyWith({
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
    return ConsentPolicyRuleCodes._(
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
