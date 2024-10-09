import 'package:json_annotation/json_annotation.dart';

/// Used to code the format of the display string.
enum ContributorSummaryStyle {
  /// Display: First author (full name) et al
  /// Definition: Example: Jennifer Laskowski et al.
  @JsonValue('a1full')
  a1full,

  /// Display: First author (last name first initials) et al
  /// Definition: Example: Laskowski J et al.
  @JsonValue('a1init')
  a1init,

  /// Display: First 3 authors (full name) et al
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, et al.
  @JsonValue('a3full')
  a3full,

  /// Display: First 3 authors (last name first initials) et al
  /// Definition: Example:  Laskowski J, Renner B, Pickering MC, et al.
  @JsonValue('a3init')
  a3init,

  /// Display: First 6 authors (full name) et al
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, et al.
  @JsonValue('a6full')
  a6full,

  /// Display: First 6 authors (last name first initials) et al
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, et al.
  @JsonValue('a6init')
  a6init,

  /// Display: All authors (full name)
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, Joshua M. Thurman.
  @JsonValue('aallfull')
  aallfull,

  /// Display: All authors (full name) with and before last author
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, and Joshua M. Thurman.
  @JsonValue('aallfullwithand')
  aallfullwithand,

  /// Display: All authors (full name) with an ampersand before last author
  /// Definition: Example: Jennifer Laskowski, Brandon Renner, Matthew C. Pickering, Natalie J. Serkova, Peter M. Smith-Jones, Eric T. Clambey, Raphael A. Nemenoff, & Joshua M. Thurman.
  @JsonValue('aallfullwithampersand')
  aallfullwithampersand,

  /// Display: All authors (last name first initials)
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, Thurman JM.
  @JsonValue('aallinit')
  aallinit,

  /// Display: All authors (last name first initials) with and before last author
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, and Thurman JM.
  @JsonValue('aallinitwithand')
  aallinitwithand,

  /// Display: All authors (last name first initials) with an ampersand before last author
  /// Definition: Example: Laskowski J, Renner B, Pickering MC, Serkova NJ, Smith-Jones PM, Clambey ET, Nemenoff RA, & Thurman JM.
  @JsonValue('aallinitwithampersand')
  aallinitwithampersand,

  /// Display: Contributorship statement listed by person with full names
  /// Definition: Jennnifer Laskowski designed project; developed and performed experiments; collected and analyzed data; wrote and revised manuscript. Brandon Renner performed critical review of manuscript. Matthew C. Pickering provided technical advice and contributed to study design. Natalie J. Serkova and Peter M. Smith-Jones performed PET imaging and associated analyses. Eric T. Clambey and Raphael A. Nemenoff provided conceptual and technical guidance and critical review of manuscript. Joshua M. Thurman contributed to experimental design and wrote manuscript.
  @JsonValue('contr-full-by-person')
  contr_full_by_person,

  /// Display: Contributorship statement listed by person with initials
  /// Definition: J.L. designed project; developed and performed experiments; collected and analyzed data; wrote and revised manuscript. B.R. performed critical review of manuscript. M.C.P. provided technical advice and contributed to study design. N.J.S and P.M.S.-J. performed PET imaging and associated analyses. E.T.C. and R.A.N provided conceptual and technical guidance and critical review of manuscript. J.M.T contributed to experimental design and wrote manuscript.
  @JsonValue('contr-init-by-person')
  contr_init_by_person,

  /// Display: Contributorship statement listed by contribution with full names
  /// Definition: Project design by Jennnifer Laskowski (JL), Experiment design by JL and Joshua M. Thurman (JMT), technical advice and study design contribution by Matthew C. Pickering, experiments performed by JL, data collection and analysis by JL, PET imaging and associated analyses by Natalie J. Serkova and Peter M. Smith-Jones, conceptual and technical guidance by Eric T. Clambey (ETC) and Raphael A. Nemenoff (RAN), manuscript writing by JL and JMT, manuscript revised critically by JL, Brandon Renner, ETC, and RAN.
  @JsonValue('contr-full-by-contr')
  contr_full_by_contr,

  /// Display: Contributorship statement listed by contribution with initials
  /// Definition: Project design by JL, Experiment design by JL and JMT, technical advice and study design contribution by MCP, experiments performed by JL, data collection and analysis by JL, PET imaging and associated analyses by NJS and PMS-J, conceptual and technical guidance by ETC and RAN, manuscript writing by JL and JMT, manuscript revised critically by JL, BR, ETC, and RAN.
  @JsonValue('contr-init-by-contr')
  contr_init_by_contr,
  ;

  @override
  String toString() {
    switch (this) {
      case a1full:
        return 'a1full';
      case a1init:
        return 'a1init';
      case a3full:
        return 'a3full';
      case a3init:
        return 'a3init';
      case a6full:
        return 'a6full';
      case a6init:
        return 'a6init';
      case aallfull:
        return 'aallfull';
      case aallfullwithand:
        return 'aallfullwithand';
      case aallfullwithampersand:
        return 'aallfullwithampersand';
      case aallinit:
        return 'aallinit';
      case aallinitwithand:
        return 'aallinitwithand';
      case aallinitwithampersand:
        return 'aallinitwithampersand';
      case contr_full_by_person:
        return 'contr-full-by-person';
      case contr_init_by_person:
        return 'contr-init-by-person';
      case contr_full_by_contr:
        return 'contr-full-by-contr';
      case contr_init_by_contr:
        return 'contr-init-by-contr';
    }
  }

  String toJson() => toString();
  static ContributorSummaryStyle fromString(String str) {
    switch (str) {
      case 'a1full':
        return ContributorSummaryStyle.a1full;
      case 'a1init':
        return ContributorSummaryStyle.a1init;
      case 'a3full':
        return ContributorSummaryStyle.a3full;
      case 'a3init':
        return ContributorSummaryStyle.a3init;
      case 'a6full':
        return ContributorSummaryStyle.a6full;
      case 'a6init':
        return ContributorSummaryStyle.a6init;
      case 'aallfull':
        return ContributorSummaryStyle.aallfull;
      case 'aallfullwithand':
        return ContributorSummaryStyle.aallfullwithand;
      case 'aallfullwithampersand':
        return ContributorSummaryStyle.aallfullwithampersand;
      case 'aallinit':
        return ContributorSummaryStyle.aallinit;
      case 'aallinitwithand':
        return ContributorSummaryStyle.aallinitwithand;
      case 'aallinitwithampersand':
        return ContributorSummaryStyle.aallinitwithampersand;
      case 'contr-full-by-person':
        return ContributorSummaryStyle.contr_full_by_person;
      case 'contr-init-by-person':
        return ContributorSummaryStyle.contr_init_by_person;
      case 'contr-full-by-contr':
        return ContributorSummaryStyle.contr_full_by_contr;
      case 'contr-init-by-contr':
        return ContributorSummaryStyle.contr_init_by_contr;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ContributorSummaryStyle fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
