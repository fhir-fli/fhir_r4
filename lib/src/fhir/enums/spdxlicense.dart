// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The license that applies to an Implementation Guide (using an SPDX license Identifiers, or 'not-open-source'). The binding is required but new SPDX license Identifiers are allowed to be used (https://spdx.org/licenses/).
enum SPDXLicense {
  /// Display: Not open source
  /// Definition: Not an open source license.
  not_open_source('not-open-source'),

  /// Display: BSD Zero Clause License
  /// Definition: BSD Zero Clause License.
  value0BSD('0BSD'),

  /// Display: Attribution Assurance License
  /// Definition: Attribution Assurance License.
  AAL('AAL'),

  /// Display: Abstyles License
  /// Definition: Abstyles License.
  Abstyles('Abstyles'),

  /// Display: Adobe Systems Incorporated Source Code License Agreement
  /// Definition: Adobe Systems Incorporated Source Code License Agreement.
  Adobe_2006('Adobe-2006'),

  /// Display: Adobe Glyph List License
  /// Definition: Adobe Glyph List License.
  Adobe_Glyph('Adobe-Glyph'),

  /// Display: Amazon Digital Services License
  /// Definition: Amazon Digital Services License.
  ADSL('ADSL'),

  /// Display: Academic Free License v1.1
  /// Definition: Academic Free License v1.1.
  AFL_1_1('AFL-1.1'),

  /// Display: Academic Free License v1.2
  /// Definition: Academic Free License v1.2.
  AFL_1_2('AFL-1.2'),

  /// Display: Academic Free License v2.0
  /// Definition: Academic Free License v2.0.
  AFL_2_0('AFL-2.0'),

  /// Display: Academic Free License v2.1
  /// Definition: Academic Free License v2.1.
  AFL_2_1('AFL-2.1'),

  /// Display: Academic Free License v3.0
  /// Definition: Academic Free License v3.0.
  AFL_3_0('AFL-3.0'),

  /// Display: Afmparse License
  /// Definition: Afmparse License.
  Afmparse('Afmparse'),

  /// Display: Affero General Public License v1.0 only
  /// Definition: Affero General Public License v1.0 only.
  AGPL_1_0_only('AGPL-1.0-only'),

  /// Display: Affero General Public License v1.0 or later
  /// Definition: Affero General Public License v1.0 or later.
  AGPL_1_0_or_later('AGPL-1.0-or-later'),

  /// Display: GNU Affero General Public License v3.0 only
  /// Definition: GNU Affero General Public License v3.0 only.
  AGPL_3_0_only('AGPL-3.0-only'),

  /// Display: GNU Affero General Public License v3.0 or later
  /// Definition: GNU Affero General Public License v3.0 or later.
  AGPL_3_0_or_later('AGPL-3.0-or-later'),

  /// Display: Aladdin Free Public License
  /// Definition: Aladdin Free Public License.
  Aladdin('Aladdin'),

  /// Display: AMD's plpa_map.c License
  /// Definition: AMD's plpa_map.c License.
  AMDPLPA('AMDPLPA'),

  /// Display: Apple MIT License
  /// Definition: Apple MIT License.
  AML('AML'),

  /// Display: Academy of Motion Picture Arts and Sciences BSD
  /// Definition: Academy of Motion Picture Arts and Sciences BSD.
  AMPAS('AMPAS'),

  /// Display: ANTLR Software Rights Notice
  /// Definition: ANTLR Software Rights Notice.
  ANTLR_PD('ANTLR-PD'),

  /// Display: Apache License 1.0
  /// Definition: Apache License 1.0.
  Apache_1_0('Apache-1.0'),

  /// Display: Apache License 1.1
  /// Definition: Apache License 1.1.
  Apache_1_1('Apache-1.1'),

  /// Display: Apache License 2.0
  /// Definition: Apache License 2.0.
  Apache_2_0('Apache-2.0'),

  /// Display: Adobe Postscript AFM License
  /// Definition: Adobe Postscript AFM License.
  APAFML('APAFML'),

  /// Display: Adaptive Public License 1.0
  /// Definition: Adaptive Public License 1.0.
  APL_1_0('APL-1.0'),

  /// Display: Apple Public Source License 1.0
  /// Definition: Apple Public Source License 1.0.
  APSL_1_0('APSL-1.0'),

  /// Display: Apple Public Source License 1.1
  /// Definition: Apple Public Source License 1.1.
  APSL_1_1('APSL-1.1'),

  /// Display: Apple Public Source License 1.2
  /// Definition: Apple Public Source License 1.2.
  APSL_1_2('APSL-1.2'),

  /// Display: Apple Public Source License 2.0
  /// Definition: Apple Public Source License 2.0.
  APSL_2_0('APSL-2.0'),

  /// Display: Artistic License 1.0 w/clause 8
  /// Definition: Artistic License 1.0 w/clause 8.
  Artistic_1_0_cl8('Artistic-1.0-cl8'),

  /// Display: Artistic License 1.0 (Perl)
  /// Definition: Artistic License 1.0 (Perl).
  Artistic_1_0_Perl('Artistic-1.0-Perl'),

  /// Display: Artistic License 1.0
  /// Definition: Artistic License 1.0.
  Artistic_1_0('Artistic-1.0'),

  /// Display: Artistic License 2.0
  /// Definition: Artistic License 2.0.
  Artistic_2_0('Artistic-2.0'),

  /// Display: Bahyph License
  /// Definition: Bahyph License.
  Bahyph('Bahyph'),

  /// Display: Barr License
  /// Definition: Barr License.
  Barr('Barr'),

  /// Display: Beerware License
  /// Definition: Beerware License.
  Beerware('Beerware'),

  /// Display: BitTorrent Open Source License v1.0
  /// Definition: BitTorrent Open Source License v1.0.
  BitTorrent_1_0('BitTorrent-1.0'),

  /// Display: BitTorrent Open Source License v1.1
  /// Definition: BitTorrent Open Source License v1.1.
  BitTorrent_1_1('BitTorrent-1.1'),

  /// Display: Borceux license
  /// Definition: Borceux license.
  Borceux('Borceux'),

  /// Display: BSD 1-Clause License
  /// Definition: BSD 1-Clause License.
  BSD_1_Clause('BSD-1-Clause'),

  /// Display: BSD 2-Clause FreeBSD License
  /// Definition: BSD 2-Clause FreeBSD License.
  BSD_2_Clause_FreeBSD('BSD-2-Clause-FreeBSD'),

  /// Display: BSD 2-Clause NetBSD License
  /// Definition: BSD 2-Clause NetBSD License.
  BSD_2_Clause_NetBSD('BSD-2-Clause-NetBSD'),

  /// Display: BSD-2-Clause Plus Patent License
  /// Definition: BSD-2-Clause Plus Patent License.
  BSD_2_Clause_Patent('BSD-2-Clause-Patent'),

  /// Display: BSD 2-Clause "Simplified" License
  /// Definition: BSD 2-Clause "Simplified" License.
  BSD_2_Clause('BSD-2-Clause'),

  /// Display: BSD with attribution
  /// Definition: BSD with attribution.
  BSD_3_Clause_Attribution('BSD-3-Clause-Attribution'),

  /// Display: BSD 3-Clause Clear License
  /// Definition: BSD 3-Clause Clear License.
  BSD_3_Clause_Clear('BSD-3-Clause-Clear'),

  /// Display: Lawrence Berkeley National Labs BSD variant license
  /// Definition: Lawrence Berkeley National Labs BSD variant license.
  BSD_3_Clause_LBNL('BSD-3-Clause-LBNL'),

  /// Display: BSD 3-Clause No Nuclear License 2014
  /// Definition: BSD 3-Clause No Nuclear License 2014.
  BSD_3_Clause_No_Nuclear_License_2014('BSD-3-Clause-No-Nuclear-License-2014'),

  /// Display: BSD 3-Clause No Nuclear License
  /// Definition: BSD 3-Clause No Nuclear License.
  BSD_3_Clause_No_Nuclear_License('BSD-3-Clause-No-Nuclear-License'),

  /// Display: BSD 3-Clause No Nuclear Warranty
  /// Definition: BSD 3-Clause No Nuclear Warranty.
  BSD_3_Clause_No_Nuclear_Warranty('BSD-3-Clause-No-Nuclear-Warranty'),

  /// Display: BSD 3-Clause "New" or "Revised" License
  /// Definition: BSD 3-Clause "New" or "Revised" License.
  BSD_3_Clause('BSD-3-Clause'),

  /// Display: BSD-4-Clause (University of California-Specific)
  /// Definition: BSD-4-Clause (University of California-Specific).
  BSD_4_Clause_UC('BSD-4-Clause-UC'),

  /// Display: BSD 4-Clause "Original" or "Old" License
  /// Definition: BSD 4-Clause "Original" or "Old" License.
  BSD_4_Clause('BSD-4-Clause'),

  /// Display: BSD Protection License
  /// Definition: BSD Protection License.
  BSD_Protection('BSD-Protection'),

  /// Display: BSD Source Code Attribution
  /// Definition: BSD Source Code Attribution.
  BSD_Source_Code('BSD-Source-Code'),

  /// Display: Boost Software License 1.0
  /// Definition: Boost Software License 1.0.
  BSL_1_0('BSL-1.0'),

  /// Display: bzip2 and libbzip2 License v1.0.5
  /// Definition: bzip2 and libbzip2 License v1.0.5.
  bzip2_1_0_5('bzip2-1.0.5'),

  /// Display: bzip2 and libbzip2 License v1.0.6
  /// Definition: bzip2 and libbzip2 License v1.0.6.
  bzip2_1_0_6('bzip2-1.0.6'),

  /// Display: Caldera License
  /// Definition: Caldera License.
  Caldera('Caldera'),

  /// Display: Computer Associates Trusted Open Source License 1.1
  /// Definition: Computer Associates Trusted Open Source License 1.1.
  CATOSL_1_1('CATOSL-1.1'),

  /// Display: Creative Commons Attribution 1.0 Generic
  /// Definition: Creative Commons Attribution 1.0 Generic.
  CC_BY_1_0('CC-BY-1.0'),

  /// Display: Creative Commons Attribution 2.0 Generic
  /// Definition: Creative Commons Attribution 2.0 Generic.
  CC_BY_2_0('CC-BY-2.0'),

  /// Display: Creative Commons Attribution 2.5 Generic
  /// Definition: Creative Commons Attribution 2.5 Generic.
  CC_BY_2_5('CC-BY-2.5'),

  /// Display: Creative Commons Attribution 3.0 Unported
  /// Definition: Creative Commons Attribution 3.0 Unported.
  CC_BY_3_0('CC-BY-3.0'),

  /// Display: Creative Commons Attribution 4.0 International
  /// Definition: Creative Commons Attribution 4.0 International.
  CC_BY_4_0('CC-BY-4.0'),

  /// Display: Creative Commons Attribution Non Commercial 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial 1.0 Generic.
  CC_BY_NC_1_0('CC-BY-NC-1.0'),

  /// Display: Creative Commons Attribution Non Commercial 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial 2.0 Generic.
  CC_BY_NC_2_0('CC-BY-NC-2.0'),

  /// Display: Creative Commons Attribution Non Commercial 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial 2.5 Generic.
  CC_BY_NC_2_5('CC-BY-NC-2.5'),

  /// Display: Creative Commons Attribution Non Commercial 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial 3.0 Unported.
  CC_BY_NC_3_0('CC-BY-NC-3.0'),

  /// Display: Creative Commons Attribution Non Commercial 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial 4.0 International.
  CC_BY_NC_4_0('CC-BY-NC-4.0'),

  /// Display: Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic.
  CC_BY_NC_ND_1_0('CC-BY-NC-ND-1.0'),

  /// Display: Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic.
  CC_BY_NC_ND_2_0('CC-BY-NC-ND-2.0'),

  /// Display: Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic.
  CC_BY_NC_ND_2_5('CC-BY-NC-ND-2.5'),

  /// Display: Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported.
  CC_BY_NC_ND_3_0('CC-BY-NC-ND-3.0'),

  /// Display: Creative Commons Attribution Non Commercial No Derivatives 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 4.0 International.
  CC_BY_NC_ND_4_0('CC-BY-NC-ND-4.0'),

  /// Display: Creative Commons Attribution Non Commercial Share Alike 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 1.0 Generic.
  CC_BY_NC_SA_1_0('CC-BY-NC-SA-1.0'),

  /// Display: Creative Commons Attribution Non Commercial Share Alike 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 2.0 Generic.
  CC_BY_NC_SA_2_0('CC-BY-NC-SA-2.0'),

  /// Display: Creative Commons Attribution Non Commercial Share Alike 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 2.5 Generic.
  CC_BY_NC_SA_2_5('CC-BY-NC-SA-2.5'),

  /// Display: Creative Commons Attribution Non Commercial Share Alike 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 3.0 Unported.
  CC_BY_NC_SA_3_0('CC-BY-NC-SA-3.0'),

  /// Display: Creative Commons Attribution Non Commercial Share Alike 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 4.0 International.
  CC_BY_NC_SA_4_0('CC-BY-NC-SA-4.0'),

  /// Display: Creative Commons Attribution No Derivatives 1.0 Generic
  /// Definition: Creative Commons Attribution No Derivatives 1.0 Generic.
  CC_BY_ND_1_0('CC-BY-ND-1.0'),

  /// Display: Creative Commons Attribution No Derivatives 2.0 Generic
  /// Definition: Creative Commons Attribution No Derivatives 2.0 Generic.
  CC_BY_ND_2_0('CC-BY-ND-2.0'),

  /// Display: Creative Commons Attribution No Derivatives 2.5 Generic
  /// Definition: Creative Commons Attribution No Derivatives 2.5 Generic.
  CC_BY_ND_2_5('CC-BY-ND-2.5'),

  /// Display: Creative Commons Attribution No Derivatives 3.0 Unported
  /// Definition: Creative Commons Attribution No Derivatives 3.0 Unported.
  CC_BY_ND_3_0('CC-BY-ND-3.0'),

  /// Display: Creative Commons Attribution No Derivatives 4.0 International
  /// Definition: Creative Commons Attribution No Derivatives 4.0 International.
  CC_BY_ND_4_0('CC-BY-ND-4.0'),

  /// Display: Creative Commons Attribution Share Alike 1.0 Generic
  /// Definition: Creative Commons Attribution Share Alike 1.0 Generic.
  CC_BY_SA_1_0('CC-BY-SA-1.0'),

  /// Display: Creative Commons Attribution Share Alike 2.0 Generic
  /// Definition: Creative Commons Attribution Share Alike 2.0 Generic.
  CC_BY_SA_2_0('CC-BY-SA-2.0'),

  /// Display: Creative Commons Attribution Share Alike 2.5 Generic
  /// Definition: Creative Commons Attribution Share Alike 2.5 Generic.
  CC_BY_SA_2_5('CC-BY-SA-2.5'),

  /// Display: Creative Commons Attribution Share Alike 3.0 Unported
  /// Definition: Creative Commons Attribution Share Alike 3.0 Unported.
  CC_BY_SA_3_0('CC-BY-SA-3.0'),

  /// Display: Creative Commons Attribution Share Alike 4.0 International
  /// Definition: Creative Commons Attribution Share Alike 4.0 International.
  CC_BY_SA_4_0('CC-BY-SA-4.0'),

  /// Display: Creative Commons Zero v1.0 Universal
  /// Definition: Creative Commons Zero v1.0 Universal.
  CC0_1_0('CC0-1.0'),

  /// Display: Common Development and Distribution License 1.0
  /// Definition: Common Development and Distribution License 1.0.
  CDDL_1_0('CDDL-1.0'),

  /// Display: Common Development and Distribution License 1.1
  /// Definition: Common Development and Distribution License 1.1.
  CDDL_1_1('CDDL-1.1'),

  /// Display: Community Data License Agreement Permissive 1.0
  /// Definition: Community Data License Agreement Permissive 1.0.
  CDLA_Permissive_1_0('CDLA-Permissive-1.0'),

  /// Display: Community Data License Agreement Sharing 1.0
  /// Definition: Community Data License Agreement Sharing 1.0.
  CDLA_Sharing_1_0('CDLA-Sharing-1.0'),

  /// Display: CeCILL Free Software License Agreement v1.0
  /// Definition: CeCILL Free Software License Agreement v1.0.
  CECILL_1_0('CECILL-1.0'),

  /// Display: CeCILL Free Software License Agreement v1.1
  /// Definition: CeCILL Free Software License Agreement v1.1.
  CECILL_1_1('CECILL-1.1'),

  /// Display: CeCILL Free Software License Agreement v2.0
  /// Definition: CeCILL Free Software License Agreement v2.0.
  CECILL_2_0('CECILL-2.0'),

  /// Display: CeCILL Free Software License Agreement v2.1
  /// Definition: CeCILL Free Software License Agreement v2.1.
  CECILL_2_1('CECILL-2.1'),

  /// Display: CeCILL-B Free Software License Agreement
  /// Definition: CeCILL-B Free Software License Agreement.
  CECILL_B('CECILL-B'),

  /// Display: CeCILL-C Free Software License Agreement
  /// Definition: CeCILL-C Free Software License Agreement.
  CECILL_C('CECILL-C'),

  /// Display: Clarified Artistic License
  /// Definition: Clarified Artistic License.
  ClArtistic('ClArtistic'),

  /// Display: CNRI Jython License
  /// Definition: CNRI Jython License.
  CNRI_Jython('CNRI-Jython'),

  /// Display: CNRI Python Open Source GPL Compatible License Agreement
  /// Definition: CNRI Python Open Source GPL Compatible License Agreement.
  CNRI_Python_GPL_Compatible('CNRI-Python-GPL-Compatible'),

  /// Display: CNRI Python License
  /// Definition: CNRI Python License.
  CNRI_Python('CNRI-Python'),

  /// Display: Condor Public License v1.1
  /// Definition: Condor Public License v1.1.
  Condor_1_1('Condor-1.1'),

  /// Display: Common Public Attribution License 1.0
  /// Definition: Common Public Attribution License 1.0.
  CPAL_1_0('CPAL-1.0'),

  /// Display: Common Public License 1.0
  /// Definition: Common Public License 1.0.
  CPL_1_0('CPL-1.0'),

  /// Display: Code Project Open License 1.02
  /// Definition: Code Project Open License 1.02.
  CPOL_1_02('CPOL-1.02'),

  /// Display: Crossword License
  /// Definition: Crossword License.
  Crossword('Crossword'),

  /// Display: CrystalStacker License
  /// Definition: CrystalStacker License.
  CrystalStacker('CrystalStacker'),

  /// Display: CUA Office Public License v1.0
  /// Definition: CUA Office Public License v1.0.
  CUA_OPL_1_0('CUA-OPL-1.0'),

  /// Display: Cube License
  /// Definition: Cube License.
  Cube('Cube'),

  /// Display: curl License
  /// Definition: curl License.
  curl('curl'),

  /// Display: Deutsche Freie Software Lizenz
  /// Definition: Deutsche Freie Software Lizenz.
  D_FSL_1_0('D-FSL-1.0'),

  /// Display: diffmark license
  /// Definition: diffmark license.
  diffmark('diffmark'),

  /// Display: DOC License
  /// Definition: DOC License.
  DOC('DOC'),

  /// Display: Dotseqn License
  /// Definition: Dotseqn License.
  Dotseqn('Dotseqn'),

  /// Display: DSDP License
  /// Definition: DSDP License.
  DSDP('DSDP'),

  /// Display: dvipdfm License
  /// Definition: dvipdfm License.
  dvipdfm('dvipdfm'),

  /// Display: Educational Community License v1.0
  /// Definition: Educational Community License v1.0.
  ECL_1_0('ECL-1.0'),

  /// Display: Educational Community License v2.0
  /// Definition: Educational Community License v2.0.
  ECL_2_0('ECL-2.0'),

  /// Display: Eiffel Forum License v1.0
  /// Definition: Eiffel Forum License v1.0.
  EFL_1_0('EFL-1.0'),

  /// Display: Eiffel Forum License v2.0
  /// Definition: Eiffel Forum License v2.0.
  EFL_2_0('EFL-2.0'),

  /// Display: eGenix.com Public License 1.1.0
  /// Definition: eGenix.com Public License 1.1.0.
  eGenix('eGenix'),

  /// Display: Entessa Public License v1.0
  /// Definition: Entessa Public License v1.0.
  Entessa('Entessa'),

  /// Display: Eclipse Public License 1.0
  /// Definition: Eclipse Public License 1.0.
  EPL_1_0('EPL-1.0'),

  /// Display: Eclipse Public License 2.0
  /// Definition: Eclipse Public License 2.0.
  EPL_2_0('EPL-2.0'),

  /// Display: Erlang Public License v1.1
  /// Definition: Erlang Public License v1.1.
  ErlPL_1_1('ErlPL-1.1'),

  /// Display: EU DataGrid Software License
  /// Definition: EU DataGrid Software License.
  EUDatagrid('EUDatagrid'),

  /// Display: European Union Public License 1.0
  /// Definition: European Union Public License 1.0.
  EUPL_1_0('EUPL-1.0'),

  /// Display: European Union Public License 1.1
  /// Definition: European Union Public License 1.1.
  EUPL_1_1('EUPL-1.1'),

  /// Display: European Union Public License 1.2
  /// Definition: European Union Public License 1.2.
  EUPL_1_2('EUPL-1.2'),

  /// Display: Eurosym License
  /// Definition: Eurosym License.
  Eurosym('Eurosym'),

  /// Display: Fair License
  /// Definition: Fair License.
  Fair('Fair'),

  /// Display: Frameworx Open License 1.0
  /// Definition: Frameworx Open License 1.0.
  Frameworx_1_0('Frameworx-1.0'),

  /// Display: FreeImage Public License v1.0
  /// Definition: FreeImage Public License v1.0.
  FreeImage('FreeImage'),

  /// Display: FSF All Permissive License
  /// Definition: FSF All Permissive License.
  FSFAP('FSFAP'),

  /// Display: FSF Unlimited License
  /// Definition: FSF Unlimited License.
  FSFUL('FSFUL'),

  /// Display: FSF Unlimited License (with License Retention)
  /// Definition: FSF Unlimited License (with License Retention).
  FSFULLR('FSFULLR'),

  /// Display: Freetype Project License
  /// Definition: Freetype Project License.
  FTL('FTL'),

  /// Display: GNU Free Documentation License v1.1 only
  /// Definition: GNU Free Documentation License v1.1 only.
  GFDL_1_1_only('GFDL-1.1-only'),

  /// Display: GNU Free Documentation License v1.1 or later
  /// Definition: GNU Free Documentation License v1.1 or later.
  GFDL_1_1_or_later('GFDL-1.1-or-later'),

  /// Display: GNU Free Documentation License v1.2 only
  /// Definition: GNU Free Documentation License v1.2 only.
  GFDL_1_2_only('GFDL-1.2-only'),

  /// Display: GNU Free Documentation License v1.2 or later
  /// Definition: GNU Free Documentation License v1.2 or later.
  GFDL_1_2_or_later('GFDL-1.2-or-later'),

  /// Display: GNU Free Documentation License v1.3 only
  /// Definition: GNU Free Documentation License v1.3 only.
  GFDL_1_3_only('GFDL-1.3-only'),

  /// Display: GNU Free Documentation License v1.3 or later
  /// Definition: GNU Free Documentation License v1.3 or later.
  GFDL_1_3_or_later('GFDL-1.3-or-later'),

  /// Display: Giftware License
  /// Definition: Giftware License.
  Giftware('Giftware'),

  /// Display: GL2PS License
  /// Definition: GL2PS License.
  GL2PS('GL2PS'),

  /// Display: 3dfx Glide License
  /// Definition: 3dfx Glide License.
  Glide('Glide'),

  /// Display: Glulxe License
  /// Definition: Glulxe License.
  Glulxe('Glulxe'),

  /// Display: gnuplot License
  /// Definition: gnuplot License.
  gnuplot('gnuplot'),

  /// Display: GNU General Public License v1.0 only
  /// Definition: GNU General Public License v1.0 only.
  GPL_1_0_only('GPL-1.0-only'),

  /// Display: GNU General Public License v1.0 or later
  /// Definition: GNU General Public License v1.0 or later.
  GPL_1_0_or_later('GPL-1.0-or-later'),

  /// Display: GNU General Public License v2.0 only
  /// Definition: GNU General Public License v2.0 only.
  GPL_2_0_only('GPL-2.0-only'),

  /// Display: GNU General Public License v2.0 or later
  /// Definition: GNU General Public License v2.0 or later.
  GPL_2_0_or_later('GPL-2.0-or-later'),

  /// Display: GNU General Public License v3.0 only
  /// Definition: GNU General Public License v3.0 only.
  GPL_3_0_only('GPL-3.0-only'),

  /// Display: GNU General Public License v3.0 or later
  /// Definition: GNU General Public License v3.0 or later.
  GPL_3_0_or_later('GPL-3.0-or-later'),

  /// Display: gSOAP Public License v1.3b
  /// Definition: gSOAP Public License v1.3b.
  gSOAP_1_3b('gSOAP-1.3b'),

  /// Display: Haskell Language Report License
  /// Definition: Haskell Language Report License.
  HaskellReport('HaskellReport'),

  /// Display: Historical Permission Notice and Disclaimer
  /// Definition: Historical Permission Notice and Disclaimer.
  HPND('HPND'),

  /// Display: IBM PowerPC Initialization and Boot Software
  /// Definition: IBM PowerPC Initialization and Boot Software.
  IBM_pibs('IBM-pibs'),

  /// Display: ICU License
  /// Definition: ICU License.
  ICU('ICU'),

  /// Display: Independent JPEG Group License
  /// Definition: Independent JPEG Group License.
  IJG('IJG'),

  /// Display: ImageMagick License
  /// Definition: ImageMagick License.
  ImageMagick('ImageMagick'),

  /// Display: iMatix Standard Function Library Agreement
  /// Definition: iMatix Standard Function Library Agreement.
  iMatix('iMatix'),

  /// Display: Imlib2 License
  /// Definition: Imlib2 License.
  Imlib2('Imlib2'),

  /// Display: Info-ZIP License
  /// Definition: Info-ZIP License.
  Info_ZIP('Info-ZIP'),

  /// Display: Intel ACPI Software License Agreement
  /// Definition: Intel ACPI Software License Agreement.
  Intel_ACPI('Intel-ACPI'),

  /// Display: Intel Open Source License
  /// Definition: Intel Open Source License.
  Intel('Intel'),

  /// Display: Interbase Public License v1.0
  /// Definition: Interbase Public License v1.0.
  Interbase_1_0('Interbase-1.0'),

  /// Display: IPA Font License
  /// Definition: IPA Font License.
  IPA('IPA'),

  /// Display: IBM Public License v1.0
  /// Definition: IBM Public License v1.0.
  IPL_1_0('IPL-1.0'),

  /// Display: ISC License
  /// Definition: ISC License.
  ISC('ISC'),

  /// Display: JasPer License
  /// Definition: JasPer License.
  JasPer_2_0('JasPer-2.0'),

  /// Display: JSON License
  /// Definition: JSON License.
  JSON('JSON'),

  /// Display: Licence Art Libre 1.2
  /// Definition: Licence Art Libre 1.2.
  LAL_1_2('LAL-1.2'),

  /// Display: Licence Art Libre 1.3
  /// Definition: Licence Art Libre 1.3.
  LAL_1_3('LAL-1.3'),

  /// Display: Latex2e License
  /// Definition: Latex2e License.
  Latex2e('Latex2e'),

  /// Display: Leptonica License
  /// Definition: Leptonica License.
  Leptonica('Leptonica'),

  /// Display: GNU Library General Public License v2 only
  /// Definition: GNU Library General Public License v2 only.
  LGPL_2_0_only('LGPL-2.0-only'),

  /// Display: GNU Library General Public License v2 or later
  /// Definition: GNU Library General Public License v2 or later.
  LGPL_2_0_or_later('LGPL-2.0-or-later'),

  /// Display: GNU Lesser General Public License v2.1 only
  /// Definition: GNU Lesser General Public License v2.1 only.
  LGPL_2_1_only('LGPL-2.1-only'),

  /// Display: GNU Lesser General Public License v2.1 or later
  /// Definition: GNU Lesser General Public License v2.1 or later.
  LGPL_2_1_or_later('LGPL-2.1-or-later'),

  /// Display: GNU Lesser General Public License v3.0 only
  /// Definition: GNU Lesser General Public License v3.0 only.
  LGPL_3_0_only('LGPL-3.0-only'),

  /// Display: GNU Lesser General Public License v3.0 or later
  /// Definition: GNU Lesser General Public License v3.0 or later.
  LGPL_3_0_or_later('LGPL-3.0-or-later'),

  /// Display: Lesser General Public License For Linguistic Resources
  /// Definition: Lesser General Public License For Linguistic Resources.
  LGPLLR('LGPLLR'),

  /// Display: libpng License
  /// Definition: libpng License.
  Libpng('Libpng'),

  /// Display: libtiff License
  /// Definition: libtiff License.
  libtiff('libtiff'),

  /// Display: Licence Libre du Québec – Permissive version 1.1
  /// Definition: Licence Libre du Québec – Permissive version 1.1.
  LiLiQ_P_1_1('LiLiQ-P-1.1'),

  /// Display: Licence Libre du Québec – Réciprocité version 1.1
  /// Definition: Licence Libre du Québec – Réciprocité version 1.1.
  LiLiQ_R_1_1('LiLiQ-R-1.1'),

  /// Display: Licence Libre du Québec – Réciprocité forte version 1.1
  /// Definition: Licence Libre du Québec – Réciprocité forte version 1.1.
  LiLiQ_Rplus_1_1('LiLiQ-Rplus-1.1'),

  /// Display: Linux Kernel Variant of OpenIB.org license
  /// Definition: Linux Kernel Variant of OpenIB.org license.
  Linux_OpenIB('Linux-OpenIB'),

  /// Display: Lucent Public License Version 1.0
  /// Definition: Lucent Public License Version 1.0.
  LPL_1_0('LPL-1.0'),

  /// Display: Lucent Public License v1.02
  /// Definition: Lucent Public License v1.02.
  LPL_1_02('LPL-1.02'),

  /// Display: LaTeX Project Public License v1.0
  /// Definition: LaTeX Project Public License v1.0.
  LPPL_1_0('LPPL-1.0'),

  /// Display: LaTeX Project Public License v1.1
  /// Definition: LaTeX Project Public License v1.1.
  LPPL_1_1('LPPL-1.1'),

  /// Display: LaTeX Project Public License v1.2
  /// Definition: LaTeX Project Public License v1.2.
  LPPL_1_2('LPPL-1.2'),

  /// Display: LaTeX Project Public License v1.3a
  /// Definition: LaTeX Project Public License v1.3a.
  LPPL_1_3a('LPPL-1.3a'),

  /// Display: LaTeX Project Public License v1.3c
  /// Definition: LaTeX Project Public License v1.3c.
  LPPL_1_3c('LPPL-1.3c'),

  /// Display: MakeIndex License
  /// Definition: MakeIndex License.
  MakeIndex('MakeIndex'),

  /// Display: MirOS License
  /// Definition: MirOS License.
  MirOS('MirOS'),

  /// Display: MIT No Attribution
  /// Definition: MIT No Attribution.
  MIT_0('MIT-0'),

  /// Display: Enlightenment License (e16)
  /// Definition: Enlightenment License (e16).
  MIT_advertising('MIT-advertising'),

  /// Display: CMU License
  /// Definition: CMU License.
  MIT_CMU('MIT-CMU'),

  /// Display: enna License
  /// Definition: enna License.
  MIT_enna('MIT-enna'),

  /// Display: feh License
  /// Definition: feh License.
  MIT_feh('MIT-feh'),

  /// Display: MIT License
  /// Definition: MIT License.
  MIT('MIT'),

  /// Display: MIT +no-false-attribs license
  /// Definition: MIT +no-false-attribs license.
  MITNFA('MITNFA'),

  /// Display: Motosoto License
  /// Definition: Motosoto License.
  Motosoto('Motosoto'),

  /// Display: mpich2 License
  /// Definition: mpich2 License.
  mpich2('mpich2'),

  /// Display: Mozilla Public License 1.0
  /// Definition: Mozilla Public License 1.0.
  MPL_1_0('MPL-1.0'),

  /// Display: Mozilla Public License 1.1
  /// Definition: Mozilla Public License 1.1.
  MPL_1_1('MPL-1.1'),

  /// Display: Mozilla Public License 2.0 (no copyleft exception)
  /// Definition: Mozilla Public License 2.0 (no copyleft exception).
  MPL_2_0_no_copyleft_exception('MPL-2.0-no-copyleft-exception'),

  /// Display: Mozilla Public License 2.0
  /// Definition: Mozilla Public License 2.0.
  MPL_2_0('MPL-2.0'),

  /// Display: Microsoft Public License
  /// Definition: Microsoft Public License.
  MS_PL('MS-PL'),

  /// Display: Microsoft Reciprocal License
  /// Definition: Microsoft Reciprocal License.
  MS_RL('MS-RL'),

  /// Display: Matrix Template Library License
  /// Definition: Matrix Template Library License.
  MTLL('MTLL'),

  /// Display: Multics License
  /// Definition: Multics License.
  Multics('Multics'),

  /// Display: Mup License
  /// Definition: Mup License.
  Mup('Mup'),

  /// Display: NASA Open Source Agreement 1.3
  /// Definition: NASA Open Source Agreement 1.3.
  NASA_1_3('NASA-1.3'),

  /// Display: Naumen Public License
  /// Definition: Naumen Public License.
  Naumen('Naumen'),

  /// Display: Net Boolean Public License v1
  /// Definition: Net Boolean Public License v1.
  NBPL_1_0('NBPL-1.0'),

  /// Display: University of Illinois/NCSA Open Source License
  /// Definition: University of Illinois/NCSA Open Source License.
  NCSA('NCSA'),

  /// Display: Net-SNMP License
  /// Definition: Net-SNMP License.
  Net_SNMP('Net-SNMP'),

  /// Display: NetCDF license
  /// Definition: NetCDF license.
  NetCDF('NetCDF'),

  /// Display: Newsletr License
  /// Definition: Newsletr License.
  Newsletr('Newsletr'),

  /// Display: Nethack General Public License
  /// Definition: Nethack General Public License.
  NGPL('NGPL'),

  /// Display: Norwegian Licence for Open Government Data
  /// Definition: Norwegian Licence for Open Government Data.
  NLOD_1_0('NLOD-1.0'),

  /// Display: No Limit Public License
  /// Definition: No Limit Public License.
  NLPL('NLPL'),

  /// Display: Nokia Open Source License
  /// Definition: Nokia Open Source License.
  Nokia('Nokia'),

  /// Display: Netizen Open Source License
  /// Definition: Netizen Open Source License.
  NOSL('NOSL'),

  /// Display: Noweb License
  /// Definition: Noweb License.
  Noweb('Noweb'),

  /// Display: Netscape Public License v1.0
  /// Definition: Netscape Public License v1.0.
  NPL_1_0('NPL-1.0'),

  /// Display: Netscape Public License v1.1
  /// Definition: Netscape Public License v1.1.
  NPL_1_1('NPL-1.1'),

  /// Display: Non-Profit Open Software License 3.0
  /// Definition: Non-Profit Open Software License 3.0.
  NPOSL_3_0('NPOSL-3.0'),

  /// Display: NRL License
  /// Definition: NRL License.
  NRL('NRL'),

  /// Display: NTP License
  /// Definition: NTP License.
  NTP('NTP'),

  /// Display: Open CASCADE Technology Public License
  /// Definition: Open CASCADE Technology Public License.
  OCCT_PL('OCCT-PL'),

  /// Display: OCLC Research Public License 2.0
  /// Definition: OCLC Research Public License 2.0.
  OCLC_2_0('OCLC-2.0'),

  /// Display: ODC Open Database License v1.0
  /// Definition: ODC Open Database License v1.0.
  ODbL_1_0('ODbL-1.0'),

  /// Display: SIL Open Font License 1.0
  /// Definition: SIL Open Font License 1.0.
  OFL_1_0('OFL-1.0'),

  /// Display: SIL Open Font License 1.1
  /// Definition: SIL Open Font License 1.1.
  OFL_1_1('OFL-1.1'),

  /// Display: Open Group Test Suite License
  /// Definition: Open Group Test Suite License.
  OGTSL('OGTSL'),

  /// Display: Open LDAP Public License v1.1
  /// Definition: Open LDAP Public License v1.1.
  OLDAP_1_1('OLDAP-1.1'),

  /// Display: Open LDAP Public License v1.2
  /// Definition: Open LDAP Public License v1.2.
  OLDAP_1_2('OLDAP-1.2'),

  /// Display: Open LDAP Public License v1.3
  /// Definition: Open LDAP Public License v1.3.
  OLDAP_1_3('OLDAP-1.3'),

  /// Display: Open LDAP Public License v1.4
  /// Definition: Open LDAP Public License v1.4.
  OLDAP_1_4('OLDAP-1.4'),

  /// Display: Open LDAP Public License v2.0.1
  /// Definition: Open LDAP Public License v2.0.1.
  OLDAP_2_0_1('OLDAP-2.0.1'),

  /// Display: Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)
  /// Definition: Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B).
  OLDAP_2_0('OLDAP-2.0'),

  /// Display: Open LDAP Public License v2.1
  /// Definition: Open LDAP Public License v2.1.
  OLDAP_2_1('OLDAP-2.1'),

  /// Display: Open LDAP Public License v2.2.1
  /// Definition: Open LDAP Public License v2.2.1.
  OLDAP_2_2_1('OLDAP-2.2.1'),

  /// Display: Open LDAP Public License 2.2.2
  /// Definition: Open LDAP Public License 2.2.2.
  OLDAP_2_2_2('OLDAP-2.2.2'),

  /// Display: Open LDAP Public License v2.2
  /// Definition: Open LDAP Public License v2.2.
  OLDAP_2_2('OLDAP-2.2'),

  /// Display: Open LDAP Public License v2.3
  /// Definition: Open LDAP Public License v2.3.
  OLDAP_2_3('OLDAP-2.3'),

  /// Display: Open LDAP Public License v2.4
  /// Definition: Open LDAP Public License v2.4.
  OLDAP_2_4('OLDAP-2.4'),

  /// Display: Open LDAP Public License v2.5
  /// Definition: Open LDAP Public License v2.5.
  OLDAP_2_5('OLDAP-2.5'),

  /// Display: Open LDAP Public License v2.6
  /// Definition: Open LDAP Public License v2.6.
  OLDAP_2_6('OLDAP-2.6'),

  /// Display: Open LDAP Public License v2.7
  /// Definition: Open LDAP Public License v2.7.
  OLDAP_2_7('OLDAP-2.7'),

  /// Display: Open LDAP Public License v2.8
  /// Definition: Open LDAP Public License v2.8.
  OLDAP_2_8('OLDAP-2.8'),

  /// Display: Open Market License
  /// Definition: Open Market License.
  OML('OML'),

  /// Display: OpenSSL License
  /// Definition: OpenSSL License.
  OpenSSL('OpenSSL'),

  /// Display: Open Public License v1.0
  /// Definition: Open Public License v1.0.
  OPL_1_0('OPL-1.0'),

  /// Display: OSET Public License version 2.1
  /// Definition: OSET Public License version 2.1.
  OSET_PL_2_1('OSET-PL-2.1'),

  /// Display: Open Software License 1.0
  /// Definition: Open Software License 1.0.
  OSL_1_0('OSL-1.0'),

  /// Display: Open Software License 1.1
  /// Definition: Open Software License 1.1.
  OSL_1_1('OSL-1.1'),

  /// Display: Open Software License 2.0
  /// Definition: Open Software License 2.0.
  OSL_2_0('OSL-2.0'),

  /// Display: Open Software License 2.1
  /// Definition: Open Software License 2.1.
  OSL_2_1('OSL-2.1'),

  /// Display: Open Software License 3.0
  /// Definition: Open Software License 3.0.
  OSL_3_0('OSL-3.0'),

  /// Display: ODC Public Domain Dedication & License 1.0
  /// Definition: ODC Public Domain Dedication & License 1.0.
  PDDL_1_0('PDDL-1.0'),

  /// Display: PHP License v3.0
  /// Definition: PHP License v3.0.
  PHP_3_0('PHP-3.0'),

  /// Display: PHP License v3.01
  /// Definition: PHP License v3.01.
  PHP_3_01('PHP-3.01'),

  /// Display: Plexus Classworlds License
  /// Definition: Plexus Classworlds License.
  Plexus('Plexus'),

  /// Display: PostgreSQL License
  /// Definition: PostgreSQL License.
  PostgreSQL('PostgreSQL'),

  /// Display: psfrag License
  /// Definition: psfrag License.
  psfrag('psfrag'),

  /// Display: psutils License
  /// Definition: psutils License.
  psutils('psutils'),

  /// Display: Python License 2.0
  /// Definition: Python License 2.0.
  Python_2_0('Python-2.0'),

  /// Display: Qhull License
  /// Definition: Qhull License.
  Qhull('Qhull'),

  /// Display: Q Public License 1.0
  /// Definition: Q Public License 1.0.
  QPL_1_0('QPL-1.0'),

  /// Display: Rdisc License
  /// Definition: Rdisc License.
  Rdisc('Rdisc'),

  /// Display: Red Hat eCos Public License v1.1
  /// Definition: Red Hat eCos Public License v1.1.
  RHeCos_1_1('RHeCos-1.1'),

  /// Display: Reciprocal Public License 1.1
  /// Definition: Reciprocal Public License 1.1.
  RPL_1_1('RPL-1.1'),

  /// Display: Reciprocal Public License 1.5
  /// Definition: Reciprocal Public License 1.5.
  RPL_1_5('RPL-1.5'),

  /// Display: RealNetworks Public Source License v1.0
  /// Definition: RealNetworks Public Source License v1.0.
  RPSL_1_0('RPSL-1.0'),

  /// Display: RSA Message-Digest License
  /// Definition: RSA Message-Digest License.
  RSA_MD('RSA-MD'),

  /// Display: Ricoh Source Code Public License
  /// Definition: Ricoh Source Code Public License.
  RSCPL('RSCPL'),

  /// Display: Ruby License
  /// Definition: Ruby License.
  Ruby('Ruby'),

  /// Display: Sax Public Domain Notice
  /// Definition: Sax Public Domain Notice.
  SAX_PD('SAX-PD'),

  /// Display: Saxpath License
  /// Definition: Saxpath License.
  Saxpath('Saxpath'),

  /// Display: SCEA Shared Source License
  /// Definition: SCEA Shared Source License.
  SCEA('SCEA'),

  /// Display: Sendmail License
  /// Definition: Sendmail License.
  Sendmail('Sendmail'),

  /// Display: SGI Free Software License B v1.0
  /// Definition: SGI Free Software License B v1.0.
  SGI_B_1_0('SGI-B-1.0'),

  /// Display: SGI Free Software License B v1.1
  /// Definition: SGI Free Software License B v1.1.
  SGI_B_1_1('SGI-B-1.1'),

  /// Display: SGI Free Software License B v2.0
  /// Definition: SGI Free Software License B v2.0.
  SGI_B_2_0('SGI-B-2.0'),

  /// Display: Simple Public License 2.0
  /// Definition: Simple Public License 2.0.
  SimPL_2_0('SimPL-2.0'),

  /// Display: Sun Industry Standards Source License v1.2
  /// Definition: Sun Industry Standards Source License v1.2.
  SISSL_1_2('SISSL-1.2'),

  /// Display: Sun Industry Standards Source License v1.1
  /// Definition: Sun Industry Standards Source License v1.1.
  SISSL('SISSL'),

  /// Display: Sleepycat License
  /// Definition: Sleepycat License.
  Sleepycat('Sleepycat'),

  /// Display: Standard ML of New Jersey License
  /// Definition: Standard ML of New Jersey License.
  SMLNJ('SMLNJ'),

  /// Display: Secure Messaging Protocol Public License
  /// Definition: Secure Messaging Protocol Public License.
  SMPPL('SMPPL'),

  /// Display: SNIA Public License 1.1
  /// Definition: SNIA Public License 1.1.
  SNIA('SNIA'),

  /// Display: Spencer License 86
  /// Definition: Spencer License 86.
  Spencer_86('Spencer-86'),

  /// Display: Spencer License 94
  /// Definition: Spencer License 94.
  Spencer_94('Spencer-94'),

  /// Display: Spencer License 99
  /// Definition: Spencer License 99.
  Spencer_99('Spencer-99'),

  /// Display: Sun Public License v1.0
  /// Definition: Sun Public License v1.0.
  SPL_1_0('SPL-1.0'),

  /// Display: SugarCRM Public License v1.1.3
  /// Definition: SugarCRM Public License v1.1.3.
  SugarCRM_1_1_3('SugarCRM-1.1.3'),

  /// Display: Scheme Widget Library (SWL) Software License Agreement
  /// Definition: Scheme Widget Library (SWL) Software License Agreement.
  SWL('SWL'),

  /// Display: TCL/TK License
  /// Definition: TCL/TK License.
  TCL('TCL'),

  /// Display: TCP Wrappers License
  /// Definition: TCP Wrappers License.
  TCP_wrappers('TCP-wrappers'),

  /// Display: TMate Open Source License
  /// Definition: TMate Open Source License.
  TMate('TMate'),

  /// Display: TORQUE v2.5+ Software License v1.1
  /// Definition: TORQUE v2.5+ Software License v1.1.
  TORQUE_1_1('TORQUE-1.1'),

  /// Display: Trusster Open Source License
  /// Definition: Trusster Open Source License.
  TOSL('TOSL'),

  /// Display: Unicode License Agreement - Data Files and Software (2015)
  /// Definition: Unicode License Agreement - Data Files and Software (2015).
  Unicode_DFS_2015('Unicode-DFS-2015'),

  /// Display: Unicode License Agreement - Data Files and Software (2016)
  /// Definition: Unicode License Agreement - Data Files and Software (2016).
  Unicode_DFS_2016('Unicode-DFS-2016'),

  /// Display: Unicode Terms of Use
  /// Definition: Unicode Terms of Use.
  Unicode_TOU('Unicode-TOU'),

  /// Display: The Unlicense
  /// Definition: The Unlicense.
  Unlicense('Unlicense'),

  /// Display: Universal Permissive License v1.0
  /// Definition: Universal Permissive License v1.0.
  UPL_1_0('UPL-1.0'),

  /// Display: Vim License
  /// Definition: Vim License.
  Vim('Vim'),

  /// Display: VOSTROM Public License for Open Source
  /// Definition: VOSTROM Public License for Open Source.
  VOSTROM('VOSTROM'),

  /// Display: Vovida Software License v1.0
  /// Definition: Vovida Software License v1.0.
  VSL_1_0('VSL-1.0'),

  /// Display: W3C Software Notice and License (1998-07-20)
  /// Definition: W3C Software Notice and License (1998-07-20).
  W3C_19980720('W3C-19980720'),

  /// Display: W3C Software Notice and Document License (2015-05-13)
  /// Definition: W3C Software Notice and Document License (2015-05-13).
  W3C_20150513('W3C-20150513'),

  /// Display: W3C Software Notice and License (2002-12-31)
  /// Definition: W3C Software Notice and License (2002-12-31).
  W3C('W3C'),

  /// Display: Sybase Open Watcom Public License 1.0
  /// Definition: Sybase Open Watcom Public License 1.0.
  Watcom_1_0('Watcom-1.0'),

  /// Display: Wsuipa License
  /// Definition: Wsuipa License.
  Wsuipa('Wsuipa'),

  /// Display: Do What The F*ck You Want To Public License
  /// Definition: Do What The F*ck You Want To Public License.
  WTFPL('WTFPL'),

  /// Display: X11 License
  /// Definition: X11 License.
  X11('X11'),

  /// Display: Xerox License
  /// Definition: Xerox License.
  Xerox('Xerox'),

  /// Display: XFree86 License 1.1
  /// Definition: XFree86 License 1.1.
  XFree86_1_1('XFree86-1.1'),

  /// Display: xinetd License
  /// Definition: xinetd License.
  xinetd('xinetd'),

  /// Display: X.Net License
  /// Definition: X.Net License.
  Xnet('Xnet'),

  /// Display: XPP License
  /// Definition: XPP License.
  xpp('xpp'),

  /// Display: XSkat License
  /// Definition: XSkat License.
  XSkat('XSkat'),

  /// Display: Yahoo! Public License v1.0
  /// Definition: Yahoo! Public License v1.0.
  YPL_1_0('YPL-1.0'),

  /// Display: Yahoo! Public License v1.1
  /// Definition: Yahoo! Public License v1.1.
  YPL_1_1('YPL-1.1'),

  /// Display: Zed License
  /// Definition: Zed License.
  Zed('Zed'),

  /// Display: Zend License v2.0
  /// Definition: Zend License v2.0.
  Zend_2_0('Zend-2.0'),

  /// Display: Zimbra Public License v1.3
  /// Definition: Zimbra Public License v1.3.
  Zimbra_1_3('Zimbra-1.3'),

  /// Display: Zimbra Public License v1.4
  /// Definition: Zimbra Public License v1.4.
  Zimbra_1_4('Zimbra-1.4'),

  /// Display: zlib/libpng License with Acknowledgement
  /// Definition: zlib/libpng License with Acknowledgement.
  zlib_acknowledgement('zlib-acknowledgement'),

  /// Display: zlib License
  /// Definition: zlib License.
  Zlib('Zlib'),

  /// Display: Zope Public License 1.1
  /// Definition: Zope Public License 1.1.
  ZPL_1_1('ZPL-1.1'),

  /// Display: Zope Public License 2.0
  /// Definition: Zope Public License 2.0.
  ZPL_2_0('ZPL-2.0'),

  /// Display: Zope Public License 2.1
  /// Definition: Zope Public License 2.1.
  ZPL_2_1('ZPL-2.1'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const SPDXLicense(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [SPDXLicense] instances.
  static SPDXLicense fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SPDXLicense.elementOnly.withElement(
        element,
      );
    }
    return SPDXLicense.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  SPDXLicense withElement(Element? newElement) {
    return SPDXLicense.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
