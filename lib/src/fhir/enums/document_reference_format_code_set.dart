/// The value set is defined to be the set of format codes defined by the IHE Technical Framework, and also including additional format codes defined by the    HL7. The value set is listed in HITSP C80 Table 2-153 Format Code Value Set Definition,    with additions published later by IHE as published    at http://wiki.ihe.net/index.php?title=IHE_Format_Codes   and with additions published later by HL7 as published at https://confluence.hl7.org/display/SD/Format+Codes+for+IHE+XDS.   This is the code specifying the technical format of the document. Along with the typeCode,    it should provide sufficient information to allow any potential document consumer to know    if it will be able to process the document. The code shall be sufficiently specific to    ensure processing/display by identifying a document encoding, structure and template. The actual list of codes here is incomplete
enum DocumentReferenceFormatCodeSet {
  /// Display: Personal Health Records. Also known as HL7 CCD and HITSP C32
  urn_ihe_pcc_xphr_2007,

  /// Display: IHE Antepartum Summary
  urn_ihe_pcc_aps_2007,

  /// Display: XDS Medical Summaries
  urn_ihe_pcc_xds_ms_2007,

  /// Display: Emergency Department Referral (EDR)
  urn_ihe_pcc_edr_2007,

  /// Display: Emergency Department Encounter Summary (EDES)
  urn_ihe_pcc_edes_2007,

  /// Display: Antepartum Record (APR) - History and Physical
  urn_ihe_pcc_apr_handp_2008,

  /// Display: Antepartum Record (APR) - Laboratory
  urn_ihe_pcc_apr_lab_2008,

  /// Display: Antepartum Record (APR) - Education
  urn_ihe_pcc_apr_edu_2008,

  /// Display: Cancer Registry Content (CRC)
  urn_ihe_pcc_crc_2008,

  /// Display: Care Management (CM)
  urn_ihe_pcc_cm_2008,

  /// Display: Immunization Content (IC)
  urn_ihe_pcc_ic_2008,

  /// Display: PCC TN
  urn_ihe_pcc_tn_2007,

  /// Display: PCC NN
  urn_ihe_pcc_nn_2007,

  /// Display: PCC CTN
  urn_ihe_pcc_ctn_2007,

  /// Display: PCC EDPN
  urn_ihe_pcc_edpn_2007,

  /// Display: PCC HP
  urn_ihe_pcc_hp_2008,

  /// Display: PCC LDHP
  urn_ihe_pcc_ldhp_2009,

  /// Display: PCC LDS
  urn_ihe_pcc_lds_2009,

  /// Display: PCC MDS
  urn_ihe_pcc_mds_2009,

  /// Display: PCC NDS
  urn_ihe_pcc_nds_2010,

  /// Display: PCC PPVS
  urn_ihe_pcc_ppvs_2010,

  /// Display: PCC TRS
  urn_ihe_pcc_trs_2011,

  /// Display: PCC ETS
  urn_ihe_pcc_ets_2011,

  /// Display: PCC ITS
  urn_ihe_pcc_its_2011,

  /// Display: Routine Interfacility Patient Transport (RIPT)
  urn_ihe_pcc_ript_2017,

  /// Display: Basic Patient Privacy Consents
  urn_ihe_iti_bppc_2007,

  /// Display: Basic Patient Privacy Consents with Scanned Document
  urn_ihe_iti_bppc_sd_2007,

  /// Display: PDF embedded in CDA per XDS-SD profile
  urn_ihe_iti_xds_sd_pdf_2008,

  /// Display: Text embedded in CDA per XDS-SD profile
  urn_ihe_iti_xds_sd_text_2008,

  /// Display: XDW Workflow Document
  urn_ihe_iti_xdw_2011_workflowDoc,

  /// Display: DSG Detached Document
  urn_ihe_iti_dsg_detached_2014,

  /// Display: DSG Enveloping Document
  urn_ihe_iti_dsg_enveloping_2014,

  /// Display: Advanced Patient Privacy Consents
  urn_ihe_iti_appc_2016_consent,

  /// Display: mimeType Sufficient
  /// Definition: Code to be used when the mimeType is sufficient to understanding the technical format. May be used when no more specific FormatCode is available and the mimeType is sufficient to identify the technical format
  urn_ihe_iti_xds_2017_mimeTypeSufficient,

  /// Display: CDA Laboratory Report
  urn_ihe_lab_xd_lab_2008,

  /// Display: Radiology XDS-I Text
  urn_ihe_rad_TEXT,

  /// Display: Radiology XDS-I PDF
  urn_ihe_rad_PDF,

  /// Display: Radiology XDS-I Structured CDA
  urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013,

  /// Display: Cardiac Imaging Report
  urn_ihe_card_imaging_2011,

  /// Display: Cardiology CRC
  urn_ihe_card_CRC_2012,

  /// Display: Cardiology EPRC-IE
  urn_ihe_card_EPRC_IE_2014,

  /// Display: Dental Text
  urn_ihe_dent_TEXT,

  /// Display: Dental PDF
  urn_ihe_dent_PDF,

  /// Display: Dental CDA
  urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013,

  /// Display: Anatomic Pathology Structured Report All
  urn_ihe_pat_apsr_all_2010,

  /// Display: Anatomic Pathology Structured Report Cancer All
  urn_ihe_pat_apsr_cancer_all_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Breast
  urn_ihe_pat_apsr_cancer_breast_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Colon
  urn_ihe_pat_apsr_cancer_colon_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Prostate
  urn_ihe_pat_apsr_cancer_prostate_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Thyroid
  urn_ihe_pat_apsr_cancer_thyroid_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Lung
  urn_ihe_pat_apsr_cancer_lung_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Skin
  urn_ihe_pat_apsr_cancer_skin_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Kidney
  urn_ihe_pat_apsr_cancer_kidney_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Cervix
  urn_ihe_pat_apsr_cancer_cervix_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Endometrium
  urn_ihe_pat_apsr_cancer_endometrium_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Ovary
  urn_ihe_pat_apsr_cancer_ovary_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Esophagus
  urn_ihe_pat_apsr_cancer_esophagus_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Stomach
  urn_ihe_pat_apsr_cancer_stomach_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Liver
  urn_ihe_pat_apsr_cancer_liver_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Pancreas
  urn_ihe_pat_apsr_cancer_pancreas_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Testis
  urn_ihe_pat_apsr_cancer_testis_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Urinary Bladder
  urn_ihe_pat_apsr_cancer_urinary_bladder_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Lip Oral Cavity
  urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Pharynx
  urn_ihe_pat_apsr_cancer_pharynx_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Salivary Gland
  urn_ihe_pat_apsr_cancer_salivary_gland_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Larynx
  urn_ihe_pat_apsr_cancer_larynx_2010,

  /// Display: Pharmacy Pre
  urn_ihe_pharm_pre_2010,

  /// Display: Pharmacy PADV
  urn_ihe_pharm_padv_2010,

  /// Display: Pharmacy DIS
  urn_ihe_pharm_dis_2010,

  /// Display: Pharmacy PML
  urn_ihe_pharm_pml_2013,

  /// Display: For documents following C-CDA 1.1 constraints using a structured body.
  urn_hl7_org_sdwg_ccda_structuredBody_1_1,

  /// Display: For documents following C-CDA 1.1 constraints using a non structured body.
  urn_hl7_org_sdwg_ccda_nonXMLBody_1_1,

  /// Display: For documents following C-CDA 2.1 constraints using a structured body.
  urn_hl7_org_sdwg_ccda_structuredBody_2_1,

  /// Display: For documents following C-CDA 2.1 constraints using a non structured body.
  urn_hl7_org_sdwg_ccda_nonXMLBody_2_1,
  ;

  @override
  String toString() {
    switch (this) {
      case urn_ihe_pcc_xphr_2007:
        return 'urn:ihe:pcc:xphr:2007';
      case urn_ihe_pcc_aps_2007:
        return 'urn:ihe:pcc:aps:2007';
      case urn_ihe_pcc_xds_ms_2007:
        return 'urn:ihe:pcc:xds-ms:2007';
      case urn_ihe_pcc_edr_2007:
        return 'urn:ihe:pcc:edr:2007';
      case urn_ihe_pcc_edes_2007:
        return 'urn:ihe:pcc:edes:2007';
      case urn_ihe_pcc_apr_handp_2008:
        return 'urn:ihe:pcc:apr:handp:2008';
      case urn_ihe_pcc_apr_lab_2008:
        return 'urn:ihe:pcc:apr:lab:2008';
      case urn_ihe_pcc_apr_edu_2008:
        return 'urn:ihe:pcc:apr:edu:2008';
      case urn_ihe_pcc_crc_2008:
        return 'urn:ihe:pcc:crc:2008';
      case urn_ihe_pcc_cm_2008:
        return 'urn:ihe:pcc:cm:2008';
      case urn_ihe_pcc_ic_2008:
        return 'urn:ihe:pcc:ic:2008';
      case urn_ihe_pcc_tn_2007:
        return 'urn:ihe:pcc:tn:2007';
      case urn_ihe_pcc_nn_2007:
        return 'urn:ihe:pcc:nn:2007';
      case urn_ihe_pcc_ctn_2007:
        return 'urn:ihe:pcc:ctn:2007';
      case urn_ihe_pcc_edpn_2007:
        return 'urn:ihe:pcc:edpn:2007';
      case urn_ihe_pcc_hp_2008:
        return 'urn:ihe:pcc:hp:2008';
      case urn_ihe_pcc_ldhp_2009:
        return 'urn:ihe:pcc:ldhp:2009';
      case urn_ihe_pcc_lds_2009:
        return 'urn:ihe:pcc:lds:2009';
      case urn_ihe_pcc_mds_2009:
        return 'urn:ihe:pcc:mds:2009';
      case urn_ihe_pcc_nds_2010:
        return 'urn:ihe:pcc:nds:2010';
      case urn_ihe_pcc_ppvs_2010:
        return 'urn:ihe:pcc:ppvs:2010';
      case urn_ihe_pcc_trs_2011:
        return 'urn:ihe:pcc:trs:2011';
      case urn_ihe_pcc_ets_2011:
        return 'urn:ihe:pcc:ets:2011';
      case urn_ihe_pcc_its_2011:
        return 'urn:ihe:pcc:its:2011';
      case urn_ihe_pcc_ript_2017:
        return 'urn:ihe:pcc:ript:2017';
      case urn_ihe_iti_bppc_2007:
        return 'urn:ihe:iti:bppc:2007';
      case urn_ihe_iti_bppc_sd_2007:
        return 'urn:ihe:iti:bppc-sd:2007';
      case urn_ihe_iti_xds_sd_pdf_2008:
        return 'urn:ihe:iti:xds-sd:pdf:2008';
      case urn_ihe_iti_xds_sd_text_2008:
        return 'urn:ihe:iti:xds-sd:text:2008';
      case urn_ihe_iti_xdw_2011_workflowDoc:
        return 'urn:ihe:iti:xdw:2011:workflowDoc';
      case urn_ihe_iti_dsg_detached_2014:
        return 'urn:ihe:iti:dsg:detached:2014';
      case urn_ihe_iti_dsg_enveloping_2014:
        return 'urn:ihe:iti:dsg:enveloping:2014';
      case urn_ihe_iti_appc_2016_consent:
        return 'urn:ihe:iti:appc:2016:consent';
      case urn_ihe_iti_xds_2017_mimeTypeSufficient:
        return 'urn:ihe:iti:xds:2017:mimeTypeSufficient';
      case urn_ihe_lab_xd_lab_2008:
        return 'urn:ihe:lab:xd-lab:2008';
      case urn_ihe_rad_TEXT:
        return 'urn:ihe:rad:TEXT';
      case urn_ihe_rad_PDF:
        return 'urn:ihe:rad:PDF';
      case urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013:
        return 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013';
      case urn_ihe_card_imaging_2011:
        return 'urn:ihe:card:imaging:2011';
      case urn_ihe_card_CRC_2012:
        return 'urn:ihe:card:CRC:2012';
      case urn_ihe_card_EPRC_IE_2014:
        return 'urn:ihe:card:EPRC-IE:2014';
      case urn_ihe_dent_TEXT:
        return 'urn:ihe:dent:TEXT';
      case urn_ihe_dent_PDF:
        return 'urn:ihe:dent:PDF';
      case urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013:
        return 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013';
      case urn_ihe_pat_apsr_all_2010:
        return 'urn:ihe:pat:apsr:all:2010';
      case urn_ihe_pat_apsr_cancer_all_2010:
        return 'urn:ihe:pat:apsr:cancer:all:2010';
      case urn_ihe_pat_apsr_cancer_breast_2010:
        return 'urn:ihe:pat:apsr:cancer:breast:2010';
      case urn_ihe_pat_apsr_cancer_colon_2010:
        return 'urn:ihe:pat:apsr:cancer:colon:2010';
      case urn_ihe_pat_apsr_cancer_prostate_2010:
        return 'urn:ihe:pat:apsr:cancer:prostate:2010';
      case urn_ihe_pat_apsr_cancer_thyroid_2010:
        return 'urn:ihe:pat:apsr:cancer:thyroid:2010';
      case urn_ihe_pat_apsr_cancer_lung_2010:
        return 'urn:ihe:pat:apsr:cancer:lung:2010';
      case urn_ihe_pat_apsr_cancer_skin_2010:
        return 'urn:ihe:pat:apsr:cancer:skin:2010';
      case urn_ihe_pat_apsr_cancer_kidney_2010:
        return 'urn:ihe:pat:apsr:cancer:kidney:2010';
      case urn_ihe_pat_apsr_cancer_cervix_2010:
        return 'urn:ihe:pat:apsr:cancer:cervix:2010';
      case urn_ihe_pat_apsr_cancer_endometrium_2010:
        return 'urn:ihe:pat:apsr:cancer:endometrium:2010';
      case urn_ihe_pat_apsr_cancer_ovary_2010:
        return 'urn:ihe:pat:apsr:cancer:ovary:2010';
      case urn_ihe_pat_apsr_cancer_esophagus_2010:
        return 'urn:ihe:pat:apsr:cancer:esophagus:2010';
      case urn_ihe_pat_apsr_cancer_stomach_2010:
        return 'urn:ihe:pat:apsr:cancer:stomach:2010';
      case urn_ihe_pat_apsr_cancer_liver_2010:
        return 'urn:ihe:pat:apsr:cancer:liver:2010';
      case urn_ihe_pat_apsr_cancer_pancreas_2010:
        return 'urn:ihe:pat:apsr:cancer:pancreas:2010';
      case urn_ihe_pat_apsr_cancer_testis_2010:
        return 'urn:ihe:pat:apsr:cancer:testis:2010';
      case urn_ihe_pat_apsr_cancer_urinary_bladder_2010:
        return 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010';
      case urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010:
        return 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010';
      case urn_ihe_pat_apsr_cancer_pharynx_2010:
        return 'urn:ihe:pat:apsr:cancer:pharynx:2010';
      case urn_ihe_pat_apsr_cancer_salivary_gland_2010:
        return 'urn:ihe:pat:apsr:cancer:salivary_gland:2010';
      case urn_ihe_pat_apsr_cancer_larynx_2010:
        return 'urn:ihe:pat:apsr:cancer:larynx:2010';
      case urn_ihe_pharm_pre_2010:
        return 'urn:ihe:pharm:pre:2010';
      case urn_ihe_pharm_padv_2010:
        return 'urn:ihe:pharm:padv:2010';
      case urn_ihe_pharm_dis_2010:
        return 'urn:ihe:pharm:dis:2010';
      case urn_ihe_pharm_pml_2013:
        return 'urn:ihe:pharm:pml:2013';
      case urn_hl7_org_sdwg_ccda_structuredBody_1_1:
        return 'urn:hl7-org:sdwg:ccda-structuredBody:1.1';
      case urn_hl7_org_sdwg_ccda_nonXMLBody_1_1:
        return 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1';
      case urn_hl7_org_sdwg_ccda_structuredBody_2_1:
        return 'urn:hl7-org:sdwg:ccda-structuredBody:2.1';
      case urn_hl7_org_sdwg_ccda_nonXMLBody_2_1:
        return 'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1';
    }
  }

  String toJson() => toString();
  static DocumentReferenceFormatCodeSet fromString(String str) {
    switch (str) {
      case 'urn:ihe:pcc:xphr:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_xphr_2007;
      case 'urn:ihe:pcc:aps:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_aps_2007;
      case 'urn:ihe:pcc:xds-ms:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_xds_ms_2007;
      case 'urn:ihe:pcc:edr:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_edr_2007;
      case 'urn:ihe:pcc:edes:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_edes_2007;
      case 'urn:ihe:pcc:apr:handp:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_apr_handp_2008;
      case 'urn:ihe:pcc:apr:lab:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_apr_lab_2008;
      case 'urn:ihe:pcc:apr:edu:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_apr_edu_2008;
      case 'urn:ihe:pcc:crc:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_crc_2008;
      case 'urn:ihe:pcc:cm:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_cm_2008;
      case 'urn:ihe:pcc:ic:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ic_2008;
      case 'urn:ihe:pcc:tn:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_tn_2007;
      case 'urn:ihe:pcc:nn:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_nn_2007;
      case 'urn:ihe:pcc:ctn:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ctn_2007;
      case 'urn:ihe:pcc:edpn:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_edpn_2007;
      case 'urn:ihe:pcc:hp:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_hp_2008;
      case 'urn:ihe:pcc:ldhp:2009':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ldhp_2009;
      case 'urn:ihe:pcc:lds:2009':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_lds_2009;
      case 'urn:ihe:pcc:mds:2009':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_mds_2009;
      case 'urn:ihe:pcc:nds:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_nds_2010;
      case 'urn:ihe:pcc:ppvs:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ppvs_2010;
      case 'urn:ihe:pcc:trs:2011':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_trs_2011;
      case 'urn:ihe:pcc:ets:2011':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ets_2011;
      case 'urn:ihe:pcc:its:2011':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_its_2011;
      case 'urn:ihe:pcc:ript:2017':
        return DocumentReferenceFormatCodeSet.urn_ihe_pcc_ript_2017;
      case 'urn:ihe:iti:bppc:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_bppc_2007;
      case 'urn:ihe:iti:bppc-sd:2007':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_bppc_sd_2007;
      case 'urn:ihe:iti:xds-sd:pdf:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_xds_sd_pdf_2008;
      case 'urn:ihe:iti:xds-sd:text:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_xds_sd_text_2008;
      case 'urn:ihe:iti:xdw:2011:workflowDoc':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_xdw_2011_workflowDoc;
      case 'urn:ihe:iti:dsg:detached:2014':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_dsg_detached_2014;
      case 'urn:ihe:iti:dsg:enveloping:2014':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_dsg_enveloping_2014;
      case 'urn:ihe:iti:appc:2016:consent':
        return DocumentReferenceFormatCodeSet.urn_ihe_iti_appc_2016_consent;
      case 'urn:ihe:iti:xds:2017:mimeTypeSufficient':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_iti_xds_2017_mimeTypeSufficient;
      case 'urn:ihe:lab:xd-lab:2008':
        return DocumentReferenceFormatCodeSet.urn_ihe_lab_xd_lab_2008;
      case 'urn:ihe:rad:TEXT':
        return DocumentReferenceFormatCodeSet.urn_ihe_rad_TEXT;
      case 'urn:ihe:rad:PDF':
        return DocumentReferenceFormatCodeSet.urn_ihe_rad_PDF;
      case 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013;
      case 'urn:ihe:card:imaging:2011':
        return DocumentReferenceFormatCodeSet.urn_ihe_card_imaging_2011;
      case 'urn:ihe:card:CRC:2012':
        return DocumentReferenceFormatCodeSet.urn_ihe_card_CRC_2012;
      case 'urn:ihe:card:EPRC-IE:2014':
        return DocumentReferenceFormatCodeSet.urn_ihe_card_EPRC_IE_2014;
      case 'urn:ihe:dent:TEXT':
        return DocumentReferenceFormatCodeSet.urn_ihe_dent_TEXT;
      case 'urn:ihe:dent:PDF':
        return DocumentReferenceFormatCodeSet.urn_ihe_dent_PDF;
      case 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013;
      case 'urn:ihe:pat:apsr:all:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pat_apsr_all_2010;
      case 'urn:ihe:pat:apsr:cancer:all:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pat_apsr_cancer_all_2010;
      case 'urn:ihe:pat:apsr:cancer:breast:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_breast_2010;
      case 'urn:ihe:pat:apsr:cancer:colon:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_colon_2010;
      case 'urn:ihe:pat:apsr:cancer:prostate:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_prostate_2010;
      case 'urn:ihe:pat:apsr:cancer:thyroid:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_thyroid_2010;
      case 'urn:ihe:pat:apsr:cancer:lung:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pat_apsr_cancer_lung_2010;
      case 'urn:ihe:pat:apsr:cancer:skin:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pat_apsr_cancer_skin_2010;
      case 'urn:ihe:pat:apsr:cancer:kidney:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_kidney_2010;
      case 'urn:ihe:pat:apsr:cancer:cervix:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_cervix_2010;
      case 'urn:ihe:pat:apsr:cancer:endometrium:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_endometrium_2010;
      case 'urn:ihe:pat:apsr:cancer:ovary:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_ovary_2010;
      case 'urn:ihe:pat:apsr:cancer:esophagus:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_esophagus_2010;
      case 'urn:ihe:pat:apsr:cancer:stomach:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_stomach_2010;
      case 'urn:ihe:pat:apsr:cancer:liver:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_liver_2010;
      case 'urn:ihe:pat:apsr:cancer:pancreas:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_pancreas_2010;
      case 'urn:ihe:pat:apsr:cancer:testis:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_testis_2010;
      case 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_urinary_bladder_2010;
      case 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010;
      case 'urn:ihe:pat:apsr:cancer:pharynx:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_pharynx_2010;
      case 'urn:ihe:pat:apsr:cancer:salivary_gland:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_salivary_gland_2010;
      case 'urn:ihe:pat:apsr:cancer:larynx:2010':
        return DocumentReferenceFormatCodeSet
            .urn_ihe_pat_apsr_cancer_larynx_2010;
      case 'urn:ihe:pharm:pre:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pharm_pre_2010;
      case 'urn:ihe:pharm:padv:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pharm_padv_2010;
      case 'urn:ihe:pharm:dis:2010':
        return DocumentReferenceFormatCodeSet.urn_ihe_pharm_dis_2010;
      case 'urn:ihe:pharm:pml:2013':
        return DocumentReferenceFormatCodeSet.urn_ihe_pharm_pml_2013;
      case 'urn:hl7-org:sdwg:ccda-structuredBody:1.1':
        return DocumentReferenceFormatCodeSet
            .urn_hl7_org_sdwg_ccda_structuredBody_1_1;
      case 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1':
        return DocumentReferenceFormatCodeSet
            .urn_hl7_org_sdwg_ccda_nonXMLBody_1_1;
      case 'urn:hl7-org:sdwg:ccda-structuredBody:2.1':
        return DocumentReferenceFormatCodeSet
            .urn_hl7_org_sdwg_ccda_structuredBody_2_1;
      case 'urn:hl7-org:sdwg:ccda-nonXMLBody:2.1':
        return DocumentReferenceFormatCodeSet
            .urn_hl7_org_sdwg_ccda_nonXMLBody_2_1;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DocumentReferenceFormatCodeSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}