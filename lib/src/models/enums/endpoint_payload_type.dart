// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible payload document types.
class EndpointPayloadType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EndpointPayloadType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EndpointPayloadType] from JSON.
  factory EndpointPayloadType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointPayloadType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointPayloadType cannot be constructed from JSON.',
      );
    }
    return EndpointPayloadType._(value, element: element);
  }

  /// any
  static final EndpointPayloadType any = EndpointPayloadType._(
    'any',
  );

  /// none
  static final EndpointPayloadType none = EndpointPayloadType._(
    'none',
  );

  /// urn_ihe_pcc_handp_2008
  static final EndpointPayloadType urn_ihe_pcc_handp_2008 =
      EndpointPayloadType._(
    'urn:ihe:pcc:handp:2008',
  );

  /// urn_ihe_pcc_xphr_2007
  static final EndpointPayloadType urn_ihe_pcc_xphr_2007 =
      EndpointPayloadType._(
    'urn:ihe:pcc:xphr:2007',
  );

  /// urn_ihe_pcc_aps_2007
  static final EndpointPayloadType urn_ihe_pcc_aps_2007 = EndpointPayloadType._(
    'urn:ihe:pcc:aps:2007',
  );

  /// urn_ihe_pcc_xds_ms_2007
  static final EndpointPayloadType urn_ihe_pcc_xds_ms_2007 =
      EndpointPayloadType._(
    'urn:ihe:pcc:xds-ms:2007',
  );

  /// urn_ihe_pcc_edr_2007
  static final EndpointPayloadType urn_ihe_pcc_edr_2007 = EndpointPayloadType._(
    'urn:ihe:pcc:edr:2007',
  );

  /// urn_ihe_pcc_edes_2007
  static final EndpointPayloadType urn_ihe_pcc_edes_2007 =
      EndpointPayloadType._(
    'urn:ihe:pcc:edes:2007',
  );

  /// urn_ihe_pcc_apr_handp_2008
  static final EndpointPayloadType urn_ihe_pcc_apr_handp_2008 =
      EndpointPayloadType._(
    'urn:ihe:pcc:apr:handp:2008',
  );

  /// urn_ihe_pcc_apr_lab_2008
  static final EndpointPayloadType urn_ihe_pcc_apr_lab_2008 =
      EndpointPayloadType._(
    'urn:ihe:pcc:apr:lab:2008',
  );

  /// urn_ihe_pcc_apr_edu_2008
  static final EndpointPayloadType urn_ihe_pcc_apr_edu_2008 =
      EndpointPayloadType._(
    'urn:ihe:pcc:apr:edu:2008',
  );

  /// urn_ihe_pcc_irc_2008
  static final EndpointPayloadType urn_ihe_pcc_irc_2008 = EndpointPayloadType._(
    'urn:ihe:pcc:irc:2008',
  );

  /// urn_ihe_pcc_crc_2008
  static final EndpointPayloadType urn_ihe_pcc_crc_2008 = EndpointPayloadType._(
    'urn:ihe:pcc:crc:2008',
  );

  /// urn_ihe_pcc_cm_2008
  static final EndpointPayloadType urn_ihe_pcc_cm_2008 = EndpointPayloadType._(
    'urn:ihe:pcc:cm:2008',
  );

  /// urn_ihe_pcc_ic_2009
  static final EndpointPayloadType urn_ihe_pcc_ic_2009 = EndpointPayloadType._(
    'urn:ihe:pcc:ic:2009',
  );

  /// urn_ihe_pcc_tn_2007
  static final EndpointPayloadType urn_ihe_pcc_tn_2007 = EndpointPayloadType._(
    'urn:ihe:pcc:tn:2007',
  );

  /// urn_ihe_pcc_nn_2007
  static final EndpointPayloadType urn_ihe_pcc_nn_2007 = EndpointPayloadType._(
    'urn:ihe:pcc:nn:2007',
  );

  /// urn_ihe_pcc_ctn_2007
  static final EndpointPayloadType urn_ihe_pcc_ctn_2007 = EndpointPayloadType._(
    'urn:ihe:pcc:ctn:2007',
  );

  /// urn_ihe_pcc_edpn_2007
  static final EndpointPayloadType urn_ihe_pcc_edpn_2007 =
      EndpointPayloadType._(
    'urn:ihe:pcc:edpn:2007',
  );

  /// urn_ihe_pcc_hp_2008
  static final EndpointPayloadType urn_ihe_pcc_hp_2008 = EndpointPayloadType._(
    'urn:ihe:pcc:hp:2008',
  );

  /// urn_ihe_pcc_ldhp_2009
  static final EndpointPayloadType urn_ihe_pcc_ldhp_2009 =
      EndpointPayloadType._(
    'urn:ihe:pcc:ldhp:2009',
  );

  /// urn_ihe_pcc_lds_2009
  static final EndpointPayloadType urn_ihe_pcc_lds_2009 = EndpointPayloadType._(
    'urn:ihe:pcc:lds:2009',
  );

  /// urn_ihe_pcc_mds_2009
  static final EndpointPayloadType urn_ihe_pcc_mds_2009 = EndpointPayloadType._(
    'urn:ihe:pcc:mds:2009',
  );

  /// urn_ihe_pcc_nds_2010
  static final EndpointPayloadType urn_ihe_pcc_nds_2010 = EndpointPayloadType._(
    'urn:ihe:pcc:nds:2010',
  );

  /// urn_ihe_pcc_ppvs_2010
  static final EndpointPayloadType urn_ihe_pcc_ppvs_2010 =
      EndpointPayloadType._(
    'urn:ihe:pcc:ppvs:2010',
  );

  /// urn_ihe_pcc_trs_2011
  static final EndpointPayloadType urn_ihe_pcc_trs_2011 = EndpointPayloadType._(
    'urn:ihe:pcc:trs:2011',
  );

  /// urn_ihe_pcc_ets_2011
  static final EndpointPayloadType urn_ihe_pcc_ets_2011 = EndpointPayloadType._(
    'urn:ihe:pcc:ets:2011',
  );

  /// urn_ihe_pcc_its_2011
  static final EndpointPayloadType urn_ihe_pcc_its_2011 = EndpointPayloadType._(
    'urn:ihe:pcc:its:2011',
  );

  /// urn_ihe_iti_bppc_2007
  static final EndpointPayloadType urn_ihe_iti_bppc_2007 =
      EndpointPayloadType._(
    'urn:ihe:iti:bppc:2007',
  );

  /// urn_ihe_iti_bppc_sd_2007
  static final EndpointPayloadType urn_ihe_iti_bppc_sd_2007 =
      EndpointPayloadType._(
    'urn:ihe:iti:bppc-sd:2007',
  );

  /// urn_ihe_iti_xdw_2011_workflowDoc
  static final EndpointPayloadType urn_ihe_iti_xdw_2011_workflowDoc =
      EndpointPayloadType._(
    'urn:ihe:iti:xdw:2011:workflowDoc',
  );

  /// urn_ihe_iti_dsg_detached_2014
  static final EndpointPayloadType urn_ihe_iti_dsg_detached_2014 =
      EndpointPayloadType._(
    'urn:ihe:iti:dsg:detached:2014',
  );

  /// urn_ihe_iti_dsg_enveloping_2014
  static final EndpointPayloadType urn_ihe_iti_dsg_enveloping_2014 =
      EndpointPayloadType._(
    'urn:ihe:iti:dsg:enveloping:2014',
  );

  /// urn_ihe_iti_xds_sd_pdf_2008
  static final EndpointPayloadType urn_ihe_iti_xds_sd_pdf_2008 =
      EndpointPayloadType._(
    'urn:ihe:iti:xds-sd:pdf:2008',
  );

  /// urn_ihe_iti_xds_sd_text_2008
  static final EndpointPayloadType urn_ihe_iti_xds_sd_text_2008 =
      EndpointPayloadType._(
    'urn:ihe:iti:xds-sd:text:2008',
  );

  /// urn_ihe_lab_xd_lab_2008
  static final EndpointPayloadType urn_ihe_lab_xd_lab_2008 =
      EndpointPayloadType._(
    'urn:ihe:lab:xd-lab:2008',
  );

  /// urn_ihe_rad_TEXT
  static final EndpointPayloadType urn_ihe_rad_TEXT = EndpointPayloadType._(
    'urn:ihe:rad:TEXT',
  );

  /// urn_ihe_rad_PDF
  static final EndpointPayloadType urn_ihe_rad_PDF = EndpointPayloadType._(
    'urn:ihe:rad:PDF',
  );

  /// urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013
  static final EndpointPayloadType
      urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013 =
      EndpointPayloadType._(
    'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013',
  );

  /// urn_ihe_card_imaging_2011
  static final EndpointPayloadType urn_ihe_card_imaging_2011 =
      EndpointPayloadType._(
    'urn:ihe:card:imaging:2011',
  );

  /// urn_ihe_card_CRC_2012
  static final EndpointPayloadType urn_ihe_card_CRC_2012 =
      EndpointPayloadType._(
    'urn:ihe:card:CRC:2012',
  );

  /// urn_ihe_card_EPRC_IE_2014
  static final EndpointPayloadType urn_ihe_card_EPRC_IE_2014 =
      EndpointPayloadType._(
    'urn:ihe:card:EPRC-IE:2014',
  );

  /// urn_ihe_dent_TEXT
  static final EndpointPayloadType urn_ihe_dent_TEXT = EndpointPayloadType._(
    'urn:ihe:dent:TEXT',
  );

  /// urn_ihe_dent_PDF
  static final EndpointPayloadType urn_ihe_dent_PDF = EndpointPayloadType._(
    'urn:ihe:dent:PDF',
  );

  /// urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013
  static final EndpointPayloadType
      urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013 =
      EndpointPayloadType._(
    'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013',
  );

  /// urn_ihe_pat_apsr_all_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_all_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:all:2010',
  );

  /// urn_ihe_pat_apsr_cancer_all_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_all_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:all:2010',
  );

  /// urn_ihe_pat_apsr_cancer_breast_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_breast_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:breast:2010',
  );

  /// urn_ihe_pat_apsr_cancer_colon_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_colon_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:colon:2010',
  );

  /// urn_ihe_pat_apsr_cancer_prostate_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_prostate_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:prostate:2010',
  );

  /// urn_ihe_pat_apsr_cancer_thyroid_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_thyroid_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:thyroid:2010',
  );

  /// urn_ihe_pat_apsr_cancer_lung_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_lung_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:lung:2010',
  );

  /// urn_ihe_pat_apsr_cancer_skin_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_skin_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:skin:2010',
  );

  /// urn_ihe_pat_apsr_cancer_kidney_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_kidney_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:kidney:2010',
  );

  /// urn_ihe_pat_apsr_cancer_cervix_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_cervix_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:cervix:2010',
  );

  /// urn_ihe_pat_apsr_cancer_endometrium_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_endometrium_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:endometrium:2010',
  );

  /// urn_ihe_pat_apsr_cancer_ovary_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_ovary_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:ovary:2010',
  );

  /// urn_ihe_pat_apsr_cancer_esophagus__2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_esophagus__2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:esophagus: 2010',
  );

  /// urn_ihe_pat_apsr_cancer_stomach__2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_stomach__2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:stomach: 2010',
  );

  /// urn_ihe_pat_apsr_cancer_liver_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_liver_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:liver:2010',
  );

  /// urn_ihe_pat_apsr_cancer_pancreas__2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_pancreas__2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:pancreas: 2010',
  );

  /// urn_ihe_pat_apsr_cancer_testis_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_testis_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:testis:2010',
  );

  /// urn_ihe_pat_apsr_cancer_urinary_bladder_2010
  static final EndpointPayloadType
      urn_ihe_pat_apsr_cancer_urinary_bladder_2010 = EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:urinary_bladder:2010',
  );

  /// urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010
  static final EndpointPayloadType
      urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010 = EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010',
  );

  /// urn_ihe_pat_apsr_cancer_pharynx_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_pharynx_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:pharynx:2010',
  );

  /// urn_ihe_pat_apsr_cancer_salivary_gland_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_salivary_gland_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:salivary_gland:2010',
  );

  /// urn_ihe_pat_apsr_cancer_larynx_2010
  static final EndpointPayloadType urn_ihe_pat_apsr_cancer_larynx_2010 =
      EndpointPayloadType._(
    'urn:ihe:pat:apsr:cancer:larynx:2010',
  );

  /// urn_ihe_pharm_pre_2010
  static final EndpointPayloadType urn_ihe_pharm_pre_2010 =
      EndpointPayloadType._(
    'urn:ihe:pharm:pre:2010',
  );

  /// urn_ihe_pharm_padv_2010
  static final EndpointPayloadType urn_ihe_pharm_padv_2010 =
      EndpointPayloadType._(
    'urn:ihe:pharm:padv:2010',
  );

  /// urn_ihe_pharm_dis_2010
  static final EndpointPayloadType urn_ihe_pharm_dis_2010 =
      EndpointPayloadType._(
    'urn:ihe:pharm:dis:2010',
  );

  /// urn_ihe_pharm_pml_2013
  static final EndpointPayloadType urn_ihe_pharm_pml_2013 =
      EndpointPayloadType._(
    'urn:ihe:pharm:pml:2013',
  );

  /// urn_hl7_org_sdwg_ccda_structuredBody_1_1
  static final EndpointPayloadType urn_hl7_org_sdwg_ccda_structuredBody_1_1 =
      EndpointPayloadType._(
    'urn:hl7-org:sdwg:ccda-structuredBody:1.1',
  );

  /// urn_hl7_org_sdwg_ccda_nonXMLBody_1_1
  static final EndpointPayloadType urn_hl7_org_sdwg_ccda_nonXMLBody_1_1 =
      EndpointPayloadType._(
    'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1',
  );

  /// For instances where an Element is present but not value

  static final EndpointPayloadType elementOnly = EndpointPayloadType._('');

  /// List of all enum-like values
  static final List<EndpointPayloadType> values = [
    any,
    none,
    urn_ihe_pcc_handp_2008,
    urn_ihe_pcc_xphr_2007,
    urn_ihe_pcc_aps_2007,
    urn_ihe_pcc_xds_ms_2007,
    urn_ihe_pcc_edr_2007,
    urn_ihe_pcc_edes_2007,
    urn_ihe_pcc_apr_handp_2008,
    urn_ihe_pcc_apr_lab_2008,
    urn_ihe_pcc_apr_edu_2008,
    urn_ihe_pcc_irc_2008,
    urn_ihe_pcc_crc_2008,
    urn_ihe_pcc_cm_2008,
    urn_ihe_pcc_ic_2009,
    urn_ihe_pcc_tn_2007,
    urn_ihe_pcc_nn_2007,
    urn_ihe_pcc_ctn_2007,
    urn_ihe_pcc_edpn_2007,
    urn_ihe_pcc_hp_2008,
    urn_ihe_pcc_ldhp_2009,
    urn_ihe_pcc_lds_2009,
    urn_ihe_pcc_mds_2009,
    urn_ihe_pcc_nds_2010,
    urn_ihe_pcc_ppvs_2010,
    urn_ihe_pcc_trs_2011,
    urn_ihe_pcc_ets_2011,
    urn_ihe_pcc_its_2011,
    urn_ihe_iti_bppc_2007,
    urn_ihe_iti_bppc_sd_2007,
    urn_ihe_iti_xdw_2011_workflowDoc,
    urn_ihe_iti_dsg_detached_2014,
    urn_ihe_iti_dsg_enveloping_2014,
    urn_ihe_iti_xds_sd_pdf_2008,
    urn_ihe_iti_xds_sd_text_2008,
    urn_ihe_lab_xd_lab_2008,
    urn_ihe_rad_TEXT,
    urn_ihe_rad_PDF,
    urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013,
    urn_ihe_card_imaging_2011,
    urn_ihe_card_CRC_2012,
    urn_ihe_card_EPRC_IE_2014,
    urn_ihe_dent_TEXT,
    urn_ihe_dent_PDF,
    urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013,
    urn_ihe_pat_apsr_all_2010,
    urn_ihe_pat_apsr_cancer_all_2010,
    urn_ihe_pat_apsr_cancer_breast_2010,
    urn_ihe_pat_apsr_cancer_colon_2010,
    urn_ihe_pat_apsr_cancer_prostate_2010,
    urn_ihe_pat_apsr_cancer_thyroid_2010,
    urn_ihe_pat_apsr_cancer_lung_2010,
    urn_ihe_pat_apsr_cancer_skin_2010,
    urn_ihe_pat_apsr_cancer_kidney_2010,
    urn_ihe_pat_apsr_cancer_cervix_2010,
    urn_ihe_pat_apsr_cancer_endometrium_2010,
    urn_ihe_pat_apsr_cancer_ovary_2010,
    urn_ihe_pat_apsr_cancer_esophagus__2010,
    urn_ihe_pat_apsr_cancer_stomach__2010,
    urn_ihe_pat_apsr_cancer_liver_2010,
    urn_ihe_pat_apsr_cancer_pancreas__2010,
    urn_ihe_pat_apsr_cancer_testis_2010,
    urn_ihe_pat_apsr_cancer_urinary_bladder_2010,
    urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010,
    urn_ihe_pat_apsr_cancer_pharynx_2010,
    urn_ihe_pat_apsr_cancer_salivary_gland_2010,
    urn_ihe_pat_apsr_cancer_larynx_2010,
    urn_ihe_pharm_pre_2010,
    urn_ihe_pharm_padv_2010,
    urn_ihe_pharm_dis_2010,
    urn_ihe_pharm_pml_2013,
    urn_hl7_org_sdwg_ccda_structuredBody_1_1,
    urn_hl7_org_sdwg_ccda_nonXMLBody_1_1,
  ];

  /// Clones the current instance
  @override
  EndpointPayloadType clone() => EndpointPayloadType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EndpointPayloadType withElement(Element? newElement) {
    return EndpointPayloadType._(
      value,
      element: newElement,
    );
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
  EndpointPayloadType copyWith({
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
    return EndpointPayloadType._(
      newValue ?? value,
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
