// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set is defined to be the set of format codes defined by the IHE Technical Framework, and also including additional format codes defined by the HL7. The value set is listed in HITSP C80 Table 2-153 Format Code Value Set Definition, with additions published later by IHE as published at http://wiki.ihe.net/index.php?title=IHE_Format_Codes and with additions published later by HL7 as published at https://confluence.hl7.org/display/SD/Format+Codes+for+IHE+XDS. This is the code specifying the technical format of the document. Along with the typeCode, it should provide sufficient information to allow any potential document consumer to know if it will be able to process the document. The code shall be sufficiently specific to ensure processing/display by identifying a document encoding, structure and template. The actual list of codes here is incomplete
class DocumentReferenceFormatCodeSet {
  // Private constructor for internal use (like enum)
  DocumentReferenceFormatCodeSet._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DocumentReferenceFormatCodeSet values
  /// urn_ihe_pcc_xphr_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_xphr_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:xphr:2007',
  );

  /// urn_ihe_pcc_aps_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_aps_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:aps:2007',
  );

  /// urn_ihe_pcc_xds_ms_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_xds_ms_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:xds-ms:2007',
  );

  /// urn_ihe_pcc_edr_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_edr_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:edr:2007',
  );

  /// urn_ihe_pcc_edes_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_edes_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:edes:2007',
  );

  /// urn_ihe_pcc_apr_handp_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_apr_handp_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:apr:handp:2008',
  );

  /// urn_ihe_pcc_apr_lab_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_apr_lab_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:apr:lab:2008',
  );

  /// urn_ihe_pcc_apr_edu_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_apr_edu_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:apr:edu:2008',
  );

  /// urn_ihe_pcc_crc_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_crc_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:crc:2008',
  );

  /// urn_ihe_pcc_cm_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_cm_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:cm:2008',
  );

  /// urn_ihe_pcc_ic_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ic_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ic:2008',
  );

  /// urn_ihe_pcc_tn_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_tn_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:tn:2007',
  );

  /// urn_ihe_pcc_nn_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_nn_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:nn:2007',
  );

  /// urn_ihe_pcc_ctn_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ctn_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ctn:2007',
  );

  /// urn_ihe_pcc_edpn_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_edpn_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:edpn:2007',
  );

  /// urn_ihe_pcc_hp_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_hp_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:hp:2008',
  );

  /// urn_ihe_pcc_ldhp_2009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ldhp_2009 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ldhp:2009',
  );

  /// urn_ihe_pcc_lds_2009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_lds_2009 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:lds:2009',
  );

  /// urn_ihe_pcc_mds_2009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_mds_2009 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:mds:2009',
  );

  /// urn_ihe_pcc_nds_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_nds_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:nds:2010',
  );

  /// urn_ihe_pcc_ppvs_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ppvs_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ppvs:2010',
  );

  /// urn_ihe_pcc_trs_2011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_trs_2011 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:trs:2011',
  );

  /// urn_ihe_pcc_ets_2011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ets_2011 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ets:2011',
  );

  /// urn_ihe_pcc_its_2011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_its_2011 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:its:2011',
  );

  /// urn_ihe_pcc_ript_2017
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pcc_ript_2017 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pcc:ript:2017',
  );

  /// urn_ihe_iti_bppc_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_bppc_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:bppc:2007',
  );

  /// urn_ihe_iti_bppc_sd_2007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_bppc_sd_2007 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:bppc-sd:2007',
  );

  /// urn_ihe_iti_xds_sd_pdf_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_xds_sd_pdf_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:xds-sd:pdf:2008',
  );

  /// urn_ihe_iti_xds_sd_text_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_xds_sd_text_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:xds-sd:text:2008',
  );

  /// urn_ihe_iti_xdw_2011_workflowDoc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_xdw_2011_workflowDoc =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:xdw:2011:workflowDoc',
  );

  /// urn_ihe_iti_dsg_detached_2014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_dsg_detached_2014 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:dsg:detached:2014',
  );

  /// urn_ihe_iti_dsg_enveloping_2014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_dsg_enveloping_2014 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:dsg:enveloping:2014',
  );

  /// urn_ihe_iti_appc_2016_consent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_iti_appc_2016_consent =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:appc:2016:consent',
  );

  /// urn_ihe_iti_xds_2017_mimeTypeSufficient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_iti_xds_2017_mimeTypeSufficient =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:iti:xds:2017:mimeTypeSufficient',
  );

  /// urn_ihe_lab_xd_lab_2008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_lab_xd_lab_2008 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:lab:xd-lab:2008',
  );

  /// urn_ihe_rad_TEXT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_rad_TEXT =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:rad:TEXT',
  );

  /// urn_ihe_rad_PDF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_rad_PDF =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:rad:PDF',
  );

  /// urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013',
  );

  /// urn_ihe_card_imaging_2011
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_card_imaging_2011 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:card:imaging:2011',
  );

  /// urn_ihe_card_CRC_2012
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_card_CRC_2012 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:card:CRC:2012',
  );

  /// urn_ihe_card_EPRC_IE_2014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_card_EPRC_IE_2014 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:card:EPRC-IE:2014',
  );

  /// urn_ihe_dent_TEXT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_dent_TEXT =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:dent:TEXT',
  );

  /// urn_ihe_dent_PDF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_dent_PDF =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:dent:PDF',
  );

  /// urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013',
  );

  /// urn_ihe_pat_apsr_all_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pat_apsr_all_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:all:2010',
  );

  /// urn_ihe_pat_apsr_cancer_all_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pat_apsr_cancer_all_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:all:2010',
  );

  /// urn_ihe_pat_apsr_cancer_breast_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_breast_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:breast:2010',
  );

  /// urn_ihe_pat_apsr_cancer_colon_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_colon_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:colon:2010',
  );

  /// urn_ihe_pat_apsr_cancer_prostate_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_prostate_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:prostate:2010',
  );

  /// urn_ihe_pat_apsr_cancer_thyroid_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_thyroid_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:thyroid:2010',
  );

  /// urn_ihe_pat_apsr_cancer_lung_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_lung_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:lung:2010',
  );

  /// urn_ihe_pat_apsr_cancer_skin_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_skin_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:skin:2010',
  );

  /// urn_ihe_pat_apsr_cancer_kidney_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_kidney_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:kidney:2010',
  );

  /// urn_ihe_pat_apsr_cancer_cervix_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_cervix_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:cervix:2010',
  );

  /// urn_ihe_pat_apsr_cancer_endometrium_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_endometrium_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:endometrium:2010',
  );

  /// urn_ihe_pat_apsr_cancer_ovary_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_ovary_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:ovary:2010',
  );

  /// urn_ihe_pat_apsr_cancer_esophagus_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_esophagus_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:esophagus:2010',
  );

  /// urn_ihe_pat_apsr_cancer_stomach_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_stomach_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:stomach:2010',
  );

  /// urn_ihe_pat_apsr_cancer_liver_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_liver_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:liver:2010',
  );

  /// urn_ihe_pat_apsr_cancer_pancreas_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_pancreas_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:pancreas:2010',
  );

  /// urn_ihe_pat_apsr_cancer_testis_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_testis_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:testis:2010',
  );

  /// urn_ihe_pat_apsr_cancer_urinary_bladder_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_urinary_bladder_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:urinary_bladder:2010',
  );

  /// urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010',
  );

  /// urn_ihe_pat_apsr_cancer_pharynx_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_pharynx_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:pharynx:2010',
  );

  /// urn_ihe_pat_apsr_cancer_salivary_gland_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_salivary_gland_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:salivary_gland:2010',
  );

  /// urn_ihe_pat_apsr_cancer_larynx_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_ihe_pat_apsr_cancer_larynx_2010 = DocumentReferenceFormatCodeSet._(
    'urn:ihe:pat:apsr:cancer:larynx:2010',
  );

  /// urn_ihe_pharm_pre_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pharm_pre_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pharm:pre:2010',
  );

  /// urn_ihe_pharm_padv_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pharm_padv_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pharm:padv:2010',
  );

  /// urn_ihe_pharm_dis_2010
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pharm_dis_2010 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pharm:dis:2010',
  );

  /// urn_ihe_pharm_pml_2013
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet urn_ihe_pharm_pml_2013 =
      DocumentReferenceFormatCodeSet._(
    'urn:ihe:pharm:pml:2013',
  );

  /// urn_hl7_org_sdwg_ccda_structuredBody_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_hl7_org_sdwg_ccda_structuredBody_1_1 =
      DocumentReferenceFormatCodeSet._(
    'urn:hl7-org:sdwg:ccda-structuredBody:1.1',
  );

  /// urn_hl7_org_sdwg_ccda_nonXMLBody_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_hl7_org_sdwg_ccda_nonXMLBody_1_1 = DocumentReferenceFormatCodeSet._(
    'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1',
  );

  /// urn_hl7_org_sdwg_ccda_structuredBody_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_hl7_org_sdwg_ccda_structuredBody_2_1 =
      DocumentReferenceFormatCodeSet._(
    'urn:hl7-org:sdwg:ccda-structuredBody:2.1',
  );

  /// urn_hl7_org_sdwg_ccda_nonXMLBody_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DocumentReferenceFormatCodeSet
      urn_hl7_org_sdwg_ccda_nonXMLBody_2_1 = DocumentReferenceFormatCodeSet._(
    'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1',
  );

  /// For instances where an Element is present but not value

  static final DocumentReferenceFormatCodeSet elementOnly =
      DocumentReferenceFormatCodeSet._('');

  /// List of all enum-like values
  static final List<DocumentReferenceFormatCodeSet> values = [
    urn_ihe_pcc_xphr_2007,
    urn_ihe_pcc_aps_2007,
    urn_ihe_pcc_xds_ms_2007,
    urn_ihe_pcc_edr_2007,
    urn_ihe_pcc_edes_2007,
    urn_ihe_pcc_apr_handp_2008,
    urn_ihe_pcc_apr_lab_2008,
    urn_ihe_pcc_apr_edu_2008,
    urn_ihe_pcc_crc_2008,
    urn_ihe_pcc_cm_2008,
    urn_ihe_pcc_ic_2008,
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
    urn_ihe_pcc_ript_2017,
    urn_ihe_iti_bppc_2007,
    urn_ihe_iti_bppc_sd_2007,
    urn_ihe_iti_xds_sd_pdf_2008,
    urn_ihe_iti_xds_sd_text_2008,
    urn_ihe_iti_xdw_2011_workflowDoc,
    urn_ihe_iti_dsg_detached_2014,
    urn_ihe_iti_dsg_enveloping_2014,
    urn_ihe_iti_appc_2016_consent,
    urn_ihe_iti_xds_2017_mimeTypeSufficient,
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
    urn_ihe_pat_apsr_cancer_esophagus_2010,
    urn_ihe_pat_apsr_cancer_stomach_2010,
    urn_ihe_pat_apsr_cancer_liver_2010,
    urn_ihe_pat_apsr_cancer_pancreas_2010,
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
    urn_hl7_org_sdwg_ccda_structuredBody_2_1,
    urn_hl7_org_sdwg_ccda_nonXMLBody_2_1,
  ];

  /// Returns the enum value with an element attached
  DocumentReferenceFormatCodeSet withElement(Element? newElement) {
    return DocumentReferenceFormatCodeSet._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DocumentReferenceFormatCodeSet] from JSON.
  static DocumentReferenceFormatCodeSet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceFormatCodeSet.elementOnly.withElement(element);
    }
    return DocumentReferenceFormatCodeSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DocumentReferenceFormatCodeSet.$fhirCode';
}
