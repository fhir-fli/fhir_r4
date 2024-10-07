import 'package:json_annotation/json_annotation.dart';

/// This is an example value set defined by the FHIR project, that could be used to represent possible payload document types.
enum EndpointPayloadType {
  /// Display: Any
  /// Definition: Any payload type can be used with this endpoint, it is either a payload agnostic infrastructure (such as a storage repository), or some other type of endpoint where payload considerations are internally handled, and not available
  @JsonValue('any')
  any,

  /// Display: None
  /// Definition: This endpoint does not require any content to be sent; simply connecting to the endpoint is enough notification. This can be used as a 'ping' to wakeup a service to retrieve content, which could be to ensure security considerations are correctly handled
  @JsonValue('none')
  none,

  /// Display: History and Physical Specification
  @JsonValue('urn:ihe:pcc:handp:2008')
  urn_ihe_pcc_handp_2008,

  /// Display: HL7 CCD Document
  @JsonValue('urn:ihe:pcc:xphr:2007')
  urn_ihe_pcc_xphr_2007,

  /// Display: IHE Antepartum Summary
  @JsonValue('urn:ihe:pcc:aps:2007')
  urn_ihe_pcc_aps_2007,

  /// Display: XDS Medical Summaries
  @JsonValue('urn:ihe:pcc:xds-ms:2007')
  urn_ihe_pcc_xds_ms_2007,

  /// Display: Emergency Department Referral (EDR)
  @JsonValue('urn:ihe:pcc:edr:2007')
  urn_ihe_pcc_edr_2007,

  /// Display: Emergency Department Encounter Summary (EDES)
  @JsonValue('urn:ihe:pcc:edes:2007')
  urn_ihe_pcc_edes_2007,

  /// Display: Antepartum Record (APR) - History and Physical
  @JsonValue('urn:ihe:pcc:apr:handp:2008')
  urn_ihe_pcc_apr_handp_2008,

  /// Display: Antepartum Record (APR) - Laboratory
  @JsonValue('urn:ihe:pcc:apr:lab:2008')
  urn_ihe_pcc_apr_lab_2008,

  /// Display: Antepartum Record (APR) - Education
  @JsonValue('urn:ihe:pcc:apr:edu:2008')
  urn_ihe_pcc_apr_edu_2008,

  /// Display: Immunization Registry Content (IRC)
  @JsonValue('urn:ihe:pcc:irc:2008')
  urn_ihe_pcc_irc_2008,

  /// Display: Cancer Registry Content (CRC)
  @JsonValue('urn:ihe:pcc:crc:2008')
  urn_ihe_pcc_crc_2008,

  /// Display: Care Management (CM)
  @JsonValue('urn:ihe:pcc:cm:2008')
  urn_ihe_pcc_cm_2008,

  /// Display: Immunization Content (IC)
  @JsonValue('urn:ihe:pcc:ic:2009')
  urn_ihe_pcc_ic_2009,

  /// Display: PCC TN
  @JsonValue('urn:ihe:pcc:tn:2007')
  urn_ihe_pcc_tn_2007,

  /// Display: PCC NN
  @JsonValue('urn:ihe:pcc:nn:2007')
  urn_ihe_pcc_nn_2007,

  /// Display: PCC CTN
  @JsonValue('urn:ihe:pcc:ctn:2007')
  urn_ihe_pcc_ctn_2007,

  /// Display: PCC EDPN
  @JsonValue('urn:ihe:pcc:edpn:2007')
  urn_ihe_pcc_edpn_2007,

  /// Display: PCC HP
  @JsonValue('urn:ihe:pcc:hp:2008')
  urn_ihe_pcc_hp_2008,

  /// Display: PCC LDHP
  @JsonValue('urn:ihe:pcc:ldhp:2009')
  urn_ihe_pcc_ldhp_2009,

  /// Display: PCC LDS
  @JsonValue('urn:ihe:pcc:lds:2009')
  urn_ihe_pcc_lds_2009,

  /// Display: PCC MDS
  @JsonValue('urn:ihe:pcc:mds:2009')
  urn_ihe_pcc_mds_2009,

  /// Display: PCC NDS
  @JsonValue('urn:ihe:pcc:nds:2010')
  urn_ihe_pcc_nds_2010,

  /// Display: PCC PPVS
  @JsonValue('urn:ihe:pcc:ppvs:2010')
  urn_ihe_pcc_ppvs_2010,

  /// Display: PCC TRS
  @JsonValue('urn:ihe:pcc:trs:2011')
  urn_ihe_pcc_trs_2011,

  /// Display: PCC ETS
  @JsonValue('urn:ihe:pcc:ets:2011')
  urn_ihe_pcc_ets_2011,

  /// Display: PCC ITS
  @JsonValue('urn:ihe:pcc:its:2011')
  urn_ihe_pcc_its_2011,

  /// Display: Basic Patient Privacy Consents
  @JsonValue('urn:ihe:iti:bppc:2007')
  urn_ihe_iti_bppc_2007,

  /// Display: Basic Patient Privacy Consents with Scanned Document
  @JsonValue('urn:ihe:iti:bppc-sd:2007')
  urn_ihe_iti_bppc_sd_2007,

  /// Display: XDW Workflow Document
  @JsonValue('urn:ihe:iti:xdw:2011:workflowDoc')
  urn_ihe_iti_xdw_2011_workflowDoc,

  /// Display: DSG Detached Document
  @JsonValue('urn:ihe:iti:dsg:detached:2014')
  urn_ihe_iti_dsg_detached_2014,

  /// Display: DSG Enveloping Document
  @JsonValue('urn:ihe:iti:dsg:enveloping:2014')
  urn_ihe_iti_dsg_enveloping_2014,

  /// Display: PDF embedded in CDA per XDS-SD profile
  @JsonValue('urn:ihe:iti:xds-sd:pdf:2008')
  urn_ihe_iti_xds_sd_pdf_2008,

  /// Display: Text embedded in CDA per XDS-SD profile
  @JsonValue('urn:ihe:iti:xds-sd:text:2008')
  urn_ihe_iti_xds_sd_text_2008,

  /// Display: CDA Laboratory Report
  @JsonValue('urn:ihe:lab:xd-lab:2008')
  urn_ihe_lab_xd_lab_2008,

  /// Display: Radiology XDS-I Text
  @JsonValue('urn:ihe:rad:TEXT')
  urn_ihe_rad_TEXT,

  /// Display: Radiology XDS-I PDF
  @JsonValue('urn:ihe:rad:PDF')
  urn_ihe_rad_PDF,

  /// Display: Radiology XDS-I Structured CDA
  @JsonValue('urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013')
  urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013,

  /// Display: Cardiac Imaging Report
  @JsonValue('urn:ihe:card:imaging:2011')
  urn_ihe_card_imaging_2011,

  /// Display: Cardiology CRC
  @JsonValue('urn:ihe:card:CRC:2012')
  urn_ihe_card_CRC_2012,

  /// Display: Cardiology EPRC-IE
  @JsonValue('urn:ihe:card:EPRC-IE:2014')
  urn_ihe_card_EPRC_IE_2014,

  /// Display: Dental Text
  @JsonValue('urn:ihe:dent:TEXT')
  urn_ihe_dent_TEXT,

  /// Display: Dental PDF
  @JsonValue('urn:ihe:dent:PDF')
  urn_ihe_dent_PDF,

  /// Display: Dental CDA
  @JsonValue('urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013')
  urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013,

  /// Display: Anatomic Pathology Structured Report All
  @JsonValue('urn:ihe:pat:apsr:all:2010')
  urn_ihe_pat_apsr_all_2010,

  /// Display: Anatomic Pathology Structured Report Cancer All
  @JsonValue('urn:ihe:pat:apsr:cancer:all:2010')
  urn_ihe_pat_apsr_cancer_all_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Breast
  @JsonValue('urn:ihe:pat:apsr:cancer:breast:2010')
  urn_ihe_pat_apsr_cancer_breast_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Colon
  @JsonValue('urn:ihe:pat:apsr:cancer:colon:2010')
  urn_ihe_pat_apsr_cancer_colon_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Prostate
  @JsonValue('urn:ihe:pat:apsr:cancer:prostate:2010')
  urn_ihe_pat_apsr_cancer_prostate_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Thyroid
  @JsonValue('urn:ihe:pat:apsr:cancer:thyroid:2010')
  urn_ihe_pat_apsr_cancer_thyroid_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Lung
  @JsonValue('urn:ihe:pat:apsr:cancer:lung:2010')
  urn_ihe_pat_apsr_cancer_lung_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Skin
  @JsonValue('urn:ihe:pat:apsr:cancer:skin:2010')
  urn_ihe_pat_apsr_cancer_skin_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Kidney
  @JsonValue('urn:ihe:pat:apsr:cancer:kidney:2010')
  urn_ihe_pat_apsr_cancer_kidney_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Cervix
  @JsonValue('urn:ihe:pat:apsr:cancer:cervix:2010')
  urn_ihe_pat_apsr_cancer_cervix_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Endometrium
  @JsonValue('urn:ihe:pat:apsr:cancer:endometrium:2010')
  urn_ihe_pat_apsr_cancer_endometrium_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Ovary
  @JsonValue('urn:ihe:pat:apsr:cancer:ovary:2010')
  urn_ihe_pat_apsr_cancer_ovary_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Esophagus
  @JsonValue('urn:ihe:pat:apsr:cancer:esophagus: 2010')
  urn_ihe_pat_apsr_cancer_esophagus__2010,

  /// Display: Anatomic Pathology Structured Report Cancer Stomach
  @JsonValue('urn:ihe:pat:apsr:cancer:stomach: 2010')
  urn_ihe_pat_apsr_cancer_stomach__2010,

  /// Display: Anatomic Pathology Structured Report Cancer Liver
  @JsonValue('urn:ihe:pat:apsr:cancer:liver:2010')
  urn_ihe_pat_apsr_cancer_liver_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Pancreas
  @JsonValue('urn:ihe:pat:apsr:cancer:pancreas: 2010')
  urn_ihe_pat_apsr_cancer_pancreas__2010,

  /// Display: Anatomic Pathology Structured Report Cancer Testis
  @JsonValue('urn:ihe:pat:apsr:cancer:testis:2010')
  urn_ihe_pat_apsr_cancer_testis_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Urinary Bladder
  @JsonValue('urn:ihe:pat:apsr:cancer:urinary_bladder:2010')
  urn_ihe_pat_apsr_cancer_urinary_bladder_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Lip Oral Cavity
  @JsonValue('urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010')
  urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Pharynx
  @JsonValue('urn:ihe:pat:apsr:cancer:pharynx:2010')
  urn_ihe_pat_apsr_cancer_pharynx_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Salivary Gland
  @JsonValue('urn:ihe:pat:apsr:cancer:salivary_gland:2010')
  urn_ihe_pat_apsr_cancer_salivary_gland_2010,

  /// Display: Anatomic Pathology Structured Report Cancer Larynx
  @JsonValue('urn:ihe:pat:apsr:cancer:larynx:2010')
  urn_ihe_pat_apsr_cancer_larynx_2010,

  /// Display: Pharmacy Pre
  @JsonValue('urn:ihe:pharm:pre:2010')
  urn_ihe_pharm_pre_2010,

  /// Display: Pharmacy PADV
  @JsonValue('urn:ihe:pharm:padv:2010')
  urn_ihe_pharm_padv_2010,

  /// Display: Pharmacy DIS
  @JsonValue('urn:ihe:pharm:dis:2010')
  urn_ihe_pharm_dis_2010,

  /// Display: Pharmacy PML
  @JsonValue('urn:ihe:pharm:pml:2013')
  urn_ihe_pharm_pml_2013,

  /// Display: For documents following C-CDA constraints using a structured body.
  @JsonValue('urn:hl7-org:sdwg:ccda-structuredBody:1.1')
  urn_hl7_org_sdwg_ccda_structuredBody_1_1,

  /// Display: For documents following C-CDA constraints using a non structured body.
  @JsonValue('urn:hl7-org:sdwg:ccda-nonXMLBody:1.1')
  urn_hl7_org_sdwg_ccda_nonXMLBody_1_1,
  ;

  @override
  String toString() {
    switch (this) {
      case any:
        return 'any';
      case none:
        return 'none';
      case urn_ihe_pcc_handp_2008:
        return 'urn:ihe:pcc:handp:2008';
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
      case urn_ihe_pcc_irc_2008:
        return 'urn:ihe:pcc:irc:2008';
      case urn_ihe_pcc_crc_2008:
        return 'urn:ihe:pcc:crc:2008';
      case urn_ihe_pcc_cm_2008:
        return 'urn:ihe:pcc:cm:2008';
      case urn_ihe_pcc_ic_2009:
        return 'urn:ihe:pcc:ic:2009';
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
      case urn_ihe_iti_bppc_2007:
        return 'urn:ihe:iti:bppc:2007';
      case urn_ihe_iti_bppc_sd_2007:
        return 'urn:ihe:iti:bppc-sd:2007';
      case urn_ihe_iti_xdw_2011_workflowDoc:
        return 'urn:ihe:iti:xdw:2011:workflowDoc';
      case urn_ihe_iti_dsg_detached_2014:
        return 'urn:ihe:iti:dsg:detached:2014';
      case urn_ihe_iti_dsg_enveloping_2014:
        return 'urn:ihe:iti:dsg:enveloping:2014';
      case urn_ihe_iti_xds_sd_pdf_2008:
        return 'urn:ihe:iti:xds-sd:pdf:2008';
      case urn_ihe_iti_xds_sd_text_2008:
        return 'urn:ihe:iti:xds-sd:text:2008';
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
      case urn_ihe_pat_apsr_cancer_esophagus__2010:
        return 'urn:ihe:pat:apsr:cancer:esophagus: 2010';
      case urn_ihe_pat_apsr_cancer_stomach__2010:
        return 'urn:ihe:pat:apsr:cancer:stomach: 2010';
      case urn_ihe_pat_apsr_cancer_liver_2010:
        return 'urn:ihe:pat:apsr:cancer:liver:2010';
      case urn_ihe_pat_apsr_cancer_pancreas__2010:
        return 'urn:ihe:pat:apsr:cancer:pancreas: 2010';
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
    }
  }

  String toJson() => toString();
  EndpointPayloadType fromString(String str) {
    switch (str) {
      case 'any':
        return EndpointPayloadType.any;
      case 'none':
        return EndpointPayloadType.none;
      case 'urn:ihe:pcc:handp:2008':
        return EndpointPayloadType.urn_ihe_pcc_handp_2008;
      case 'urn:ihe:pcc:xphr:2007':
        return EndpointPayloadType.urn_ihe_pcc_xphr_2007;
      case 'urn:ihe:pcc:aps:2007':
        return EndpointPayloadType.urn_ihe_pcc_aps_2007;
      case 'urn:ihe:pcc:xds-ms:2007':
        return EndpointPayloadType.urn_ihe_pcc_xds_ms_2007;
      case 'urn:ihe:pcc:edr:2007':
        return EndpointPayloadType.urn_ihe_pcc_edr_2007;
      case 'urn:ihe:pcc:edes:2007':
        return EndpointPayloadType.urn_ihe_pcc_edes_2007;
      case 'urn:ihe:pcc:apr:handp:2008':
        return EndpointPayloadType.urn_ihe_pcc_apr_handp_2008;
      case 'urn:ihe:pcc:apr:lab:2008':
        return EndpointPayloadType.urn_ihe_pcc_apr_lab_2008;
      case 'urn:ihe:pcc:apr:edu:2008':
        return EndpointPayloadType.urn_ihe_pcc_apr_edu_2008;
      case 'urn:ihe:pcc:irc:2008':
        return EndpointPayloadType.urn_ihe_pcc_irc_2008;
      case 'urn:ihe:pcc:crc:2008':
        return EndpointPayloadType.urn_ihe_pcc_crc_2008;
      case 'urn:ihe:pcc:cm:2008':
        return EndpointPayloadType.urn_ihe_pcc_cm_2008;
      case 'urn:ihe:pcc:ic:2009':
        return EndpointPayloadType.urn_ihe_pcc_ic_2009;
      case 'urn:ihe:pcc:tn:2007':
        return EndpointPayloadType.urn_ihe_pcc_tn_2007;
      case 'urn:ihe:pcc:nn:2007':
        return EndpointPayloadType.urn_ihe_pcc_nn_2007;
      case 'urn:ihe:pcc:ctn:2007':
        return EndpointPayloadType.urn_ihe_pcc_ctn_2007;
      case 'urn:ihe:pcc:edpn:2007':
        return EndpointPayloadType.urn_ihe_pcc_edpn_2007;
      case 'urn:ihe:pcc:hp:2008':
        return EndpointPayloadType.urn_ihe_pcc_hp_2008;
      case 'urn:ihe:pcc:ldhp:2009':
        return EndpointPayloadType.urn_ihe_pcc_ldhp_2009;
      case 'urn:ihe:pcc:lds:2009':
        return EndpointPayloadType.urn_ihe_pcc_lds_2009;
      case 'urn:ihe:pcc:mds:2009':
        return EndpointPayloadType.urn_ihe_pcc_mds_2009;
      case 'urn:ihe:pcc:nds:2010':
        return EndpointPayloadType.urn_ihe_pcc_nds_2010;
      case 'urn:ihe:pcc:ppvs:2010':
        return EndpointPayloadType.urn_ihe_pcc_ppvs_2010;
      case 'urn:ihe:pcc:trs:2011':
        return EndpointPayloadType.urn_ihe_pcc_trs_2011;
      case 'urn:ihe:pcc:ets:2011':
        return EndpointPayloadType.urn_ihe_pcc_ets_2011;
      case 'urn:ihe:pcc:its:2011':
        return EndpointPayloadType.urn_ihe_pcc_its_2011;
      case 'urn:ihe:iti:bppc:2007':
        return EndpointPayloadType.urn_ihe_iti_bppc_2007;
      case 'urn:ihe:iti:bppc-sd:2007':
        return EndpointPayloadType.urn_ihe_iti_bppc_sd_2007;
      case 'urn:ihe:iti:xdw:2011:workflowDoc':
        return EndpointPayloadType.urn_ihe_iti_xdw_2011_workflowDoc;
      case 'urn:ihe:iti:dsg:detached:2014':
        return EndpointPayloadType.urn_ihe_iti_dsg_detached_2014;
      case 'urn:ihe:iti:dsg:enveloping:2014':
        return EndpointPayloadType.urn_ihe_iti_dsg_enveloping_2014;
      case 'urn:ihe:iti:xds-sd:pdf:2008':
        return EndpointPayloadType.urn_ihe_iti_xds_sd_pdf_2008;
      case 'urn:ihe:iti:xds-sd:text:2008':
        return EndpointPayloadType.urn_ihe_iti_xds_sd_text_2008;
      case 'urn:ihe:lab:xd-lab:2008':
        return EndpointPayloadType.urn_ihe_lab_xd_lab_2008;
      case 'urn:ihe:rad:TEXT':
        return EndpointPayloadType.urn_ihe_rad_TEXT;
      case 'urn:ihe:rad:PDF':
        return EndpointPayloadType.urn_ihe_rad_PDF;
      case 'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013':
        return EndpointPayloadType
            .urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013;
      case 'urn:ihe:card:imaging:2011':
        return EndpointPayloadType.urn_ihe_card_imaging_2011;
      case 'urn:ihe:card:CRC:2012':
        return EndpointPayloadType.urn_ihe_card_CRC_2012;
      case 'urn:ihe:card:EPRC-IE:2014':
        return EndpointPayloadType.urn_ihe_card_EPRC_IE_2014;
      case 'urn:ihe:dent:TEXT':
        return EndpointPayloadType.urn_ihe_dent_TEXT;
      case 'urn:ihe:dent:PDF':
        return EndpointPayloadType.urn_ihe_dent_PDF;
      case 'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013':
        return EndpointPayloadType
            .urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013;
      case 'urn:ihe:pat:apsr:all:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_all_2010;
      case 'urn:ihe:pat:apsr:cancer:all:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_all_2010;
      case 'urn:ihe:pat:apsr:cancer:breast:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_breast_2010;
      case 'urn:ihe:pat:apsr:cancer:colon:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_colon_2010;
      case 'urn:ihe:pat:apsr:cancer:prostate:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_prostate_2010;
      case 'urn:ihe:pat:apsr:cancer:thyroid:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_thyroid_2010;
      case 'urn:ihe:pat:apsr:cancer:lung:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_lung_2010;
      case 'urn:ihe:pat:apsr:cancer:skin:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_skin_2010;
      case 'urn:ihe:pat:apsr:cancer:kidney:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_kidney_2010;
      case 'urn:ihe:pat:apsr:cancer:cervix:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_cervix_2010;
      case 'urn:ihe:pat:apsr:cancer:endometrium:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_endometrium_2010;
      case 'urn:ihe:pat:apsr:cancer:ovary:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_ovary_2010;
      case 'urn:ihe:pat:apsr:cancer:esophagus: 2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_esophagus__2010;
      case 'urn:ihe:pat:apsr:cancer:stomach: 2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_stomach__2010;
      case 'urn:ihe:pat:apsr:cancer:liver:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_liver_2010;
      case 'urn:ihe:pat:apsr:cancer:pancreas: 2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_pancreas__2010;
      case 'urn:ihe:pat:apsr:cancer:testis:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_testis_2010;
      case 'urn:ihe:pat:apsr:cancer:urinary_bladder:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_urinary_bladder_2010;
      case 'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010;
      case 'urn:ihe:pat:apsr:cancer:pharynx:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_pharynx_2010;
      case 'urn:ihe:pat:apsr:cancer:salivary_gland:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_salivary_gland_2010;
      case 'urn:ihe:pat:apsr:cancer:larynx:2010':
        return EndpointPayloadType.urn_ihe_pat_apsr_cancer_larynx_2010;
      case 'urn:ihe:pharm:pre:2010':
        return EndpointPayloadType.urn_ihe_pharm_pre_2010;
      case 'urn:ihe:pharm:padv:2010':
        return EndpointPayloadType.urn_ihe_pharm_padv_2010;
      case 'urn:ihe:pharm:dis:2010':
        return EndpointPayloadType.urn_ihe_pharm_dis_2010;
      case 'urn:ihe:pharm:pml:2013':
        return EndpointPayloadType.urn_ihe_pharm_pml_2013;
      case 'urn:hl7-org:sdwg:ccda-structuredBody:1.1':
        return EndpointPayloadType.urn_hl7_org_sdwg_ccda_structuredBody_1_1;
      case 'urn:hl7-org:sdwg:ccda-nonXMLBody:1.1':
        return EndpointPayloadType.urn_hl7_org_sdwg_ccda_nonXMLBody_1_1;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  EndpointPayloadType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
