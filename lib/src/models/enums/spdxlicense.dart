// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The license that applies to an Implementation Guide (using an SPDX license Identifiers, or 'not-open-source'). The binding is required but new SPDX license Identifiers are allowed to be used (https://spdx.org/licenses/).
class SPDXLicense extends FhirCode {
  // Private constructor for internal use (like enum)
  SPDXLicense._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [SPDXLicense] from JSON.
  factory SPDXLicense.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SPDXLicense.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SPDXLicense cannot be constructed from JSON.',
      );
    }
    return SPDXLicense._(
      value,
      element: element,
    );
  }

  /// not_open_source
  static final SPDXLicense not_open_source = SPDXLicense._(
    'not-open-source',
  );

  /// value0BSD
  static final SPDXLicense value0BSD = SPDXLicense._(
    '0BSD',
  );

  /// AAL
  static final SPDXLicense AAL = SPDXLicense._(
    'AAL',
  );

  /// Abstyles
  static final SPDXLicense Abstyles = SPDXLicense._(
    'Abstyles',
  );

  /// Adobe_2006
  static final SPDXLicense Adobe_2006 = SPDXLicense._(
    'Adobe-2006',
  );

  /// Adobe_Glyph
  static final SPDXLicense Adobe_Glyph = SPDXLicense._(
    'Adobe-Glyph',
  );

  /// ADSL
  static final SPDXLicense ADSL = SPDXLicense._(
    'ADSL',
  );

  /// AFL_1_1
  static final SPDXLicense AFL_1_1 = SPDXLicense._(
    'AFL-1.1',
  );

  /// AFL_1_2
  static final SPDXLicense AFL_1_2 = SPDXLicense._(
    'AFL-1.2',
  );

  /// AFL_2_0
  static final SPDXLicense AFL_2_0 = SPDXLicense._(
    'AFL-2.0',
  );

  /// AFL_2_1
  static final SPDXLicense AFL_2_1 = SPDXLicense._(
    'AFL-2.1',
  );

  /// AFL_3_0
  static final SPDXLicense AFL_3_0 = SPDXLicense._(
    'AFL-3.0',
  );

  /// Afmparse
  static final SPDXLicense Afmparse = SPDXLicense._(
    'Afmparse',
  );

  /// AGPL_1_0_only
  static final SPDXLicense AGPL_1_0_only = SPDXLicense._(
    'AGPL-1.0-only',
  );

  /// AGPL_1_0_or_later
  static final SPDXLicense AGPL_1_0_or_later = SPDXLicense._(
    'AGPL-1.0-or-later',
  );

  /// AGPL_3_0_only
  static final SPDXLicense AGPL_3_0_only = SPDXLicense._(
    'AGPL-3.0-only',
  );

  /// AGPL_3_0_or_later
  static final SPDXLicense AGPL_3_0_or_later = SPDXLicense._(
    'AGPL-3.0-or-later',
  );

  /// Aladdin
  static final SPDXLicense Aladdin = SPDXLicense._(
    'Aladdin',
  );

  /// AMDPLPA
  static final SPDXLicense AMDPLPA = SPDXLicense._(
    'AMDPLPA',
  );

  /// AML
  static final SPDXLicense AML = SPDXLicense._(
    'AML',
  );

  /// AMPAS
  static final SPDXLicense AMPAS = SPDXLicense._(
    'AMPAS',
  );

  /// ANTLR_PD
  static final SPDXLicense ANTLR_PD = SPDXLicense._(
    'ANTLR-PD',
  );

  /// Apache_1_0
  static final SPDXLicense Apache_1_0 = SPDXLicense._(
    'Apache-1.0',
  );

  /// Apache_1_1
  static final SPDXLicense Apache_1_1 = SPDXLicense._(
    'Apache-1.1',
  );

  /// Apache_2_0
  static final SPDXLicense Apache_2_0 = SPDXLicense._(
    'Apache-2.0',
  );

  /// APAFML
  static final SPDXLicense APAFML = SPDXLicense._(
    'APAFML',
  );

  /// APL_1_0
  static final SPDXLicense APL_1_0 = SPDXLicense._(
    'APL-1.0',
  );

  /// APSL_1_0
  static final SPDXLicense APSL_1_0 = SPDXLicense._(
    'APSL-1.0',
  );

  /// APSL_1_1
  static final SPDXLicense APSL_1_1 = SPDXLicense._(
    'APSL-1.1',
  );

  /// APSL_1_2
  static final SPDXLicense APSL_1_2 = SPDXLicense._(
    'APSL-1.2',
  );

  /// APSL_2_0
  static final SPDXLicense APSL_2_0 = SPDXLicense._(
    'APSL-2.0',
  );

  /// Artistic_1_0_cl8
  static final SPDXLicense Artistic_1_0_cl8 = SPDXLicense._(
    'Artistic-1.0-cl8',
  );

  /// Artistic_1_0_Perl
  static final SPDXLicense Artistic_1_0_Perl = SPDXLicense._(
    'Artistic-1.0-Perl',
  );

  /// Artistic_1_0
  static final SPDXLicense Artistic_1_0 = SPDXLicense._(
    'Artistic-1.0',
  );

  /// Artistic_2_0
  static final SPDXLicense Artistic_2_0 = SPDXLicense._(
    'Artistic-2.0',
  );

  /// Bahyph
  static final SPDXLicense Bahyph = SPDXLicense._(
    'Bahyph',
  );

  /// Barr
  static final SPDXLicense Barr = SPDXLicense._(
    'Barr',
  );

  /// Beerware
  static final SPDXLicense Beerware = SPDXLicense._(
    'Beerware',
  );

  /// BitTorrent_1_0
  static final SPDXLicense BitTorrent_1_0 = SPDXLicense._(
    'BitTorrent-1.0',
  );

  /// BitTorrent_1_1
  static final SPDXLicense BitTorrent_1_1 = SPDXLicense._(
    'BitTorrent-1.1',
  );

  /// Borceux
  static final SPDXLicense Borceux = SPDXLicense._(
    'Borceux',
  );

  /// BSD_1_Clause
  static final SPDXLicense BSD_1_Clause = SPDXLicense._(
    'BSD-1-Clause',
  );

  /// BSD_2_Clause_FreeBSD
  static final SPDXLicense BSD_2_Clause_FreeBSD = SPDXLicense._(
    'BSD-2-Clause-FreeBSD',
  );

  /// BSD_2_Clause_NetBSD
  static final SPDXLicense BSD_2_Clause_NetBSD = SPDXLicense._(
    'BSD-2-Clause-NetBSD',
  );

  /// BSD_2_Clause_Patent
  static final SPDXLicense BSD_2_Clause_Patent = SPDXLicense._(
    'BSD-2-Clause-Patent',
  );

  /// BSD_2_Clause
  static final SPDXLicense BSD_2_Clause = SPDXLicense._(
    'BSD-2-Clause',
  );

  /// BSD_3_Clause_Attribution
  static final SPDXLicense BSD_3_Clause_Attribution = SPDXLicense._(
    'BSD-3-Clause-Attribution',
  );

  /// BSD_3_Clause_Clear
  static final SPDXLicense BSD_3_Clause_Clear = SPDXLicense._(
    'BSD-3-Clause-Clear',
  );

  /// BSD_3_Clause_LBNL
  static final SPDXLicense BSD_3_Clause_LBNL = SPDXLicense._(
    'BSD-3-Clause-LBNL',
  );

  /// BSD_3_Clause_No_Nuclear_License_2014
  static final SPDXLicense BSD_3_Clause_No_Nuclear_License_2014 = SPDXLicense._(
    'BSD-3-Clause-No-Nuclear-License-2014',
  );

  /// BSD_3_Clause_No_Nuclear_License
  static final SPDXLicense BSD_3_Clause_No_Nuclear_License = SPDXLicense._(
    'BSD-3-Clause-No-Nuclear-License',
  );

  /// BSD_3_Clause_No_Nuclear_Warranty
  static final SPDXLicense BSD_3_Clause_No_Nuclear_Warranty = SPDXLicense._(
    'BSD-3-Clause-No-Nuclear-Warranty',
  );

  /// BSD_3_Clause
  static final SPDXLicense BSD_3_Clause = SPDXLicense._(
    'BSD-3-Clause',
  );

  /// BSD_4_Clause_UC
  static final SPDXLicense BSD_4_Clause_UC = SPDXLicense._(
    'BSD-4-Clause-UC',
  );

  /// BSD_4_Clause
  static final SPDXLicense BSD_4_Clause = SPDXLicense._(
    'BSD-4-Clause',
  );

  /// BSD_Protection
  static final SPDXLicense BSD_Protection = SPDXLicense._(
    'BSD-Protection',
  );

  /// BSD_Source_Code
  static final SPDXLicense BSD_Source_Code = SPDXLicense._(
    'BSD-Source-Code',
  );

  /// BSL_1_0
  static final SPDXLicense BSL_1_0 = SPDXLicense._(
    'BSL-1.0',
  );

  /// bzip2_1_0_5
  static final SPDXLicense bzip2_1_0_5 = SPDXLicense._(
    'bzip2-1.0.5',
  );

  /// bzip2_1_0_6
  static final SPDXLicense bzip2_1_0_6 = SPDXLicense._(
    'bzip2-1.0.6',
  );

  /// Caldera
  static final SPDXLicense Caldera = SPDXLicense._(
    'Caldera',
  );

  /// CATOSL_1_1
  static final SPDXLicense CATOSL_1_1 = SPDXLicense._(
    'CATOSL-1.1',
  );

  /// CC_BY_1_0
  static final SPDXLicense CC_BY_1_0 = SPDXLicense._(
    'CC-BY-1.0',
  );

  /// CC_BY_2_0
  static final SPDXLicense CC_BY_2_0 = SPDXLicense._(
    'CC-BY-2.0',
  );

  /// CC_BY_2_5
  static final SPDXLicense CC_BY_2_5 = SPDXLicense._(
    'CC-BY-2.5',
  );

  /// CC_BY_3_0
  static final SPDXLicense CC_BY_3_0 = SPDXLicense._(
    'CC-BY-3.0',
  );

  /// CC_BY_4_0
  static final SPDXLicense CC_BY_4_0 = SPDXLicense._(
    'CC-BY-4.0',
  );

  /// CC_BY_NC_1_0
  static final SPDXLicense CC_BY_NC_1_0 = SPDXLicense._(
    'CC-BY-NC-1.0',
  );

  /// CC_BY_NC_2_0
  static final SPDXLicense CC_BY_NC_2_0 = SPDXLicense._(
    'CC-BY-NC-2.0',
  );

  /// CC_BY_NC_2_5
  static final SPDXLicense CC_BY_NC_2_5 = SPDXLicense._(
    'CC-BY-NC-2.5',
  );

  /// CC_BY_NC_3_0
  static final SPDXLicense CC_BY_NC_3_0 = SPDXLicense._(
    'CC-BY-NC-3.0',
  );

  /// CC_BY_NC_4_0
  static final SPDXLicense CC_BY_NC_4_0 = SPDXLicense._(
    'CC-BY-NC-4.0',
  );

  /// CC_BY_NC_ND_1_0
  static final SPDXLicense CC_BY_NC_ND_1_0 = SPDXLicense._(
    'CC-BY-NC-ND-1.0',
  );

  /// CC_BY_NC_ND_2_0
  static final SPDXLicense CC_BY_NC_ND_2_0 = SPDXLicense._(
    'CC-BY-NC-ND-2.0',
  );

  /// CC_BY_NC_ND_2_5
  static final SPDXLicense CC_BY_NC_ND_2_5 = SPDXLicense._(
    'CC-BY-NC-ND-2.5',
  );

  /// CC_BY_NC_ND_3_0
  static final SPDXLicense CC_BY_NC_ND_3_0 = SPDXLicense._(
    'CC-BY-NC-ND-3.0',
  );

  /// CC_BY_NC_ND_4_0
  static final SPDXLicense CC_BY_NC_ND_4_0 = SPDXLicense._(
    'CC-BY-NC-ND-4.0',
  );

  /// CC_BY_NC_SA_1_0
  static final SPDXLicense CC_BY_NC_SA_1_0 = SPDXLicense._(
    'CC-BY-NC-SA-1.0',
  );

  /// CC_BY_NC_SA_2_0
  static final SPDXLicense CC_BY_NC_SA_2_0 = SPDXLicense._(
    'CC-BY-NC-SA-2.0',
  );

  /// CC_BY_NC_SA_2_5
  static final SPDXLicense CC_BY_NC_SA_2_5 = SPDXLicense._(
    'CC-BY-NC-SA-2.5',
  );

  /// CC_BY_NC_SA_3_0
  static final SPDXLicense CC_BY_NC_SA_3_0 = SPDXLicense._(
    'CC-BY-NC-SA-3.0',
  );

  /// CC_BY_NC_SA_4_0
  static final SPDXLicense CC_BY_NC_SA_4_0 = SPDXLicense._(
    'CC-BY-NC-SA-4.0',
  );

  /// CC_BY_ND_1_0
  static final SPDXLicense CC_BY_ND_1_0 = SPDXLicense._(
    'CC-BY-ND-1.0',
  );

  /// CC_BY_ND_2_0
  static final SPDXLicense CC_BY_ND_2_0 = SPDXLicense._(
    'CC-BY-ND-2.0',
  );

  /// CC_BY_ND_2_5
  static final SPDXLicense CC_BY_ND_2_5 = SPDXLicense._(
    'CC-BY-ND-2.5',
  );

  /// CC_BY_ND_3_0
  static final SPDXLicense CC_BY_ND_3_0 = SPDXLicense._(
    'CC-BY-ND-3.0',
  );

  /// CC_BY_ND_4_0
  static final SPDXLicense CC_BY_ND_4_0 = SPDXLicense._(
    'CC-BY-ND-4.0',
  );

  /// CC_BY_SA_1_0
  static final SPDXLicense CC_BY_SA_1_0 = SPDXLicense._(
    'CC-BY-SA-1.0',
  );

  /// CC_BY_SA_2_0
  static final SPDXLicense CC_BY_SA_2_0 = SPDXLicense._(
    'CC-BY-SA-2.0',
  );

  /// CC_BY_SA_2_5
  static final SPDXLicense CC_BY_SA_2_5 = SPDXLicense._(
    'CC-BY-SA-2.5',
  );

  /// CC_BY_SA_3_0
  static final SPDXLicense CC_BY_SA_3_0 = SPDXLicense._(
    'CC-BY-SA-3.0',
  );

  /// CC_BY_SA_4_0
  static final SPDXLicense CC_BY_SA_4_0 = SPDXLicense._(
    'CC-BY-SA-4.0',
  );

  /// CC0_1_0
  static final SPDXLicense CC0_1_0 = SPDXLicense._(
    'CC0-1.0',
  );

  /// CDDL_1_0
  static final SPDXLicense CDDL_1_0 = SPDXLicense._(
    'CDDL-1.0',
  );

  /// CDDL_1_1
  static final SPDXLicense CDDL_1_1 = SPDXLicense._(
    'CDDL-1.1',
  );

  /// CDLA_Permissive_1_0
  static final SPDXLicense CDLA_Permissive_1_0 = SPDXLicense._(
    'CDLA-Permissive-1.0',
  );

  /// CDLA_Sharing_1_0
  static final SPDXLicense CDLA_Sharing_1_0 = SPDXLicense._(
    'CDLA-Sharing-1.0',
  );

  /// CECILL_1_0
  static final SPDXLicense CECILL_1_0 = SPDXLicense._(
    'CECILL-1.0',
  );

  /// CECILL_1_1
  static final SPDXLicense CECILL_1_1 = SPDXLicense._(
    'CECILL-1.1',
  );

  /// CECILL_2_0
  static final SPDXLicense CECILL_2_0 = SPDXLicense._(
    'CECILL-2.0',
  );

  /// CECILL_2_1
  static final SPDXLicense CECILL_2_1 = SPDXLicense._(
    'CECILL-2.1',
  );

  /// CECILL_B
  static final SPDXLicense CECILL_B = SPDXLicense._(
    'CECILL-B',
  );

  /// CECILL_C
  static final SPDXLicense CECILL_C = SPDXLicense._(
    'CECILL-C',
  );

  /// ClArtistic
  static final SPDXLicense ClArtistic = SPDXLicense._(
    'ClArtistic',
  );

  /// CNRI_Jython
  static final SPDXLicense CNRI_Jython = SPDXLicense._(
    'CNRI-Jython',
  );

  /// CNRI_Python_GPL_Compatible
  static final SPDXLicense CNRI_Python_GPL_Compatible = SPDXLicense._(
    'CNRI-Python-GPL-Compatible',
  );

  /// CNRI_Python
  static final SPDXLicense CNRI_Python = SPDXLicense._(
    'CNRI-Python',
  );

  /// Condor_1_1
  static final SPDXLicense Condor_1_1 = SPDXLicense._(
    'Condor-1.1',
  );

  /// CPAL_1_0
  static final SPDXLicense CPAL_1_0 = SPDXLicense._(
    'CPAL-1.0',
  );

  /// CPL_1_0
  static final SPDXLicense CPL_1_0 = SPDXLicense._(
    'CPL-1.0',
  );

  /// CPOL_1_02
  static final SPDXLicense CPOL_1_02 = SPDXLicense._(
    'CPOL-1.02',
  );

  /// Crossword
  static final SPDXLicense Crossword = SPDXLicense._(
    'Crossword',
  );

  /// CrystalStacker
  static final SPDXLicense CrystalStacker = SPDXLicense._(
    'CrystalStacker',
  );

  /// CUA_OPL_1_0
  static final SPDXLicense CUA_OPL_1_0 = SPDXLicense._(
    'CUA-OPL-1.0',
  );

  /// Cube
  static final SPDXLicense Cube = SPDXLicense._(
    'Cube',
  );

  /// curl
  static final SPDXLicense curl = SPDXLicense._(
    'curl',
  );

  /// D_FSL_1_0
  static final SPDXLicense D_FSL_1_0 = SPDXLicense._(
    'D-FSL-1.0',
  );

  /// diffmark
  static final SPDXLicense diffmark = SPDXLicense._(
    'diffmark',
  );

  /// DOC
  static final SPDXLicense DOC = SPDXLicense._(
    'DOC',
  );

  /// Dotseqn
  static final SPDXLicense Dotseqn = SPDXLicense._(
    'Dotseqn',
  );

  /// DSDP
  static final SPDXLicense DSDP = SPDXLicense._(
    'DSDP',
  );

  /// dvipdfm
  static final SPDXLicense dvipdfm = SPDXLicense._(
    'dvipdfm',
  );

  /// ECL_1_0
  static final SPDXLicense ECL_1_0 = SPDXLicense._(
    'ECL-1.0',
  );

  /// ECL_2_0
  static final SPDXLicense ECL_2_0 = SPDXLicense._(
    'ECL-2.0',
  );

  /// EFL_1_0
  static final SPDXLicense EFL_1_0 = SPDXLicense._(
    'EFL-1.0',
  );

  /// EFL_2_0
  static final SPDXLicense EFL_2_0 = SPDXLicense._(
    'EFL-2.0',
  );

  /// eGenix
  static final SPDXLicense eGenix = SPDXLicense._(
    'eGenix',
  );

  /// Entessa
  static final SPDXLicense Entessa = SPDXLicense._(
    'Entessa',
  );

  /// EPL_1_0
  static final SPDXLicense EPL_1_0 = SPDXLicense._(
    'EPL-1.0',
  );

  /// EPL_2_0
  static final SPDXLicense EPL_2_0 = SPDXLicense._(
    'EPL-2.0',
  );

  /// ErlPL_1_1
  static final SPDXLicense ErlPL_1_1 = SPDXLicense._(
    'ErlPL-1.1',
  );

  /// EUDatagrid
  static final SPDXLicense EUDatagrid = SPDXLicense._(
    'EUDatagrid',
  );

  /// EUPL_1_0
  static final SPDXLicense EUPL_1_0 = SPDXLicense._(
    'EUPL-1.0',
  );

  /// EUPL_1_1
  static final SPDXLicense EUPL_1_1 = SPDXLicense._(
    'EUPL-1.1',
  );

  /// EUPL_1_2
  static final SPDXLicense EUPL_1_2 = SPDXLicense._(
    'EUPL-1.2',
  );

  /// Eurosym
  static final SPDXLicense Eurosym = SPDXLicense._(
    'Eurosym',
  );

  /// Fair
  static final SPDXLicense Fair = SPDXLicense._(
    'Fair',
  );

  /// Frameworx_1_0
  static final SPDXLicense Frameworx_1_0 = SPDXLicense._(
    'Frameworx-1.0',
  );

  /// FreeImage
  static final SPDXLicense FreeImage = SPDXLicense._(
    'FreeImage',
  );

  /// FSFAP
  static final SPDXLicense FSFAP = SPDXLicense._(
    'FSFAP',
  );

  /// FSFUL
  static final SPDXLicense FSFUL = SPDXLicense._(
    'FSFUL',
  );

  /// FSFULLR
  static final SPDXLicense FSFULLR = SPDXLicense._(
    'FSFULLR',
  );

  /// FTL
  static final SPDXLicense FTL = SPDXLicense._(
    'FTL',
  );

  /// GFDL_1_1_only
  static final SPDXLicense GFDL_1_1_only = SPDXLicense._(
    'GFDL-1.1-only',
  );

  /// GFDL_1_1_or_later
  static final SPDXLicense GFDL_1_1_or_later = SPDXLicense._(
    'GFDL-1.1-or-later',
  );

  /// GFDL_1_2_only
  static final SPDXLicense GFDL_1_2_only = SPDXLicense._(
    'GFDL-1.2-only',
  );

  /// GFDL_1_2_or_later
  static final SPDXLicense GFDL_1_2_or_later = SPDXLicense._(
    'GFDL-1.2-or-later',
  );

  /// GFDL_1_3_only
  static final SPDXLicense GFDL_1_3_only = SPDXLicense._(
    'GFDL-1.3-only',
  );

  /// GFDL_1_3_or_later
  static final SPDXLicense GFDL_1_3_or_later = SPDXLicense._(
    'GFDL-1.3-or-later',
  );

  /// Giftware
  static final SPDXLicense Giftware = SPDXLicense._(
    'Giftware',
  );

  /// GL2PS
  static final SPDXLicense GL2PS = SPDXLicense._(
    'GL2PS',
  );

  /// Glide
  static final SPDXLicense Glide = SPDXLicense._(
    'Glide',
  );

  /// Glulxe
  static final SPDXLicense Glulxe = SPDXLicense._(
    'Glulxe',
  );

  /// gnuplot
  static final SPDXLicense gnuplot = SPDXLicense._(
    'gnuplot',
  );

  /// GPL_1_0_only
  static final SPDXLicense GPL_1_0_only = SPDXLicense._(
    'GPL-1.0-only',
  );

  /// GPL_1_0_or_later
  static final SPDXLicense GPL_1_0_or_later = SPDXLicense._(
    'GPL-1.0-or-later',
  );

  /// GPL_2_0_only
  static final SPDXLicense GPL_2_0_only = SPDXLicense._(
    'GPL-2.0-only',
  );

  /// GPL_2_0_or_later
  static final SPDXLicense GPL_2_0_or_later = SPDXLicense._(
    'GPL-2.0-or-later',
  );

  /// GPL_3_0_only
  static final SPDXLicense GPL_3_0_only = SPDXLicense._(
    'GPL-3.0-only',
  );

  /// GPL_3_0_or_later
  static final SPDXLicense GPL_3_0_or_later = SPDXLicense._(
    'GPL-3.0-or-later',
  );

  /// gSOAP_1_3b
  static final SPDXLicense gSOAP_1_3b = SPDXLicense._(
    'gSOAP-1.3b',
  );

  /// HaskellReport
  static final SPDXLicense HaskellReport = SPDXLicense._(
    'HaskellReport',
  );

  /// HPND
  static final SPDXLicense HPND = SPDXLicense._(
    'HPND',
  );

  /// IBM_pibs
  static final SPDXLicense IBM_pibs = SPDXLicense._(
    'IBM-pibs',
  );

  /// ICU
  static final SPDXLicense ICU = SPDXLicense._(
    'ICU',
  );

  /// IJG
  static final SPDXLicense IJG = SPDXLicense._(
    'IJG',
  );

  /// ImageMagick
  static final SPDXLicense ImageMagick = SPDXLicense._(
    'ImageMagick',
  );

  /// iMatix
  static final SPDXLicense iMatix = SPDXLicense._(
    'iMatix',
  );

  /// Imlib2
  static final SPDXLicense Imlib2 = SPDXLicense._(
    'Imlib2',
  );

  /// Info_ZIP
  static final SPDXLicense Info_ZIP = SPDXLicense._(
    'Info-ZIP',
  );

  /// Intel_ACPI
  static final SPDXLicense Intel_ACPI = SPDXLicense._(
    'Intel-ACPI',
  );

  /// Intel
  static final SPDXLicense Intel = SPDXLicense._(
    'Intel',
  );

  /// Interbase_1_0
  static final SPDXLicense Interbase_1_0 = SPDXLicense._(
    'Interbase-1.0',
  );

  /// IPA
  static final SPDXLicense IPA = SPDXLicense._(
    'IPA',
  );

  /// IPL_1_0
  static final SPDXLicense IPL_1_0 = SPDXLicense._(
    'IPL-1.0',
  );

  /// ISC
  static final SPDXLicense ISC = SPDXLicense._(
    'ISC',
  );

  /// JasPer_2_0
  static final SPDXLicense JasPer_2_0 = SPDXLicense._(
    'JasPer-2.0',
  );

  /// JSON
  static final SPDXLicense JSON = SPDXLicense._(
    'JSON',
  );

  /// LAL_1_2
  static final SPDXLicense LAL_1_2 = SPDXLicense._(
    'LAL-1.2',
  );

  /// LAL_1_3
  static final SPDXLicense LAL_1_3 = SPDXLicense._(
    'LAL-1.3',
  );

  /// Latex2e
  static final SPDXLicense Latex2e = SPDXLicense._(
    'Latex2e',
  );

  /// Leptonica
  static final SPDXLicense Leptonica = SPDXLicense._(
    'Leptonica',
  );

  /// LGPL_2_0_only
  static final SPDXLicense LGPL_2_0_only = SPDXLicense._(
    'LGPL-2.0-only',
  );

  /// LGPL_2_0_or_later
  static final SPDXLicense LGPL_2_0_or_later = SPDXLicense._(
    'LGPL-2.0-or-later',
  );

  /// LGPL_2_1_only
  static final SPDXLicense LGPL_2_1_only = SPDXLicense._(
    'LGPL-2.1-only',
  );

  /// LGPL_2_1_or_later
  static final SPDXLicense LGPL_2_1_or_later = SPDXLicense._(
    'LGPL-2.1-or-later',
  );

  /// LGPL_3_0_only
  static final SPDXLicense LGPL_3_0_only = SPDXLicense._(
    'LGPL-3.0-only',
  );

  /// LGPL_3_0_or_later
  static final SPDXLicense LGPL_3_0_or_later = SPDXLicense._(
    'LGPL-3.0-or-later',
  );

  /// LGPLLR
  static final SPDXLicense LGPLLR = SPDXLicense._(
    'LGPLLR',
  );

  /// Libpng
  static final SPDXLicense Libpng = SPDXLicense._(
    'Libpng',
  );

  /// libtiff
  static final SPDXLicense libtiff = SPDXLicense._(
    'libtiff',
  );

  /// LiLiQ_P_1_1
  static final SPDXLicense LiLiQ_P_1_1 = SPDXLicense._(
    'LiLiQ-P-1.1',
  );

  /// LiLiQ_R_1_1
  static final SPDXLicense LiLiQ_R_1_1 = SPDXLicense._(
    'LiLiQ-R-1.1',
  );

  /// LiLiQ_Rplus_1_1
  static final SPDXLicense LiLiQ_Rplus_1_1 = SPDXLicense._(
    'LiLiQ-Rplus-1.1',
  );

  /// Linux_OpenIB
  static final SPDXLicense Linux_OpenIB = SPDXLicense._(
    'Linux-OpenIB',
  );

  /// LPL_1_0
  static final SPDXLicense LPL_1_0 = SPDXLicense._(
    'LPL-1.0',
  );

  /// LPL_1_02
  static final SPDXLicense LPL_1_02 = SPDXLicense._(
    'LPL-1.02',
  );

  /// LPPL_1_0
  static final SPDXLicense LPPL_1_0 = SPDXLicense._(
    'LPPL-1.0',
  );

  /// LPPL_1_1
  static final SPDXLicense LPPL_1_1 = SPDXLicense._(
    'LPPL-1.1',
  );

  /// LPPL_1_2
  static final SPDXLicense LPPL_1_2 = SPDXLicense._(
    'LPPL-1.2',
  );

  /// LPPL_1_3a
  static final SPDXLicense LPPL_1_3a = SPDXLicense._(
    'LPPL-1.3a',
  );

  /// LPPL_1_3c
  static final SPDXLicense LPPL_1_3c = SPDXLicense._(
    'LPPL-1.3c',
  );

  /// MakeIndex
  static final SPDXLicense MakeIndex = SPDXLicense._(
    'MakeIndex',
  );

  /// MirOS
  static final SPDXLicense MirOS = SPDXLicense._(
    'MirOS',
  );

  /// MIT_0
  static final SPDXLicense MIT_0 = SPDXLicense._(
    'MIT-0',
  );

  /// MIT_advertising
  static final SPDXLicense MIT_advertising = SPDXLicense._(
    'MIT-advertising',
  );

  /// MIT_CMU
  static final SPDXLicense MIT_CMU = SPDXLicense._(
    'MIT-CMU',
  );

  /// MIT_enna
  static final SPDXLicense MIT_enna = SPDXLicense._(
    'MIT-enna',
  );

  /// MIT_feh
  static final SPDXLicense MIT_feh = SPDXLicense._(
    'MIT-feh',
  );

  /// MIT
  static final SPDXLicense MIT = SPDXLicense._(
    'MIT',
  );

  /// MITNFA
  static final SPDXLicense MITNFA = SPDXLicense._(
    'MITNFA',
  );

  /// Motosoto
  static final SPDXLicense Motosoto = SPDXLicense._(
    'Motosoto',
  );

  /// mpich2
  static final SPDXLicense mpich2 = SPDXLicense._(
    'mpich2',
  );

  /// MPL_1_0
  static final SPDXLicense MPL_1_0 = SPDXLicense._(
    'MPL-1.0',
  );

  /// MPL_1_1
  static final SPDXLicense MPL_1_1 = SPDXLicense._(
    'MPL-1.1',
  );

  /// MPL_2_0_no_copyleft_exception
  static final SPDXLicense MPL_2_0_no_copyleft_exception = SPDXLicense._(
    'MPL-2.0-no-copyleft-exception',
  );

  /// MPL_2_0
  static final SPDXLicense MPL_2_0 = SPDXLicense._(
    'MPL-2.0',
  );

  /// MS_PL
  static final SPDXLicense MS_PL = SPDXLicense._(
    'MS-PL',
  );

  /// MS_RL
  static final SPDXLicense MS_RL = SPDXLicense._(
    'MS-RL',
  );

  /// MTLL
  static final SPDXLicense MTLL = SPDXLicense._(
    'MTLL',
  );

  /// Multics
  static final SPDXLicense Multics = SPDXLicense._(
    'Multics',
  );

  /// Mup
  static final SPDXLicense Mup = SPDXLicense._(
    'Mup',
  );

  /// NASA_1_3
  static final SPDXLicense NASA_1_3 = SPDXLicense._(
    'NASA-1.3',
  );

  /// Naumen
  static final SPDXLicense Naumen = SPDXLicense._(
    'Naumen',
  );

  /// NBPL_1_0
  static final SPDXLicense NBPL_1_0 = SPDXLicense._(
    'NBPL-1.0',
  );

  /// NCSA
  static final SPDXLicense NCSA = SPDXLicense._(
    'NCSA',
  );

  /// Net_SNMP
  static final SPDXLicense Net_SNMP = SPDXLicense._(
    'Net-SNMP',
  );

  /// NetCDF
  static final SPDXLicense NetCDF = SPDXLicense._(
    'NetCDF',
  );

  /// Newsletr
  static final SPDXLicense Newsletr = SPDXLicense._(
    'Newsletr',
  );

  /// NGPL
  static final SPDXLicense NGPL = SPDXLicense._(
    'NGPL',
  );

  /// NLOD_1_0
  static final SPDXLicense NLOD_1_0 = SPDXLicense._(
    'NLOD-1.0',
  );

  /// NLPL
  static final SPDXLicense NLPL = SPDXLicense._(
    'NLPL',
  );

  /// Nokia
  static final SPDXLicense Nokia = SPDXLicense._(
    'Nokia',
  );

  /// NOSL
  static final SPDXLicense NOSL = SPDXLicense._(
    'NOSL',
  );

  /// Noweb
  static final SPDXLicense Noweb = SPDXLicense._(
    'Noweb',
  );

  /// NPL_1_0
  static final SPDXLicense NPL_1_0 = SPDXLicense._(
    'NPL-1.0',
  );

  /// NPL_1_1
  static final SPDXLicense NPL_1_1 = SPDXLicense._(
    'NPL-1.1',
  );

  /// NPOSL_3_0
  static final SPDXLicense NPOSL_3_0 = SPDXLicense._(
    'NPOSL-3.0',
  );

  /// NRL
  static final SPDXLicense NRL = SPDXLicense._(
    'NRL',
  );

  /// NTP
  static final SPDXLicense NTP = SPDXLicense._(
    'NTP',
  );

  /// OCCT_PL
  static final SPDXLicense OCCT_PL = SPDXLicense._(
    'OCCT-PL',
  );

  /// OCLC_2_0
  static final SPDXLicense OCLC_2_0 = SPDXLicense._(
    'OCLC-2.0',
  );

  /// ODbL_1_0
  static final SPDXLicense ODbL_1_0 = SPDXLicense._(
    'ODbL-1.0',
  );

  /// OFL_1_0
  static final SPDXLicense OFL_1_0 = SPDXLicense._(
    'OFL-1.0',
  );

  /// OFL_1_1
  static final SPDXLicense OFL_1_1 = SPDXLicense._(
    'OFL-1.1',
  );

  /// OGTSL
  static final SPDXLicense OGTSL = SPDXLicense._(
    'OGTSL',
  );

  /// OLDAP_1_1
  static final SPDXLicense OLDAP_1_1 = SPDXLicense._(
    'OLDAP-1.1',
  );

  /// OLDAP_1_2
  static final SPDXLicense OLDAP_1_2 = SPDXLicense._(
    'OLDAP-1.2',
  );

  /// OLDAP_1_3
  static final SPDXLicense OLDAP_1_3 = SPDXLicense._(
    'OLDAP-1.3',
  );

  /// OLDAP_1_4
  static final SPDXLicense OLDAP_1_4 = SPDXLicense._(
    'OLDAP-1.4',
  );

  /// OLDAP_2_0_1
  static final SPDXLicense OLDAP_2_0_1 = SPDXLicense._(
    'OLDAP-2.0.1',
  );

  /// OLDAP_2_0
  static final SPDXLicense OLDAP_2_0 = SPDXLicense._(
    'OLDAP-2.0',
  );

  /// OLDAP_2_1
  static final SPDXLicense OLDAP_2_1 = SPDXLicense._(
    'OLDAP-2.1',
  );

  /// OLDAP_2_2_1
  static final SPDXLicense OLDAP_2_2_1 = SPDXLicense._(
    'OLDAP-2.2.1',
  );

  /// OLDAP_2_2_2
  static final SPDXLicense OLDAP_2_2_2 = SPDXLicense._(
    'OLDAP-2.2.2',
  );

  /// OLDAP_2_2
  static final SPDXLicense OLDAP_2_2 = SPDXLicense._(
    'OLDAP-2.2',
  );

  /// OLDAP_2_3
  static final SPDXLicense OLDAP_2_3 = SPDXLicense._(
    'OLDAP-2.3',
  );

  /// OLDAP_2_4
  static final SPDXLicense OLDAP_2_4 = SPDXLicense._(
    'OLDAP-2.4',
  );

  /// OLDAP_2_5
  static final SPDXLicense OLDAP_2_5 = SPDXLicense._(
    'OLDAP-2.5',
  );

  /// OLDAP_2_6
  static final SPDXLicense OLDAP_2_6 = SPDXLicense._(
    'OLDAP-2.6',
  );

  /// OLDAP_2_7
  static final SPDXLicense OLDAP_2_7 = SPDXLicense._(
    'OLDAP-2.7',
  );

  /// OLDAP_2_8
  static final SPDXLicense OLDAP_2_8 = SPDXLicense._(
    'OLDAP-2.8',
  );

  /// OML
  static final SPDXLicense OML = SPDXLicense._(
    'OML',
  );

  /// OpenSSL
  static final SPDXLicense OpenSSL = SPDXLicense._(
    'OpenSSL',
  );

  /// OPL_1_0
  static final SPDXLicense OPL_1_0 = SPDXLicense._(
    'OPL-1.0',
  );

  /// OSET_PL_2_1
  static final SPDXLicense OSET_PL_2_1 = SPDXLicense._(
    'OSET-PL-2.1',
  );

  /// OSL_1_0
  static final SPDXLicense OSL_1_0 = SPDXLicense._(
    'OSL-1.0',
  );

  /// OSL_1_1
  static final SPDXLicense OSL_1_1 = SPDXLicense._(
    'OSL-1.1',
  );

  /// OSL_2_0
  static final SPDXLicense OSL_2_0 = SPDXLicense._(
    'OSL-2.0',
  );

  /// OSL_2_1
  static final SPDXLicense OSL_2_1 = SPDXLicense._(
    'OSL-2.1',
  );

  /// OSL_3_0
  static final SPDXLicense OSL_3_0 = SPDXLicense._(
    'OSL-3.0',
  );

  /// PDDL_1_0
  static final SPDXLicense PDDL_1_0 = SPDXLicense._(
    'PDDL-1.0',
  );

  /// PHP_3_0
  static final SPDXLicense PHP_3_0 = SPDXLicense._(
    'PHP-3.0',
  );

  /// PHP_3_01
  static final SPDXLicense PHP_3_01 = SPDXLicense._(
    'PHP-3.01',
  );

  /// Plexus
  static final SPDXLicense Plexus = SPDXLicense._(
    'Plexus',
  );

  /// PostgreSQL
  static final SPDXLicense PostgreSQL = SPDXLicense._(
    'PostgreSQL',
  );

  /// psfrag
  static final SPDXLicense psfrag = SPDXLicense._(
    'psfrag',
  );

  /// psutils
  static final SPDXLicense psutils = SPDXLicense._(
    'psutils',
  );

  /// Python_2_0
  static final SPDXLicense Python_2_0 = SPDXLicense._(
    'Python-2.0',
  );

  /// Qhull
  static final SPDXLicense Qhull = SPDXLicense._(
    'Qhull',
  );

  /// QPL_1_0
  static final SPDXLicense QPL_1_0 = SPDXLicense._(
    'QPL-1.0',
  );

  /// Rdisc
  static final SPDXLicense Rdisc = SPDXLicense._(
    'Rdisc',
  );

  /// RHeCos_1_1
  static final SPDXLicense RHeCos_1_1 = SPDXLicense._(
    'RHeCos-1.1',
  );

  /// RPL_1_1
  static final SPDXLicense RPL_1_1 = SPDXLicense._(
    'RPL-1.1',
  );

  /// RPL_1_5
  static final SPDXLicense RPL_1_5 = SPDXLicense._(
    'RPL-1.5',
  );

  /// RPSL_1_0
  static final SPDXLicense RPSL_1_0 = SPDXLicense._(
    'RPSL-1.0',
  );

  /// RSA_MD
  static final SPDXLicense RSA_MD = SPDXLicense._(
    'RSA-MD',
  );

  /// RSCPL
  static final SPDXLicense RSCPL = SPDXLicense._(
    'RSCPL',
  );

  /// Ruby
  static final SPDXLicense Ruby = SPDXLicense._(
    'Ruby',
  );

  /// SAX_PD
  static final SPDXLicense SAX_PD = SPDXLicense._(
    'SAX-PD',
  );

  /// Saxpath
  static final SPDXLicense Saxpath = SPDXLicense._(
    'Saxpath',
  );

  /// SCEA
  static final SPDXLicense SCEA = SPDXLicense._(
    'SCEA',
  );

  /// Sendmail
  static final SPDXLicense Sendmail = SPDXLicense._(
    'Sendmail',
  );

  /// SGI_B_1_0
  static final SPDXLicense SGI_B_1_0 = SPDXLicense._(
    'SGI-B-1.0',
  );

  /// SGI_B_1_1
  static final SPDXLicense SGI_B_1_1 = SPDXLicense._(
    'SGI-B-1.1',
  );

  /// SGI_B_2_0
  static final SPDXLicense SGI_B_2_0 = SPDXLicense._(
    'SGI-B-2.0',
  );

  /// SimPL_2_0
  static final SPDXLicense SimPL_2_0 = SPDXLicense._(
    'SimPL-2.0',
  );

  /// SISSL_1_2
  static final SPDXLicense SISSL_1_2 = SPDXLicense._(
    'SISSL-1.2',
  );

  /// SISSL
  static final SPDXLicense SISSL = SPDXLicense._(
    'SISSL',
  );

  /// Sleepycat
  static final SPDXLicense Sleepycat = SPDXLicense._(
    'Sleepycat',
  );

  /// SMLNJ
  static final SPDXLicense SMLNJ = SPDXLicense._(
    'SMLNJ',
  );

  /// SMPPL
  static final SPDXLicense SMPPL = SPDXLicense._(
    'SMPPL',
  );

  /// SNIA
  static final SPDXLicense SNIA = SPDXLicense._(
    'SNIA',
  );

  /// Spencer_86
  static final SPDXLicense Spencer_86 = SPDXLicense._(
    'Spencer-86',
  );

  /// Spencer_94
  static final SPDXLicense Spencer_94 = SPDXLicense._(
    'Spencer-94',
  );

  /// Spencer_99
  static final SPDXLicense Spencer_99 = SPDXLicense._(
    'Spencer-99',
  );

  /// SPL_1_0
  static final SPDXLicense SPL_1_0 = SPDXLicense._(
    'SPL-1.0',
  );

  /// SugarCRM_1_1_3
  static final SPDXLicense SugarCRM_1_1_3 = SPDXLicense._(
    'SugarCRM-1.1.3',
  );

  /// SWL
  static final SPDXLicense SWL = SPDXLicense._(
    'SWL',
  );

  /// TCL
  static final SPDXLicense TCL = SPDXLicense._(
    'TCL',
  );

  /// TCP_wrappers
  static final SPDXLicense TCP_wrappers = SPDXLicense._(
    'TCP-wrappers',
  );

  /// TMate
  static final SPDXLicense TMate = SPDXLicense._(
    'TMate',
  );

  /// TORQUE_1_1
  static final SPDXLicense TORQUE_1_1 = SPDXLicense._(
    'TORQUE-1.1',
  );

  /// TOSL
  static final SPDXLicense TOSL = SPDXLicense._(
    'TOSL',
  );

  /// Unicode_DFS_2015
  static final SPDXLicense Unicode_DFS_2015 = SPDXLicense._(
    'Unicode-DFS-2015',
  );

  /// Unicode_DFS_2016
  static final SPDXLicense Unicode_DFS_2016 = SPDXLicense._(
    'Unicode-DFS-2016',
  );

  /// Unicode_TOU
  static final SPDXLicense Unicode_TOU = SPDXLicense._(
    'Unicode-TOU',
  );

  /// Unlicense
  static final SPDXLicense Unlicense = SPDXLicense._(
    'Unlicense',
  );

  /// UPL_1_0
  static final SPDXLicense UPL_1_0 = SPDXLicense._(
    'UPL-1.0',
  );

  /// Vim
  static final SPDXLicense Vim = SPDXLicense._(
    'Vim',
  );

  /// VOSTROM
  static final SPDXLicense VOSTROM = SPDXLicense._(
    'VOSTROM',
  );

  /// VSL_1_0
  static final SPDXLicense VSL_1_0 = SPDXLicense._(
    'VSL-1.0',
  );

  /// W3C_19980720
  static final SPDXLicense W3C_19980720 = SPDXLicense._(
    'W3C-19980720',
  );

  /// W3C_20150513
  static final SPDXLicense W3C_20150513 = SPDXLicense._(
    'W3C-20150513',
  );

  /// W3C
  static final SPDXLicense W3C = SPDXLicense._(
    'W3C',
  );

  /// Watcom_1_0
  static final SPDXLicense Watcom_1_0 = SPDXLicense._(
    'Watcom-1.0',
  );

  /// Wsuipa
  static final SPDXLicense Wsuipa = SPDXLicense._(
    'Wsuipa',
  );

  /// WTFPL
  static final SPDXLicense WTFPL = SPDXLicense._(
    'WTFPL',
  );

  /// X11
  static final SPDXLicense X11 = SPDXLicense._(
    'X11',
  );

  /// Xerox
  static final SPDXLicense Xerox = SPDXLicense._(
    'Xerox',
  );

  /// XFree86_1_1
  static final SPDXLicense XFree86_1_1 = SPDXLicense._(
    'XFree86-1.1',
  );

  /// xinetd
  static final SPDXLicense xinetd = SPDXLicense._(
    'xinetd',
  );

  /// Xnet
  static final SPDXLicense Xnet = SPDXLicense._(
    'Xnet',
  );

  /// xpp
  static final SPDXLicense xpp = SPDXLicense._(
    'xpp',
  );

  /// XSkat
  static final SPDXLicense XSkat = SPDXLicense._(
    'XSkat',
  );

  /// YPL_1_0
  static final SPDXLicense YPL_1_0 = SPDXLicense._(
    'YPL-1.0',
  );

  /// YPL_1_1
  static final SPDXLicense YPL_1_1 = SPDXLicense._(
    'YPL-1.1',
  );

  /// Zed
  static final SPDXLicense Zed = SPDXLicense._(
    'Zed',
  );

  /// Zend_2_0
  static final SPDXLicense Zend_2_0 = SPDXLicense._(
    'Zend-2.0',
  );

  /// Zimbra_1_3
  static final SPDXLicense Zimbra_1_3 = SPDXLicense._(
    'Zimbra-1.3',
  );

  /// Zimbra_1_4
  static final SPDXLicense Zimbra_1_4 = SPDXLicense._(
    'Zimbra-1.4',
  );

  /// zlib_acknowledgement
  static final SPDXLicense zlib_acknowledgement = SPDXLicense._(
    'zlib-acknowledgement',
  );

  /// Zlib
  static final SPDXLicense Zlib = SPDXLicense._(
    'Zlib',
  );

  /// ZPL_1_1
  static final SPDXLicense ZPL_1_1 = SPDXLicense._(
    'ZPL-1.1',
  );

  /// ZPL_2_0
  static final SPDXLicense ZPL_2_0 = SPDXLicense._(
    'ZPL-2.0',
  );

  /// ZPL_2_1
  static final SPDXLicense ZPL_2_1 = SPDXLicense._(
    'ZPL-2.1',
  );

  /// For instances where an Element is present but not value

  static final SPDXLicense elementOnly = SPDXLicense._('');

  /// List of all enum-like values
  static final List<SPDXLicense> values = [
    not_open_source,
    value0BSD,
    AAL,
    Abstyles,
    Adobe_2006,
    Adobe_Glyph,
    ADSL,
    AFL_1_1,
    AFL_1_2,
    AFL_2_0,
    AFL_2_1,
    AFL_3_0,
    Afmparse,
    AGPL_1_0_only,
    AGPL_1_0_or_later,
    AGPL_3_0_only,
    AGPL_3_0_or_later,
    Aladdin,
    AMDPLPA,
    AML,
    AMPAS,
    ANTLR_PD,
    Apache_1_0,
    Apache_1_1,
    Apache_2_0,
    APAFML,
    APL_1_0,
    APSL_1_0,
    APSL_1_1,
    APSL_1_2,
    APSL_2_0,
    Artistic_1_0_cl8,
    Artistic_1_0_Perl,
    Artistic_1_0,
    Artistic_2_0,
    Bahyph,
    Barr,
    Beerware,
    BitTorrent_1_0,
    BitTorrent_1_1,
    Borceux,
    BSD_1_Clause,
    BSD_2_Clause_FreeBSD,
    BSD_2_Clause_NetBSD,
    BSD_2_Clause_Patent,
    BSD_2_Clause,
    BSD_3_Clause_Attribution,
    BSD_3_Clause_Clear,
    BSD_3_Clause_LBNL,
    BSD_3_Clause_No_Nuclear_License_2014,
    BSD_3_Clause_No_Nuclear_License,
    BSD_3_Clause_No_Nuclear_Warranty,
    BSD_3_Clause,
    BSD_4_Clause_UC,
    BSD_4_Clause,
    BSD_Protection,
    BSD_Source_Code,
    BSL_1_0,
    bzip2_1_0_5,
    bzip2_1_0_6,
    Caldera,
    CATOSL_1_1,
    CC_BY_1_0,
    CC_BY_2_0,
    CC_BY_2_5,
    CC_BY_3_0,
    CC_BY_4_0,
    CC_BY_NC_1_0,
    CC_BY_NC_2_0,
    CC_BY_NC_2_5,
    CC_BY_NC_3_0,
    CC_BY_NC_4_0,
    CC_BY_NC_ND_1_0,
    CC_BY_NC_ND_2_0,
    CC_BY_NC_ND_2_5,
    CC_BY_NC_ND_3_0,
    CC_BY_NC_ND_4_0,
    CC_BY_NC_SA_1_0,
    CC_BY_NC_SA_2_0,
    CC_BY_NC_SA_2_5,
    CC_BY_NC_SA_3_0,
    CC_BY_NC_SA_4_0,
    CC_BY_ND_1_0,
    CC_BY_ND_2_0,
    CC_BY_ND_2_5,
    CC_BY_ND_3_0,
    CC_BY_ND_4_0,
    CC_BY_SA_1_0,
    CC_BY_SA_2_0,
    CC_BY_SA_2_5,
    CC_BY_SA_3_0,
    CC_BY_SA_4_0,
    CC0_1_0,
    CDDL_1_0,
    CDDL_1_1,
    CDLA_Permissive_1_0,
    CDLA_Sharing_1_0,
    CECILL_1_0,
    CECILL_1_1,
    CECILL_2_0,
    CECILL_2_1,
    CECILL_B,
    CECILL_C,
    ClArtistic,
    CNRI_Jython,
    CNRI_Python_GPL_Compatible,
    CNRI_Python,
    Condor_1_1,
    CPAL_1_0,
    CPL_1_0,
    CPOL_1_02,
    Crossword,
    CrystalStacker,
    CUA_OPL_1_0,
    Cube,
    curl,
    D_FSL_1_0,
    diffmark,
    DOC,
    Dotseqn,
    DSDP,
    dvipdfm,
    ECL_1_0,
    ECL_2_0,
    EFL_1_0,
    EFL_2_0,
    eGenix,
    Entessa,
    EPL_1_0,
    EPL_2_0,
    ErlPL_1_1,
    EUDatagrid,
    EUPL_1_0,
    EUPL_1_1,
    EUPL_1_2,
    Eurosym,
    Fair,
    Frameworx_1_0,
    FreeImage,
    FSFAP,
    FSFUL,
    FSFULLR,
    FTL,
    GFDL_1_1_only,
    GFDL_1_1_or_later,
    GFDL_1_2_only,
    GFDL_1_2_or_later,
    GFDL_1_3_only,
    GFDL_1_3_or_later,
    Giftware,
    GL2PS,
    Glide,
    Glulxe,
    gnuplot,
    GPL_1_0_only,
    GPL_1_0_or_later,
    GPL_2_0_only,
    GPL_2_0_or_later,
    GPL_3_0_only,
    GPL_3_0_or_later,
    gSOAP_1_3b,
    HaskellReport,
    HPND,
    IBM_pibs,
    ICU,
    IJG,
    ImageMagick,
    iMatix,
    Imlib2,
    Info_ZIP,
    Intel_ACPI,
    Intel,
    Interbase_1_0,
    IPA,
    IPL_1_0,
    ISC,
    JasPer_2_0,
    JSON,
    LAL_1_2,
    LAL_1_3,
    Latex2e,
    Leptonica,
    LGPL_2_0_only,
    LGPL_2_0_or_later,
    LGPL_2_1_only,
    LGPL_2_1_or_later,
    LGPL_3_0_only,
    LGPL_3_0_or_later,
    LGPLLR,
    Libpng,
    libtiff,
    LiLiQ_P_1_1,
    LiLiQ_R_1_1,
    LiLiQ_Rplus_1_1,
    Linux_OpenIB,
    LPL_1_0,
    LPL_1_02,
    LPPL_1_0,
    LPPL_1_1,
    LPPL_1_2,
    LPPL_1_3a,
    LPPL_1_3c,
    MakeIndex,
    MirOS,
    MIT_0,
    MIT_advertising,
    MIT_CMU,
    MIT_enna,
    MIT_feh,
    MIT,
    MITNFA,
    Motosoto,
    mpich2,
    MPL_1_0,
    MPL_1_1,
    MPL_2_0_no_copyleft_exception,
    MPL_2_0,
    MS_PL,
    MS_RL,
    MTLL,
    Multics,
    Mup,
    NASA_1_3,
    Naumen,
    NBPL_1_0,
    NCSA,
    Net_SNMP,
    NetCDF,
    Newsletr,
    NGPL,
    NLOD_1_0,
    NLPL,
    Nokia,
    NOSL,
    Noweb,
    NPL_1_0,
    NPL_1_1,
    NPOSL_3_0,
    NRL,
    NTP,
    OCCT_PL,
    OCLC_2_0,
    ODbL_1_0,
    OFL_1_0,
    OFL_1_1,
    OGTSL,
    OLDAP_1_1,
    OLDAP_1_2,
    OLDAP_1_3,
    OLDAP_1_4,
    OLDAP_2_0_1,
    OLDAP_2_0,
    OLDAP_2_1,
    OLDAP_2_2_1,
    OLDAP_2_2_2,
    OLDAP_2_2,
    OLDAP_2_3,
    OLDAP_2_4,
    OLDAP_2_5,
    OLDAP_2_6,
    OLDAP_2_7,
    OLDAP_2_8,
    OML,
    OpenSSL,
    OPL_1_0,
    OSET_PL_2_1,
    OSL_1_0,
    OSL_1_1,
    OSL_2_0,
    OSL_2_1,
    OSL_3_0,
    PDDL_1_0,
    PHP_3_0,
    PHP_3_01,
    Plexus,
    PostgreSQL,
    psfrag,
    psutils,
    Python_2_0,
    Qhull,
    QPL_1_0,
    Rdisc,
    RHeCos_1_1,
    RPL_1_1,
    RPL_1_5,
    RPSL_1_0,
    RSA_MD,
    RSCPL,
    Ruby,
    SAX_PD,
    Saxpath,
    SCEA,
    Sendmail,
    SGI_B_1_0,
    SGI_B_1_1,
    SGI_B_2_0,
    SimPL_2_0,
    SISSL_1_2,
    SISSL,
    Sleepycat,
    SMLNJ,
    SMPPL,
    SNIA,
    Spencer_86,
    Spencer_94,
    Spencer_99,
    SPL_1_0,
    SugarCRM_1_1_3,
    SWL,
    TCL,
    TCP_wrappers,
    TMate,
    TORQUE_1_1,
    TOSL,
    Unicode_DFS_2015,
    Unicode_DFS_2016,
    Unicode_TOU,
    Unlicense,
    UPL_1_0,
    Vim,
    VOSTROM,
    VSL_1_0,
    W3C_19980720,
    W3C_20150513,
    W3C,
    Watcom_1_0,
    Wsuipa,
    WTFPL,
    X11,
    Xerox,
    XFree86_1_1,
    xinetd,
    Xnet,
    xpp,
    XSkat,
    YPL_1_0,
    YPL_1_1,
    Zed,
    Zend_2_0,
    Zimbra_1_3,
    Zimbra_1_4,
    zlib_acknowledgement,
    Zlib,
    ZPL_1_1,
    ZPL_2_0,
    ZPL_2_1,
  ];

  /// Clones the current instance
  @override
  SPDXLicense clone() => SPDXLicense._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SPDXLicense withElement(Element? newElement) {
    return SPDXLicense._(
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
  SPDXLicense copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SPDXLicense._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
