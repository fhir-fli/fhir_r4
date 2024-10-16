import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
enum ContributorSummaryStyle {
  /// Display: First author (full name) et al
  /// Definition: Example: Jennifer Laskowski et al.
  a1full('a1full'),

  /// Display: First author (last name first initials) et al
  /// Definition: Example: Laskowski J et al.
  a1init('a1init'),

  /// Display: First 3 authors (full name) et al
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, et al.
  a3full('a3full'),

  /// Display: First 3 authors (last name first initials) et al
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, et al.
  a3init('a3init'),

  /// Display: First 6 authors (full name) et al
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, et al.
  a6full('a6full'),

  /// Display: First 6 authors (last name first initials) et al
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, et al.
  a6init('a6init'),

  /// Display: All authors (full name)
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, Joshua M. Thurman.
  aallfull('aallfull'),

  /// Display: All authors (full name) with and before last author
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, and Joshua M. Thurman.
  aallfullwithand('aallfullwithand'),

  /// Display: All authors (full name) with an ampersand before last author
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, & Joshua M. Thurman.
  aallfullwithampersand('aallfullwithampersand'),

  /// Display: All authors (last name first initials)
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, Thurman JM.
  aallinit('aallinit'),

  /// Display: All authors (last name first initials) with and before last author
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, and Thurman JM.
  aallinitwithand('aallinitwithand'),

  /// Display: All authors (last name first initials) with an ampersand before last author
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, & Thurman JM.
  aallinitwithampersand('aallinitwithampersand'),

  /// Display: Contributorship statement listed by person with full names
  /// Definition: Jennnifer Laskowski designed project; developed and performed experiments; collected and analyzed data; wrote and revised manuscript. Brandon Renner performed critical review of manuscript. Matthew C. Pickering provided technical advice and contributed to study design. Natalie J. Serkova and Peter M. Smith-Jones performed PET imaging and associated analyses. Eric T. Clambey and Raphael A. Nemenoff provided conceptual and technical guidance and critical review of manuscript. Joshua M. Thurman contributed to experimental design and wrote manuscript.
  contr_full_by_person('contr-full-by-person'),

  /// Display: Contributorship statement listed by person with initials
  /// Definition: J.L. designed project; developed and performed experiments; collected and analyzed data; wrote and revised manuscript. B.R. performed critical review of manuscript. M.C.P. provided technical advice and contributed to study design. N.J.S and P.M.S.-J. performed PET imaging and associated analyses. E.T.C. and R.A.N provided conceptual and technical guidance and critical review of manuscript. J.M.T contributed to experimental design and wrote manuscript.
  contr_init_by_person('contr-init-by-person'),

  /// Display: Contributorship statement listed by contribution with full names
  /// Definition: Project design by Jennnifer Laskowski (JL), Experiment design by JL and Joshua M. Thurman (JMT), technical advice and study design contribution by Matthew C. Pickering, experiments performed by JL, data collection and analysis by JL, PET imaging and associated analyses by Natalie J. Serkova and Peter M. Smith-Jones, conceptual and technical guidance by Eric T. Clambey (ETC) and Raphael A. Nemenoff (RAN), manuscript writing by JL and JMT, manuscript revised critically by JL, Brandon Renner, ETC, and RAN.
  contr_full_by_contr('contr-full-by-contr'),

  /// Display: Contributorship statement listed by contribution with initials
  /// Definition: Project design by JL, Experiment design by JL and JMT, technical advice and study design contribution by MCP, experiments performed by JL, data collection and analysis by JL, PET imaging and associated analyses by NJS and PMS-J, conceptual and technical guidance by ETC and RAN, manuscript writing by JL and JMT, manuscript revised critically by JL, BR, ETC, and RAN.
  contr_init_by_contr('contr-init-by-contr'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ContributorSummaryStyle(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ContributorSummaryStyle fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorSummaryStyle.elementOnly.withElement(element);
    }
    return ContributorSummaryStyle.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ContributorSummaryStyle withElement(Element? newElement) {
    return ContributorSummaryStyle.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
