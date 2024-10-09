/// The format for display of the citation.
enum CitationSummaryStyle {
  /// Display: Vancouver style
  /// Definition: Citation style used by International Committee of Medical Journal Editors and maintained by US National Library of Medicine.
  vancouver,

  /// Display: American Medical Association 11th edition
  /// Definition: Medicine.
  ama11,

  /// Display: American Psychological Association 7th edition
  /// Definition: APA 7th edition (October 2019) used by Education, Psychology and Sciences.
  apa7,

  /// Display: American Psychological Association 6th edition
  /// Definition: APA 6th edition used by Education, Psychology and Sciences.
  apa6,

  /// Display: American Sociological Association 6th edition
  /// Definition: Sociology.
  asa6,

  /// Display: Modern Language Association 8th edition
  /// Definition: MLA 8th edition used by the Humanities.
  mla8,

  /// Display: Cochrane Style
  /// Definition: Used by Cochrane reviews, example: Huang, M, Tang T, Pang, P, Li, M, Ma R, Lu, J, et al. Treating COVID-19 with Chloroquine. J Mol Cell Biol 2020; 12(4):322–5.
  cochrane,

  /// Display: Elsevier-Harvard Style
  /// Definition: Biology ecology.
  elsevier_harvard,

  /// Display: Nature Referencing style
  /// Definition: Biology.
  nature,

  /// Display: American Chemical Society
  /// Definition: Chemistry.
  acs,

  /// Display: Chicago Style Version 17 Author Date
  /// Definition: Used by Business, History and the Fine Arts.
  chicago_a_17,

  /// Display: Chicago Style Version 17 Full note
  /// Definition: Used by Business, History and the Fine Arts.
  chicago_b_17,

  /// Display: Institute of Electrical and Electronics Engineers
  /// Definition: IT, Engineering.
  ieee,

  /// Display: Computable Publishing
  /// Definition: Citation style to report human-readable and/or machine-readable access paths, example: Alper BS, Dehnbostel J, Shahin K. 14-day mortality remdesivir vs placebo meta-analysis (ACTT-1, Wang et al, WHO SOLIDARITY).  Fast Evidence Interoperability Resources (FEvIR) Platform, entry 55, version 4. Created 2020 Dec 17. Revised 2020 Dec 21. Accessed 2021 Mar 13. Computable resource at: https://fevir.net/resources/Evidence/55.
  comppub,
  ;

  @override
  String toString() {
    switch (this) {
      case vancouver:
        return 'vancouver';
      case ama11:
        return 'ama11';
      case apa7:
        return 'apa7';
      case apa6:
        return 'apa6';
      case asa6:
        return 'asa6';
      case mla8:
        return 'mla8';
      case cochrane:
        return 'cochrane';
      case elsevier_harvard:
        return 'elsevier-harvard';
      case nature:
        return 'nature';
      case acs:
        return 'acs';
      case chicago_a_17:
        return 'chicago-a-17';
      case chicago_b_17:
        return 'chicago-b-17';
      case ieee:
        return 'ieee';
      case comppub:
        return 'comppub';
    }
  }

  String toJson() => toString();
  static CitationSummaryStyle fromString(String str) {
    switch (str) {
      case 'vancouver':
        return CitationSummaryStyle.vancouver;
      case 'ama11':
        return CitationSummaryStyle.ama11;
      case 'apa7':
        return CitationSummaryStyle.apa7;
      case 'apa6':
        return CitationSummaryStyle.apa6;
      case 'asa6':
        return CitationSummaryStyle.asa6;
      case 'mla8':
        return CitationSummaryStyle.mla8;
      case 'cochrane':
        return CitationSummaryStyle.cochrane;
      case 'elsevier-harvard':
        return CitationSummaryStyle.elsevier_harvard;
      case 'nature':
        return CitationSummaryStyle.nature;
      case 'acs':
        return CitationSummaryStyle.acs;
      case 'chicago-a-17':
        return CitationSummaryStyle.chicago_a_17;
      case 'chicago-b-17':
        return CitationSummaryStyle.chicago_b_17;
      case 'ieee':
        return CitationSummaryStyle.ieee;
      case 'comppub':
        return CitationSummaryStyle.comppub;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static CitationSummaryStyle fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
