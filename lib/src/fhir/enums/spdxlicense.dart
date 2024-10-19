// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The license that applies to an Implementation Guide (using an SPDX license Identifiers, or 'not-open-source'). The binding is required but new SPDX license Identifiers are allowed to be used (https://spdx.org/licenses/).
@Entity()
class SPDXLicense extends FhirCode {
  /// Factory constructor to create [SPDXLicense] from JSON.
  factory SPDXLicense.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SPDXLicense.elementOnly(element);
    }
    if (values.contains(value)) {
      return SPDXLicense._(value, element);
    }
    throw ArgumentError(
      'SPDXLicense.fromJson: JSON value is not a valid value',
    );
  }

  /// not_open_source
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.not_open_source([this.element])
      : dbValue = 'not-open-source',
        super('not-open-source', element);

  /// value0BSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.value0BSD([this.element])
      : dbValue = '0BSD',
        super('0BSD', element);

  /// AAL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AAL([this.element])
      : dbValue = 'AAL',
        super('AAL', element);

  /// Abstyles
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Abstyles([this.element])
      : dbValue = 'Abstyles',
        super('Abstyles', element);

  /// Adobe_2006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Adobe_2006([this.element])
      : dbValue = 'Adobe-2006',
        super('Adobe-2006', element);

  /// Adobe_Glyph
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Adobe_Glyph([this.element])
      : dbValue = 'Adobe-Glyph',
        super('Adobe-Glyph', element);

  /// ADSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ADSL([this.element])
      : dbValue = 'ADSL',
        super('ADSL', element);

  /// AFL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AFL_1_1([this.element])
      : dbValue = 'AFL-1.1',
        super('AFL-1.1', element);

  /// AFL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AFL_1_2([this.element])
      : dbValue = 'AFL-1.2',
        super('AFL-1.2', element);

  /// AFL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AFL_2_0([this.element])
      : dbValue = 'AFL-2.0',
        super('AFL-2.0', element);

  /// AFL_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AFL_2_1([this.element])
      : dbValue = 'AFL-2.1',
        super('AFL-2.1', element);

  /// AFL_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AFL_3_0([this.element])
      : dbValue = 'AFL-3.0',
        super('AFL-3.0', element);

  /// Afmparse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Afmparse([this.element])
      : dbValue = 'Afmparse',
        super('Afmparse', element);

  /// AGPL_1_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AGPL_1_0_only([this.element])
      : dbValue = 'AGPL-1.0-only',
        super('AGPL-1.0-only', element);

  /// AGPL_1_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AGPL_1_0_or_later([this.element])
      : dbValue = 'AGPL-1.0-or-later',
        super('AGPL-1.0-or-later', element);

  /// AGPL_3_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AGPL_3_0_only([this.element])
      : dbValue = 'AGPL-3.0-only',
        super('AGPL-3.0-only', element);

  /// AGPL_3_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AGPL_3_0_or_later([this.element])
      : dbValue = 'AGPL-3.0-or-later',
        super('AGPL-3.0-or-later', element);

  /// Aladdin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Aladdin([this.element])
      : dbValue = 'Aladdin',
        super('Aladdin', element);

  /// AMDPLPA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AMDPLPA([this.element])
      : dbValue = 'AMDPLPA',
        super('AMDPLPA', element);

  /// AML
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AML([this.element])
      : dbValue = 'AML',
        super('AML', element);

  /// AMPAS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.AMPAS([this.element])
      : dbValue = 'AMPAS',
        super('AMPAS', element);

  /// ANTLR_PD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ANTLR_PD([this.element])
      : dbValue = 'ANTLR-PD',
        super('ANTLR-PD', element);

  /// Apache_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Apache_1_0([this.element])
      : dbValue = 'Apache-1.0',
        super('Apache-1.0', element);

  /// Apache_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Apache_1_1([this.element])
      : dbValue = 'Apache-1.1',
        super('Apache-1.1', element);

  /// Apache_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Apache_2_0([this.element])
      : dbValue = 'Apache-2.0',
        super('Apache-2.0', element);

  /// APAFML
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APAFML([this.element])
      : dbValue = 'APAFML',
        super('APAFML', element);

  /// APL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APL_1_0([this.element])
      : dbValue = 'APL-1.0',
        super('APL-1.0', element);

  /// APSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APSL_1_0([this.element])
      : dbValue = 'APSL-1.0',
        super('APSL-1.0', element);

  /// APSL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APSL_1_1([this.element])
      : dbValue = 'APSL-1.1',
        super('APSL-1.1', element);

  /// APSL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APSL_1_2([this.element])
      : dbValue = 'APSL-1.2',
        super('APSL-1.2', element);

  /// APSL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.APSL_2_0([this.element])
      : dbValue = 'APSL-2.0',
        super('APSL-2.0', element);

  /// Artistic_1_0_cl8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Artistic_1_0_cl8([this.element])
      : dbValue = 'Artistic-1.0-cl8',
        super('Artistic-1.0-cl8', element);

  /// Artistic_1_0_Perl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Artistic_1_0_Perl([this.element])
      : dbValue = 'Artistic-1.0-Perl',
        super('Artistic-1.0-Perl', element);

  /// Artistic_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Artistic_1_0([this.element])
      : dbValue = 'Artistic-1.0',
        super('Artistic-1.0', element);

  /// Artistic_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Artistic_2_0([this.element])
      : dbValue = 'Artistic-2.0',
        super('Artistic-2.0', element);

  /// Bahyph
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Bahyph([this.element])
      : dbValue = 'Bahyph',
        super('Bahyph', element);

  /// Barr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Barr([this.element])
      : dbValue = 'Barr',
        super('Barr', element);

  /// Beerware
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Beerware([this.element])
      : dbValue = 'Beerware',
        super('Beerware', element);

  /// BitTorrent_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BitTorrent_1_0([this.element])
      : dbValue = 'BitTorrent-1.0',
        super('BitTorrent-1.0', element);

  /// BitTorrent_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BitTorrent_1_1([this.element])
      : dbValue = 'BitTorrent-1.1',
        super('BitTorrent-1.1', element);

  /// Borceux
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Borceux([this.element])
      : dbValue = 'Borceux',
        super('Borceux', element);

  /// BSD_1_Clause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_1_Clause([this.element])
      : dbValue = 'BSD-1-Clause',
        super('BSD-1-Clause', element);

  /// BSD_2_Clause_FreeBSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_2_Clause_FreeBSD([this.element])
      : dbValue = 'BSD-2-Clause-FreeBSD',
        super('BSD-2-Clause-FreeBSD', element);

  /// BSD_2_Clause_NetBSD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_2_Clause_NetBSD([this.element])
      : dbValue = 'BSD-2-Clause-NetBSD',
        super('BSD-2-Clause-NetBSD', element);

  /// BSD_2_Clause_Patent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_2_Clause_Patent([this.element])
      : dbValue = 'BSD-2-Clause-Patent',
        super('BSD-2-Clause-Patent', element);

  /// BSD_2_Clause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_2_Clause([this.element])
      : dbValue = 'BSD-2-Clause',
        super('BSD-2-Clause', element);

  /// BSD_3_Clause_Attribution
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_Attribution([this.element])
      : dbValue = 'BSD-3-Clause-Attribution',
        super('BSD-3-Clause-Attribution', element);

  /// BSD_3_Clause_Clear
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_Clear([this.element])
      : dbValue = 'BSD-3-Clause-Clear',
        super('BSD-3-Clause-Clear', element);

  /// BSD_3_Clause_LBNL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_LBNL([this.element])
      : dbValue = 'BSD-3-Clause-LBNL',
        super('BSD-3-Clause-LBNL', element);

  /// BSD_3_Clause_No_Nuclear_License_2014
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_No_Nuclear_License_2014([this.element])
      : dbValue = 'BSD-3-Clause-No-Nuclear-License-2014',
        super('BSD-3-Clause-No-Nuclear-License-2014', element);

  /// BSD_3_Clause_No_Nuclear_License
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_No_Nuclear_License([this.element])
      : dbValue = 'BSD-3-Clause-No-Nuclear-License',
        super('BSD-3-Clause-No-Nuclear-License', element);

  /// BSD_3_Clause_No_Nuclear_Warranty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause_No_Nuclear_Warranty([this.element])
      : dbValue = 'BSD-3-Clause-No-Nuclear-Warranty',
        super('BSD-3-Clause-No-Nuclear-Warranty', element);

  /// BSD_3_Clause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_3_Clause([this.element])
      : dbValue = 'BSD-3-Clause',
        super('BSD-3-Clause', element);

  /// BSD_4_Clause_UC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_4_Clause_UC([this.element])
      : dbValue = 'BSD-4-Clause-UC',
        super('BSD-4-Clause-UC', element);

  /// BSD_4_Clause
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_4_Clause([this.element])
      : dbValue = 'BSD-4-Clause',
        super('BSD-4-Clause', element);

  /// BSD_Protection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_Protection([this.element])
      : dbValue = 'BSD-Protection',
        super('BSD-Protection', element);

  /// BSD_Source_Code
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSD_Source_Code([this.element])
      : dbValue = 'BSD-Source-Code',
        super('BSD-Source-Code', element);

  /// BSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.BSL_1_0([this.element])
      : dbValue = 'BSL-1.0',
        super('BSL-1.0', element);

  /// bzip2_1_0_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.bzip2_1_0_5([this.element])
      : dbValue = 'bzip2-1.0.5',
        super('bzip2-1.0.5', element);

  /// bzip2_1_0_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.bzip2_1_0_6([this.element])
      : dbValue = 'bzip2-1.0.6',
        super('bzip2-1.0.6', element);

  /// Caldera
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Caldera([this.element])
      : dbValue = 'Caldera',
        super('Caldera', element);

  /// CATOSL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CATOSL_1_1([this.element])
      : dbValue = 'CATOSL-1.1',
        super('CATOSL-1.1', element);

  /// CC_BY_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_1_0([this.element])
      : dbValue = 'CC-BY-1.0',
        super('CC-BY-1.0', element);

  /// CC_BY_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_2_0([this.element])
      : dbValue = 'CC-BY-2.0',
        super('CC-BY-2.0', element);

  /// CC_BY_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_2_5([this.element])
      : dbValue = 'CC-BY-2.5',
        super('CC-BY-2.5', element);

  /// CC_BY_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_3_0([this.element])
      : dbValue = 'CC-BY-3.0',
        super('CC-BY-3.0', element);

  /// CC_BY_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_4_0([this.element])
      : dbValue = 'CC-BY-4.0',
        super('CC-BY-4.0', element);

  /// CC_BY_NC_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_1_0([this.element])
      : dbValue = 'CC-BY-NC-1.0',
        super('CC-BY-NC-1.0', element);

  /// CC_BY_NC_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_2_0([this.element])
      : dbValue = 'CC-BY-NC-2.0',
        super('CC-BY-NC-2.0', element);

  /// CC_BY_NC_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_2_5([this.element])
      : dbValue = 'CC-BY-NC-2.5',
        super('CC-BY-NC-2.5', element);

  /// CC_BY_NC_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_3_0([this.element])
      : dbValue = 'CC-BY-NC-3.0',
        super('CC-BY-NC-3.0', element);

  /// CC_BY_NC_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_4_0([this.element])
      : dbValue = 'CC-BY-NC-4.0',
        super('CC-BY-NC-4.0', element);

  /// CC_BY_NC_ND_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_ND_1_0([this.element])
      : dbValue = 'CC-BY-NC-ND-1.0',
        super('CC-BY-NC-ND-1.0', element);

  /// CC_BY_NC_ND_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_ND_2_0([this.element])
      : dbValue = 'CC-BY-NC-ND-2.0',
        super('CC-BY-NC-ND-2.0', element);

  /// CC_BY_NC_ND_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_ND_2_5([this.element])
      : dbValue = 'CC-BY-NC-ND-2.5',
        super('CC-BY-NC-ND-2.5', element);

  /// CC_BY_NC_ND_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_ND_3_0([this.element])
      : dbValue = 'CC-BY-NC-ND-3.0',
        super('CC-BY-NC-ND-3.0', element);

  /// CC_BY_NC_ND_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_ND_4_0([this.element])
      : dbValue = 'CC-BY-NC-ND-4.0',
        super('CC-BY-NC-ND-4.0', element);

  /// CC_BY_NC_SA_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_SA_1_0([this.element])
      : dbValue = 'CC-BY-NC-SA-1.0',
        super('CC-BY-NC-SA-1.0', element);

  /// CC_BY_NC_SA_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_SA_2_0([this.element])
      : dbValue = 'CC-BY-NC-SA-2.0',
        super('CC-BY-NC-SA-2.0', element);

  /// CC_BY_NC_SA_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_SA_2_5([this.element])
      : dbValue = 'CC-BY-NC-SA-2.5',
        super('CC-BY-NC-SA-2.5', element);

  /// CC_BY_NC_SA_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_SA_3_0([this.element])
      : dbValue = 'CC-BY-NC-SA-3.0',
        super('CC-BY-NC-SA-3.0', element);

  /// CC_BY_NC_SA_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_NC_SA_4_0([this.element])
      : dbValue = 'CC-BY-NC-SA-4.0',
        super('CC-BY-NC-SA-4.0', element);

  /// CC_BY_ND_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_ND_1_0([this.element])
      : dbValue = 'CC-BY-ND-1.0',
        super('CC-BY-ND-1.0', element);

  /// CC_BY_ND_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_ND_2_0([this.element])
      : dbValue = 'CC-BY-ND-2.0',
        super('CC-BY-ND-2.0', element);

  /// CC_BY_ND_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_ND_2_5([this.element])
      : dbValue = 'CC-BY-ND-2.5',
        super('CC-BY-ND-2.5', element);

  /// CC_BY_ND_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_ND_3_0([this.element])
      : dbValue = 'CC-BY-ND-3.0',
        super('CC-BY-ND-3.0', element);

  /// CC_BY_ND_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_ND_4_0([this.element])
      : dbValue = 'CC-BY-ND-4.0',
        super('CC-BY-ND-4.0', element);

  /// CC_BY_SA_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_SA_1_0([this.element])
      : dbValue = 'CC-BY-SA-1.0',
        super('CC-BY-SA-1.0', element);

  /// CC_BY_SA_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_SA_2_0([this.element])
      : dbValue = 'CC-BY-SA-2.0',
        super('CC-BY-SA-2.0', element);

  /// CC_BY_SA_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_SA_2_5([this.element])
      : dbValue = 'CC-BY-SA-2.5',
        super('CC-BY-SA-2.5', element);

  /// CC_BY_SA_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_SA_3_0([this.element])
      : dbValue = 'CC-BY-SA-3.0',
        super('CC-BY-SA-3.0', element);

  /// CC_BY_SA_4_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC_BY_SA_4_0([this.element])
      : dbValue = 'CC-BY-SA-4.0',
        super('CC-BY-SA-4.0', element);

  /// CC0_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CC0_1_0([this.element])
      : dbValue = 'CC0-1.0',
        super('CC0-1.0', element);

  /// CDDL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CDDL_1_0([this.element])
      : dbValue = 'CDDL-1.0',
        super('CDDL-1.0', element);

  /// CDDL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CDDL_1_1([this.element])
      : dbValue = 'CDDL-1.1',
        super('CDDL-1.1', element);

  /// CDLA_Permissive_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CDLA_Permissive_1_0([this.element])
      : dbValue = 'CDLA-Permissive-1.0',
        super('CDLA-Permissive-1.0', element);

  /// CDLA_Sharing_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CDLA_Sharing_1_0([this.element])
      : dbValue = 'CDLA-Sharing-1.0',
        super('CDLA-Sharing-1.0', element);

  /// CECILL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_1_0([this.element])
      : dbValue = 'CECILL-1.0',
        super('CECILL-1.0', element);

  /// CECILL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_1_1([this.element])
      : dbValue = 'CECILL-1.1',
        super('CECILL-1.1', element);

  /// CECILL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_2_0([this.element])
      : dbValue = 'CECILL-2.0',
        super('CECILL-2.0', element);

  /// CECILL_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_2_1([this.element])
      : dbValue = 'CECILL-2.1',
        super('CECILL-2.1', element);

  /// CECILL_B
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_B([this.element])
      : dbValue = 'CECILL-B',
        super('CECILL-B', element);

  /// CECILL_C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CECILL_C([this.element])
      : dbValue = 'CECILL-C',
        super('CECILL-C', element);

  /// ClArtistic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ClArtistic([this.element])
      : dbValue = 'ClArtistic',
        super('ClArtistic', element);

  /// CNRI_Jython
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CNRI_Jython([this.element])
      : dbValue = 'CNRI-Jython',
        super('CNRI-Jython', element);

  /// CNRI_Python_GPL_Compatible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CNRI_Python_GPL_Compatible([this.element])
      : dbValue = 'CNRI-Python-GPL-Compatible',
        super('CNRI-Python-GPL-Compatible', element);

  /// CNRI_Python
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CNRI_Python([this.element])
      : dbValue = 'CNRI-Python',
        super('CNRI-Python', element);

  /// Condor_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Condor_1_1([this.element])
      : dbValue = 'Condor-1.1',
        super('Condor-1.1', element);

  /// CPAL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CPAL_1_0([this.element])
      : dbValue = 'CPAL-1.0',
        super('CPAL-1.0', element);

  /// CPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CPL_1_0([this.element])
      : dbValue = 'CPL-1.0',
        super('CPL-1.0', element);

  /// CPOL_1_02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CPOL_1_02([this.element])
      : dbValue = 'CPOL-1.02',
        super('CPOL-1.02', element);

  /// Crossword
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Crossword([this.element])
      : dbValue = 'Crossword',
        super('Crossword', element);

  /// CrystalStacker
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CrystalStacker([this.element])
      : dbValue = 'CrystalStacker',
        super('CrystalStacker', element);

  /// CUA_OPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.CUA_OPL_1_0([this.element])
      : dbValue = 'CUA-OPL-1.0',
        super('CUA-OPL-1.0', element);

  /// Cube
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Cube([this.element])
      : dbValue = 'Cube',
        super('Cube', element);

  /// curl
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.curl([this.element])
      : dbValue = 'curl',
        super('curl', element);

  /// D_FSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.D_FSL_1_0([this.element])
      : dbValue = 'D-FSL-1.0',
        super('D-FSL-1.0', element);

  /// diffmark
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.diffmark([this.element])
      : dbValue = 'diffmark',
        super('diffmark', element);

  /// DOC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.DOC([this.element])
      : dbValue = 'DOC',
        super('DOC', element);

  /// Dotseqn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Dotseqn([this.element])
      : dbValue = 'Dotseqn',
        super('Dotseqn', element);

  /// DSDP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.DSDP([this.element])
      : dbValue = 'DSDP',
        super('DSDP', element);

  /// dvipdfm
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.dvipdfm([this.element])
      : dbValue = 'dvipdfm',
        super('dvipdfm', element);

  /// ECL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ECL_1_0([this.element])
      : dbValue = 'ECL-1.0',
        super('ECL-1.0', element);

  /// ECL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ECL_2_0([this.element])
      : dbValue = 'ECL-2.0',
        super('ECL-2.0', element);

  /// EFL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EFL_1_0([this.element])
      : dbValue = 'EFL-1.0',
        super('EFL-1.0', element);

  /// EFL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EFL_2_0([this.element])
      : dbValue = 'EFL-2.0',
        super('EFL-2.0', element);

  /// eGenix
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.eGenix([this.element])
      : dbValue = 'eGenix',
        super('eGenix', element);

  /// Entessa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Entessa([this.element])
      : dbValue = 'Entessa',
        super('Entessa', element);

  /// EPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EPL_1_0([this.element])
      : dbValue = 'EPL-1.0',
        super('EPL-1.0', element);

  /// EPL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EPL_2_0([this.element])
      : dbValue = 'EPL-2.0',
        super('EPL-2.0', element);

  /// ErlPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ErlPL_1_1([this.element])
      : dbValue = 'ErlPL-1.1',
        super('ErlPL-1.1', element);

  /// EUDatagrid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EUDatagrid([this.element])
      : dbValue = 'EUDatagrid',
        super('EUDatagrid', element);

  /// EUPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EUPL_1_0([this.element])
      : dbValue = 'EUPL-1.0',
        super('EUPL-1.0', element);

  /// EUPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EUPL_1_1([this.element])
      : dbValue = 'EUPL-1.1',
        super('EUPL-1.1', element);

  /// EUPL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.EUPL_1_2([this.element])
      : dbValue = 'EUPL-1.2',
        super('EUPL-1.2', element);

  /// Eurosym
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Eurosym([this.element])
      : dbValue = 'Eurosym',
        super('Eurosym', element);

  /// Fair
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Fair([this.element])
      : dbValue = 'Fair',
        super('Fair', element);

  /// Frameworx_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Frameworx_1_0([this.element])
      : dbValue = 'Frameworx-1.0',
        super('Frameworx-1.0', element);

  /// FreeImage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.FreeImage([this.element])
      : dbValue = 'FreeImage',
        super('FreeImage', element);

  /// FSFAP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.FSFAP([this.element])
      : dbValue = 'FSFAP',
        super('FSFAP', element);

  /// FSFUL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.FSFUL([this.element])
      : dbValue = 'FSFUL',
        super('FSFUL', element);

  /// FSFULLR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.FSFULLR([this.element])
      : dbValue = 'FSFULLR',
        super('FSFULLR', element);

  /// FTL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.FTL([this.element])
      : dbValue = 'FTL',
        super('FTL', element);

  /// GFDL_1_1_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_1_only([this.element])
      : dbValue = 'GFDL-1.1-only',
        super('GFDL-1.1-only', element);

  /// GFDL_1_1_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_1_or_later([this.element])
      : dbValue = 'GFDL-1.1-or-later',
        super('GFDL-1.1-or-later', element);

  /// GFDL_1_2_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_2_only([this.element])
      : dbValue = 'GFDL-1.2-only',
        super('GFDL-1.2-only', element);

  /// GFDL_1_2_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_2_or_later([this.element])
      : dbValue = 'GFDL-1.2-or-later',
        super('GFDL-1.2-or-later', element);

  /// GFDL_1_3_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_3_only([this.element])
      : dbValue = 'GFDL-1.3-only',
        super('GFDL-1.3-only', element);

  /// GFDL_1_3_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GFDL_1_3_or_later([this.element])
      : dbValue = 'GFDL-1.3-or-later',
        super('GFDL-1.3-or-later', element);

  /// Giftware
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Giftware([this.element])
      : dbValue = 'Giftware',
        super('Giftware', element);

  /// GL2PS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GL2PS([this.element])
      : dbValue = 'GL2PS',
        super('GL2PS', element);

  /// Glide
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Glide([this.element])
      : dbValue = 'Glide',
        super('Glide', element);

  /// Glulxe
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Glulxe([this.element])
      : dbValue = 'Glulxe',
        super('Glulxe', element);

  /// gnuplot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.gnuplot([this.element])
      : dbValue = 'gnuplot',
        super('gnuplot', element);

  /// GPL_1_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_1_0_only([this.element])
      : dbValue = 'GPL-1.0-only',
        super('GPL-1.0-only', element);

  /// GPL_1_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_1_0_or_later([this.element])
      : dbValue = 'GPL-1.0-or-later',
        super('GPL-1.0-or-later', element);

  /// GPL_2_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_2_0_only([this.element])
      : dbValue = 'GPL-2.0-only',
        super('GPL-2.0-only', element);

  /// GPL_2_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_2_0_or_later([this.element])
      : dbValue = 'GPL-2.0-or-later',
        super('GPL-2.0-or-later', element);

  /// GPL_3_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_3_0_only([this.element])
      : dbValue = 'GPL-3.0-only',
        super('GPL-3.0-only', element);

  /// GPL_3_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.GPL_3_0_or_later([this.element])
      : dbValue = 'GPL-3.0-or-later',
        super('GPL-3.0-or-later', element);

  /// gSOAP_1_3b
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.gSOAP_1_3b([this.element])
      : dbValue = 'gSOAP-1.3b',
        super('gSOAP-1.3b', element);

  /// HaskellReport
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.HaskellReport([this.element])
      : dbValue = 'HaskellReport',
        super('HaskellReport', element);

  /// HPND
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.HPND([this.element])
      : dbValue = 'HPND',
        super('HPND', element);

  /// IBM_pibs
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.IBM_pibs([this.element])
      : dbValue = 'IBM-pibs',
        super('IBM-pibs', element);

  /// ICU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ICU([this.element])
      : dbValue = 'ICU',
        super('ICU', element);

  /// IJG
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.IJG([this.element])
      : dbValue = 'IJG',
        super('IJG', element);

  /// ImageMagick
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ImageMagick([this.element])
      : dbValue = 'ImageMagick',
        super('ImageMagick', element);

  /// iMatix
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.iMatix([this.element])
      : dbValue = 'iMatix',
        super('iMatix', element);

  /// Imlib2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Imlib2([this.element])
      : dbValue = 'Imlib2',
        super('Imlib2', element);

  /// Info_ZIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Info_ZIP([this.element])
      : dbValue = 'Info-ZIP',
        super('Info-ZIP', element);

  /// Intel_ACPI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Intel_ACPI([this.element])
      : dbValue = 'Intel-ACPI',
        super('Intel-ACPI', element);

  /// Intel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Intel([this.element])
      : dbValue = 'Intel',
        super('Intel', element);

  /// Interbase_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Interbase_1_0([this.element])
      : dbValue = 'Interbase-1.0',
        super('Interbase-1.0', element);

  /// IPA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.IPA([this.element])
      : dbValue = 'IPA',
        super('IPA', element);

  /// IPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.IPL_1_0([this.element])
      : dbValue = 'IPL-1.0',
        super('IPL-1.0', element);

  /// ISC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ISC([this.element])
      : dbValue = 'ISC',
        super('ISC', element);

  /// JasPer_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.JasPer_2_0([this.element])
      : dbValue = 'JasPer-2.0',
        super('JasPer-2.0', element);

  /// JSON
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.JSON([this.element])
      : dbValue = 'JSON',
        super('JSON', element);

  /// LAL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LAL_1_2([this.element])
      : dbValue = 'LAL-1.2',
        super('LAL-1.2', element);

  /// LAL_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LAL_1_3([this.element])
      : dbValue = 'LAL-1.3',
        super('LAL-1.3', element);

  /// Latex2e
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Latex2e([this.element])
      : dbValue = 'Latex2e',
        super('Latex2e', element);

  /// Leptonica
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Leptonica([this.element])
      : dbValue = 'Leptonica',
        super('Leptonica', element);

  /// LGPL_2_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_2_0_only([this.element])
      : dbValue = 'LGPL-2.0-only',
        super('LGPL-2.0-only', element);

  /// LGPL_2_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_2_0_or_later([this.element])
      : dbValue = 'LGPL-2.0-or-later',
        super('LGPL-2.0-or-later', element);

  /// LGPL_2_1_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_2_1_only([this.element])
      : dbValue = 'LGPL-2.1-only',
        super('LGPL-2.1-only', element);

  /// LGPL_2_1_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_2_1_or_later([this.element])
      : dbValue = 'LGPL-2.1-or-later',
        super('LGPL-2.1-or-later', element);

  /// LGPL_3_0_only
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_3_0_only([this.element])
      : dbValue = 'LGPL-3.0-only',
        super('LGPL-3.0-only', element);

  /// LGPL_3_0_or_later
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPL_3_0_or_later([this.element])
      : dbValue = 'LGPL-3.0-or-later',
        super('LGPL-3.0-or-later', element);

  /// LGPLLR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LGPLLR([this.element])
      : dbValue = 'LGPLLR',
        super('LGPLLR', element);

  /// Libpng
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Libpng([this.element])
      : dbValue = 'Libpng',
        super('Libpng', element);

  /// libtiff
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.libtiff([this.element])
      : dbValue = 'libtiff',
        super('libtiff', element);

  /// LiLiQ_P_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LiLiQ_P_1_1([this.element])
      : dbValue = 'LiLiQ-P-1.1',
        super('LiLiQ-P-1.1', element);

  /// LiLiQ_R_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LiLiQ_R_1_1([this.element])
      : dbValue = 'LiLiQ-R-1.1',
        super('LiLiQ-R-1.1', element);

  /// LiLiQ_Rplus_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LiLiQ_Rplus_1_1([this.element])
      : dbValue = 'LiLiQ-Rplus-1.1',
        super('LiLiQ-Rplus-1.1', element);

  /// Linux_OpenIB
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Linux_OpenIB([this.element])
      : dbValue = 'Linux-OpenIB',
        super('Linux-OpenIB', element);

  /// LPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPL_1_0([this.element])
      : dbValue = 'LPL-1.0',
        super('LPL-1.0', element);

  /// LPL_1_02
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPL_1_02([this.element])
      : dbValue = 'LPL-1.02',
        super('LPL-1.02', element);

  /// LPPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPPL_1_0([this.element])
      : dbValue = 'LPPL-1.0',
        super('LPPL-1.0', element);

  /// LPPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPPL_1_1([this.element])
      : dbValue = 'LPPL-1.1',
        super('LPPL-1.1', element);

  /// LPPL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPPL_1_2([this.element])
      : dbValue = 'LPPL-1.2',
        super('LPPL-1.2', element);

  /// LPPL_1_3a
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPPL_1_3a([this.element])
      : dbValue = 'LPPL-1.3a',
        super('LPPL-1.3a', element);

  /// LPPL_1_3c
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.LPPL_1_3c([this.element])
      : dbValue = 'LPPL-1.3c',
        super('LPPL-1.3c', element);

  /// MakeIndex
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MakeIndex([this.element])
      : dbValue = 'MakeIndex',
        super('MakeIndex', element);

  /// MirOS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MirOS([this.element])
      : dbValue = 'MirOS',
        super('MirOS', element);

  /// MIT_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT_0([this.element])
      : dbValue = 'MIT-0',
        super('MIT-0', element);

  /// MIT_advertising
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT_advertising([this.element])
      : dbValue = 'MIT-advertising',
        super('MIT-advertising', element);

  /// MIT_CMU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT_CMU([this.element])
      : dbValue = 'MIT-CMU',
        super('MIT-CMU', element);

  /// MIT_enna
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT_enna([this.element])
      : dbValue = 'MIT-enna',
        super('MIT-enna', element);

  /// MIT_feh
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT_feh([this.element])
      : dbValue = 'MIT-feh',
        super('MIT-feh', element);

  /// MIT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MIT([this.element])
      : dbValue = 'MIT',
        super('MIT', element);

  /// MITNFA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MITNFA([this.element])
      : dbValue = 'MITNFA',
        super('MITNFA', element);

  /// Motosoto
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Motosoto([this.element])
      : dbValue = 'Motosoto',
        super('Motosoto', element);

  /// mpich2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.mpich2([this.element])
      : dbValue = 'mpich2',
        super('mpich2', element);

  /// MPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MPL_1_0([this.element])
      : dbValue = 'MPL-1.0',
        super('MPL-1.0', element);

  /// MPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MPL_1_1([this.element])
      : dbValue = 'MPL-1.1',
        super('MPL-1.1', element);

  /// MPL_2_0_no_copyleft_exception
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MPL_2_0_no_copyleft_exception([this.element])
      : dbValue = 'MPL-2.0-no-copyleft-exception',
        super('MPL-2.0-no-copyleft-exception', element);

  /// MPL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MPL_2_0([this.element])
      : dbValue = 'MPL-2.0',
        super('MPL-2.0', element);

  /// MS_PL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MS_PL([this.element])
      : dbValue = 'MS-PL',
        super('MS-PL', element);

  /// MS_RL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MS_RL([this.element])
      : dbValue = 'MS-RL',
        super('MS-RL', element);

  /// MTLL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.MTLL([this.element])
      : dbValue = 'MTLL',
        super('MTLL', element);

  /// Multics
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Multics([this.element])
      : dbValue = 'Multics',
        super('Multics', element);

  /// Mup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Mup([this.element])
      : dbValue = 'Mup',
        super('Mup', element);

  /// NASA_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NASA_1_3([this.element])
      : dbValue = 'NASA-1.3',
        super('NASA-1.3', element);

  /// Naumen
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Naumen([this.element])
      : dbValue = 'Naumen',
        super('Naumen', element);

  /// NBPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NBPL_1_0([this.element])
      : dbValue = 'NBPL-1.0',
        super('NBPL-1.0', element);

  /// NCSA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NCSA([this.element])
      : dbValue = 'NCSA',
        super('NCSA', element);

  /// Net_SNMP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Net_SNMP([this.element])
      : dbValue = 'Net-SNMP',
        super('Net-SNMP', element);

  /// NetCDF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NetCDF([this.element])
      : dbValue = 'NetCDF',
        super('NetCDF', element);

  /// Newsletr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Newsletr([this.element])
      : dbValue = 'Newsletr',
        super('Newsletr', element);

  /// NGPL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NGPL([this.element])
      : dbValue = 'NGPL',
        super('NGPL', element);

  /// NLOD_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NLOD_1_0([this.element])
      : dbValue = 'NLOD-1.0',
        super('NLOD-1.0', element);

  /// NLPL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NLPL([this.element])
      : dbValue = 'NLPL',
        super('NLPL', element);

  /// Nokia
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Nokia([this.element])
      : dbValue = 'Nokia',
        super('Nokia', element);

  /// NOSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NOSL([this.element])
      : dbValue = 'NOSL',
        super('NOSL', element);

  /// Noweb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Noweb([this.element])
      : dbValue = 'Noweb',
        super('Noweb', element);

  /// NPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NPL_1_0([this.element])
      : dbValue = 'NPL-1.0',
        super('NPL-1.0', element);

  /// NPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NPL_1_1([this.element])
      : dbValue = 'NPL-1.1',
        super('NPL-1.1', element);

  /// NPOSL_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NPOSL_3_0([this.element])
      : dbValue = 'NPOSL-3.0',
        super('NPOSL-3.0', element);

  /// NRL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NRL([this.element])
      : dbValue = 'NRL',
        super('NRL', element);

  /// NTP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.NTP([this.element])
      : dbValue = 'NTP',
        super('NTP', element);

  /// OCCT_PL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OCCT_PL([this.element])
      : dbValue = 'OCCT-PL',
        super('OCCT-PL', element);

  /// OCLC_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OCLC_2_0([this.element])
      : dbValue = 'OCLC-2.0',
        super('OCLC-2.0', element);

  /// ODbL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ODbL_1_0([this.element])
      : dbValue = 'ODbL-1.0',
        super('ODbL-1.0', element);

  /// OFL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OFL_1_0([this.element])
      : dbValue = 'OFL-1.0',
        super('OFL-1.0', element);

  /// OFL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OFL_1_1([this.element])
      : dbValue = 'OFL-1.1',
        super('OFL-1.1', element);

  /// OGTSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OGTSL([this.element])
      : dbValue = 'OGTSL',
        super('OGTSL', element);

  /// OLDAP_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_1_1([this.element])
      : dbValue = 'OLDAP-1.1',
        super('OLDAP-1.1', element);

  /// OLDAP_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_1_2([this.element])
      : dbValue = 'OLDAP-1.2',
        super('OLDAP-1.2', element);

  /// OLDAP_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_1_3([this.element])
      : dbValue = 'OLDAP-1.3',
        super('OLDAP-1.3', element);

  /// OLDAP_1_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_1_4([this.element])
      : dbValue = 'OLDAP-1.4',
        super('OLDAP-1.4', element);

  /// OLDAP_2_0_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_0_1([this.element])
      : dbValue = 'OLDAP-2.0.1',
        super('OLDAP-2.0.1', element);

  /// OLDAP_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_0([this.element])
      : dbValue = 'OLDAP-2.0',
        super('OLDAP-2.0', element);

  /// OLDAP_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_1([this.element])
      : dbValue = 'OLDAP-2.1',
        super('OLDAP-2.1', element);

  /// OLDAP_2_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_2_1([this.element])
      : dbValue = 'OLDAP-2.2.1',
        super('OLDAP-2.2.1', element);

  /// OLDAP_2_2_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_2_2([this.element])
      : dbValue = 'OLDAP-2.2.2',
        super('OLDAP-2.2.2', element);

  /// OLDAP_2_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_2([this.element])
      : dbValue = 'OLDAP-2.2',
        super('OLDAP-2.2', element);

  /// OLDAP_2_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_3([this.element])
      : dbValue = 'OLDAP-2.3',
        super('OLDAP-2.3', element);

  /// OLDAP_2_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_4([this.element])
      : dbValue = 'OLDAP-2.4',
        super('OLDAP-2.4', element);

  /// OLDAP_2_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_5([this.element])
      : dbValue = 'OLDAP-2.5',
        super('OLDAP-2.5', element);

  /// OLDAP_2_6
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_6([this.element])
      : dbValue = 'OLDAP-2.6',
        super('OLDAP-2.6', element);

  /// OLDAP_2_7
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_7([this.element])
      : dbValue = 'OLDAP-2.7',
        super('OLDAP-2.7', element);

  /// OLDAP_2_8
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OLDAP_2_8([this.element])
      : dbValue = 'OLDAP-2.8',
        super('OLDAP-2.8', element);

  /// OML
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OML([this.element])
      : dbValue = 'OML',
        super('OML', element);

  /// OpenSSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OpenSSL([this.element])
      : dbValue = 'OpenSSL',
        super('OpenSSL', element);

  /// OPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OPL_1_0([this.element])
      : dbValue = 'OPL-1.0',
        super('OPL-1.0', element);

  /// OSET_PL_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSET_PL_2_1([this.element])
      : dbValue = 'OSET-PL-2.1',
        super('OSET-PL-2.1', element);

  /// OSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSL_1_0([this.element])
      : dbValue = 'OSL-1.0',
        super('OSL-1.0', element);

  /// OSL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSL_1_1([this.element])
      : dbValue = 'OSL-1.1',
        super('OSL-1.1', element);

  /// OSL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSL_2_0([this.element])
      : dbValue = 'OSL-2.0',
        super('OSL-2.0', element);

  /// OSL_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSL_2_1([this.element])
      : dbValue = 'OSL-2.1',
        super('OSL-2.1', element);

  /// OSL_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.OSL_3_0([this.element])
      : dbValue = 'OSL-3.0',
        super('OSL-3.0', element);

  /// PDDL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.PDDL_1_0([this.element])
      : dbValue = 'PDDL-1.0',
        super('PDDL-1.0', element);

  /// PHP_3_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.PHP_3_0([this.element])
      : dbValue = 'PHP-3.0',
        super('PHP-3.0', element);

  /// PHP_3_01
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.PHP_3_01([this.element])
      : dbValue = 'PHP-3.01',
        super('PHP-3.01', element);

  /// Plexus
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Plexus([this.element])
      : dbValue = 'Plexus',
        super('Plexus', element);

  /// PostgreSQL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.PostgreSQL([this.element])
      : dbValue = 'PostgreSQL',
        super('PostgreSQL', element);

  /// psfrag
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.psfrag([this.element])
      : dbValue = 'psfrag',
        super('psfrag', element);

  /// psutils
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.psutils([this.element])
      : dbValue = 'psutils',
        super('psutils', element);

  /// Python_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Python_2_0([this.element])
      : dbValue = 'Python-2.0',
        super('Python-2.0', element);

  /// Qhull
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Qhull([this.element])
      : dbValue = 'Qhull',
        super('Qhull', element);

  /// QPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.QPL_1_0([this.element])
      : dbValue = 'QPL-1.0',
        super('QPL-1.0', element);

  /// Rdisc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Rdisc([this.element])
      : dbValue = 'Rdisc',
        super('Rdisc', element);

  /// RHeCos_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RHeCos_1_1([this.element])
      : dbValue = 'RHeCos-1.1',
        super('RHeCos-1.1', element);

  /// RPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RPL_1_1([this.element])
      : dbValue = 'RPL-1.1',
        super('RPL-1.1', element);

  /// RPL_1_5
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RPL_1_5([this.element])
      : dbValue = 'RPL-1.5',
        super('RPL-1.5', element);

  /// RPSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RPSL_1_0([this.element])
      : dbValue = 'RPSL-1.0',
        super('RPSL-1.0', element);

  /// RSA_MD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RSA_MD([this.element])
      : dbValue = 'RSA-MD',
        super('RSA-MD', element);

  /// RSCPL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.RSCPL([this.element])
      : dbValue = 'RSCPL',
        super('RSCPL', element);

  /// Ruby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Ruby([this.element])
      : dbValue = 'Ruby',
        super('Ruby', element);

  /// SAX_PD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SAX_PD([this.element])
      : dbValue = 'SAX-PD',
        super('SAX-PD', element);

  /// Saxpath
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Saxpath([this.element])
      : dbValue = 'Saxpath',
        super('Saxpath', element);

  /// SCEA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SCEA([this.element])
      : dbValue = 'SCEA',
        super('SCEA', element);

  /// Sendmail
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Sendmail([this.element])
      : dbValue = 'Sendmail',
        super('Sendmail', element);

  /// SGI_B_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SGI_B_1_0([this.element])
      : dbValue = 'SGI-B-1.0',
        super('SGI-B-1.0', element);

  /// SGI_B_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SGI_B_1_1([this.element])
      : dbValue = 'SGI-B-1.1',
        super('SGI-B-1.1', element);

  /// SGI_B_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SGI_B_2_0([this.element])
      : dbValue = 'SGI-B-2.0',
        super('SGI-B-2.0', element);

  /// SimPL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SimPL_2_0([this.element])
      : dbValue = 'SimPL-2.0',
        super('SimPL-2.0', element);

  /// SISSL_1_2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SISSL_1_2([this.element])
      : dbValue = 'SISSL-1.2',
        super('SISSL-1.2', element);

  /// SISSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SISSL([this.element])
      : dbValue = 'SISSL',
        super('SISSL', element);

  /// Sleepycat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Sleepycat([this.element])
      : dbValue = 'Sleepycat',
        super('Sleepycat', element);

  /// SMLNJ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SMLNJ([this.element])
      : dbValue = 'SMLNJ',
        super('SMLNJ', element);

  /// SMPPL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SMPPL([this.element])
      : dbValue = 'SMPPL',
        super('SMPPL', element);

  /// SNIA
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SNIA([this.element])
      : dbValue = 'SNIA',
        super('SNIA', element);

  /// Spencer_86
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Spencer_86([this.element])
      : dbValue = 'Spencer-86',
        super('Spencer-86', element);

  /// Spencer_94
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Spencer_94([this.element])
      : dbValue = 'Spencer-94',
        super('Spencer-94', element);

  /// Spencer_99
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Spencer_99([this.element])
      : dbValue = 'Spencer-99',
        super('Spencer-99', element);

  /// SPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SPL_1_0([this.element])
      : dbValue = 'SPL-1.0',
        super('SPL-1.0', element);

  /// SugarCRM_1_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SugarCRM_1_1_3([this.element])
      : dbValue = 'SugarCRM-1.1.3',
        super('SugarCRM-1.1.3', element);

  /// SWL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.SWL([this.element])
      : dbValue = 'SWL',
        super('SWL', element);

  /// TCL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.TCL([this.element])
      : dbValue = 'TCL',
        super('TCL', element);

  /// TCP_wrappers
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.TCP_wrappers([this.element])
      : dbValue = 'TCP-wrappers',
        super('TCP-wrappers', element);

  /// TMate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.TMate([this.element])
      : dbValue = 'TMate',
        super('TMate', element);

  /// TORQUE_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.TORQUE_1_1([this.element])
      : dbValue = 'TORQUE-1.1',
        super('TORQUE-1.1', element);

  /// TOSL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.TOSL([this.element])
      : dbValue = 'TOSL',
        super('TOSL', element);

  /// Unicode_DFS_2015
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Unicode_DFS_2015([this.element])
      : dbValue = 'Unicode-DFS-2015',
        super('Unicode-DFS-2015', element);

  /// Unicode_DFS_2016
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Unicode_DFS_2016([this.element])
      : dbValue = 'Unicode-DFS-2016',
        super('Unicode-DFS-2016', element);

  /// Unicode_TOU
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Unicode_TOU([this.element])
      : dbValue = 'Unicode-TOU',
        super('Unicode-TOU', element);

  /// Unlicense
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Unlicense([this.element])
      : dbValue = 'Unlicense',
        super('Unlicense', element);

  /// UPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.UPL_1_0([this.element])
      : dbValue = 'UPL-1.0',
        super('UPL-1.0', element);

  /// Vim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Vim([this.element])
      : dbValue = 'Vim',
        super('Vim', element);

  /// VOSTROM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.VOSTROM([this.element])
      : dbValue = 'VOSTROM',
        super('VOSTROM', element);

  /// VSL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.VSL_1_0([this.element])
      : dbValue = 'VSL-1.0',
        super('VSL-1.0', element);

  /// W3C_19980720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.W3C_19980720([this.element])
      : dbValue = 'W3C-19980720',
        super('W3C-19980720', element);

  /// W3C_20150513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.W3C_20150513([this.element])
      : dbValue = 'W3C-20150513',
        super('W3C-20150513', element);

  /// W3C
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.W3C([this.element])
      : dbValue = 'W3C',
        super('W3C', element);

  /// Watcom_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Watcom_1_0([this.element])
      : dbValue = 'Watcom-1.0',
        super('Watcom-1.0', element);

  /// Wsuipa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Wsuipa([this.element])
      : dbValue = 'Wsuipa',
        super('Wsuipa', element);

  /// WTFPL
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.WTFPL([this.element])
      : dbValue = 'WTFPL',
        super('WTFPL', element);

  /// X11
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.X11([this.element])
      : dbValue = 'X11',
        super('X11', element);

  /// Xerox
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Xerox([this.element])
      : dbValue = 'Xerox',
        super('Xerox', element);

  /// XFree86_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.XFree86_1_1([this.element])
      : dbValue = 'XFree86-1.1',
        super('XFree86-1.1', element);

  /// xinetd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.xinetd([this.element])
      : dbValue = 'xinetd',
        super('xinetd', element);

  /// Xnet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Xnet([this.element])
      : dbValue = 'Xnet',
        super('Xnet', element);

  /// xpp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.xpp([this.element])
      : dbValue = 'xpp',
        super('xpp', element);

  /// XSkat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.XSkat([this.element])
      : dbValue = 'XSkat',
        super('XSkat', element);

  /// YPL_1_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.YPL_1_0([this.element])
      : dbValue = 'YPL-1.0',
        super('YPL-1.0', element);

  /// YPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.YPL_1_1([this.element])
      : dbValue = 'YPL-1.1',
        super('YPL-1.1', element);

  /// Zed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Zed([this.element])
      : dbValue = 'Zed',
        super('Zed', element);

  /// Zend_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Zend_2_0([this.element])
      : dbValue = 'Zend-2.0',
        super('Zend-2.0', element);

  /// Zimbra_1_3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Zimbra_1_3([this.element])
      : dbValue = 'Zimbra-1.3',
        super('Zimbra-1.3', element);

  /// Zimbra_1_4
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Zimbra_1_4([this.element])
      : dbValue = 'Zimbra-1.4',
        super('Zimbra-1.4', element);

  /// zlib_acknowledgement
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.zlib_acknowledgement([this.element])
      : dbValue = 'zlib-acknowledgement',
        super('zlib-acknowledgement', element);

  /// Zlib
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.Zlib([this.element])
      : dbValue = 'Zlib',
        super('Zlib', element);

  /// ZPL_1_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ZPL_1_1([this.element])
      : dbValue = 'ZPL-1.1',
        super('ZPL-1.1', element);

  /// ZPL_2_0
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ZPL_2_0([this.element])
      : dbValue = 'ZPL-2.0',
        super('ZPL-2.0', element);

  /// ZPL_2_1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SPDXLicense.ZPL_2_1([this.element])
      : dbValue = 'ZPL-2.1',
        super('ZPL-2.1', element);

  /// For instances where an Element is present but not value

  SPDXLicense.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SPDXLicense._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'not-open-source',
    '0BSD',
    'AAL',
    'Abstyles',
    'Adobe-2006',
    'Adobe-Glyph',
    'ADSL',
    'AFL-1.1',
    'AFL-1.2',
    'AFL-2.0',
    'AFL-2.1',
    'AFL-3.0',
    'Afmparse',
    'AGPL-1.0-only',
    'AGPL-1.0-or-later',
    'AGPL-3.0-only',
    'AGPL-3.0-or-later',
    'Aladdin',
    'AMDPLPA',
    'AML',
    'AMPAS',
    'ANTLR-PD',
    'Apache-1.0',
    'Apache-1.1',
    'Apache-2.0',
    'APAFML',
    'APL-1.0',
    'APSL-1.0',
    'APSL-1.1',
    'APSL-1.2',
    'APSL-2.0',
    'Artistic-1.0-cl8',
    'Artistic-1.0-Perl',
    'Artistic-1.0',
    'Artistic-2.0',
    'Bahyph',
    'Barr',
    'Beerware',
    'BitTorrent-1.0',
    'BitTorrent-1.1',
    'Borceux',
    'BSD-1-Clause',
    'BSD-2-Clause-FreeBSD',
    'BSD-2-Clause-NetBSD',
    'BSD-2-Clause-Patent',
    'BSD-2-Clause',
    'BSD-3-Clause-Attribution',
    'BSD-3-Clause-Clear',
    'BSD-3-Clause-LBNL',
    'BSD-3-Clause-No-Nuclear-License-2014',
    'BSD-3-Clause-No-Nuclear-License',
    'BSD-3-Clause-No-Nuclear-Warranty',
    'BSD-3-Clause',
    'BSD-4-Clause-UC',
    'BSD-4-Clause',
    'BSD-Protection',
    'BSD-Source-Code',
    'BSL-1.0',
    'bzip2-1.0.5',
    'bzip2-1.0.6',
    'Caldera',
    'CATOSL-1.1',
    'CC-BY-1.0',
    'CC-BY-2.0',
    'CC-BY-2.5',
    'CC-BY-3.0',
    'CC-BY-4.0',
    'CC-BY-NC-1.0',
    'CC-BY-NC-2.0',
    'CC-BY-NC-2.5',
    'CC-BY-NC-3.0',
    'CC-BY-NC-4.0',
    'CC-BY-NC-ND-1.0',
    'CC-BY-NC-ND-2.0',
    'CC-BY-NC-ND-2.5',
    'CC-BY-NC-ND-3.0',
    'CC-BY-NC-ND-4.0',
    'CC-BY-NC-SA-1.0',
    'CC-BY-NC-SA-2.0',
    'CC-BY-NC-SA-2.5',
    'CC-BY-NC-SA-3.0',
    'CC-BY-NC-SA-4.0',
    'CC-BY-ND-1.0',
    'CC-BY-ND-2.0',
    'CC-BY-ND-2.5',
    'CC-BY-ND-3.0',
    'CC-BY-ND-4.0',
    'CC-BY-SA-1.0',
    'CC-BY-SA-2.0',
    'CC-BY-SA-2.5',
    'CC-BY-SA-3.0',
    'CC-BY-SA-4.0',
    'CC0-1.0',
    'CDDL-1.0',
    'CDDL-1.1',
    'CDLA-Permissive-1.0',
    'CDLA-Sharing-1.0',
    'CECILL-1.0',
    'CECILL-1.1',
    'CECILL-2.0',
    'CECILL-2.1',
    'CECILL-B',
    'CECILL-C',
    'ClArtistic',
    'CNRI-Jython',
    'CNRI-Python-GPL-Compatible',
    'CNRI-Python',
    'Condor-1.1',
    'CPAL-1.0',
    'CPL-1.0',
    'CPOL-1.02',
    'Crossword',
    'CrystalStacker',
    'CUA-OPL-1.0',
    'Cube',
    'curl',
    'D-FSL-1.0',
    'diffmark',
    'DOC',
    'Dotseqn',
    'DSDP',
    'dvipdfm',
    'ECL-1.0',
    'ECL-2.0',
    'EFL-1.0',
    'EFL-2.0',
    'eGenix',
    'Entessa',
    'EPL-1.0',
    'EPL-2.0',
    'ErlPL-1.1',
    'EUDatagrid',
    'EUPL-1.0',
    'EUPL-1.1',
    'EUPL-1.2',
    'Eurosym',
    'Fair',
    'Frameworx-1.0',
    'FreeImage',
    'FSFAP',
    'FSFUL',
    'FSFULLR',
    'FTL',
    'GFDL-1.1-only',
    'GFDL-1.1-or-later',
    'GFDL-1.2-only',
    'GFDL-1.2-or-later',
    'GFDL-1.3-only',
    'GFDL-1.3-or-later',
    'Giftware',
    'GL2PS',
    'Glide',
    'Glulxe',
    'gnuplot',
    'GPL-1.0-only',
    'GPL-1.0-or-later',
    'GPL-2.0-only',
    'GPL-2.0-or-later',
    'GPL-3.0-only',
    'GPL-3.0-or-later',
    'gSOAP-1.3b',
    'HaskellReport',
    'HPND',
    'IBM-pibs',
    'ICU',
    'IJG',
    'ImageMagick',
    'iMatix',
    'Imlib2',
    'Info-ZIP',
    'Intel-ACPI',
    'Intel',
    'Interbase-1.0',
    'IPA',
    'IPL-1.0',
    'ISC',
    'JasPer-2.0',
    'JSON',
    'LAL-1.2',
    'LAL-1.3',
    'Latex2e',
    'Leptonica',
    'LGPL-2.0-only',
    'LGPL-2.0-or-later',
    'LGPL-2.1-only',
    'LGPL-2.1-or-later',
    'LGPL-3.0-only',
    'LGPL-3.0-or-later',
    'LGPLLR',
    'Libpng',
    'libtiff',
    'LiLiQ-P-1.1',
    'LiLiQ-R-1.1',
    'LiLiQ-Rplus-1.1',
    'Linux-OpenIB',
    'LPL-1.0',
    'LPL-1.02',
    'LPPL-1.0',
    'LPPL-1.1',
    'LPPL-1.2',
    'LPPL-1.3a',
    'LPPL-1.3c',
    'MakeIndex',
    'MirOS',
    'MIT-0',
    'MIT-advertising',
    'MIT-CMU',
    'MIT-enna',
    'MIT-feh',
    'MIT',
    'MITNFA',
    'Motosoto',
    'mpich2',
    'MPL-1.0',
    'MPL-1.1',
    'MPL-2.0-no-copyleft-exception',
    'MPL-2.0',
    'MS-PL',
    'MS-RL',
    'MTLL',
    'Multics',
    'Mup',
    'NASA-1.3',
    'Naumen',
    'NBPL-1.0',
    'NCSA',
    'Net-SNMP',
    'NetCDF',
    'Newsletr',
    'NGPL',
    'NLOD-1.0',
    'NLPL',
    'Nokia',
    'NOSL',
    'Noweb',
    'NPL-1.0',
    'NPL-1.1',
    'NPOSL-3.0',
    'NRL',
    'NTP',
    'OCCT-PL',
    'OCLC-2.0',
    'ODbL-1.0',
    'OFL-1.0',
    'OFL-1.1',
    'OGTSL',
    'OLDAP-1.1',
    'OLDAP-1.2',
    'OLDAP-1.3',
    'OLDAP-1.4',
    'OLDAP-2.0.1',
    'OLDAP-2.0',
    'OLDAP-2.1',
    'OLDAP-2.2.1',
    'OLDAP-2.2.2',
    'OLDAP-2.2',
    'OLDAP-2.3',
    'OLDAP-2.4',
    'OLDAP-2.5',
    'OLDAP-2.6',
    'OLDAP-2.7',
    'OLDAP-2.8',
    'OML',
    'OpenSSL',
    'OPL-1.0',
    'OSET-PL-2.1',
    'OSL-1.0',
    'OSL-1.1',
    'OSL-2.0',
    'OSL-2.1',
    'OSL-3.0',
    'PDDL-1.0',
    'PHP-3.0',
    'PHP-3.01',
    'Plexus',
    'PostgreSQL',
    'psfrag',
    'psutils',
    'Python-2.0',
    'Qhull',
    'QPL-1.0',
    'Rdisc',
    'RHeCos-1.1',
    'RPL-1.1',
    'RPL-1.5',
    'RPSL-1.0',
    'RSA-MD',
    'RSCPL',
    'Ruby',
    'SAX-PD',
    'Saxpath',
    'SCEA',
    'Sendmail',
    'SGI-B-1.0',
    'SGI-B-1.1',
    'SGI-B-2.0',
    'SimPL-2.0',
    'SISSL-1.2',
    'SISSL',
    'Sleepycat',
    'SMLNJ',
    'SMPPL',
    'SNIA',
    'Spencer-86',
    'Spencer-94',
    'Spencer-99',
    'SPL-1.0',
    'SugarCRM-1.1.3',
    'SWL',
    'TCL',
    'TCP-wrappers',
    'TMate',
    'TORQUE-1.1',
    'TOSL',
    'Unicode-DFS-2015',
    'Unicode-DFS-2016',
    'Unicode-TOU',
    'Unlicense',
    'UPL-1.0',
    'Vim',
    'VOSTROM',
    'VSL-1.0',
    'W3C-19980720',
    'W3C-20150513',
    'W3C',
    'Watcom-1.0',
    'Wsuipa',
    'WTFPL',
    'X11',
    'Xerox',
    'XFree86-1.1',
    'xinetd',
    'Xnet',
    'xpp',
    'XSkat',
    'YPL-1.0',
    'YPL-1.1',
    'Zed',
    'Zend-2.0',
    'Zimbra-1.3',
    'Zimbra-1.4',
    'zlib-acknowledgement',
    'Zlib',
    'ZPL-1.1',
    'ZPL-2.0',
    'ZPL-2.1',
  ];

  /// Returns the enum value with an element attached
  SPDXLicense withElement(Element? newElement) {
    return SPDXLicense._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SPDXLicense.$value';
}
