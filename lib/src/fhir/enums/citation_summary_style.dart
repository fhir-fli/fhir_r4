// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The format for display of the citation.
enum CitationSummaryStyle {
  /// Display: Vancouver style
  /// Definition: Citation style used by International Committee of Medical Journal Editors and maintained by US National Library of Medicine.
  vancouver('vancouver'),

  /// Display: American Medical Association 11th edition
  /// Definition: Medicine.
  ama11('ama11'),

  /// Display: American Psychological Association 7th edition
  /// Definition: APA 7th edition (October 2019) used by Education, Psychology and Sciences.
  apa7('apa7'),

  /// Display: American Psychological Association 6th edition
  /// Definition: APA 6th edition used by Education, Psychology and Sciences.
  apa6('apa6'),

  /// Display: American Sociological Association 6th edition
  /// Definition: Sociology.
  asa6('asa6'),

  /// Display: Modern Language Association 8th edition
  /// Definition: MLA 8th edition used by the Humanities.
  mla8('mla8'),

  /// Display: Cochrane Style
  /// Definition: Used by Cochrane reviews, example: Huang, M, Tang T, Pang, P, Li, M, Ma R, Lu, J, et al. Treating COVID-19 with Chloroquine. J Mol Cell Biol 2020; 12(4):322–5.
  cochrane('cochrane'),

  /// Display: Elsevier-Harvard Style
  /// Definition: Biology ecology.
  elsevier_harvard('elsevier-harvard'),

  /// Display: Nature Referencing style
  /// Definition: Biology.
  nature('nature'),

  /// Display: American Chemical Society
  /// Definition: Chemistry.
  acs('acs'),

  /// Display: Chicago Style Version 17 Author Date
  /// Definition: Used by Business, History and the Fine Arts.
  chicago_a_17('chicago-a-17'),

  /// Display: Chicago Style Version 17 Full note
  /// Definition: Used by Business, History and the Fine Arts.
  chicago_b_17('chicago-b-17'),

  /// Display: Institute of Electrical and Electronics Engineers
  /// Definition: IT, Engineering.
  ieee('ieee'),

  /// Display: Computable Publishing
  /// Definition: Citation style to report human-readable and/or machine-readable access paths, example: Alper BS, Dehnbostel J, Shahin K. 14-day mortality remdesivir vs placebo meta-analysis (ACTT-1, Wang et al, WHO SOLIDARITY). Fast Evidence Interoperability Resources (FEvIR) Platform, entry 55, version 4. Created 2020 Dec 17. Revised 2020 Dec 21. Accessed 2021 Mar 13. Computable resource at: https://fevir.net/resources/Evidence/55.
  comppub('comppub'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CitationSummaryStyle(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CitationSummaryStyle] instances.
  static CitationSummaryStyle fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitationSummaryStyle.elementOnly.withElement(element);
    }
    return CitationSummaryStyle.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CitationSummaryStyle withElement(Element? newElement) {
    return CitationSummaryStyle.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
