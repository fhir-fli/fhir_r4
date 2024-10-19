// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Regulatory consent policy types from the US and other regions.
@Entity()
class ConsentPolicyRuleCodes extends FhirCode {
  /// Factory constructor to create [ConsentPolicyRuleCodes] from JSON.
  factory ConsentPolicyRuleCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentPolicyRuleCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentPolicyRuleCodes._(value, element);
    }
    throw ArgumentError(
      'ConsentPolicyRuleCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// cric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.cric([this.element])
      : dbValue = 'cric',
        super('cric', element);

  /// illinois_minor_procedure
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.illinois_minor_procedure([this.element])
      : dbValue = 'illinois-minor-procedure',
        super('illinois-minor-procedure', element);

  /// hipaa_auth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.hipaa_auth([this.element])
      : dbValue = 'hipaa-auth',
        super('hipaa-auth', element);

  /// hipaa_npp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.hipaa_npp([this.element])
      : dbValue = 'hipaa-npp',
        super('hipaa-npp', element);

  /// hipaa_restrictions
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.hipaa_restrictions([this.element])
      : dbValue = 'hipaa-restrictions',
        super('hipaa-restrictions', element);

  /// hipaa_research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.hipaa_research([this.element])
      : dbValue = 'hipaa-research',
        super('hipaa-research', element);

  /// hipaa_self_pay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.hipaa_self_pay([this.element])
      : dbValue = 'hipaa-self-pay',
        super('hipaa-self-pay', element);

  /// mdhhs_5515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.mdhhs_5515([this.element])
      : dbValue = 'mdhhs-5515',
        super('mdhhs-5515', element);

  /// nyssipp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nyssipp([this.element])
      : dbValue = 'nyssipp',
        super('nyssipp', element);

  /// va_10_0484
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_0484([this.element])
      : dbValue = 'va-10-0484',
        super('va-10-0484', element);

  /// va_10_0485
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_0485([this.element])
      : dbValue = 'va-10-0485',
        super('va-10-0485', element);

  /// va_10_5345
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_5345([this.element])
      : dbValue = 'va-10-5345',
        super('va-10-5345', element);

  /// va_10_5345a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_5345a([this.element])
      : dbValue = 'va-10-5345a',
        super('va-10-5345a', element);

  /// va_10_5345a_mhv
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_5345a_mhv([this.element])
      : dbValue = 'va-10-5345a-mhv',
        super('va-10-5345a-mhv', element);

  /// va_10_10116
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_10_10116([this.element])
      : dbValue = 'va-10-10116',
        super('va-10-10116', element);

  /// va_21_4142
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.va_21_4142([this.element])
      : dbValue = 'va-21-4142',
        super('va-21-4142', element);

  /// ssa_827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.ssa_827([this.element])
      : dbValue = 'ssa-827',
        super('ssa-827', element);

  /// dch_3927
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.dch_3927([this.element])
      : dbValue = 'dch-3927',
        super('dch-3927', element);

  /// squaxin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.squaxin([this.element])
      : dbValue = 'squaxin',
        super('squaxin', element);

  /// nl_lsp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nl_lsp([this.element])
      : dbValue = 'nl-lsp',
        super('nl-lsp', element);

  /// at_elga
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.at_elga([this.element])
      : dbValue = 'at-elga',
        super('at-elga', element);

  /// nih_hipaa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nih_hipaa([this.element])
      : dbValue = 'nih-hipaa',
        super('nih-hipaa', element);

  /// nci
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nci([this.element])
      : dbValue = 'nci',
        super('nci', element);

  /// nih_grdr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nih_grdr([this.element])
      : dbValue = 'nih-grdr',
        super('nih-grdr', element);

  /// nih_527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.nih_527([this.element])
      : dbValue = 'nih-527',
        super('nih-527', element);

  /// ga4gh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentPolicyRuleCodes.ga4gh([this.element])
      : dbValue = 'ga4gh',
        super('ga4gh', element);

  /// For instances where an Element is present but not value

  ConsentPolicyRuleCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentPolicyRuleCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'cric',
    'illinois-minor-procedure',
    'hipaa-auth',
    'hipaa-npp',
    'hipaa-restrictions',
    'hipaa-research',
    'hipaa-self-pay',
    'mdhhs-5515',
    'nyssipp',
    'va-10-0484',
    'va-10-0485',
    'va-10-5345',
    'va-10-5345a',
    'va-10-5345a-mhv',
    'va-10-10116',
    'va-21-4142',
    'ssa-827',
    'dch-3927',
    'squaxin',
    'nl-lsp',
    'at-elga',
    'nih-hipaa',
    'nci',
    'nih-grdr',
    'nih-527',
    'ga4gh',
  ];

  /// Returns the enum value with an element attached
  ConsentPolicyRuleCodes withElement(Element? newElement) {
    return ConsentPolicyRuleCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentPolicyRuleCodes.$value';
}
