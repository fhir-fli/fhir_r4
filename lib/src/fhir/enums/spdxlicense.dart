import 'package:json_annotation/json_annotation.dart';

/// The license that applies to an Implementation Guide (using an SPDX license Identifiers, or 'not-open-source'). The binding is required but new SPDX license Identifiers are allowed to be used (https://spdx.org/licenses/).
enum SPDXLicense {
  /// Display: Not open source
  /// Definition: Not an open source license.
  @JsonValue('not-open-source')
  not_open_source,
  /// Display: BSD Zero Clause License
  /// Definition: BSD Zero Clause License.
  @JsonValue('0BSD')
  value0BSD,
  /// Display: Attribution Assurance License
  /// Definition: Attribution Assurance License.
  @JsonValue('AAL')
  AAL,
  /// Display: Abstyles License
  /// Definition: Abstyles License.
  @JsonValue('Abstyles')
  Abstyles,
  /// Display: Adobe Systems Incorporated Source Code License Agreement
  /// Definition: Adobe Systems Incorporated Source Code License Agreement.
  @JsonValue('Adobe-2006')
  Adobe_2006,
  /// Display: Adobe Glyph List License
  /// Definition: Adobe Glyph List License.
  @JsonValue('Adobe-Glyph')
  Adobe_Glyph,
  /// Display: Amazon Digital Services License
  /// Definition: Amazon Digital Services License.
  @JsonValue('ADSL')
  ADSL,
  /// Display: Academic Free License v1.1
  /// Definition: Academic Free License v1.1.
  @JsonValue('AFL-1.1')
  AFL_1_1,
  /// Display: Academic Free License v1.2
  /// Definition: Academic Free License v1.2.
  @JsonValue('AFL-1.2')
  AFL_1_2,
  /// Display: Academic Free License v2.0
  /// Definition: Academic Free License v2.0.
  @JsonValue('AFL-2.0')
  AFL_2_0,
  /// Display: Academic Free License v2.1
  /// Definition: Academic Free License v2.1.
  @JsonValue('AFL-2.1')
  AFL_2_1,
  /// Display: Academic Free License v3.0
  /// Definition: Academic Free License v3.0.
  @JsonValue('AFL-3.0')
  AFL_3_0,
  /// Display: Afmparse License
  /// Definition: Afmparse License.
  @JsonValue('Afmparse')
  Afmparse,
  /// Display: Affero General Public License v1.0 only
  /// Definition: Affero General Public License v1.0 only.
  @JsonValue('AGPL-1.0-only')
  AGPL_1_0_only,
  /// Display: Affero General Public License v1.0 or later
  /// Definition: Affero General Public License v1.0 or later.
  @JsonValue('AGPL-1.0-or-later')
  AGPL_1_0_or_later,
  /// Display: GNU Affero General Public License v3.0 only
  /// Definition: GNU Affero General Public License v3.0 only.
  @JsonValue('AGPL-3.0-only')
  AGPL_3_0_only,
  /// Display: GNU Affero General Public License v3.0 or later
  /// Definition: GNU Affero General Public License v3.0 or later.
  @JsonValue('AGPL-3.0-or-later')
  AGPL_3_0_or_later,
  /// Display: Aladdin Free Public License
  /// Definition: Aladdin Free Public License.
  @JsonValue('Aladdin')
  Aladdin,
  /// Display: AMD's plpa_map.c License
  /// Definition: AMD's plpa_map.c License.
  @JsonValue('AMDPLPA')
  AMDPLPA,
  /// Display: Apple MIT License
  /// Definition: Apple MIT License.
  @JsonValue('AML')
  AML,
  /// Display: Academy of Motion Picture Arts and Sciences BSD
  /// Definition: Academy of Motion Picture Arts and Sciences BSD.
  @JsonValue('AMPAS')
  AMPAS,
  /// Display: ANTLR Software Rights Notice
  /// Definition: ANTLR Software Rights Notice.
  @JsonValue('ANTLR-PD')
  ANTLR_PD,
  /// Display: Apache License 1.0
  /// Definition: Apache License 1.0.
  @JsonValue('Apache-1.0')
  Apache_1_0,
  /// Display: Apache License 1.1
  /// Definition: Apache License 1.1.
  @JsonValue('Apache-1.1')
  Apache_1_1,
  /// Display: Apache License 2.0
  /// Definition: Apache License 2.0.
  @JsonValue('Apache-2.0')
  Apache_2_0,
  /// Display: Adobe Postscript AFM License
  /// Definition: Adobe Postscript AFM License.
  @JsonValue('APAFML')
  APAFML,
  /// Display: Adaptive Public License 1.0
  /// Definition: Adaptive Public License 1.0.
  @JsonValue('APL-1.0')
  APL_1_0,
  /// Display: Apple Public Source License 1.0
  /// Definition: Apple Public Source License 1.0.
  @JsonValue('APSL-1.0')
  APSL_1_0,
  /// Display: Apple Public Source License 1.1
  /// Definition: Apple Public Source License 1.1.
  @JsonValue('APSL-1.1')
  APSL_1_1,
  /// Display: Apple Public Source License 1.2
  /// Definition: Apple Public Source License 1.2.
  @JsonValue('APSL-1.2')
  APSL_1_2,
  /// Display: Apple Public Source License 2.0
  /// Definition: Apple Public Source License 2.0.
  @JsonValue('APSL-2.0')
  APSL_2_0,
  /// Display: Artistic License 1.0 w/clause 8
  /// Definition: Artistic License 1.0 w/clause 8.
  @JsonValue('Artistic-1.0-cl8')
  Artistic_1_0_cl8,
  /// Display: Artistic License 1.0 (Perl)
  /// Definition: Artistic License 1.0 (Perl).
  @JsonValue('Artistic-1.0-Perl')
  Artistic_1_0_Perl,
  /// Display: Artistic License 1.0
  /// Definition: Artistic License 1.0.
  @JsonValue('Artistic-1.0')
  Artistic_1_0,
  /// Display: Artistic License 2.0
  /// Definition: Artistic License 2.0.
  @JsonValue('Artistic-2.0')
  Artistic_2_0,
  /// Display: Bahyph License
  /// Definition: Bahyph License.
  @JsonValue('Bahyph')
  Bahyph,
  /// Display: Barr License
  /// Definition: Barr License.
  @JsonValue('Barr')
  Barr,
  /// Display: Beerware License
  /// Definition: Beerware License.
  @JsonValue('Beerware')
  Beerware,
  /// Display: BitTorrent Open Source License v1.0
  /// Definition: BitTorrent Open Source License v1.0.
  @JsonValue('BitTorrent-1.0')
  BitTorrent_1_0,
  /// Display: BitTorrent Open Source License v1.1
  /// Definition: BitTorrent Open Source License v1.1.
  @JsonValue('BitTorrent-1.1')
  BitTorrent_1_1,
  /// Display: Borceux license
  /// Definition: Borceux license.
  @JsonValue('Borceux')
  Borceux,
  /// Display: BSD 1-Clause License
  /// Definition: BSD 1-Clause License.
  @JsonValue('BSD-1-Clause')
  BSD_1_Clause,
  /// Display: BSD 2-Clause FreeBSD License
  /// Definition: BSD 2-Clause FreeBSD License.
  @JsonValue('BSD-2-Clause-FreeBSD')
  BSD_2_Clause_FreeBSD,
  /// Display: BSD 2-Clause NetBSD License
  /// Definition: BSD 2-Clause NetBSD License.
  @JsonValue('BSD-2-Clause-NetBSD')
  BSD_2_Clause_NetBSD,
  /// Display: BSD-2-Clause Plus Patent License
  /// Definition: BSD-2-Clause Plus Patent License.
  @JsonValue('BSD-2-Clause-Patent')
  BSD_2_Clause_Patent,
  /// Display: BSD 2-Clause "Simplified" License
  /// Definition: BSD 2-Clause "Simplified" License.
  @JsonValue('BSD-2-Clause')
  BSD_2_Clause,
  /// Display: BSD with attribution
  /// Definition: BSD with attribution.
  @JsonValue('BSD-3-Clause-Attribution')
  BSD_3_Clause_Attribution,
  /// Display: BSD 3-Clause Clear License
  /// Definition: BSD 3-Clause Clear License.
  @JsonValue('BSD-3-Clause-Clear')
  BSD_3_Clause_Clear,
  /// Display: Lawrence Berkeley National Labs BSD variant license
  /// Definition: Lawrence Berkeley National Labs BSD variant license.
  @JsonValue('BSD-3-Clause-LBNL')
  BSD_3_Clause_LBNL,
  /// Display: BSD 3-Clause No Nuclear License 2014
  /// Definition: BSD 3-Clause No Nuclear License 2014.
  @JsonValue('BSD-3-Clause-No-Nuclear-License-2014')
  BSD_3_Clause_No_Nuclear_License_2014,
  /// Display: BSD 3-Clause No Nuclear License
  /// Definition: BSD 3-Clause No Nuclear License.
  @JsonValue('BSD-3-Clause-No-Nuclear-License')
  BSD_3_Clause_No_Nuclear_License,
  /// Display: BSD 3-Clause No Nuclear Warranty
  /// Definition: BSD 3-Clause No Nuclear Warranty.
  @JsonValue('BSD-3-Clause-No-Nuclear-Warranty')
  BSD_3_Clause_No_Nuclear_Warranty,
  /// Display: BSD 3-Clause "New" or "Revised" License
  /// Definition: BSD 3-Clause "New" or "Revised" License.
  @JsonValue('BSD-3-Clause')
  BSD_3_Clause,
  /// Display: BSD-4-Clause (University of California-Specific)
  /// Definition: BSD-4-Clause (University of California-Specific).
  @JsonValue('BSD-4-Clause-UC')
  BSD_4_Clause_UC,
  /// Display: BSD 4-Clause "Original" or "Old" License
  /// Definition: BSD 4-Clause "Original" or "Old" License.
  @JsonValue('BSD-4-Clause')
  BSD_4_Clause,
  /// Display: BSD Protection License
  /// Definition: BSD Protection License.
  @JsonValue('BSD-Protection')
  BSD_Protection,
  /// Display: BSD Source Code Attribution
  /// Definition: BSD Source Code Attribution.
  @JsonValue('BSD-Source-Code')
  BSD_Source_Code,
  /// Display: Boost Software License 1.0
  /// Definition: Boost Software License 1.0.
  @JsonValue('BSL-1.0')
  BSL_1_0,
  /// Display: bzip2 and libbzip2 License v1.0.5
  /// Definition: bzip2 and libbzip2 License v1.0.5.
  @JsonValue('bzip2-1.0.5')
  bzip2_1_0_5,
  /// Display: bzip2 and libbzip2 License v1.0.6
  /// Definition: bzip2 and libbzip2 License v1.0.6.
  @JsonValue('bzip2-1.0.6')
  bzip2_1_0_6,
  /// Display: Caldera License
  /// Definition: Caldera License.
  @JsonValue('Caldera')
  Caldera,
  /// Display: Computer Associates Trusted Open Source License 1.1
  /// Definition: Computer Associates Trusted Open Source License 1.1.
  @JsonValue('CATOSL-1.1')
  CATOSL_1_1,
  /// Display: Creative Commons Attribution 1.0 Generic
  /// Definition: Creative Commons Attribution 1.0 Generic.
  @JsonValue('CC-BY-1.0')
  CC_BY_1_0,
  /// Display: Creative Commons Attribution 2.0 Generic
  /// Definition: Creative Commons Attribution 2.0 Generic.
  @JsonValue('CC-BY-2.0')
  CC_BY_2_0,
  /// Display: Creative Commons Attribution 2.5 Generic
  /// Definition: Creative Commons Attribution 2.5 Generic.
  @JsonValue('CC-BY-2.5')
  CC_BY_2_5,
  /// Display: Creative Commons Attribution 3.0 Unported
  /// Definition: Creative Commons Attribution 3.0 Unported.
  @JsonValue('CC-BY-3.0')
  CC_BY_3_0,
  /// Display: Creative Commons Attribution 4.0 International
  /// Definition: Creative Commons Attribution 4.0 International.
  @JsonValue('CC-BY-4.0')
  CC_BY_4_0,
  /// Display: Creative Commons Attribution Non Commercial 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial 1.0 Generic.
  @JsonValue('CC-BY-NC-1.0')
  CC_BY_NC_1_0,
  /// Display: Creative Commons Attribution Non Commercial 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial 2.0 Generic.
  @JsonValue('CC-BY-NC-2.0')
  CC_BY_NC_2_0,
  /// Display: Creative Commons Attribution Non Commercial 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial 2.5 Generic.
  @JsonValue('CC-BY-NC-2.5')
  CC_BY_NC_2_5,
  /// Display: Creative Commons Attribution Non Commercial 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial 3.0 Unported.
  @JsonValue('CC-BY-NC-3.0')
  CC_BY_NC_3_0,
  /// Display: Creative Commons Attribution Non Commercial 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial 4.0 International.
  @JsonValue('CC-BY-NC-4.0')
  CC_BY_NC_4_0,
  /// Display: Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic.
  @JsonValue('CC-BY-NC-ND-1.0')
  CC_BY_NC_ND_1_0,
  /// Display: Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic.
  @JsonValue('CC-BY-NC-ND-2.0')
  CC_BY_NC_ND_2_0,
  /// Display: Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic.
  @JsonValue('CC-BY-NC-ND-2.5')
  CC_BY_NC_ND_2_5,
  /// Display: Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported.
  @JsonValue('CC-BY-NC-ND-3.0')
  CC_BY_NC_ND_3_0,
  /// Display: Creative Commons Attribution Non Commercial No Derivatives 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial No Derivatives 4.0 International.
  @JsonValue('CC-BY-NC-ND-4.0')
  CC_BY_NC_ND_4_0,
  /// Display: Creative Commons Attribution Non Commercial Share Alike 1.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 1.0 Generic.
  @JsonValue('CC-BY-NC-SA-1.0')
  CC_BY_NC_SA_1_0,
  /// Display: Creative Commons Attribution Non Commercial Share Alike 2.0 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 2.0 Generic.
  @JsonValue('CC-BY-NC-SA-2.0')
  CC_BY_NC_SA_2_0,
  /// Display: Creative Commons Attribution Non Commercial Share Alike 2.5 Generic
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 2.5 Generic.
  @JsonValue('CC-BY-NC-SA-2.5')
  CC_BY_NC_SA_2_5,
  /// Display: Creative Commons Attribution Non Commercial Share Alike 3.0 Unported
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 3.0 Unported.
  @JsonValue('CC-BY-NC-SA-3.0')
  CC_BY_NC_SA_3_0,
  /// Display: Creative Commons Attribution Non Commercial Share Alike 4.0 International
  /// Definition: Creative Commons Attribution Non Commercial Share Alike 4.0 International.
  @JsonValue('CC-BY-NC-SA-4.0')
  CC_BY_NC_SA_4_0,
  /// Display: Creative Commons Attribution No Derivatives 1.0 Generic
  /// Definition: Creative Commons Attribution No Derivatives 1.0 Generic.
  @JsonValue('CC-BY-ND-1.0')
  CC_BY_ND_1_0,
  /// Display: Creative Commons Attribution No Derivatives 2.0 Generic
  /// Definition: Creative Commons Attribution No Derivatives 2.0 Generic.
  @JsonValue('CC-BY-ND-2.0')
  CC_BY_ND_2_0,
  /// Display: Creative Commons Attribution No Derivatives 2.5 Generic
  /// Definition: Creative Commons Attribution No Derivatives 2.5 Generic.
  @JsonValue('CC-BY-ND-2.5')
  CC_BY_ND_2_5,
  /// Display: Creative Commons Attribution No Derivatives 3.0 Unported
  /// Definition: Creative Commons Attribution No Derivatives 3.0 Unported.
  @JsonValue('CC-BY-ND-3.0')
  CC_BY_ND_3_0,
  /// Display: Creative Commons Attribution No Derivatives 4.0 International
  /// Definition: Creative Commons Attribution No Derivatives 4.0 International.
  @JsonValue('CC-BY-ND-4.0')
  CC_BY_ND_4_0,
  /// Display: Creative Commons Attribution Share Alike 1.0 Generic
  /// Definition: Creative Commons Attribution Share Alike 1.0 Generic.
  @JsonValue('CC-BY-SA-1.0')
  CC_BY_SA_1_0,
  /// Display: Creative Commons Attribution Share Alike 2.0 Generic
  /// Definition: Creative Commons Attribution Share Alike 2.0 Generic.
  @JsonValue('CC-BY-SA-2.0')
  CC_BY_SA_2_0,
  /// Display: Creative Commons Attribution Share Alike 2.5 Generic
  /// Definition: Creative Commons Attribution Share Alike 2.5 Generic.
  @JsonValue('CC-BY-SA-2.5')
  CC_BY_SA_2_5,
  /// Display: Creative Commons Attribution Share Alike 3.0 Unported
  /// Definition: Creative Commons Attribution Share Alike 3.0 Unported.
  @JsonValue('CC-BY-SA-3.0')
  CC_BY_SA_3_0,
  /// Display: Creative Commons Attribution Share Alike 4.0 International
  /// Definition: Creative Commons Attribution Share Alike 4.0 International.
  @JsonValue('CC-BY-SA-4.0')
  CC_BY_SA_4_0,
  /// Display: Creative Commons Zero v1.0 Universal
  /// Definition: Creative Commons Zero v1.0 Universal.
  @JsonValue('CC0-1.0')
  CC0_1_0,
  /// Display: Common Development and Distribution License 1.0
  /// Definition: Common Development and Distribution License 1.0.
  @JsonValue('CDDL-1.0')
  CDDL_1_0,
  /// Display: Common Development and Distribution License 1.1
  /// Definition: Common Development and Distribution License 1.1.
  @JsonValue('CDDL-1.1')
  CDDL_1_1,
  /// Display: Community Data License Agreement Permissive 1.0
  /// Definition: Community Data License Agreement Permissive 1.0.
  @JsonValue('CDLA-Permissive-1.0')
  CDLA_Permissive_1_0,
  /// Display: Community Data License Agreement Sharing 1.0
  /// Definition: Community Data License Agreement Sharing 1.0.
  @JsonValue('CDLA-Sharing-1.0')
  CDLA_Sharing_1_0,
  /// Display: CeCILL Free Software License Agreement v1.0
  /// Definition: CeCILL Free Software License Agreement v1.0.
  @JsonValue('CECILL-1.0')
  CECILL_1_0,
  /// Display: CeCILL Free Software License Agreement v1.1
  /// Definition: CeCILL Free Software License Agreement v1.1.
  @JsonValue('CECILL-1.1')
  CECILL_1_1,
  /// Display: CeCILL Free Software License Agreement v2.0
  /// Definition: CeCILL Free Software License Agreement v2.0.
  @JsonValue('CECILL-2.0')
  CECILL_2_0,
  /// Display: CeCILL Free Software License Agreement v2.1
  /// Definition: CeCILL Free Software License Agreement v2.1.
  @JsonValue('CECILL-2.1')
  CECILL_2_1,
  /// Display: CeCILL-B Free Software License Agreement
  /// Definition: CeCILL-B Free Software License Agreement.
  @JsonValue('CECILL-B')
  CECILL_B,
  /// Display: CeCILL-C Free Software License Agreement
  /// Definition: CeCILL-C Free Software License Agreement.
  @JsonValue('CECILL-C')
  CECILL_C,
  /// Display: Clarified Artistic License
  /// Definition: Clarified Artistic License.
  @JsonValue('ClArtistic')
  ClArtistic,
  /// Display: CNRI Jython License
  /// Definition: CNRI Jython License.
  @JsonValue('CNRI-Jython')
  CNRI_Jython,
  /// Display: CNRI Python Open Source GPL Compatible License Agreement
  /// Definition: CNRI Python Open Source GPL Compatible License Agreement.
  @JsonValue('CNRI-Python-GPL-Compatible')
  CNRI_Python_GPL_Compatible,
  /// Display: CNRI Python License
  /// Definition: CNRI Python License.
  @JsonValue('CNRI-Python')
  CNRI_Python,
  /// Display: Condor Public License v1.1
  /// Definition: Condor Public License v1.1.
  @JsonValue('Condor-1.1')
  Condor_1_1,
  /// Display: Common Public Attribution License 1.0
  /// Definition: Common Public Attribution License 1.0.
  @JsonValue('CPAL-1.0')
  CPAL_1_0,
  /// Display: Common Public License 1.0
  /// Definition: Common Public License 1.0.
  @JsonValue('CPL-1.0')
  CPL_1_0,
  /// Display: Code Project Open License 1.02
  /// Definition: Code Project Open License 1.02.
  @JsonValue('CPOL-1.02')
  CPOL_1_02,
  /// Display: Crossword License
  /// Definition: Crossword License.
  @JsonValue('Crossword')
  Crossword,
  /// Display: CrystalStacker License
  /// Definition: CrystalStacker License.
  @JsonValue('CrystalStacker')
  CrystalStacker,
  /// Display: CUA Office Public License v1.0
  /// Definition: CUA Office Public License v1.0.
  @JsonValue('CUA-OPL-1.0')
  CUA_OPL_1_0,
  /// Display: Cube License
  /// Definition: Cube License.
  @JsonValue('Cube')
  Cube,
  /// Display: curl License
  /// Definition: curl License.
  @JsonValue('curl')
  curl,
  /// Display: Deutsche Freie Software Lizenz
  /// Definition: Deutsche Freie Software Lizenz.
  @JsonValue('D-FSL-1.0')
  D_FSL_1_0,
  /// Display: diffmark license
  /// Definition: diffmark license.
  @JsonValue('diffmark')
  diffmark,
  /// Display: DOC License
  /// Definition: DOC License.
  @JsonValue('DOC')
  DOC,
  /// Display: Dotseqn License
  /// Definition: Dotseqn License.
  @JsonValue('Dotseqn')
  Dotseqn,
  /// Display: DSDP License
  /// Definition: DSDP License.
  @JsonValue('DSDP')
  DSDP,
  /// Display: dvipdfm License
  /// Definition: dvipdfm License.
  @JsonValue('dvipdfm')
  dvipdfm,
  /// Display: Educational Community License v1.0
  /// Definition: Educational Community License v1.0.
  @JsonValue('ECL-1.0')
  ECL_1_0,
  /// Display: Educational Community License v2.0
  /// Definition: Educational Community License v2.0.
  @JsonValue('ECL-2.0')
  ECL_2_0,
  /// Display: Eiffel Forum License v1.0
  /// Definition: Eiffel Forum License v1.0.
  @JsonValue('EFL-1.0')
  EFL_1_0,
  /// Display: Eiffel Forum License v2.0
  /// Definition: Eiffel Forum License v2.0.
  @JsonValue('EFL-2.0')
  EFL_2_0,
  /// Display: eGenix.com Public License 1.1.0
  /// Definition: eGenix.com Public License 1.1.0.
  @JsonValue('eGenix')
  eGenix,
  /// Display: Entessa Public License v1.0
  /// Definition: Entessa Public License v1.0.
  @JsonValue('Entessa')
  Entessa,
  /// Display: Eclipse Public License 1.0
  /// Definition: Eclipse Public License 1.0.
  @JsonValue('EPL-1.0')
  EPL_1_0,
  /// Display: Eclipse Public License 2.0
  /// Definition: Eclipse Public License 2.0.
  @JsonValue('EPL-2.0')
  EPL_2_0,
  /// Display: Erlang Public License v1.1
  /// Definition: Erlang Public License v1.1.
  @JsonValue('ErlPL-1.1')
  ErlPL_1_1,
  /// Display: EU DataGrid Software License
  /// Definition: EU DataGrid Software License.
  @JsonValue('EUDatagrid')
  EUDatagrid,
  /// Display: European Union Public License 1.0
  /// Definition: European Union Public License 1.0.
  @JsonValue('EUPL-1.0')
  EUPL_1_0,
  /// Display: European Union Public License 1.1
  /// Definition: European Union Public License 1.1.
  @JsonValue('EUPL-1.1')
  EUPL_1_1,
  /// Display: European Union Public License 1.2
  /// Definition: European Union Public License 1.2.
  @JsonValue('EUPL-1.2')
  EUPL_1_2,
  /// Display: Eurosym License
  /// Definition: Eurosym License.
  @JsonValue('Eurosym')
  Eurosym,
  /// Display: Fair License
  /// Definition: Fair License.
  @JsonValue('Fair')
  Fair,
  /// Display: Frameworx Open License 1.0
  /// Definition: Frameworx Open License 1.0.
  @JsonValue('Frameworx-1.0')
  Frameworx_1_0,
  /// Display: FreeImage Public License v1.0
  /// Definition: FreeImage Public License v1.0.
  @JsonValue('FreeImage')
  FreeImage,
  /// Display: FSF All Permissive License
  /// Definition: FSF All Permissive License.
  @JsonValue('FSFAP')
  FSFAP,
  /// Display: FSF Unlimited License
  /// Definition: FSF Unlimited License.
  @JsonValue('FSFUL')
  FSFUL,
  /// Display: FSF Unlimited License (with License Retention)
  /// Definition: FSF Unlimited License (with License Retention).
  @JsonValue('FSFULLR')
  FSFULLR,
  /// Display: Freetype Project License
  /// Definition: Freetype Project License.
  @JsonValue('FTL')
  FTL,
  /// Display: GNU Free Documentation License v1.1 only
  /// Definition: GNU Free Documentation License v1.1 only.
  @JsonValue('GFDL-1.1-only')
  GFDL_1_1_only,
  /// Display: GNU Free Documentation License v1.1 or later
  /// Definition: GNU Free Documentation License v1.1 or later.
  @JsonValue('GFDL-1.1-or-later')
  GFDL_1_1_or_later,
  /// Display: GNU Free Documentation License v1.2 only
  /// Definition: GNU Free Documentation License v1.2 only.
  @JsonValue('GFDL-1.2-only')
  GFDL_1_2_only,
  /// Display: GNU Free Documentation License v1.2 or later
  /// Definition: GNU Free Documentation License v1.2 or later.
  @JsonValue('GFDL-1.2-or-later')
  GFDL_1_2_or_later,
  /// Display: GNU Free Documentation License v1.3 only
  /// Definition: GNU Free Documentation License v1.3 only.
  @JsonValue('GFDL-1.3-only')
  GFDL_1_3_only,
  /// Display: GNU Free Documentation License v1.3 or later
  /// Definition: GNU Free Documentation License v1.3 or later.
  @JsonValue('GFDL-1.3-or-later')
  GFDL_1_3_or_later,
  /// Display: Giftware License
  /// Definition: Giftware License.
  @JsonValue('Giftware')
  Giftware,
  /// Display: GL2PS License
  /// Definition: GL2PS License.
  @JsonValue('GL2PS')
  GL2PS,
  /// Display: 3dfx Glide License
  /// Definition: 3dfx Glide License.
  @JsonValue('Glide')
  Glide,
  /// Display: Glulxe License
  /// Definition: Glulxe License.
  @JsonValue('Glulxe')
  Glulxe,
  /// Display: gnuplot License
  /// Definition: gnuplot License.
  @JsonValue('gnuplot')
  gnuplot,
  /// Display: GNU General Public License v1.0 only
  /// Definition: GNU General Public License v1.0 only.
  @JsonValue('GPL-1.0-only')
  GPL_1_0_only,
  /// Display: GNU General Public License v1.0 or later
  /// Definition: GNU General Public License v1.0 or later.
  @JsonValue('GPL-1.0-or-later')
  GPL_1_0_or_later,
  /// Display: GNU General Public License v2.0 only
  /// Definition: GNU General Public License v2.0 only.
  @JsonValue('GPL-2.0-only')
  GPL_2_0_only,
  /// Display: GNU General Public License v2.0 or later
  /// Definition: GNU General Public License v2.0 or later.
  @JsonValue('GPL-2.0-or-later')
  GPL_2_0_or_later,
  /// Display: GNU General Public License v3.0 only
  /// Definition: GNU General Public License v3.0 only.
  @JsonValue('GPL-3.0-only')
  GPL_3_0_only,
  /// Display: GNU General Public License v3.0 or later
  /// Definition: GNU General Public License v3.0 or later.
  @JsonValue('GPL-3.0-or-later')
  GPL_3_0_or_later,
  /// Display: gSOAP Public License v1.3b
  /// Definition: gSOAP Public License v1.3b.
  @JsonValue('gSOAP-1.3b')
  gSOAP_1_3b,
  /// Display: Haskell Language Report License
  /// Definition: Haskell Language Report License.
  @JsonValue('HaskellReport')
  HaskellReport,
  /// Display: Historical Permission Notice and Disclaimer
  /// Definition: Historical Permission Notice and Disclaimer.
  @JsonValue('HPND')
  HPND,
  /// Display: IBM PowerPC Initialization and Boot Software
  /// Definition: IBM PowerPC Initialization and Boot Software.
  @JsonValue('IBM-pibs')
  IBM_pibs,
  /// Display: ICU License
  /// Definition: ICU License.
  @JsonValue('ICU')
  ICU,
  /// Display: Independent JPEG Group License
  /// Definition: Independent JPEG Group License.
  @JsonValue('IJG')
  IJG,
  /// Display: ImageMagick License
  /// Definition: ImageMagick License.
  @JsonValue('ImageMagick')
  ImageMagick,
  /// Display: iMatix Standard Function Library Agreement
  /// Definition: iMatix Standard Function Library Agreement.
  @JsonValue('iMatix')
  iMatix,
  /// Display: Imlib2 License
  /// Definition: Imlib2 License.
  @JsonValue('Imlib2')
  Imlib2,
  /// Display: Info-ZIP License
  /// Definition: Info-ZIP License.
  @JsonValue('Info-ZIP')
  Info_ZIP,
  /// Display: Intel ACPI Software License Agreement
  /// Definition: Intel ACPI Software License Agreement.
  @JsonValue('Intel-ACPI')
  Intel_ACPI,
  /// Display: Intel Open Source License
  /// Definition: Intel Open Source License.
  @JsonValue('Intel')
  Intel,
  /// Display: Interbase Public License v1.0
  /// Definition: Interbase Public License v1.0.
  @JsonValue('Interbase-1.0')
  Interbase_1_0,
  /// Display: IPA Font License
  /// Definition: IPA Font License.
  @JsonValue('IPA')
  IPA,
  /// Display: IBM Public License v1.0
  /// Definition: IBM Public License v1.0.
  @JsonValue('IPL-1.0')
  IPL_1_0,
  /// Display: ISC License
  /// Definition: ISC License.
  @JsonValue('ISC')
  ISC,
  /// Display: JasPer License
  /// Definition: JasPer License.
  @JsonValue('JasPer-2.0')
  JasPer_2_0,
  /// Display: JSON License
  /// Definition: JSON License.
  @JsonValue('JSON')
  JSON,
  /// Display: Licence Art Libre 1.2
  /// Definition: Licence Art Libre 1.2.
  @JsonValue('LAL-1.2')
  LAL_1_2,
  /// Display: Licence Art Libre 1.3
  /// Definition: Licence Art Libre 1.3.
  @JsonValue('LAL-1.3')
  LAL_1_3,
  /// Display: Latex2e License
  /// Definition: Latex2e License.
  @JsonValue('Latex2e')
  Latex2e,
  /// Display: Leptonica License
  /// Definition: Leptonica License.
  @JsonValue('Leptonica')
  Leptonica,
  /// Display: GNU Library General Public License v2 only
  /// Definition: GNU Library General Public License v2 only.
  @JsonValue('LGPL-2.0-only')
  LGPL_2_0_only,
  /// Display: GNU Library General Public License v2 or later
  /// Definition: GNU Library General Public License v2 or later.
  @JsonValue('LGPL-2.0-or-later')
  LGPL_2_0_or_later,
  /// Display: GNU Lesser General Public License v2.1 only
  /// Definition: GNU Lesser General Public License v2.1 only.
  @JsonValue('LGPL-2.1-only')
  LGPL_2_1_only,
  /// Display: GNU Lesser General Public License v2.1 or later
  /// Definition: GNU Lesser General Public License v2.1 or later.
  @JsonValue('LGPL-2.1-or-later')
  LGPL_2_1_or_later,
  /// Display: GNU Lesser General Public License v3.0 only
  /// Definition: GNU Lesser General Public License v3.0 only.
  @JsonValue('LGPL-3.0-only')
  LGPL_3_0_only,
  /// Display: GNU Lesser General Public License v3.0 or later
  /// Definition: GNU Lesser General Public License v3.0 or later.
  @JsonValue('LGPL-3.0-or-later')
  LGPL_3_0_or_later,
  /// Display: Lesser General Public License For Linguistic Resources
  /// Definition: Lesser General Public License For Linguistic Resources.
  @JsonValue('LGPLLR')
  LGPLLR,
  /// Display: libpng License
  /// Definition: libpng License.
  @JsonValue('Libpng')
  Libpng,
  /// Display: libtiff License
  /// Definition: libtiff License.
  @JsonValue('libtiff')
  libtiff,
  /// Display: Licence Libre du Québec – Permissive version 1.1
  /// Definition: Licence Libre du Québec – Permissive version 1.1.
  @JsonValue('LiLiQ-P-1.1')
  LiLiQ_P_1_1,
  /// Display: Licence Libre du Québec – Réciprocité version 1.1
  /// Definition: Licence Libre du Québec – Réciprocité version 1.1.
  @JsonValue('LiLiQ-R-1.1')
  LiLiQ_R_1_1,
  /// Display: Licence Libre du Québec – Réciprocité forte version 1.1
  /// Definition: Licence Libre du Québec – Réciprocité forte version 1.1.
  @JsonValue('LiLiQ-Rplus-1.1')
  LiLiQ_Rplus_1_1,
  /// Display: Linux Kernel Variant of OpenIB.org license
  /// Definition: Linux Kernel Variant of OpenIB.org license.
  @JsonValue('Linux-OpenIB')
  Linux_OpenIB,
  /// Display: Lucent Public License Version 1.0
  /// Definition: Lucent Public License Version 1.0.
  @JsonValue('LPL-1.0')
  LPL_1_0,
  /// Display: Lucent Public License v1.02
  /// Definition: Lucent Public License v1.02.
  @JsonValue('LPL-1.02')
  LPL_1_02,
  /// Display: LaTeX Project Public License v1.0
  /// Definition: LaTeX Project Public License v1.0.
  @JsonValue('LPPL-1.0')
  LPPL_1_0,
  /// Display: LaTeX Project Public License v1.1
  /// Definition: LaTeX Project Public License v1.1.
  @JsonValue('LPPL-1.1')
  LPPL_1_1,
  /// Display: LaTeX Project Public License v1.2
  /// Definition: LaTeX Project Public License v1.2.
  @JsonValue('LPPL-1.2')
  LPPL_1_2,
  /// Display: LaTeX Project Public License v1.3a
  /// Definition: LaTeX Project Public License v1.3a.
  @JsonValue('LPPL-1.3a')
  LPPL_1_3a,
  /// Display: LaTeX Project Public License v1.3c
  /// Definition: LaTeX Project Public License v1.3c.
  @JsonValue('LPPL-1.3c')
  LPPL_1_3c,
  /// Display: MakeIndex License
  /// Definition: MakeIndex License.
  @JsonValue('MakeIndex')
  MakeIndex,
  /// Display: MirOS License
  /// Definition: MirOS License.
  @JsonValue('MirOS')
  MirOS,
  /// Display: MIT No Attribution
  /// Definition: MIT No Attribution.
  @JsonValue('MIT-0')
  MIT_0,
  /// Display: Enlightenment License (e16)
  /// Definition: Enlightenment License (e16).
  @JsonValue('MIT-advertising')
  MIT_advertising,
  /// Display: CMU License
  /// Definition: CMU License.
  @JsonValue('MIT-CMU')
  MIT_CMU,
  /// Display: enna License
  /// Definition: enna License.
  @JsonValue('MIT-enna')
  MIT_enna,
  /// Display: feh License
  /// Definition: feh License.
  @JsonValue('MIT-feh')
  MIT_feh,
  /// Display: MIT License
  /// Definition: MIT License.
  @JsonValue('MIT')
  MIT,
  /// Display: MIT +no-false-attribs license
  /// Definition: MIT +no-false-attribs license.
  @JsonValue('MITNFA')
  MITNFA,
  /// Display: Motosoto License
  /// Definition: Motosoto License.
  @JsonValue('Motosoto')
  Motosoto,
  /// Display: mpich2 License
  /// Definition: mpich2 License.
  @JsonValue('mpich2')
  mpich2,
  /// Display: Mozilla Public License 1.0
  /// Definition: Mozilla Public License 1.0.
  @JsonValue('MPL-1.0')
  MPL_1_0,
  /// Display: Mozilla Public License 1.1
  /// Definition: Mozilla Public License 1.1.
  @JsonValue('MPL-1.1')
  MPL_1_1,
  /// Display: Mozilla Public License 2.0 (no copyleft exception)
  /// Definition: Mozilla Public License 2.0 (no copyleft exception).
  @JsonValue('MPL-2.0-no-copyleft-exception')
  MPL_2_0_no_copyleft_exception,
  /// Display: Mozilla Public License 2.0
  /// Definition: Mozilla Public License 2.0.
  @JsonValue('MPL-2.0')
  MPL_2_0,
  /// Display: Microsoft Public License
  /// Definition: Microsoft Public License.
  @JsonValue('MS-PL')
  MS_PL,
  /// Display: Microsoft Reciprocal License
  /// Definition: Microsoft Reciprocal License.
  @JsonValue('MS-RL')
  MS_RL,
  /// Display: Matrix Template Library License
  /// Definition: Matrix Template Library License.
  @JsonValue('MTLL')
  MTLL,
  /// Display: Multics License
  /// Definition: Multics License.
  @JsonValue('Multics')
  Multics,
  /// Display: Mup License
  /// Definition: Mup License.
  @JsonValue('Mup')
  Mup,
  /// Display: NASA Open Source Agreement 1.3
  /// Definition: NASA Open Source Agreement 1.3.
  @JsonValue('NASA-1.3')
  NASA_1_3,
  /// Display: Naumen Public License
  /// Definition: Naumen Public License.
  @JsonValue('Naumen')
  Naumen,
  /// Display: Net Boolean Public License v1
  /// Definition: Net Boolean Public License v1.
  @JsonValue('NBPL-1.0')
  NBPL_1_0,
  /// Display: University of Illinois/NCSA Open Source License
  /// Definition: University of Illinois/NCSA Open Source License.
  @JsonValue('NCSA')
  NCSA,
  /// Display: Net-SNMP License
  /// Definition: Net-SNMP License.
  @JsonValue('Net-SNMP')
  Net_SNMP,
  /// Display: NetCDF license
  /// Definition: NetCDF license.
  @JsonValue('NetCDF')
  NetCDF,
  /// Display: Newsletr License
  /// Definition: Newsletr License.
  @JsonValue('Newsletr')
  Newsletr,
  /// Display: Nethack General Public License
  /// Definition: Nethack General Public License.
  @JsonValue('NGPL')
  NGPL,
  /// Display: Norwegian Licence for Open Government Data
  /// Definition: Norwegian Licence for Open Government Data.
  @JsonValue('NLOD-1.0')
  NLOD_1_0,
  /// Display: No Limit Public License
  /// Definition: No Limit Public License.
  @JsonValue('NLPL')
  NLPL,
  /// Display: Nokia Open Source License
  /// Definition: Nokia Open Source License.
  @JsonValue('Nokia')
  Nokia,
  /// Display: Netizen Open Source License
  /// Definition: Netizen Open Source License.
  @JsonValue('NOSL')
  NOSL,
  /// Display: Noweb License
  /// Definition: Noweb License.
  @JsonValue('Noweb')
  Noweb,
  /// Display: Netscape Public License v1.0
  /// Definition: Netscape Public License v1.0.
  @JsonValue('NPL-1.0')
  NPL_1_0,
  /// Display: Netscape Public License v1.1
  /// Definition: Netscape Public License v1.1.
  @JsonValue('NPL-1.1')
  NPL_1_1,
  /// Display: Non-Profit Open Software License 3.0
  /// Definition: Non-Profit Open Software License 3.0.
  @JsonValue('NPOSL-3.0')
  NPOSL_3_0,
  /// Display: NRL License
  /// Definition: NRL License.
  @JsonValue('NRL')
  NRL,
  /// Display: NTP License
  /// Definition: NTP License.
  @JsonValue('NTP')
  NTP,
  /// Display: Open CASCADE Technology Public License
  /// Definition: Open CASCADE Technology Public License.
  @JsonValue('OCCT-PL')
  OCCT_PL,
  /// Display: OCLC Research Public License 2.0
  /// Definition: OCLC Research Public License 2.0.
  @JsonValue('OCLC-2.0')
  OCLC_2_0,
  /// Display: ODC Open Database License v1.0
  /// Definition: ODC Open Database License v1.0.
  @JsonValue('ODbL-1.0')
  ODbL_1_0,
  /// Display: SIL Open Font License 1.0
  /// Definition: SIL Open Font License 1.0.
  @JsonValue('OFL-1.0')
  OFL_1_0,
  /// Display: SIL Open Font License 1.1
  /// Definition: SIL Open Font License 1.1.
  @JsonValue('OFL-1.1')
  OFL_1_1,
  /// Display: Open Group Test Suite License
  /// Definition: Open Group Test Suite License.
  @JsonValue('OGTSL')
  OGTSL,
  /// Display: Open LDAP Public License v1.1
  /// Definition: Open LDAP Public License v1.1.
  @JsonValue('OLDAP-1.1')
  OLDAP_1_1,
  /// Display: Open LDAP Public License v1.2
  /// Definition: Open LDAP Public License v1.2.
  @JsonValue('OLDAP-1.2')
  OLDAP_1_2,
  /// Display: Open LDAP Public License v1.3
  /// Definition: Open LDAP Public License v1.3.
  @JsonValue('OLDAP-1.3')
  OLDAP_1_3,
  /// Display: Open LDAP Public License v1.4
  /// Definition: Open LDAP Public License v1.4.
  @JsonValue('OLDAP-1.4')
  OLDAP_1_4,
  /// Display: Open LDAP Public License v2.0.1
  /// Definition: Open LDAP Public License v2.0.1.
  @JsonValue('OLDAP-2.0.1')
  OLDAP_2_0_1,
  /// Display: Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)
  /// Definition: Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B).
  @JsonValue('OLDAP-2.0')
  OLDAP_2_0,
  /// Display: Open LDAP Public License v2.1
  /// Definition: Open LDAP Public License v2.1.
  @JsonValue('OLDAP-2.1')
  OLDAP_2_1,
  /// Display: Open LDAP Public License v2.2.1
  /// Definition: Open LDAP Public License v2.2.1.
  @JsonValue('OLDAP-2.2.1')
  OLDAP_2_2_1,
  /// Display: Open LDAP Public License 2.2.2
  /// Definition: Open LDAP Public License 2.2.2.
  @JsonValue('OLDAP-2.2.2')
  OLDAP_2_2_2,
  /// Display: Open LDAP Public License v2.2
  /// Definition: Open LDAP Public License v2.2.
  @JsonValue('OLDAP-2.2')
  OLDAP_2_2,
  /// Display: Open LDAP Public License v2.3
  /// Definition: Open LDAP Public License v2.3.
  @JsonValue('OLDAP-2.3')
  OLDAP_2_3,
  /// Display: Open LDAP Public License v2.4
  /// Definition: Open LDAP Public License v2.4.
  @JsonValue('OLDAP-2.4')
  OLDAP_2_4,
  /// Display: Open LDAP Public License v2.5
  /// Definition: Open LDAP Public License v2.5.
  @JsonValue('OLDAP-2.5')
  OLDAP_2_5,
  /// Display: Open LDAP Public License v2.6
  /// Definition: Open LDAP Public License v2.6.
  @JsonValue('OLDAP-2.6')
  OLDAP_2_6,
  /// Display: Open LDAP Public License v2.7
  /// Definition: Open LDAP Public License v2.7.
  @JsonValue('OLDAP-2.7')
  OLDAP_2_7,
  /// Display: Open LDAP Public License v2.8
  /// Definition: Open LDAP Public License v2.8.
  @JsonValue('OLDAP-2.8')
  OLDAP_2_8,
  /// Display: Open Market License
  /// Definition: Open Market License.
  @JsonValue('OML')
  OML,
  /// Display: OpenSSL License
  /// Definition: OpenSSL License.
  @JsonValue('OpenSSL')
  OpenSSL,
  /// Display: Open Public License v1.0
  /// Definition: Open Public License v1.0.
  @JsonValue('OPL-1.0')
  OPL_1_0,
  /// Display: OSET Public License version 2.1
  /// Definition: OSET Public License version 2.1.
  @JsonValue('OSET-PL-2.1')
  OSET_PL_2_1,
  /// Display: Open Software License 1.0
  /// Definition: Open Software License 1.0.
  @JsonValue('OSL-1.0')
  OSL_1_0,
  /// Display: Open Software License 1.1
  /// Definition: Open Software License 1.1.
  @JsonValue('OSL-1.1')
  OSL_1_1,
  /// Display: Open Software License 2.0
  /// Definition: Open Software License 2.0.
  @JsonValue('OSL-2.0')
  OSL_2_0,
  /// Display: Open Software License 2.1
  /// Definition: Open Software License 2.1.
  @JsonValue('OSL-2.1')
  OSL_2_1,
  /// Display: Open Software License 3.0
  /// Definition: Open Software License 3.0.
  @JsonValue('OSL-3.0')
  OSL_3_0,
  /// Display: ODC Public Domain Dedication & License 1.0
  /// Definition: ODC Public Domain Dedication & License 1.0.
  @JsonValue('PDDL-1.0')
  PDDL_1_0,
  /// Display: PHP License v3.0
  /// Definition: PHP License v3.0.
  @JsonValue('PHP-3.0')
  PHP_3_0,
  /// Display: PHP License v3.01
  /// Definition: PHP License v3.01.
  @JsonValue('PHP-3.01')
  PHP_3_01,
  /// Display: Plexus Classworlds License
  /// Definition: Plexus Classworlds License.
  @JsonValue('Plexus')
  Plexus,
  /// Display: PostgreSQL License
  /// Definition: PostgreSQL License.
  @JsonValue('PostgreSQL')
  PostgreSQL,
  /// Display: psfrag License
  /// Definition: psfrag License.
  @JsonValue('psfrag')
  psfrag,
  /// Display: psutils License
  /// Definition: psutils License.
  @JsonValue('psutils')
  psutils,
  /// Display: Python License 2.0
  /// Definition: Python License 2.0.
  @JsonValue('Python-2.0')
  Python_2_0,
  /// Display: Qhull License
  /// Definition: Qhull License.
  @JsonValue('Qhull')
  Qhull,
  /// Display: Q Public License 1.0
  /// Definition: Q Public License 1.0.
  @JsonValue('QPL-1.0')
  QPL_1_0,
  /// Display: Rdisc License
  /// Definition: Rdisc License.
  @JsonValue('Rdisc')
  Rdisc,
  /// Display: Red Hat eCos Public License v1.1
  /// Definition: Red Hat eCos Public License v1.1.
  @JsonValue('RHeCos-1.1')
  RHeCos_1_1,
  /// Display: Reciprocal Public License 1.1
  /// Definition: Reciprocal Public License 1.1.
  @JsonValue('RPL-1.1')
  RPL_1_1,
  /// Display: Reciprocal Public License 1.5
  /// Definition: Reciprocal Public License 1.5.
  @JsonValue('RPL-1.5')
  RPL_1_5,
  /// Display: RealNetworks Public Source License v1.0
  /// Definition: RealNetworks Public Source License v1.0.
  @JsonValue('RPSL-1.0')
  RPSL_1_0,
  /// Display: RSA Message-Digest License
  /// Definition: RSA Message-Digest License.
  @JsonValue('RSA-MD')
  RSA_MD,
  /// Display: Ricoh Source Code Public License
  /// Definition: Ricoh Source Code Public License.
  @JsonValue('RSCPL')
  RSCPL,
  /// Display: Ruby License
  /// Definition: Ruby License.
  @JsonValue('Ruby')
  Ruby,
  /// Display: Sax Public Domain Notice
  /// Definition: Sax Public Domain Notice.
  @JsonValue('SAX-PD')
  SAX_PD,
  /// Display: Saxpath License
  /// Definition: Saxpath License.
  @JsonValue('Saxpath')
  Saxpath,
  /// Display: SCEA Shared Source License
  /// Definition: SCEA Shared Source License.
  @JsonValue('SCEA')
  SCEA,
  /// Display: Sendmail License
  /// Definition: Sendmail License.
  @JsonValue('Sendmail')
  Sendmail,
  /// Display: SGI Free Software License B v1.0
  /// Definition: SGI Free Software License B v1.0.
  @JsonValue('SGI-B-1.0')
  SGI_B_1_0,
  /// Display: SGI Free Software License B v1.1
  /// Definition: SGI Free Software License B v1.1.
  @JsonValue('SGI-B-1.1')
  SGI_B_1_1,
  /// Display: SGI Free Software License B v2.0
  /// Definition: SGI Free Software License B v2.0.
  @JsonValue('SGI-B-2.0')
  SGI_B_2_0,
  /// Display: Simple Public License 2.0
  /// Definition: Simple Public License 2.0.
  @JsonValue('SimPL-2.0')
  SimPL_2_0,
  /// Display: Sun Industry Standards Source License v1.2
  /// Definition: Sun Industry Standards Source License v1.2.
  @JsonValue('SISSL-1.2')
  SISSL_1_2,
  /// Display: Sun Industry Standards Source License v1.1
  /// Definition: Sun Industry Standards Source License v1.1.
  @JsonValue('SISSL')
  SISSL,
  /// Display: Sleepycat License
  /// Definition: Sleepycat License.
  @JsonValue('Sleepycat')
  Sleepycat,
  /// Display: Standard ML of New Jersey License
  /// Definition: Standard ML of New Jersey License.
  @JsonValue('SMLNJ')
  SMLNJ,
  /// Display: Secure Messaging Protocol Public License
  /// Definition: Secure Messaging Protocol Public License.
  @JsonValue('SMPPL')
  SMPPL,
  /// Display: SNIA Public License 1.1
  /// Definition: SNIA Public License 1.1.
  @JsonValue('SNIA')
  SNIA,
  /// Display: Spencer License 86
  /// Definition: Spencer License 86.
  @JsonValue('Spencer-86')
  Spencer_86,
  /// Display: Spencer License 94
  /// Definition: Spencer License 94.
  @JsonValue('Spencer-94')
  Spencer_94,
  /// Display: Spencer License 99
  /// Definition: Spencer License 99.
  @JsonValue('Spencer-99')
  Spencer_99,
  /// Display: Sun Public License v1.0
  /// Definition: Sun Public License v1.0.
  @JsonValue('SPL-1.0')
  SPL_1_0,
  /// Display: SugarCRM Public License v1.1.3
  /// Definition: SugarCRM Public License v1.1.3.
  @JsonValue('SugarCRM-1.1.3')
  SugarCRM_1_1_3,
  /// Display: Scheme Widget Library (SWL) Software License Agreement
  /// Definition: Scheme Widget Library (SWL) Software License Agreement.
  @JsonValue('SWL')
  SWL,
  /// Display: TCL/TK License
  /// Definition: TCL/TK License.
  @JsonValue('TCL')
  TCL,
  /// Display: TCP Wrappers License
  /// Definition: TCP Wrappers License.
  @JsonValue('TCP-wrappers')
  TCP_wrappers,
  /// Display: TMate Open Source License
  /// Definition: TMate Open Source License.
  @JsonValue('TMate')
  TMate,
  /// Display: TORQUE v2.5+ Software License v1.1
  /// Definition: TORQUE v2.5+ Software License v1.1.
  @JsonValue('TORQUE-1.1')
  TORQUE_1_1,
  /// Display: Trusster Open Source License
  /// Definition: Trusster Open Source License.
  @JsonValue('TOSL')
  TOSL,
  /// Display: Unicode License Agreement - Data Files and Software (2015)
  /// Definition: Unicode License Agreement - Data Files and Software (2015).
  @JsonValue('Unicode-DFS-2015')
  Unicode_DFS_2015,
  /// Display: Unicode License Agreement - Data Files and Software (2016)
  /// Definition: Unicode License Agreement - Data Files and Software (2016).
  @JsonValue('Unicode-DFS-2016')
  Unicode_DFS_2016,
  /// Display: Unicode Terms of Use
  /// Definition: Unicode Terms of Use.
  @JsonValue('Unicode-TOU')
  Unicode_TOU,
  /// Display: The Unlicense
  /// Definition: The Unlicense.
  @JsonValue('Unlicense')
  Unlicense,
  /// Display: Universal Permissive License v1.0
  /// Definition: Universal Permissive License v1.0.
  @JsonValue('UPL-1.0')
  UPL_1_0,
  /// Display: Vim License
  /// Definition: Vim License.
  @JsonValue('Vim')
  Vim,
  /// Display: VOSTROM Public License for Open Source
  /// Definition: VOSTROM Public License for Open Source.
  @JsonValue('VOSTROM')
  VOSTROM,
  /// Display: Vovida Software License v1.0
  /// Definition: Vovida Software License v1.0.
  @JsonValue('VSL-1.0')
  VSL_1_0,
  /// Display: W3C Software Notice and License (1998-07-20)
  /// Definition: W3C Software Notice and License (1998-07-20).
  @JsonValue('W3C-19980720')
  W3C_19980720,
  /// Display: W3C Software Notice and Document License (2015-05-13)
  /// Definition: W3C Software Notice and Document License (2015-05-13).
  @JsonValue('W3C-20150513')
  W3C_20150513,
  /// Display: W3C Software Notice and License (2002-12-31)
  /// Definition: W3C Software Notice and License (2002-12-31).
  @JsonValue('W3C')
  W3C,
  /// Display: Sybase Open Watcom Public License 1.0
  /// Definition: Sybase Open Watcom Public License 1.0.
  @JsonValue('Watcom-1.0')
  Watcom_1_0,
  /// Display: Wsuipa License
  /// Definition: Wsuipa License.
  @JsonValue('Wsuipa')
  Wsuipa,
  /// Display: Do What The F*ck You Want To Public License
  /// Definition: Do What The F*ck You Want To Public License.
  @JsonValue('WTFPL')
  WTFPL,
  /// Display: X11 License
  /// Definition: X11 License.
  @JsonValue('X11')
  X11,
  /// Display: Xerox License
  /// Definition: Xerox License.
  @JsonValue('Xerox')
  Xerox,
  /// Display: XFree86 License 1.1
  /// Definition: XFree86 License 1.1.
  @JsonValue('XFree86-1.1')
  XFree86_1_1,
  /// Display: xinetd License
  /// Definition: xinetd License.
  @JsonValue('xinetd')
  xinetd,
  /// Display: X.Net License
  /// Definition: X.Net License.
  @JsonValue('Xnet')
  Xnet,
  /// Display: XPP License
  /// Definition: XPP License.
  @JsonValue('xpp')
  xpp,
  /// Display: XSkat License
  /// Definition: XSkat License.
  @JsonValue('XSkat')
  XSkat,
  /// Display: Yahoo! Public License v1.0
  /// Definition: Yahoo! Public License v1.0.
  @JsonValue('YPL-1.0')
  YPL_1_0,
  /// Display: Yahoo! Public License v1.1
  /// Definition: Yahoo! Public License v1.1.
  @JsonValue('YPL-1.1')
  YPL_1_1,
  /// Display: Zed License
  /// Definition: Zed License.
  @JsonValue('Zed')
  Zed,
  /// Display: Zend License v2.0
  /// Definition: Zend License v2.0.
  @JsonValue('Zend-2.0')
  Zend_2_0,
  /// Display: Zimbra Public License v1.3
  /// Definition: Zimbra Public License v1.3.
  @JsonValue('Zimbra-1.3')
  Zimbra_1_3,
  /// Display: Zimbra Public License v1.4
  /// Definition: Zimbra Public License v1.4.
  @JsonValue('Zimbra-1.4')
  Zimbra_1_4,
  /// Display: zlib/libpng License with Acknowledgement
  /// Definition: zlib/libpng License with Acknowledgement.
  @JsonValue('zlib-acknowledgement')
  zlib_acknowledgement,
  /// Display: zlib License
  /// Definition: zlib License.
  @JsonValue('Zlib')
  Zlib,
  /// Display: Zope Public License 1.1
  /// Definition: Zope Public License 1.1.
  @JsonValue('ZPL-1.1')
  ZPL_1_1,
  /// Display: Zope Public License 2.0
  /// Definition: Zope Public License 2.0.
  @JsonValue('ZPL-2.0')
  ZPL_2_0,
  /// Display: Zope Public License 2.1
  /// Definition: Zope Public License 2.1.
  @JsonValue('ZPL-2.1')
  ZPL_2_1,
;

@override
  String toString() {
      switch(this) {
        case not_open_source: return 'not-open-source';
        case value0BSD: return '0BSD';
        case AAL: return 'AAL';
        case Abstyles: return 'Abstyles';
        case Adobe_2006: return 'Adobe-2006';
        case Adobe_Glyph: return 'Adobe-Glyph';
        case ADSL: return 'ADSL';
        case AFL_1_1: return 'AFL-1.1';
        case AFL_1_2: return 'AFL-1.2';
        case AFL_2_0: return 'AFL-2.0';
        case AFL_2_1: return 'AFL-2.1';
        case AFL_3_0: return 'AFL-3.0';
        case Afmparse: return 'Afmparse';
        case AGPL_1_0_only: return 'AGPL-1.0-only';
        case AGPL_1_0_or_later: return 'AGPL-1.0-or-later';
        case AGPL_3_0_only: return 'AGPL-3.0-only';
        case AGPL_3_0_or_later: return 'AGPL-3.0-or-later';
        case Aladdin: return 'Aladdin';
        case AMDPLPA: return 'AMDPLPA';
        case AML: return 'AML';
        case AMPAS: return 'AMPAS';
        case ANTLR_PD: return 'ANTLR-PD';
        case Apache_1_0: return 'Apache-1.0';
        case Apache_1_1: return 'Apache-1.1';
        case Apache_2_0: return 'Apache-2.0';
        case APAFML: return 'APAFML';
        case APL_1_0: return 'APL-1.0';
        case APSL_1_0: return 'APSL-1.0';
        case APSL_1_1: return 'APSL-1.1';
        case APSL_1_2: return 'APSL-1.2';
        case APSL_2_0: return 'APSL-2.0';
        case Artistic_1_0_cl8: return 'Artistic-1.0-cl8';
        case Artistic_1_0_Perl: return 'Artistic-1.0-Perl';
        case Artistic_1_0: return 'Artistic-1.0';
        case Artistic_2_0: return 'Artistic-2.0';
        case Bahyph: return 'Bahyph';
        case Barr: return 'Barr';
        case Beerware: return 'Beerware';
        case BitTorrent_1_0: return 'BitTorrent-1.0';
        case BitTorrent_1_1: return 'BitTorrent-1.1';
        case Borceux: return 'Borceux';
        case BSD_1_Clause: return 'BSD-1-Clause';
        case BSD_2_Clause_FreeBSD: return 'BSD-2-Clause-FreeBSD';
        case BSD_2_Clause_NetBSD: return 'BSD-2-Clause-NetBSD';
        case BSD_2_Clause_Patent: return 'BSD-2-Clause-Patent';
        case BSD_2_Clause: return 'BSD-2-Clause';
        case BSD_3_Clause_Attribution: return 'BSD-3-Clause-Attribution';
        case BSD_3_Clause_Clear: return 'BSD-3-Clause-Clear';
        case BSD_3_Clause_LBNL: return 'BSD-3-Clause-LBNL';
        case BSD_3_Clause_No_Nuclear_License_2014: return 'BSD-3-Clause-No-Nuclear-License-2014';
        case BSD_3_Clause_No_Nuclear_License: return 'BSD-3-Clause-No-Nuclear-License';
        case BSD_3_Clause_No_Nuclear_Warranty: return 'BSD-3-Clause-No-Nuclear-Warranty';
        case BSD_3_Clause: return 'BSD-3-Clause';
        case BSD_4_Clause_UC: return 'BSD-4-Clause-UC';
        case BSD_4_Clause: return 'BSD-4-Clause';
        case BSD_Protection: return 'BSD-Protection';
        case BSD_Source_Code: return 'BSD-Source-Code';
        case BSL_1_0: return 'BSL-1.0';
        case bzip2_1_0_5: return 'bzip2-1.0.5';
        case bzip2_1_0_6: return 'bzip2-1.0.6';
        case Caldera: return 'Caldera';
        case CATOSL_1_1: return 'CATOSL-1.1';
        case CC_BY_1_0: return 'CC-BY-1.0';
        case CC_BY_2_0: return 'CC-BY-2.0';
        case CC_BY_2_5: return 'CC-BY-2.5';
        case CC_BY_3_0: return 'CC-BY-3.0';
        case CC_BY_4_0: return 'CC-BY-4.0';
        case CC_BY_NC_1_0: return 'CC-BY-NC-1.0';
        case CC_BY_NC_2_0: return 'CC-BY-NC-2.0';
        case CC_BY_NC_2_5: return 'CC-BY-NC-2.5';
        case CC_BY_NC_3_0: return 'CC-BY-NC-3.0';
        case CC_BY_NC_4_0: return 'CC-BY-NC-4.0';
        case CC_BY_NC_ND_1_0: return 'CC-BY-NC-ND-1.0';
        case CC_BY_NC_ND_2_0: return 'CC-BY-NC-ND-2.0';
        case CC_BY_NC_ND_2_5: return 'CC-BY-NC-ND-2.5';
        case CC_BY_NC_ND_3_0: return 'CC-BY-NC-ND-3.0';
        case CC_BY_NC_ND_4_0: return 'CC-BY-NC-ND-4.0';
        case CC_BY_NC_SA_1_0: return 'CC-BY-NC-SA-1.0';
        case CC_BY_NC_SA_2_0: return 'CC-BY-NC-SA-2.0';
        case CC_BY_NC_SA_2_5: return 'CC-BY-NC-SA-2.5';
        case CC_BY_NC_SA_3_0: return 'CC-BY-NC-SA-3.0';
        case CC_BY_NC_SA_4_0: return 'CC-BY-NC-SA-4.0';
        case CC_BY_ND_1_0: return 'CC-BY-ND-1.0';
        case CC_BY_ND_2_0: return 'CC-BY-ND-2.0';
        case CC_BY_ND_2_5: return 'CC-BY-ND-2.5';
        case CC_BY_ND_3_0: return 'CC-BY-ND-3.0';
        case CC_BY_ND_4_0: return 'CC-BY-ND-4.0';
        case CC_BY_SA_1_0: return 'CC-BY-SA-1.0';
        case CC_BY_SA_2_0: return 'CC-BY-SA-2.0';
        case CC_BY_SA_2_5: return 'CC-BY-SA-2.5';
        case CC_BY_SA_3_0: return 'CC-BY-SA-3.0';
        case CC_BY_SA_4_0: return 'CC-BY-SA-4.0';
        case CC0_1_0: return 'CC0-1.0';
        case CDDL_1_0: return 'CDDL-1.0';
        case CDDL_1_1: return 'CDDL-1.1';
        case CDLA_Permissive_1_0: return 'CDLA-Permissive-1.0';
        case CDLA_Sharing_1_0: return 'CDLA-Sharing-1.0';
        case CECILL_1_0: return 'CECILL-1.0';
        case CECILL_1_1: return 'CECILL-1.1';
        case CECILL_2_0: return 'CECILL-2.0';
        case CECILL_2_1: return 'CECILL-2.1';
        case CECILL_B: return 'CECILL-B';
        case CECILL_C: return 'CECILL-C';
        case ClArtistic: return 'ClArtistic';
        case CNRI_Jython: return 'CNRI-Jython';
        case CNRI_Python_GPL_Compatible: return 'CNRI-Python-GPL-Compatible';
        case CNRI_Python: return 'CNRI-Python';
        case Condor_1_1: return 'Condor-1.1';
        case CPAL_1_0: return 'CPAL-1.0';
        case CPL_1_0: return 'CPL-1.0';
        case CPOL_1_02: return 'CPOL-1.02';
        case Crossword: return 'Crossword';
        case CrystalStacker: return 'CrystalStacker';
        case CUA_OPL_1_0: return 'CUA-OPL-1.0';
        case Cube: return 'Cube';
        case curl: return 'curl';
        case D_FSL_1_0: return 'D-FSL-1.0';
        case diffmark: return 'diffmark';
        case DOC: return 'DOC';
        case Dotseqn: return 'Dotseqn';
        case DSDP: return 'DSDP';
        case dvipdfm: return 'dvipdfm';
        case ECL_1_0: return 'ECL-1.0';
        case ECL_2_0: return 'ECL-2.0';
        case EFL_1_0: return 'EFL-1.0';
        case EFL_2_0: return 'EFL-2.0';
        case eGenix: return 'eGenix';
        case Entessa: return 'Entessa';
        case EPL_1_0: return 'EPL-1.0';
        case EPL_2_0: return 'EPL-2.0';
        case ErlPL_1_1: return 'ErlPL-1.1';
        case EUDatagrid: return 'EUDatagrid';
        case EUPL_1_0: return 'EUPL-1.0';
        case EUPL_1_1: return 'EUPL-1.1';
        case EUPL_1_2: return 'EUPL-1.2';
        case Eurosym: return 'Eurosym';
        case Fair: return 'Fair';
        case Frameworx_1_0: return 'Frameworx-1.0';
        case FreeImage: return 'FreeImage';
        case FSFAP: return 'FSFAP';
        case FSFUL: return 'FSFUL';
        case FSFULLR: return 'FSFULLR';
        case FTL: return 'FTL';
        case GFDL_1_1_only: return 'GFDL-1.1-only';
        case GFDL_1_1_or_later: return 'GFDL-1.1-or-later';
        case GFDL_1_2_only: return 'GFDL-1.2-only';
        case GFDL_1_2_or_later: return 'GFDL-1.2-or-later';
        case GFDL_1_3_only: return 'GFDL-1.3-only';
        case GFDL_1_3_or_later: return 'GFDL-1.3-or-later';
        case Giftware: return 'Giftware';
        case GL2PS: return 'GL2PS';
        case Glide: return 'Glide';
        case Glulxe: return 'Glulxe';
        case gnuplot: return 'gnuplot';
        case GPL_1_0_only: return 'GPL-1.0-only';
        case GPL_1_0_or_later: return 'GPL-1.0-or-later';
        case GPL_2_0_only: return 'GPL-2.0-only';
        case GPL_2_0_or_later: return 'GPL-2.0-or-later';
        case GPL_3_0_only: return 'GPL-3.0-only';
        case GPL_3_0_or_later: return 'GPL-3.0-or-later';
        case gSOAP_1_3b: return 'gSOAP-1.3b';
        case HaskellReport: return 'HaskellReport';
        case HPND: return 'HPND';
        case IBM_pibs: return 'IBM-pibs';
        case ICU: return 'ICU';
        case IJG: return 'IJG';
        case ImageMagick: return 'ImageMagick';
        case iMatix: return 'iMatix';
        case Imlib2: return 'Imlib2';
        case Info_ZIP: return 'Info-ZIP';
        case Intel_ACPI: return 'Intel-ACPI';
        case Intel: return 'Intel';
        case Interbase_1_0: return 'Interbase-1.0';
        case IPA: return 'IPA';
        case IPL_1_0: return 'IPL-1.0';
        case ISC: return 'ISC';
        case JasPer_2_0: return 'JasPer-2.0';
        case JSON: return 'JSON';
        case LAL_1_2: return 'LAL-1.2';
        case LAL_1_3: return 'LAL-1.3';
        case Latex2e: return 'Latex2e';
        case Leptonica: return 'Leptonica';
        case LGPL_2_0_only: return 'LGPL-2.0-only';
        case LGPL_2_0_or_later: return 'LGPL-2.0-or-later';
        case LGPL_2_1_only: return 'LGPL-2.1-only';
        case LGPL_2_1_or_later: return 'LGPL-2.1-or-later';
        case LGPL_3_0_only: return 'LGPL-3.0-only';
        case LGPL_3_0_or_later: return 'LGPL-3.0-or-later';
        case LGPLLR: return 'LGPLLR';
        case Libpng: return 'Libpng';
        case libtiff: return 'libtiff';
        case LiLiQ_P_1_1: return 'LiLiQ-P-1.1';
        case LiLiQ_R_1_1: return 'LiLiQ-R-1.1';
        case LiLiQ_Rplus_1_1: return 'LiLiQ-Rplus-1.1';
        case Linux_OpenIB: return 'Linux-OpenIB';
        case LPL_1_0: return 'LPL-1.0';
        case LPL_1_02: return 'LPL-1.02';
        case LPPL_1_0: return 'LPPL-1.0';
        case LPPL_1_1: return 'LPPL-1.1';
        case LPPL_1_2: return 'LPPL-1.2';
        case LPPL_1_3a: return 'LPPL-1.3a';
        case LPPL_1_3c: return 'LPPL-1.3c';
        case MakeIndex: return 'MakeIndex';
        case MirOS: return 'MirOS';
        case MIT_0: return 'MIT-0';
        case MIT_advertising: return 'MIT-advertising';
        case MIT_CMU: return 'MIT-CMU';
        case MIT_enna: return 'MIT-enna';
        case MIT_feh: return 'MIT-feh';
        case MIT: return 'MIT';
        case MITNFA: return 'MITNFA';
        case Motosoto: return 'Motosoto';
        case mpich2: return 'mpich2';
        case MPL_1_0: return 'MPL-1.0';
        case MPL_1_1: return 'MPL-1.1';
        case MPL_2_0_no_copyleft_exception: return 'MPL-2.0-no-copyleft-exception';
        case MPL_2_0: return 'MPL-2.0';
        case MS_PL: return 'MS-PL';
        case MS_RL: return 'MS-RL';
        case MTLL: return 'MTLL';
        case Multics: return 'Multics';
        case Mup: return 'Mup';
        case NASA_1_3: return 'NASA-1.3';
        case Naumen: return 'Naumen';
        case NBPL_1_0: return 'NBPL-1.0';
        case NCSA: return 'NCSA';
        case Net_SNMP: return 'Net-SNMP';
        case NetCDF: return 'NetCDF';
        case Newsletr: return 'Newsletr';
        case NGPL: return 'NGPL';
        case NLOD_1_0: return 'NLOD-1.0';
        case NLPL: return 'NLPL';
        case Nokia: return 'Nokia';
        case NOSL: return 'NOSL';
        case Noweb: return 'Noweb';
        case NPL_1_0: return 'NPL-1.0';
        case NPL_1_1: return 'NPL-1.1';
        case NPOSL_3_0: return 'NPOSL-3.0';
        case NRL: return 'NRL';
        case NTP: return 'NTP';
        case OCCT_PL: return 'OCCT-PL';
        case OCLC_2_0: return 'OCLC-2.0';
        case ODbL_1_0: return 'ODbL-1.0';
        case OFL_1_0: return 'OFL-1.0';
        case OFL_1_1: return 'OFL-1.1';
        case OGTSL: return 'OGTSL';
        case OLDAP_1_1: return 'OLDAP-1.1';
        case OLDAP_1_2: return 'OLDAP-1.2';
        case OLDAP_1_3: return 'OLDAP-1.3';
        case OLDAP_1_4: return 'OLDAP-1.4';
        case OLDAP_2_0_1: return 'OLDAP-2.0.1';
        case OLDAP_2_0: return 'OLDAP-2.0';
        case OLDAP_2_1: return 'OLDAP-2.1';
        case OLDAP_2_2_1: return 'OLDAP-2.2.1';
        case OLDAP_2_2_2: return 'OLDAP-2.2.2';
        case OLDAP_2_2: return 'OLDAP-2.2';
        case OLDAP_2_3: return 'OLDAP-2.3';
        case OLDAP_2_4: return 'OLDAP-2.4';
        case OLDAP_2_5: return 'OLDAP-2.5';
        case OLDAP_2_6: return 'OLDAP-2.6';
        case OLDAP_2_7: return 'OLDAP-2.7';
        case OLDAP_2_8: return 'OLDAP-2.8';
        case OML: return 'OML';
        case OpenSSL: return 'OpenSSL';
        case OPL_1_0: return 'OPL-1.0';
        case OSET_PL_2_1: return 'OSET-PL-2.1';
        case OSL_1_0: return 'OSL-1.0';
        case OSL_1_1: return 'OSL-1.1';
        case OSL_2_0: return 'OSL-2.0';
        case OSL_2_1: return 'OSL-2.1';
        case OSL_3_0: return 'OSL-3.0';
        case PDDL_1_0: return 'PDDL-1.0';
        case PHP_3_0: return 'PHP-3.0';
        case PHP_3_01: return 'PHP-3.01';
        case Plexus: return 'Plexus';
        case PostgreSQL: return 'PostgreSQL';
        case psfrag: return 'psfrag';
        case psutils: return 'psutils';
        case Python_2_0: return 'Python-2.0';
        case Qhull: return 'Qhull';
        case QPL_1_0: return 'QPL-1.0';
        case Rdisc: return 'Rdisc';
        case RHeCos_1_1: return 'RHeCos-1.1';
        case RPL_1_1: return 'RPL-1.1';
        case RPL_1_5: return 'RPL-1.5';
        case RPSL_1_0: return 'RPSL-1.0';
        case RSA_MD: return 'RSA-MD';
        case RSCPL: return 'RSCPL';
        case Ruby: return 'Ruby';
        case SAX_PD: return 'SAX-PD';
        case Saxpath: return 'Saxpath';
        case SCEA: return 'SCEA';
        case Sendmail: return 'Sendmail';
        case SGI_B_1_0: return 'SGI-B-1.0';
        case SGI_B_1_1: return 'SGI-B-1.1';
        case SGI_B_2_0: return 'SGI-B-2.0';
        case SimPL_2_0: return 'SimPL-2.0';
        case SISSL_1_2: return 'SISSL-1.2';
        case SISSL: return 'SISSL';
        case Sleepycat: return 'Sleepycat';
        case SMLNJ: return 'SMLNJ';
        case SMPPL: return 'SMPPL';
        case SNIA: return 'SNIA';
        case Spencer_86: return 'Spencer-86';
        case Spencer_94: return 'Spencer-94';
        case Spencer_99: return 'Spencer-99';
        case SPL_1_0: return 'SPL-1.0';
        case SugarCRM_1_1_3: return 'SugarCRM-1.1.3';
        case SWL: return 'SWL';
        case TCL: return 'TCL';
        case TCP_wrappers: return 'TCP-wrappers';
        case TMate: return 'TMate';
        case TORQUE_1_1: return 'TORQUE-1.1';
        case TOSL: return 'TOSL';
        case Unicode_DFS_2015: return 'Unicode-DFS-2015';
        case Unicode_DFS_2016: return 'Unicode-DFS-2016';
        case Unicode_TOU: return 'Unicode-TOU';
        case Unlicense: return 'Unlicense';
        case UPL_1_0: return 'UPL-1.0';
        case Vim: return 'Vim';
        case VOSTROM: return 'VOSTROM';
        case VSL_1_0: return 'VSL-1.0';
        case W3C_19980720: return 'W3C-19980720';
        case W3C_20150513: return 'W3C-20150513';
        case W3C: return 'W3C';
        case Watcom_1_0: return 'Watcom-1.0';
        case Wsuipa: return 'Wsuipa';
        case WTFPL: return 'WTFPL';
        case X11: return 'X11';
        case Xerox: return 'Xerox';
        case XFree86_1_1: return 'XFree86-1.1';
        case xinetd: return 'xinetd';
        case Xnet: return 'Xnet';
        case xpp: return 'xpp';
        case XSkat: return 'XSkat';
        case YPL_1_0: return 'YPL-1.0';
        case YPL_1_1: return 'YPL-1.1';
        case Zed: return 'Zed';
        case Zend_2_0: return 'Zend-2.0';
        case Zimbra_1_3: return 'Zimbra-1.3';
        case Zimbra_1_4: return 'Zimbra-1.4';
        case zlib_acknowledgement: return 'zlib-acknowledgement';
        case Zlib: return 'Zlib';
        case ZPL_1_1: return 'ZPL-1.1';
        case ZPL_2_0: return 'ZPL-2.0';
        case ZPL_2_1: return 'ZPL-2.1';
      }
      }
String toJson() => toString();
  SPDXLicense fromString(String str) {
    switch(str) {
      case 'not-open-source': return SPDXLicense.not_open_source;
      case '0BSD': return SPDXLicense.value0BSD;
      case 'AAL': return SPDXLicense.AAL;
      case 'Abstyles': return SPDXLicense.Abstyles;
      case 'Adobe-2006': return SPDXLicense.Adobe_2006;
      case 'Adobe-Glyph': return SPDXLicense.Adobe_Glyph;
      case 'ADSL': return SPDXLicense.ADSL;
      case 'AFL-1.1': return SPDXLicense.AFL_1_1;
      case 'AFL-1.2': return SPDXLicense.AFL_1_2;
      case 'AFL-2.0': return SPDXLicense.AFL_2_0;
      case 'AFL-2.1': return SPDXLicense.AFL_2_1;
      case 'AFL-3.0': return SPDXLicense.AFL_3_0;
      case 'Afmparse': return SPDXLicense.Afmparse;
      case 'AGPL-1.0-only': return SPDXLicense.AGPL_1_0_only;
      case 'AGPL-1.0-or-later': return SPDXLicense.AGPL_1_0_or_later;
      case 'AGPL-3.0-only': return SPDXLicense.AGPL_3_0_only;
      case 'AGPL-3.0-or-later': return SPDXLicense.AGPL_3_0_or_later;
      case 'Aladdin': return SPDXLicense.Aladdin;
      case 'AMDPLPA': return SPDXLicense.AMDPLPA;
      case 'AML': return SPDXLicense.AML;
      case 'AMPAS': return SPDXLicense.AMPAS;
      case 'ANTLR-PD': return SPDXLicense.ANTLR_PD;
      case 'Apache-1.0': return SPDXLicense.Apache_1_0;
      case 'Apache-1.1': return SPDXLicense.Apache_1_1;
      case 'Apache-2.0': return SPDXLicense.Apache_2_0;
      case 'APAFML': return SPDXLicense.APAFML;
      case 'APL-1.0': return SPDXLicense.APL_1_0;
      case 'APSL-1.0': return SPDXLicense.APSL_1_0;
      case 'APSL-1.1': return SPDXLicense.APSL_1_1;
      case 'APSL-1.2': return SPDXLicense.APSL_1_2;
      case 'APSL-2.0': return SPDXLicense.APSL_2_0;
      case 'Artistic-1.0-cl8': return SPDXLicense.Artistic_1_0_cl8;
      case 'Artistic-1.0-Perl': return SPDXLicense.Artistic_1_0_Perl;
      case 'Artistic-1.0': return SPDXLicense.Artistic_1_0;
      case 'Artistic-2.0': return SPDXLicense.Artistic_2_0;
      case 'Bahyph': return SPDXLicense.Bahyph;
      case 'Barr': return SPDXLicense.Barr;
      case 'Beerware': return SPDXLicense.Beerware;
      case 'BitTorrent-1.0': return SPDXLicense.BitTorrent_1_0;
      case 'BitTorrent-1.1': return SPDXLicense.BitTorrent_1_1;
      case 'Borceux': return SPDXLicense.Borceux;
      case 'BSD-1-Clause': return SPDXLicense.BSD_1_Clause;
      case 'BSD-2-Clause-FreeBSD': return SPDXLicense.BSD_2_Clause_FreeBSD;
      case 'BSD-2-Clause-NetBSD': return SPDXLicense.BSD_2_Clause_NetBSD;
      case 'BSD-2-Clause-Patent': return SPDXLicense.BSD_2_Clause_Patent;
      case 'BSD-2-Clause': return SPDXLicense.BSD_2_Clause;
      case 'BSD-3-Clause-Attribution': return SPDXLicense.BSD_3_Clause_Attribution;
      case 'BSD-3-Clause-Clear': return SPDXLicense.BSD_3_Clause_Clear;
      case 'BSD-3-Clause-LBNL': return SPDXLicense.BSD_3_Clause_LBNL;
      case 'BSD-3-Clause-No-Nuclear-License-2014': return SPDXLicense.BSD_3_Clause_No_Nuclear_License_2014;
      case 'BSD-3-Clause-No-Nuclear-License': return SPDXLicense.BSD_3_Clause_No_Nuclear_License;
      case 'BSD-3-Clause-No-Nuclear-Warranty': return SPDXLicense.BSD_3_Clause_No_Nuclear_Warranty;
      case 'BSD-3-Clause': return SPDXLicense.BSD_3_Clause;
      case 'BSD-4-Clause-UC': return SPDXLicense.BSD_4_Clause_UC;
      case 'BSD-4-Clause': return SPDXLicense.BSD_4_Clause;
      case 'BSD-Protection': return SPDXLicense.BSD_Protection;
      case 'BSD-Source-Code': return SPDXLicense.BSD_Source_Code;
      case 'BSL-1.0': return SPDXLicense.BSL_1_0;
      case 'bzip2-1.0.5': return SPDXLicense.bzip2_1_0_5;
      case 'bzip2-1.0.6': return SPDXLicense.bzip2_1_0_6;
      case 'Caldera': return SPDXLicense.Caldera;
      case 'CATOSL-1.1': return SPDXLicense.CATOSL_1_1;
      case 'CC-BY-1.0': return SPDXLicense.CC_BY_1_0;
      case 'CC-BY-2.0': return SPDXLicense.CC_BY_2_0;
      case 'CC-BY-2.5': return SPDXLicense.CC_BY_2_5;
      case 'CC-BY-3.0': return SPDXLicense.CC_BY_3_0;
      case 'CC-BY-4.0': return SPDXLicense.CC_BY_4_0;
      case 'CC-BY-NC-1.0': return SPDXLicense.CC_BY_NC_1_0;
      case 'CC-BY-NC-2.0': return SPDXLicense.CC_BY_NC_2_0;
      case 'CC-BY-NC-2.5': return SPDXLicense.CC_BY_NC_2_5;
      case 'CC-BY-NC-3.0': return SPDXLicense.CC_BY_NC_3_0;
      case 'CC-BY-NC-4.0': return SPDXLicense.CC_BY_NC_4_0;
      case 'CC-BY-NC-ND-1.0': return SPDXLicense.CC_BY_NC_ND_1_0;
      case 'CC-BY-NC-ND-2.0': return SPDXLicense.CC_BY_NC_ND_2_0;
      case 'CC-BY-NC-ND-2.5': return SPDXLicense.CC_BY_NC_ND_2_5;
      case 'CC-BY-NC-ND-3.0': return SPDXLicense.CC_BY_NC_ND_3_0;
      case 'CC-BY-NC-ND-4.0': return SPDXLicense.CC_BY_NC_ND_4_0;
      case 'CC-BY-NC-SA-1.0': return SPDXLicense.CC_BY_NC_SA_1_0;
      case 'CC-BY-NC-SA-2.0': return SPDXLicense.CC_BY_NC_SA_2_0;
      case 'CC-BY-NC-SA-2.5': return SPDXLicense.CC_BY_NC_SA_2_5;
      case 'CC-BY-NC-SA-3.0': return SPDXLicense.CC_BY_NC_SA_3_0;
      case 'CC-BY-NC-SA-4.0': return SPDXLicense.CC_BY_NC_SA_4_0;
      case 'CC-BY-ND-1.0': return SPDXLicense.CC_BY_ND_1_0;
      case 'CC-BY-ND-2.0': return SPDXLicense.CC_BY_ND_2_0;
      case 'CC-BY-ND-2.5': return SPDXLicense.CC_BY_ND_2_5;
      case 'CC-BY-ND-3.0': return SPDXLicense.CC_BY_ND_3_0;
      case 'CC-BY-ND-4.0': return SPDXLicense.CC_BY_ND_4_0;
      case 'CC-BY-SA-1.0': return SPDXLicense.CC_BY_SA_1_0;
      case 'CC-BY-SA-2.0': return SPDXLicense.CC_BY_SA_2_0;
      case 'CC-BY-SA-2.5': return SPDXLicense.CC_BY_SA_2_5;
      case 'CC-BY-SA-3.0': return SPDXLicense.CC_BY_SA_3_0;
      case 'CC-BY-SA-4.0': return SPDXLicense.CC_BY_SA_4_0;
      case 'CC0-1.0': return SPDXLicense.CC0_1_0;
      case 'CDDL-1.0': return SPDXLicense.CDDL_1_0;
      case 'CDDL-1.1': return SPDXLicense.CDDL_1_1;
      case 'CDLA-Permissive-1.0': return SPDXLicense.CDLA_Permissive_1_0;
      case 'CDLA-Sharing-1.0': return SPDXLicense.CDLA_Sharing_1_0;
      case 'CECILL-1.0': return SPDXLicense.CECILL_1_0;
      case 'CECILL-1.1': return SPDXLicense.CECILL_1_1;
      case 'CECILL-2.0': return SPDXLicense.CECILL_2_0;
      case 'CECILL-2.1': return SPDXLicense.CECILL_2_1;
      case 'CECILL-B': return SPDXLicense.CECILL_B;
      case 'CECILL-C': return SPDXLicense.CECILL_C;
      case 'ClArtistic': return SPDXLicense.ClArtistic;
      case 'CNRI-Jython': return SPDXLicense.CNRI_Jython;
      case 'CNRI-Python-GPL-Compatible': return SPDXLicense.CNRI_Python_GPL_Compatible;
      case 'CNRI-Python': return SPDXLicense.CNRI_Python;
      case 'Condor-1.1': return SPDXLicense.Condor_1_1;
      case 'CPAL-1.0': return SPDXLicense.CPAL_1_0;
      case 'CPL-1.0': return SPDXLicense.CPL_1_0;
      case 'CPOL-1.02': return SPDXLicense.CPOL_1_02;
      case 'Crossword': return SPDXLicense.Crossword;
      case 'CrystalStacker': return SPDXLicense.CrystalStacker;
      case 'CUA-OPL-1.0': return SPDXLicense.CUA_OPL_1_0;
      case 'Cube': return SPDXLicense.Cube;
      case 'curl': return SPDXLicense.curl;
      case 'D-FSL-1.0': return SPDXLicense.D_FSL_1_0;
      case 'diffmark': return SPDXLicense.diffmark;
      case 'DOC': return SPDXLicense.DOC;
      case 'Dotseqn': return SPDXLicense.Dotseqn;
      case 'DSDP': return SPDXLicense.DSDP;
      case 'dvipdfm': return SPDXLicense.dvipdfm;
      case 'ECL-1.0': return SPDXLicense.ECL_1_0;
      case 'ECL-2.0': return SPDXLicense.ECL_2_0;
      case 'EFL-1.0': return SPDXLicense.EFL_1_0;
      case 'EFL-2.0': return SPDXLicense.EFL_2_0;
      case 'eGenix': return SPDXLicense.eGenix;
      case 'Entessa': return SPDXLicense.Entessa;
      case 'EPL-1.0': return SPDXLicense.EPL_1_0;
      case 'EPL-2.0': return SPDXLicense.EPL_2_0;
      case 'ErlPL-1.1': return SPDXLicense.ErlPL_1_1;
      case 'EUDatagrid': return SPDXLicense.EUDatagrid;
      case 'EUPL-1.0': return SPDXLicense.EUPL_1_0;
      case 'EUPL-1.1': return SPDXLicense.EUPL_1_1;
      case 'EUPL-1.2': return SPDXLicense.EUPL_1_2;
      case 'Eurosym': return SPDXLicense.Eurosym;
      case 'Fair': return SPDXLicense.Fair;
      case 'Frameworx-1.0': return SPDXLicense.Frameworx_1_0;
      case 'FreeImage': return SPDXLicense.FreeImage;
      case 'FSFAP': return SPDXLicense.FSFAP;
      case 'FSFUL': return SPDXLicense.FSFUL;
      case 'FSFULLR': return SPDXLicense.FSFULLR;
      case 'FTL': return SPDXLicense.FTL;
      case 'GFDL-1.1-only': return SPDXLicense.GFDL_1_1_only;
      case 'GFDL-1.1-or-later': return SPDXLicense.GFDL_1_1_or_later;
      case 'GFDL-1.2-only': return SPDXLicense.GFDL_1_2_only;
      case 'GFDL-1.2-or-later': return SPDXLicense.GFDL_1_2_or_later;
      case 'GFDL-1.3-only': return SPDXLicense.GFDL_1_3_only;
      case 'GFDL-1.3-or-later': return SPDXLicense.GFDL_1_3_or_later;
      case 'Giftware': return SPDXLicense.Giftware;
      case 'GL2PS': return SPDXLicense.GL2PS;
      case 'Glide': return SPDXLicense.Glide;
      case 'Glulxe': return SPDXLicense.Glulxe;
      case 'gnuplot': return SPDXLicense.gnuplot;
      case 'GPL-1.0-only': return SPDXLicense.GPL_1_0_only;
      case 'GPL-1.0-or-later': return SPDXLicense.GPL_1_0_or_later;
      case 'GPL-2.0-only': return SPDXLicense.GPL_2_0_only;
      case 'GPL-2.0-or-later': return SPDXLicense.GPL_2_0_or_later;
      case 'GPL-3.0-only': return SPDXLicense.GPL_3_0_only;
      case 'GPL-3.0-or-later': return SPDXLicense.GPL_3_0_or_later;
      case 'gSOAP-1.3b': return SPDXLicense.gSOAP_1_3b;
      case 'HaskellReport': return SPDXLicense.HaskellReport;
      case 'HPND': return SPDXLicense.HPND;
      case 'IBM-pibs': return SPDXLicense.IBM_pibs;
      case 'ICU': return SPDXLicense.ICU;
      case 'IJG': return SPDXLicense.IJG;
      case 'ImageMagick': return SPDXLicense.ImageMagick;
      case 'iMatix': return SPDXLicense.iMatix;
      case 'Imlib2': return SPDXLicense.Imlib2;
      case 'Info-ZIP': return SPDXLicense.Info_ZIP;
      case 'Intel-ACPI': return SPDXLicense.Intel_ACPI;
      case 'Intel': return SPDXLicense.Intel;
      case 'Interbase-1.0': return SPDXLicense.Interbase_1_0;
      case 'IPA': return SPDXLicense.IPA;
      case 'IPL-1.0': return SPDXLicense.IPL_1_0;
      case 'ISC': return SPDXLicense.ISC;
      case 'JasPer-2.0': return SPDXLicense.JasPer_2_0;
      case 'JSON': return SPDXLicense.JSON;
      case 'LAL-1.2': return SPDXLicense.LAL_1_2;
      case 'LAL-1.3': return SPDXLicense.LAL_1_3;
      case 'Latex2e': return SPDXLicense.Latex2e;
      case 'Leptonica': return SPDXLicense.Leptonica;
      case 'LGPL-2.0-only': return SPDXLicense.LGPL_2_0_only;
      case 'LGPL-2.0-or-later': return SPDXLicense.LGPL_2_0_or_later;
      case 'LGPL-2.1-only': return SPDXLicense.LGPL_2_1_only;
      case 'LGPL-2.1-or-later': return SPDXLicense.LGPL_2_1_or_later;
      case 'LGPL-3.0-only': return SPDXLicense.LGPL_3_0_only;
      case 'LGPL-3.0-or-later': return SPDXLicense.LGPL_3_0_or_later;
      case 'LGPLLR': return SPDXLicense.LGPLLR;
      case 'Libpng': return SPDXLicense.Libpng;
      case 'libtiff': return SPDXLicense.libtiff;
      case 'LiLiQ-P-1.1': return SPDXLicense.LiLiQ_P_1_1;
      case 'LiLiQ-R-1.1': return SPDXLicense.LiLiQ_R_1_1;
      case 'LiLiQ-Rplus-1.1': return SPDXLicense.LiLiQ_Rplus_1_1;
      case 'Linux-OpenIB': return SPDXLicense.Linux_OpenIB;
      case 'LPL-1.0': return SPDXLicense.LPL_1_0;
      case 'LPL-1.02': return SPDXLicense.LPL_1_02;
      case 'LPPL-1.0': return SPDXLicense.LPPL_1_0;
      case 'LPPL-1.1': return SPDXLicense.LPPL_1_1;
      case 'LPPL-1.2': return SPDXLicense.LPPL_1_2;
      case 'LPPL-1.3a': return SPDXLicense.LPPL_1_3a;
      case 'LPPL-1.3c': return SPDXLicense.LPPL_1_3c;
      case 'MakeIndex': return SPDXLicense.MakeIndex;
      case 'MirOS': return SPDXLicense.MirOS;
      case 'MIT-0': return SPDXLicense.MIT_0;
      case 'MIT-advertising': return SPDXLicense.MIT_advertising;
      case 'MIT-CMU': return SPDXLicense.MIT_CMU;
      case 'MIT-enna': return SPDXLicense.MIT_enna;
      case 'MIT-feh': return SPDXLicense.MIT_feh;
      case 'MIT': return SPDXLicense.MIT;
      case 'MITNFA': return SPDXLicense.MITNFA;
      case 'Motosoto': return SPDXLicense.Motosoto;
      case 'mpich2': return SPDXLicense.mpich2;
      case 'MPL-1.0': return SPDXLicense.MPL_1_0;
      case 'MPL-1.1': return SPDXLicense.MPL_1_1;
      case 'MPL-2.0-no-copyleft-exception': return SPDXLicense.MPL_2_0_no_copyleft_exception;
      case 'MPL-2.0': return SPDXLicense.MPL_2_0;
      case 'MS-PL': return SPDXLicense.MS_PL;
      case 'MS-RL': return SPDXLicense.MS_RL;
      case 'MTLL': return SPDXLicense.MTLL;
      case 'Multics': return SPDXLicense.Multics;
      case 'Mup': return SPDXLicense.Mup;
      case 'NASA-1.3': return SPDXLicense.NASA_1_3;
      case 'Naumen': return SPDXLicense.Naumen;
      case 'NBPL-1.0': return SPDXLicense.NBPL_1_0;
      case 'NCSA': return SPDXLicense.NCSA;
      case 'Net-SNMP': return SPDXLicense.Net_SNMP;
      case 'NetCDF': return SPDXLicense.NetCDF;
      case 'Newsletr': return SPDXLicense.Newsletr;
      case 'NGPL': return SPDXLicense.NGPL;
      case 'NLOD-1.0': return SPDXLicense.NLOD_1_0;
      case 'NLPL': return SPDXLicense.NLPL;
      case 'Nokia': return SPDXLicense.Nokia;
      case 'NOSL': return SPDXLicense.NOSL;
      case 'Noweb': return SPDXLicense.Noweb;
      case 'NPL-1.0': return SPDXLicense.NPL_1_0;
      case 'NPL-1.1': return SPDXLicense.NPL_1_1;
      case 'NPOSL-3.0': return SPDXLicense.NPOSL_3_0;
      case 'NRL': return SPDXLicense.NRL;
      case 'NTP': return SPDXLicense.NTP;
      case 'OCCT-PL': return SPDXLicense.OCCT_PL;
      case 'OCLC-2.0': return SPDXLicense.OCLC_2_0;
      case 'ODbL-1.0': return SPDXLicense.ODbL_1_0;
      case 'OFL-1.0': return SPDXLicense.OFL_1_0;
      case 'OFL-1.1': return SPDXLicense.OFL_1_1;
      case 'OGTSL': return SPDXLicense.OGTSL;
      case 'OLDAP-1.1': return SPDXLicense.OLDAP_1_1;
      case 'OLDAP-1.2': return SPDXLicense.OLDAP_1_2;
      case 'OLDAP-1.3': return SPDXLicense.OLDAP_1_3;
      case 'OLDAP-1.4': return SPDXLicense.OLDAP_1_4;
      case 'OLDAP-2.0.1': return SPDXLicense.OLDAP_2_0_1;
      case 'OLDAP-2.0': return SPDXLicense.OLDAP_2_0;
      case 'OLDAP-2.1': return SPDXLicense.OLDAP_2_1;
      case 'OLDAP-2.2.1': return SPDXLicense.OLDAP_2_2_1;
      case 'OLDAP-2.2.2': return SPDXLicense.OLDAP_2_2_2;
      case 'OLDAP-2.2': return SPDXLicense.OLDAP_2_2;
      case 'OLDAP-2.3': return SPDXLicense.OLDAP_2_3;
      case 'OLDAP-2.4': return SPDXLicense.OLDAP_2_4;
      case 'OLDAP-2.5': return SPDXLicense.OLDAP_2_5;
      case 'OLDAP-2.6': return SPDXLicense.OLDAP_2_6;
      case 'OLDAP-2.7': return SPDXLicense.OLDAP_2_7;
      case 'OLDAP-2.8': return SPDXLicense.OLDAP_2_8;
      case 'OML': return SPDXLicense.OML;
      case 'OpenSSL': return SPDXLicense.OpenSSL;
      case 'OPL-1.0': return SPDXLicense.OPL_1_0;
      case 'OSET-PL-2.1': return SPDXLicense.OSET_PL_2_1;
      case 'OSL-1.0': return SPDXLicense.OSL_1_0;
      case 'OSL-1.1': return SPDXLicense.OSL_1_1;
      case 'OSL-2.0': return SPDXLicense.OSL_2_0;
      case 'OSL-2.1': return SPDXLicense.OSL_2_1;
      case 'OSL-3.0': return SPDXLicense.OSL_3_0;
      case 'PDDL-1.0': return SPDXLicense.PDDL_1_0;
      case 'PHP-3.0': return SPDXLicense.PHP_3_0;
      case 'PHP-3.01': return SPDXLicense.PHP_3_01;
      case 'Plexus': return SPDXLicense.Plexus;
      case 'PostgreSQL': return SPDXLicense.PostgreSQL;
      case 'psfrag': return SPDXLicense.psfrag;
      case 'psutils': return SPDXLicense.psutils;
      case 'Python-2.0': return SPDXLicense.Python_2_0;
      case 'Qhull': return SPDXLicense.Qhull;
      case 'QPL-1.0': return SPDXLicense.QPL_1_0;
      case 'Rdisc': return SPDXLicense.Rdisc;
      case 'RHeCos-1.1': return SPDXLicense.RHeCos_1_1;
      case 'RPL-1.1': return SPDXLicense.RPL_1_1;
      case 'RPL-1.5': return SPDXLicense.RPL_1_5;
      case 'RPSL-1.0': return SPDXLicense.RPSL_1_0;
      case 'RSA-MD': return SPDXLicense.RSA_MD;
      case 'RSCPL': return SPDXLicense.RSCPL;
      case 'Ruby': return SPDXLicense.Ruby;
      case 'SAX-PD': return SPDXLicense.SAX_PD;
      case 'Saxpath': return SPDXLicense.Saxpath;
      case 'SCEA': return SPDXLicense.SCEA;
      case 'Sendmail': return SPDXLicense.Sendmail;
      case 'SGI-B-1.0': return SPDXLicense.SGI_B_1_0;
      case 'SGI-B-1.1': return SPDXLicense.SGI_B_1_1;
      case 'SGI-B-2.0': return SPDXLicense.SGI_B_2_0;
      case 'SimPL-2.0': return SPDXLicense.SimPL_2_0;
      case 'SISSL-1.2': return SPDXLicense.SISSL_1_2;
      case 'SISSL': return SPDXLicense.SISSL;
      case 'Sleepycat': return SPDXLicense.Sleepycat;
      case 'SMLNJ': return SPDXLicense.SMLNJ;
      case 'SMPPL': return SPDXLicense.SMPPL;
      case 'SNIA': return SPDXLicense.SNIA;
      case 'Spencer-86': return SPDXLicense.Spencer_86;
      case 'Spencer-94': return SPDXLicense.Spencer_94;
      case 'Spencer-99': return SPDXLicense.Spencer_99;
      case 'SPL-1.0': return SPDXLicense.SPL_1_0;
      case 'SugarCRM-1.1.3': return SPDXLicense.SugarCRM_1_1_3;
      case 'SWL': return SPDXLicense.SWL;
      case 'TCL': return SPDXLicense.TCL;
      case 'TCP-wrappers': return SPDXLicense.TCP_wrappers;
      case 'TMate': return SPDXLicense.TMate;
      case 'TORQUE-1.1': return SPDXLicense.TORQUE_1_1;
      case 'TOSL': return SPDXLicense.TOSL;
      case 'Unicode-DFS-2015': return SPDXLicense.Unicode_DFS_2015;
      case 'Unicode-DFS-2016': return SPDXLicense.Unicode_DFS_2016;
      case 'Unicode-TOU': return SPDXLicense.Unicode_TOU;
      case 'Unlicense': return SPDXLicense.Unlicense;
      case 'UPL-1.0': return SPDXLicense.UPL_1_0;
      case 'Vim': return SPDXLicense.Vim;
      case 'VOSTROM': return SPDXLicense.VOSTROM;
      case 'VSL-1.0': return SPDXLicense.VSL_1_0;
      case 'W3C-19980720': return SPDXLicense.W3C_19980720;
      case 'W3C-20150513': return SPDXLicense.W3C_20150513;
      case 'W3C': return SPDXLicense.W3C;
      case 'Watcom-1.0': return SPDXLicense.Watcom_1_0;
      case 'Wsuipa': return SPDXLicense.Wsuipa;
      case 'WTFPL': return SPDXLicense.WTFPL;
      case 'X11': return SPDXLicense.X11;
      case 'Xerox': return SPDXLicense.Xerox;
      case 'XFree86-1.1': return SPDXLicense.XFree86_1_1;
      case 'xinetd': return SPDXLicense.xinetd;
      case 'Xnet': return SPDXLicense.Xnet;
      case 'xpp': return SPDXLicense.xpp;
      case 'XSkat': return SPDXLicense.XSkat;
      case 'YPL-1.0': return SPDXLicense.YPL_1_0;
      case 'YPL-1.1': return SPDXLicense.YPL_1_1;
      case 'Zed': return SPDXLicense.Zed;
      case 'Zend-2.0': return SPDXLicense.Zend_2_0;
      case 'Zimbra-1.3': return SPDXLicense.Zimbra_1_3;
      case 'Zimbra-1.4': return SPDXLicense.Zimbra_1_4;
      case 'zlib-acknowledgement': return SPDXLicense.zlib_acknowledgement;
      case 'Zlib': return SPDXLicense.Zlib;
      case 'ZPL-1.1': return SPDXLicense.ZPL_1_1;
      case 'ZPL-2.0': return SPDXLicense.ZPL_2_0;
      case 'ZPL-2.1': return SPDXLicense.ZPL_2_1;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 SPDXLicense fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}

