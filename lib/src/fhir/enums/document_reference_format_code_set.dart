// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set is defined to be the set of format codes defined by the IHE Technical Framework, and also including additional format codes defined by the HL7. The value set is listed in HITSP C80 Table 2-153 Format Code Value Set Definition, with additions published later by IHE as published at http://wiki.ihe.net/index.php?title=IHE_Format_Codes and with additions published later by HL7 as published at https://confluence.hl7.org/display/SD/Format+Codes+for+IHE+XDS. This is the code specifying the technical format of the document. Along with the typeCode, it should provide sufficient information to allow any potential document consumer to know if it will be able to process the document. The code shall be sufficiently specific to ensure processing/display by identifying a document encoding, structure and template. The actual list of codes here is incomplete
enum DocumentReferenceFormatCodeSet {
  /// Display: Personal Health Records. Also known as HL7 CCD and HITSP C32
  /// Definition:
  urn_ihe_pcc_xphr_2007('urn:ihe:pcc:xphr:2007'),

  /// Display: IHE Antepartum Summary
  /// Definition:
  urn_ihe_pcc_aps_2007('urn:ihe:pcc:aps:2007'),

  /// Display: XDS Medical Summaries
  /// Definition:
  urn_ihe_pcc_xds_ms_2007('urn:ihe:pcc:xds-ms:2007'),

  /// Display: Emergency Department Referral (EDR)
  /// Definition:
  urn_ihe_pcc_edr_2007('urn:ihe:pcc:edr:2007'),

  /// Display: Emergency Department Encounter Summary (EDES)
  /// Definition:
  urn_ihe_pcc_edes_2007('urn:ihe:pcc:edes:2007'),

  /// Display: Antepartum Record (APR) - History and Physical
  /// Definition:
  urn_ihe_pcc_apr_handp_2008('urn:ihe:pcc:apr:handp:2008'),

  /// Display: Antepartum Record (APR) - Laboratory
  /// Definition:
  urn_ihe_pcc_apr_lab_2008('urn:ihe:pcc:apr:lab:2008'),

  /// Display: Antepartum Record (APR) - Education
  /// Definition:
  urn_ihe_pcc_apr_edu_2008('urn:ihe:pcc:apr:edu:2008'),

  /// Display: Cancer Registry Content (CRC)
  /// Definition:
  urn_ihe_pcc_crc_2008('urn:ihe:pcc:crc:2008'),

  /// Display: Care Management (CM)
  /// Definition:
  urn_ihe_pcc_cm_2008('urn:ihe:pcc:cm:2008'),

  /// Display: Immunization Content (IC)
  /// Definition:
  urn_ihe_pcc_ic_2008('urn:ihe:pcc:ic:2008'),

  /// Display: PCC TN
  /// Definition:
  urn_ihe_pcc_tn_2007('urn:ihe:pcc:tn:2007'),

  /// Display: PCC NN
  /// Definition:
  urn_ihe_pcc_nn_2007('urn:ihe:pcc:nn:2007'),

  /// Display: PCC CTN
  /// Definition:
  urn_ihe_pcc_ctn_2007('urn:ihe:pcc:ctn:2007'),

  /// Display: PCC EDPN
  /// Definition:
  urn_ihe_pcc_edpn_2007('urn:ihe:pcc:edpn:2007'),

  /// Display: PCC HP
  /// Definition:
  urn_ihe_pcc_hp_2008('urn:ihe:pcc:hp:2008'),

  /// Display: PCC LDHP
  /// Definition:
  urn_ihe_pcc_ldhp_2009('urn:ihe:pcc:ldhp:2009'),

  /// Display: PCC LDS
  /// Definition:
  urn_ihe_pcc_lds_2009('urn:ihe:pcc:lds:2009'),

  /// Display: PCC MDS
  /// Definition:
  urn_ihe_pcc_mds_2009('urn:ihe:pcc:mds:2009'),

  /// Display: PCC NDS
  /// Definition:
  urn_ihe_pcc_nds_2010('urn:ihe:pcc:nds:2010'),

  /// Display: PCC PPVS
  /// Definition:
  urn_ihe_pcc_ppvs_2010('urn:ihe:pcc:ppvs:2010'),

  /// Display: PCC TRS
  /// Definition:
  urn_ihe_pcc_trs_2011('urn:ihe:pcc:trs:2011'),

  /// Display: PCC ETS
  /// Definition:
  urn_ihe_pcc_ets_2011('urn:ihe:pcc:ets:2011'),

  /// Display: PCC ITS
  /// Definition:
  urn_ihe_pcc_its_2011('urn:ihe:pcc:its:2011'),

  /// Display: Routine Interfacility Patient Transport (RIPT)
  /// Definition:
  urn_ihe_pcc_ript_2017('urn:ihe:pcc:ript:2017'),

  /// Display: Basic Patient Privacy Consents
  /// Definition:
  urn_ihe_iti_bppc_2007('urn:ihe:iti:bppc:2007'),

  /// Display: Basic Patient Privacy Consents with Scanned Document
  /// Definition:
  urn_ihe_iti_bppc_sd_2007('urn:ihe:iti:bppc-sd:2007'),

  /// Display: PDF embedded in CDA per XDS-SD profile
  /// Definition:
  urn_ihe_iti_xds_sd_pdf_2008('urn:ihe:iti:xds-sd:pdf:2008'),

  /// Display: Text embedded in CDA per XDS-SD profile
  /// Definition:
  urn_ihe_iti_xds_sd_text_2008('urn:ihe:iti:xds-sd:text:2008'),

  /// Display: XDW Workflow Document
  /// Definition:
  urn_ihe_iti_xdw_2011_workflowDoc('urn:ihe:iti:xdw:2011:workflowDoc'),

  /// Display: DSG Detached Document
  /// Definition:
  urn_ihe_iti_dsg_detached_2014('urn:ihe:iti:dsg:detached:2014'),

  /// Display: DSG Enveloping Document
  /// Definition:
  urn_ihe_iti_dsg_enveloping_2014('urn:ihe:iti:dsg:enveloping:2014'),

  /// Display: Advanced Patient Privacy Consents
  /// Definition:
  urn_ihe_iti_appc_2016_consent('urn:ihe:iti:appc:2016:consent'),

  /// Display: mimeType Sufficient
  /// Definition: Code to be used when the mimeType is sufficient to understanding the technical format. May be used when no more specific FormatCode is available and the mimeType is sufficient to identify the technical format
  urn_ihe_iti_xds_2017_mimeTypeSufficient(
      'urn:ihe:iti:xds:2017:mimeTypeSufficient'),

  /// Display: CDA Laboratory Report
  /// Definition:
  urn_ihe_lab_xd_lab_2008('urn:ihe:lab:xd-lab:2008'),

  /// Display: Radiology XDS-I Text
  /// Definition:
  urn_ihe_rad_TEXT('urn:ihe:rad:TEXT'),

  /// Display: Radiology XDS-I PDF
  /// Definition:
  urn_ihe_rad_PDF('urn:ihe:rad:PDF'),

  /// Display: Radiology XDS-I Structured CDA
  /// Definition:
  urn_ihe_rad_CDA_ImagingReportStructuredHeadings_2013(
      'urn:ihe:rad:CDA:ImagingReportStructuredHeadings:2013'),

  /// Display: Cardiac Imaging Report
  /// Definition:
  urn_ihe_card_imaging_2011('urn:ihe:card:imaging:2011'),

  /// Display: Cardiology CRC
  /// Definition:
  urn_ihe_card_CRC_2012('urn:ihe:card:CRC:2012'),

  /// Display: Cardiology EPRC-IE
  /// Definition:
  urn_ihe_card_EPRC_IE_2014('urn:ihe:card:EPRC-IE:2014'),

  /// Display: Dental Text
  /// Definition:
  urn_ihe_dent_TEXT('urn:ihe:dent:TEXT'),

  /// Display: Dental PDF
  /// Definition:
  urn_ihe_dent_PDF('urn:ihe:dent:PDF'),

  /// Display: Dental CDA
  /// Definition:
  urn_ihe_dent_CDA_ImagingReportStructuredHeadings_2013(
      'urn:ihe:dent:CDA:ImagingReportStructuredHeadings:2013'),

  /// Display: Anatomic Pathology Structured Report All
  /// Definition:
  urn_ihe_pat_apsr_all_2010('urn:ihe:pat:apsr:all:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer All
  /// Definition:
  urn_ihe_pat_apsr_cancer_all_2010('urn:ihe:pat:apsr:cancer:all:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Breast
  /// Definition:
  urn_ihe_pat_apsr_cancer_breast_2010('urn:ihe:pat:apsr:cancer:breast:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Colon
  /// Definition:
  urn_ihe_pat_apsr_cancer_colon_2010('urn:ihe:pat:apsr:cancer:colon:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Prostate
  /// Definition:
  urn_ihe_pat_apsr_cancer_prostate_2010(
      'urn:ihe:pat:apsr:cancer:prostate:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Thyroid
  /// Definition:
  urn_ihe_pat_apsr_cancer_thyroid_2010('urn:ihe:pat:apsr:cancer:thyroid:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Lung
  /// Definition:
  urn_ihe_pat_apsr_cancer_lung_2010('urn:ihe:pat:apsr:cancer:lung:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Skin
  /// Definition:
  urn_ihe_pat_apsr_cancer_skin_2010('urn:ihe:pat:apsr:cancer:skin:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Kidney
  /// Definition:
  urn_ihe_pat_apsr_cancer_kidney_2010('urn:ihe:pat:apsr:cancer:kidney:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Cervix
  /// Definition:
  urn_ihe_pat_apsr_cancer_cervix_2010('urn:ihe:pat:apsr:cancer:cervix:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Endometrium
  /// Definition:
  urn_ihe_pat_apsr_cancer_endometrium_2010(
      'urn:ihe:pat:apsr:cancer:endometrium:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Ovary
  /// Definition:
  urn_ihe_pat_apsr_cancer_ovary_2010('urn:ihe:pat:apsr:cancer:ovary:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Esophagus
  /// Definition:
  urn_ihe_pat_apsr_cancer_esophagus_2010(
      'urn:ihe:pat:apsr:cancer:esophagus:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Stomach
  /// Definition:
  urn_ihe_pat_apsr_cancer_stomach_2010('urn:ihe:pat:apsr:cancer:stomach:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Liver
  /// Definition:
  urn_ihe_pat_apsr_cancer_liver_2010('urn:ihe:pat:apsr:cancer:liver:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Pancreas
  /// Definition:
  urn_ihe_pat_apsr_cancer_pancreas_2010(
      'urn:ihe:pat:apsr:cancer:pancreas:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Testis
  /// Definition:
  urn_ihe_pat_apsr_cancer_testis_2010('urn:ihe:pat:apsr:cancer:testis:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Urinary Bladder
  /// Definition:
  urn_ihe_pat_apsr_cancer_urinary_bladder_2010(
      'urn:ihe:pat:apsr:cancer:urinary_bladder:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Lip Oral Cavity
  /// Definition:
  urn_ihe_pat_apsr_cancer_lip_oral_cavity_2010(
      'urn:ihe:pat:apsr:cancer:lip_oral_cavity:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Pharynx
  /// Definition:
  urn_ihe_pat_apsr_cancer_pharynx_2010('urn:ihe:pat:apsr:cancer:pharynx:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Salivary Gland
  /// Definition:
  urn_ihe_pat_apsr_cancer_salivary_gland_2010(
      'urn:ihe:pat:apsr:cancer:salivary_gland:2010'),

  /// Display: Anatomic Pathology Structured Report Cancer Larynx
  /// Definition:
  urn_ihe_pat_apsr_cancer_larynx_2010('urn:ihe:pat:apsr:cancer:larynx:2010'),

  /// Display: Pharmacy Pre
  /// Definition:
  urn_ihe_pharm_pre_2010('urn:ihe:pharm:pre:2010'),

  /// Display: Pharmacy PADV
  /// Definition:
  urn_ihe_pharm_padv_2010('urn:ihe:pharm:padv:2010'),

  /// Display: Pharmacy DIS
  /// Definition:
  urn_ihe_pharm_dis_2010('urn:ihe:pharm:dis:2010'),

  /// Display: Pharmacy PML
  /// Definition:
  urn_ihe_pharm_pml_2013('urn:ihe:pharm:pml:2013'),

  /// Display: For documents following C-CDA 1.1 constraints using a structured body.
  /// Definition:
  urn_hl7_org_sdwg_ccda_structuredBody_1_1(
      'urn:hl7-org:sdwg:ccda-structuredBody:1.1'),

  /// Display: For documents following C-CDA 1.1 constraints using a non structured body.
  /// Definition:
  urn_hl7_org_sdwg_ccda_nonXMLBody_1_1('urn:hl7-org:sdwg:ccda-nonXMLBody:1.1'),

  /// Display: For documents following C-CDA 2.1 constraints using a structured body.
  /// Definition:
  urn_hl7_org_sdwg_ccda_structuredBody_2_1(
      'urn:hl7-org:sdwg:ccda-structuredBody:2.1'),

  /// Display: For documents following C-CDA 2.1 constraints using a non structured body.
  /// Definition:
  urn_hl7_org_sdwg_ccda_nonXMLBody_2_1('urn:hl7-org:sdwg:ccda-nonXMLBody:2.1'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DocumentReferenceFormatCodeSet(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DocumentReferenceFormatCodeSet] instances.
  static DocumentReferenceFormatCodeSet fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceFormatCodeSet.elementOnly.withElement(
        element,
      );
    }
    return DocumentReferenceFormatCodeSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DocumentReferenceFormatCodeSet withElement(Element? newElement) {
    return DocumentReferenceFormatCodeSet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
