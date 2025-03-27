// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The license that applies to an Implementation Guide (using an SPDX
/// license Identifiers, or 'not-open-source'). The binding is required but
/// new SPDX license Identifiers are allowed to be used
/// (https://spdx.org/licenses/).
class SPDXLicense extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SPDXLicense._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory SPDXLicense(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return SPDXLicense._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [SPDXLicense] with element only
  factory SPDXLicense.empty() => SPDXLicense._(validatedValue: '');

  /// Factory constructor to create [SPDXLicense] from JSON.
  factory SPDXLicense.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// not_open_source
  static final SPDXLicense not_open_source = SPDXLicense._(
    validatedValue: 'not-open-source',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not open source'.toFhirString,
  );

  /// value0BSD
  static final SPDXLicense value0BSD = SPDXLicense._(
    validatedValue: '0BSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD Zero Clause License'.toFhirString,
  );

  /// AAL
  static final SPDXLicense AAL = SPDXLicense._(
    validatedValue: 'AAL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Attribution Assurance License'.toFhirString,
  );

  /// Abstyles
  static final SPDXLicense Abstyles = SPDXLicense._(
    validatedValue: 'Abstyles',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Abstyles License'.toFhirString,
  );

  /// Adobe_2006
  static final SPDXLicense Adobe_2006 = SPDXLicense._(
    validatedValue: 'Adobe-2006',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Adobe Systems Incorporated Source Code License Agreement'.toFhirString,
  );

  /// Adobe_Glyph
  static final SPDXLicense Adobe_Glyph = SPDXLicense._(
    validatedValue: 'Adobe-Glyph',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Adobe Glyph List License'.toFhirString,
  );

  /// ADSL
  static final SPDXLicense ADSL = SPDXLicense._(
    validatedValue: 'ADSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amazon Digital Services License'.toFhirString,
  );

  /// AFL_1_1
  static final SPDXLicense AFL_1_1 = SPDXLicense._(
    validatedValue: 'AFL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academic Free License v1.1'.toFhirString,
  );

  /// AFL_1_2
  static final SPDXLicense AFL_1_2 = SPDXLicense._(
    validatedValue: 'AFL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academic Free License v1.2'.toFhirString,
  );

  /// AFL_2_0
  static final SPDXLicense AFL_2_0 = SPDXLicense._(
    validatedValue: 'AFL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academic Free License v2.0'.toFhirString,
  );

  /// AFL_2_1
  static final SPDXLicense AFL_2_1 = SPDXLicense._(
    validatedValue: 'AFL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academic Free License v2.1'.toFhirString,
  );

  /// AFL_3_0
  static final SPDXLicense AFL_3_0 = SPDXLicense._(
    validatedValue: 'AFL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academic Free License v3.0'.toFhirString,
  );

  /// Afmparse
  static final SPDXLicense Afmparse = SPDXLicense._(
    validatedValue: 'Afmparse',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Afmparse License'.toFhirString,
  );

  /// AGPL_1_0_only
  static final SPDXLicense AGPL_1_0_only = SPDXLicense._(
    validatedValue: 'AGPL-1.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Affero General Public License v1.0 only'.toFhirString,
  );

  /// AGPL_1_0_or_later
  static final SPDXLicense AGPL_1_0_or_later = SPDXLicense._(
    validatedValue: 'AGPL-1.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Affero General Public License v1.0 or later'.toFhirString,
  );

  /// AGPL_3_0_only
  static final SPDXLicense AGPL_3_0_only = SPDXLicense._(
    validatedValue: 'AGPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Affero General Public License v3.0 only'.toFhirString,
  );

  /// AGPL_3_0_or_later
  static final SPDXLicense AGPL_3_0_or_later = SPDXLicense._(
    validatedValue: 'AGPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Affero General Public License v3.0 or later'.toFhirString,
  );

  /// Aladdin
  static final SPDXLicense Aladdin = SPDXLicense._(
    validatedValue: 'Aladdin',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Aladdin Free Public License'.toFhirString,
  );

  /// AMDPLPA
  static final SPDXLicense AMDPLPA = SPDXLicense._(
    validatedValue: 'AMDPLPA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: "AMD's plpa_map.c License".toFhirString,
  );

  /// AML
  static final SPDXLicense AML = SPDXLicense._(
    validatedValue: 'AML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apple MIT License'.toFhirString,
  );

  /// AMPAS
  static final SPDXLicense AMPAS = SPDXLicense._(
    validatedValue: 'AMPAS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Academy of Motion Picture Arts and Sciences BSD'.toFhirString,
  );

  /// ANTLR_PD
  static final SPDXLicense ANTLR_PD = SPDXLicense._(
    validatedValue: 'ANTLR-PD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ANTLR Software Rights Notice'.toFhirString,
  );

  /// Apache_1_0
  static final SPDXLicense Apache_1_0 = SPDXLicense._(
    validatedValue: 'Apache-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apache License 1.0'.toFhirString,
  );

  /// Apache_1_1
  static final SPDXLicense Apache_1_1 = SPDXLicense._(
    validatedValue: 'Apache-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apache License 1.1'.toFhirString,
  );

  /// Apache_2_0
  static final SPDXLicense Apache_2_0 = SPDXLicense._(
    validatedValue: 'Apache-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apache License 2.0'.toFhirString,
  );

  /// APAFML
  static final SPDXLicense APAFML = SPDXLicense._(
    validatedValue: 'APAFML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Adobe Postscript AFM License'.toFhirString,
  );

  /// APL_1_0
  static final SPDXLicense APL_1_0 = SPDXLicense._(
    validatedValue: 'APL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Adaptive Public License 1.0'.toFhirString,
  );

  /// APSL_1_0
  static final SPDXLicense APSL_1_0 = SPDXLicense._(
    validatedValue: 'APSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apple Public Source License 1.0'.toFhirString,
  );

  /// APSL_1_1
  static final SPDXLicense APSL_1_1 = SPDXLicense._(
    validatedValue: 'APSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apple Public Source License 1.1'.toFhirString,
  );

  /// APSL_1_2
  static final SPDXLicense APSL_1_2 = SPDXLicense._(
    validatedValue: 'APSL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apple Public Source License 1.2'.toFhirString,
  );

  /// APSL_2_0
  static final SPDXLicense APSL_2_0 = SPDXLicense._(
    validatedValue: 'APSL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Apple Public Source License 2.0'.toFhirString,
  );

  /// Artistic_1_0_cl8
  static final SPDXLicense Artistic_1_0_cl8 = SPDXLicense._(
    validatedValue: 'Artistic-1.0-cl8',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Artistic License 1.0 w/clause 8'.toFhirString,
  );

  /// Artistic_1_0_Perl
  static final SPDXLicense Artistic_1_0_Perl = SPDXLicense._(
    validatedValue: 'Artistic-1.0-Perl',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Artistic License 1.0 (Perl)'.toFhirString,
  );

  /// Artistic_1_0
  static final SPDXLicense Artistic_1_0 = SPDXLicense._(
    validatedValue: 'Artistic-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Artistic License 1.0'.toFhirString,
  );

  /// Artistic_2_0
  static final SPDXLicense Artistic_2_0 = SPDXLicense._(
    validatedValue: 'Artistic-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Artistic License 2.0'.toFhirString,
  );

  /// Bahyph
  static final SPDXLicense Bahyph = SPDXLicense._(
    validatedValue: 'Bahyph',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Bahyph License'.toFhirString,
  );

  /// Barr
  static final SPDXLicense Barr = SPDXLicense._(
    validatedValue: 'Barr',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Barr License'.toFhirString,
  );

  /// Beerware
  static final SPDXLicense Beerware = SPDXLicense._(
    validatedValue: 'Beerware',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Beerware License'.toFhirString,
  );

  /// BitTorrent_1_0
  static final SPDXLicense BitTorrent_1_0 = SPDXLicense._(
    validatedValue: 'BitTorrent-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BitTorrent Open Source License v1.0'.toFhirString,
  );

  /// BitTorrent_1_1
  static final SPDXLicense BitTorrent_1_1 = SPDXLicense._(
    validatedValue: 'BitTorrent-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BitTorrent Open Source License v1.1'.toFhirString,
  );

  /// Borceux
  static final SPDXLicense Borceux = SPDXLicense._(
    validatedValue: 'Borceux',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Borceux license'.toFhirString,
  );

  /// BSD_1_Clause
  static final SPDXLicense BSD_1_Clause = SPDXLicense._(
    validatedValue: 'BSD-1-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 1-Clause License'.toFhirString,
  );

  /// BSD_2_Clause_FreeBSD
  static final SPDXLicense BSD_2_Clause_FreeBSD = SPDXLicense._(
    validatedValue: 'BSD-2-Clause-FreeBSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 2-Clause FreeBSD License'.toFhirString,
  );

  /// BSD_2_Clause_NetBSD
  static final SPDXLicense BSD_2_Clause_NetBSD = SPDXLicense._(
    validatedValue: 'BSD-2-Clause-NetBSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 2-Clause NetBSD License'.toFhirString,
  );

  /// BSD_2_Clause_Patent
  static final SPDXLicense BSD_2_Clause_Patent = SPDXLicense._(
    validatedValue: 'BSD-2-Clause-Patent',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD-2-Clause Plus Patent License'.toFhirString,
  );

  /// BSD_2_Clause
  static final SPDXLicense BSD_2_Clause = SPDXLicense._(
    validatedValue: 'BSD-2-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 2-Clause "Simplified" License'.toFhirString,
  );

  /// BSD_3_Clause_Attribution
  static final SPDXLicense BSD_3_Clause_Attribution = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-Attribution',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD with attribution'.toFhirString,
  );

  /// BSD_3_Clause_Clear
  static final SPDXLicense BSD_3_Clause_Clear = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-Clear',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 3-Clause Clear License'.toFhirString,
  );

  /// BSD_3_Clause_LBNL
  static final SPDXLicense BSD_3_Clause_LBNL = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-LBNL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Lawrence Berkeley National Labs BSD variant license'.toFhirString,
  );

  /// BSD_3_Clause_No_Nuclear_License_2014
  static final SPDXLicense BSD_3_Clause_No_Nuclear_License_2014 = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-License-2014',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 3-Clause No Nuclear License 2014'.toFhirString,
  );

  /// BSD_3_Clause_No_Nuclear_License
  static final SPDXLicense BSD_3_Clause_No_Nuclear_License = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-License',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 3-Clause No Nuclear License'.toFhirString,
  );

  /// BSD_3_Clause_No_Nuclear_Warranty
  static final SPDXLicense BSD_3_Clause_No_Nuclear_Warranty = SPDXLicense._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-Warranty',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 3-Clause No Nuclear Warranty'.toFhirString,
  );

  /// BSD_3_Clause
  static final SPDXLicense BSD_3_Clause = SPDXLicense._(
    validatedValue: 'BSD-3-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 3-Clause "New" or "Revised" License'.toFhirString,
  );

  /// BSD_4_Clause_UC
  static final SPDXLicense BSD_4_Clause_UC = SPDXLicense._(
    validatedValue: 'BSD-4-Clause-UC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD-4-Clause (University of California-Specific)'.toFhirString,
  );

  /// BSD_4_Clause
  static final SPDXLicense BSD_4_Clause = SPDXLicense._(
    validatedValue: 'BSD-4-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD 4-Clause "Original" or "Old" License'.toFhirString,
  );

  /// BSD_Protection
  static final SPDXLicense BSD_Protection = SPDXLicense._(
    validatedValue: 'BSD-Protection',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD Protection License'.toFhirString,
  );

  /// BSD_Source_Code
  static final SPDXLicense BSD_Source_Code = SPDXLicense._(
    validatedValue: 'BSD-Source-Code',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BSD Source Code Attribution'.toFhirString,
  );

  /// BSL_1_0
  static final SPDXLicense BSL_1_0 = SPDXLicense._(
    validatedValue: 'BSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Boost Software License 1.0'.toFhirString,
  );

  /// bzip2_1_0_5
  static final SPDXLicense bzip2_1_0_5 = SPDXLicense._(
    validatedValue: 'bzip2-1.0.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'bzip2 and libbzip2 License v1.0.5'.toFhirString,
  );

  /// bzip2_1_0_6
  static final SPDXLicense bzip2_1_0_6 = SPDXLicense._(
    validatedValue: 'bzip2-1.0.6',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'bzip2 and libbzip2 License v1.0.6'.toFhirString,
  );

  /// Caldera
  static final SPDXLicense Caldera = SPDXLicense._(
    validatedValue: 'Caldera',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Caldera License'.toFhirString,
  );

  /// CATOSL_1_1
  static final SPDXLicense CATOSL_1_1 = SPDXLicense._(
    validatedValue: 'CATOSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Computer Associates Trusted Open Source License 1.1'.toFhirString,
  );

  /// CC_BY_1_0
  static final SPDXLicense CC_BY_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution 1.0 Generic'.toFhirString,
  );

  /// CC_BY_2_0
  static final SPDXLicense CC_BY_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution 2.0 Generic'.toFhirString,
  );

  /// CC_BY_2_5
  static final SPDXLicense CC_BY_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution 2.5 Generic'.toFhirString,
  );

  /// CC_BY_3_0
  static final SPDXLicense CC_BY_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution 3.0 Unported'.toFhirString,
  );

  /// CC_BY_4_0
  static final SPDXLicense CC_BY_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution 4.0 International'.toFhirString,
  );

  /// CC_BY_NC_1_0
  static final SPDXLicense CC_BY_NC_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial 1.0 Generic'.toFhirString,
  );

  /// CC_BY_NC_2_0
  static final SPDXLicense CC_BY_NC_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial 2.0 Generic'.toFhirString,
  );

  /// CC_BY_NC_2_5
  static final SPDXLicense CC_BY_NC_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial 2.5 Generic'.toFhirString,
  );

  /// CC_BY_NC_3_0
  static final SPDXLicense CC_BY_NC_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial 3.0 Unported'.toFhirString,
  );

  /// CC_BY_NC_4_0
  static final SPDXLicense CC_BY_NC_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution Non Commercial 4.0 International'
        .toFhirString,
  );

  /// CC_BY_NC_ND_1_0
  static final SPDXLicense CC_BY_NC_ND_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-ND-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_ND_2_0
  static final SPDXLicense CC_BY_NC_ND_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-ND-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_ND_2_5
  static final SPDXLicense CC_BY_NC_ND_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-ND-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_ND_3_0
  static final SPDXLicense CC_BY_NC_ND_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-ND-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported'
            .toFhirString,
  );

  /// CC_BY_NC_ND_4_0
  static final SPDXLicense CC_BY_NC_ND_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-ND-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 4.0 International'
            .toFhirString,
  );

  /// CC_BY_NC_SA_1_0
  static final SPDXLicense CC_BY_NC_SA_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-SA-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 1.0 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_SA_2_0
  static final SPDXLicense CC_BY_NC_SA_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-SA-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 2.0 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_SA_2_5
  static final SPDXLicense CC_BY_NC_SA_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-SA-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 2.5 Generic'
            .toFhirString,
  );

  /// CC_BY_NC_SA_3_0
  static final SPDXLicense CC_BY_NC_SA_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-SA-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 3.0 Unported'
            .toFhirString,
  );

  /// CC_BY_NC_SA_4_0
  static final SPDXLicense CC_BY_NC_SA_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-NC-SA-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 4.0 International'
            .toFhirString,
  );

  /// CC_BY_ND_1_0
  static final SPDXLicense CC_BY_ND_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-ND-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution No Derivatives 1.0 Generic'.toFhirString,
  );

  /// CC_BY_ND_2_0
  static final SPDXLicense CC_BY_ND_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-ND-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution No Derivatives 2.0 Generic'.toFhirString,
  );

  /// CC_BY_ND_2_5
  static final SPDXLicense CC_BY_ND_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-ND-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution No Derivatives 2.5 Generic'.toFhirString,
  );

  /// CC_BY_ND_3_0
  static final SPDXLicense CC_BY_ND_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-ND-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution No Derivatives 3.0 Unported'.toFhirString,
  );

  /// CC_BY_ND_4_0
  static final SPDXLicense CC_BY_ND_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-ND-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution No Derivatives 4.0 International'
        .toFhirString,
  );

  /// CC_BY_SA_1_0
  static final SPDXLicense CC_BY_SA_1_0 = SPDXLicense._(
    validatedValue: 'CC-BY-SA-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Share Alike 1.0 Generic'.toFhirString,
  );

  /// CC_BY_SA_2_0
  static final SPDXLicense CC_BY_SA_2_0 = SPDXLicense._(
    validatedValue: 'CC-BY-SA-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Share Alike 2.0 Generic'.toFhirString,
  );

  /// CC_BY_SA_2_5
  static final SPDXLicense CC_BY_SA_2_5 = SPDXLicense._(
    validatedValue: 'CC-BY-SA-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Share Alike 2.5 Generic'.toFhirString,
  );

  /// CC_BY_SA_3_0
  static final SPDXLicense CC_BY_SA_3_0 = SPDXLicense._(
    validatedValue: 'CC-BY-SA-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Creative Commons Attribution Share Alike 3.0 Unported'.toFhirString,
  );

  /// CC_BY_SA_4_0
  static final SPDXLicense CC_BY_SA_4_0 = SPDXLicense._(
    validatedValue: 'CC-BY-SA-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Attribution Share Alike 4.0 International'
        .toFhirString,
  );

  /// CC0_1_0
  static final SPDXLicense CC0_1_0 = SPDXLicense._(
    validatedValue: 'CC0-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Creative Commons Zero v1.0 Universal'.toFhirString,
  );

  /// CDDL_1_0
  static final SPDXLicense CDDL_1_0 = SPDXLicense._(
    validatedValue: 'CDDL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Common Development and Distribution License 1.0'.toFhirString,
  );

  /// CDDL_1_1
  static final SPDXLicense CDDL_1_1 = SPDXLicense._(
    validatedValue: 'CDDL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Common Development and Distribution License 1.1'.toFhirString,
  );

  /// CDLA_Permissive_1_0
  static final SPDXLicense CDLA_Permissive_1_0 = SPDXLicense._(
    validatedValue: 'CDLA-Permissive-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Community Data License Agreement Permissive 1.0'.toFhirString,
  );

  /// CDLA_Sharing_1_0
  static final SPDXLicense CDLA_Sharing_1_0 = SPDXLicense._(
    validatedValue: 'CDLA-Sharing-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Community Data License Agreement Sharing 1.0'.toFhirString,
  );

  /// CECILL_1_0
  static final SPDXLicense CECILL_1_0 = SPDXLicense._(
    validatedValue: 'CECILL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL Free Software License Agreement v1.0'.toFhirString,
  );

  /// CECILL_1_1
  static final SPDXLicense CECILL_1_1 = SPDXLicense._(
    validatedValue: 'CECILL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL Free Software License Agreement v1.1'.toFhirString,
  );

  /// CECILL_2_0
  static final SPDXLicense CECILL_2_0 = SPDXLicense._(
    validatedValue: 'CECILL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL Free Software License Agreement v2.0'.toFhirString,
  );

  /// CECILL_2_1
  static final SPDXLicense CECILL_2_1 = SPDXLicense._(
    validatedValue: 'CECILL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL Free Software License Agreement v2.1'.toFhirString,
  );

  /// CECILL_B
  static final SPDXLicense CECILL_B = SPDXLicense._(
    validatedValue: 'CECILL-B',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL-B Free Software License Agreement'.toFhirString,
  );

  /// CECILL_C
  static final SPDXLicense CECILL_C = SPDXLicense._(
    validatedValue: 'CECILL-C',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CeCILL-C Free Software License Agreement'.toFhirString,
  );

  /// ClArtistic
  static final SPDXLicense ClArtistic = SPDXLicense._(
    validatedValue: 'ClArtistic',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Clarified Artistic License'.toFhirString,
  );

  /// CNRI_Jython
  static final SPDXLicense CNRI_Jython = SPDXLicense._(
    validatedValue: 'CNRI-Jython',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CNRI Jython License'.toFhirString,
  );

  /// CNRI_Python_GPL_Compatible
  static final SPDXLicense CNRI_Python_GPL_Compatible = SPDXLicense._(
    validatedValue: 'CNRI-Python-GPL-Compatible',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'CNRI Python Open Source GPL Compatible License Agreement'.toFhirString,
  );

  /// CNRI_Python
  static final SPDXLicense CNRI_Python = SPDXLicense._(
    validatedValue: 'CNRI-Python',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CNRI Python License'.toFhirString,
  );

  /// Condor_1_1
  static final SPDXLicense Condor_1_1 = SPDXLicense._(
    validatedValue: 'Condor-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Condor Public License v1.1'.toFhirString,
  );

  /// CPAL_1_0
  static final SPDXLicense CPAL_1_0 = SPDXLicense._(
    validatedValue: 'CPAL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Common Public Attribution License 1.0'.toFhirString,
  );

  /// CPL_1_0
  static final SPDXLicense CPL_1_0 = SPDXLicense._(
    validatedValue: 'CPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Common Public License 1.0'.toFhirString,
  );

  /// CPOL_1_02
  static final SPDXLicense CPOL_1_02 = SPDXLicense._(
    validatedValue: 'CPOL-1.02',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Code Project Open License 1.02'.toFhirString,
  );

  /// Crossword
  static final SPDXLicense Crossword = SPDXLicense._(
    validatedValue: 'Crossword',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Crossword License'.toFhirString,
  );

  /// CrystalStacker
  static final SPDXLicense CrystalStacker = SPDXLicense._(
    validatedValue: 'CrystalStacker',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CrystalStacker License'.toFhirString,
  );

  /// CUA_OPL_1_0
  static final SPDXLicense CUA_OPL_1_0 = SPDXLicense._(
    validatedValue: 'CUA-OPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CUA Office Public License v1.0'.toFhirString,
  );

  /// Cube
  static final SPDXLicense Cube = SPDXLicense._(
    validatedValue: 'Cube',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cube License'.toFhirString,
  );

  /// curl
  static final SPDXLicense curl = SPDXLicense._(
    validatedValue: 'curl',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'curl License'.toFhirString,
  );

  /// D_FSL_1_0
  static final SPDXLicense D_FSL_1_0 = SPDXLicense._(
    validatedValue: 'D-FSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Deutsche Freie Software Lizenz'.toFhirString,
  );

  /// diffmark
  static final SPDXLicense diffmark = SPDXLicense._(
    validatedValue: 'diffmark',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'diffmark license'.toFhirString,
  );

  /// DOC
  static final SPDXLicense DOC = SPDXLicense._(
    validatedValue: 'DOC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DOC License'.toFhirString,
  );

  /// Dotseqn
  static final SPDXLicense Dotseqn = SPDXLicense._(
    validatedValue: 'Dotseqn',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Dotseqn License'.toFhirString,
  );

  /// DSDP
  static final SPDXLicense DSDP = SPDXLicense._(
    validatedValue: 'DSDP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DSDP License'.toFhirString,
  );

  /// dvipdfm
  static final SPDXLicense dvipdfm = SPDXLicense._(
    validatedValue: 'dvipdfm',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'dvipdfm License'.toFhirString,
  );

  /// ECL_1_0
  static final SPDXLicense ECL_1_0 = SPDXLicense._(
    validatedValue: 'ECL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Educational Community License v1.0'.toFhirString,
  );

  /// ECL_2_0
  static final SPDXLicense ECL_2_0 = SPDXLicense._(
    validatedValue: 'ECL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Educational Community License v2.0'.toFhirString,
  );

  /// EFL_1_0
  static final SPDXLicense EFL_1_0 = SPDXLicense._(
    validatedValue: 'EFL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eiffel Forum License v1.0'.toFhirString,
  );

  /// EFL_2_0
  static final SPDXLicense EFL_2_0 = SPDXLicense._(
    validatedValue: 'EFL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eiffel Forum License v2.0'.toFhirString,
  );

  /// eGenix
  static final SPDXLicense eGenix = SPDXLicense._(
    validatedValue: 'eGenix',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'eGenix.com Public License 1.1.0'.toFhirString,
  );

  /// Entessa
  static final SPDXLicense Entessa = SPDXLicense._(
    validatedValue: 'Entessa',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entessa Public License v1.0'.toFhirString,
  );

  /// EPL_1_0
  static final SPDXLicense EPL_1_0 = SPDXLicense._(
    validatedValue: 'EPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eclipse Public License 1.0'.toFhirString,
  );

  /// EPL_2_0
  static final SPDXLicense EPL_2_0 = SPDXLicense._(
    validatedValue: 'EPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eclipse Public License 2.0'.toFhirString,
  );

  /// ErlPL_1_1
  static final SPDXLicense ErlPL_1_1 = SPDXLicense._(
    validatedValue: 'ErlPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Erlang Public License v1.1'.toFhirString,
  );

  /// EUDatagrid
  static final SPDXLicense EUDatagrid = SPDXLicense._(
    validatedValue: 'EUDatagrid',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'EU DataGrid Software License'.toFhirString,
  );

  /// EUPL_1_0
  static final SPDXLicense EUPL_1_0 = SPDXLicense._(
    validatedValue: 'EUPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'European Union Public License 1.0'.toFhirString,
  );

  /// EUPL_1_1
  static final SPDXLicense EUPL_1_1 = SPDXLicense._(
    validatedValue: 'EUPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'European Union Public License 1.1'.toFhirString,
  );

  /// EUPL_1_2
  static final SPDXLicense EUPL_1_2 = SPDXLicense._(
    validatedValue: 'EUPL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'European Union Public License 1.2'.toFhirString,
  );

  /// Eurosym
  static final SPDXLicense Eurosym = SPDXLicense._(
    validatedValue: 'Eurosym',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Eurosym License'.toFhirString,
  );

  /// Fair
  static final SPDXLicense Fair = SPDXLicense._(
    validatedValue: 'Fair',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fair License'.toFhirString,
  );

  /// Frameworx_1_0
  static final SPDXLicense Frameworx_1_0 = SPDXLicense._(
    validatedValue: 'Frameworx-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Frameworx Open License 1.0'.toFhirString,
  );

  /// FreeImage
  static final SPDXLicense FreeImage = SPDXLicense._(
    validatedValue: 'FreeImage',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FreeImage Public License v1.0'.toFhirString,
  );

  /// FSFAP
  static final SPDXLicense FSFAP = SPDXLicense._(
    validatedValue: 'FSFAP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FSF All Permissive License'.toFhirString,
  );

  /// FSFUL
  static final SPDXLicense FSFUL = SPDXLicense._(
    validatedValue: 'FSFUL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FSF Unlimited License'.toFhirString,
  );

  /// FSFULLR
  static final SPDXLicense FSFULLR = SPDXLicense._(
    validatedValue: 'FSFULLR',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'FSF Unlimited License (with License Retention)'.toFhirString,
  );

  /// FTL
  static final SPDXLicense FTL = SPDXLicense._(
    validatedValue: 'FTL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Freetype Project License'.toFhirString,
  );

  /// GFDL_1_1_only
  static final SPDXLicense GFDL_1_1_only = SPDXLicense._(
    validatedValue: 'GFDL-1.1-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.1 only'.toFhirString,
  );

  /// GFDL_1_1_or_later
  static final SPDXLicense GFDL_1_1_or_later = SPDXLicense._(
    validatedValue: 'GFDL-1.1-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.1 or later'.toFhirString,
  );

  /// GFDL_1_2_only
  static final SPDXLicense GFDL_1_2_only = SPDXLicense._(
    validatedValue: 'GFDL-1.2-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.2 only'.toFhirString,
  );

  /// GFDL_1_2_or_later
  static final SPDXLicense GFDL_1_2_or_later = SPDXLicense._(
    validatedValue: 'GFDL-1.2-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.2 or later'.toFhirString,
  );

  /// GFDL_1_3_only
  static final SPDXLicense GFDL_1_3_only = SPDXLicense._(
    validatedValue: 'GFDL-1.3-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.3 only'.toFhirString,
  );

  /// GFDL_1_3_or_later
  static final SPDXLicense GFDL_1_3_or_later = SPDXLicense._(
    validatedValue: 'GFDL-1.3-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Free Documentation License v1.3 or later'.toFhirString,
  );

  /// Giftware
  static final SPDXLicense Giftware = SPDXLicense._(
    validatedValue: 'Giftware',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Giftware License'.toFhirString,
  );

  /// GL2PS
  static final SPDXLicense GL2PS = SPDXLicense._(
    validatedValue: 'GL2PS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GL2PS License'.toFhirString,
  );

  /// Glide
  static final SPDXLicense Glide = SPDXLicense._(
    validatedValue: 'Glide',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '3dfx Glide License'.toFhirString,
  );

  /// Glulxe
  static final SPDXLicense Glulxe = SPDXLicense._(
    validatedValue: 'Glulxe',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Glulxe License'.toFhirString,
  );

  /// gnuplot
  static final SPDXLicense gnuplot = SPDXLicense._(
    validatedValue: 'gnuplot',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'gnuplot License'.toFhirString,
  );

  /// GPL_1_0_only
  static final SPDXLicense GPL_1_0_only = SPDXLicense._(
    validatedValue: 'GPL-1.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v1.0 only'.toFhirString,
  );

  /// GPL_1_0_or_later
  static final SPDXLicense GPL_1_0_or_later = SPDXLicense._(
    validatedValue: 'GPL-1.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v1.0 or later'.toFhirString,
  );

  /// GPL_2_0_only
  static final SPDXLicense GPL_2_0_only = SPDXLicense._(
    validatedValue: 'GPL-2.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v2.0 only'.toFhirString,
  );

  /// GPL_2_0_or_later
  static final SPDXLicense GPL_2_0_or_later = SPDXLicense._(
    validatedValue: 'GPL-2.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v2.0 or later'.toFhirString,
  );

  /// GPL_3_0_only
  static final SPDXLicense GPL_3_0_only = SPDXLicense._(
    validatedValue: 'GPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v3.0 only'.toFhirString,
  );

  /// GPL_3_0_or_later
  static final SPDXLicense GPL_3_0_or_later = SPDXLicense._(
    validatedValue: 'GPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU General Public License v3.0 or later'.toFhirString,
  );

  /// gSOAP_1_3b
  static final SPDXLicense gSOAP_1_3b = SPDXLicense._(
    validatedValue: 'gSOAP-1.3b',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'gSOAP Public License v1.3b'.toFhirString,
  );

  /// HaskellReport
  static final SPDXLicense HaskellReport = SPDXLicense._(
    validatedValue: 'HaskellReport',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Haskell Language Report License'.toFhirString,
  );

  /// HPND
  static final SPDXLicense HPND = SPDXLicense._(
    validatedValue: 'HPND',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Historical Permission Notice and Disclaimer'.toFhirString,
  );

  /// IBM_pibs
  static final SPDXLicense IBM_pibs = SPDXLicense._(
    validatedValue: 'IBM-pibs',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'IBM PowerPC Initialization and Boot Software'.toFhirString,
  );

  /// ICU
  static final SPDXLicense ICU = SPDXLicense._(
    validatedValue: 'ICU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ICU License'.toFhirString,
  );

  /// IJG
  static final SPDXLicense IJG = SPDXLicense._(
    validatedValue: 'IJG',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Independent JPEG Group License'.toFhirString,
  );

  /// ImageMagick
  static final SPDXLicense ImageMagick = SPDXLicense._(
    validatedValue: 'ImageMagick',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ImageMagick License'.toFhirString,
  );

  /// iMatix
  static final SPDXLicense iMatix = SPDXLicense._(
    validatedValue: 'iMatix',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'iMatix Standard Function Library Agreement'.toFhirString,
  );

  /// Imlib2
  static final SPDXLicense Imlib2 = SPDXLicense._(
    validatedValue: 'Imlib2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Imlib2 License'.toFhirString,
  );

  /// Info_ZIP
  static final SPDXLicense Info_ZIP = SPDXLicense._(
    validatedValue: 'Info-ZIP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Info-ZIP License'.toFhirString,
  );

  /// Intel_ACPI
  static final SPDXLicense Intel_ACPI = SPDXLicense._(
    validatedValue: 'Intel-ACPI',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Intel ACPI Software License Agreement'.toFhirString,
  );

  /// Intel
  static final SPDXLicense Intel = SPDXLicense._(
    validatedValue: 'Intel',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Intel Open Source License'.toFhirString,
  );

  /// Interbase_1_0
  static final SPDXLicense Interbase_1_0 = SPDXLicense._(
    validatedValue: 'Interbase-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Interbase Public License v1.0'.toFhirString,
  );

  /// IPA
  static final SPDXLicense IPA = SPDXLicense._(
    validatedValue: 'IPA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'IPA Font License'.toFhirString,
  );

  /// IPL_1_0
  static final SPDXLicense IPL_1_0 = SPDXLicense._(
    validatedValue: 'IPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'IBM Public License v1.0'.toFhirString,
  );

  /// ISC
  static final SPDXLicense ISC = SPDXLicense._(
    validatedValue: 'ISC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ISC License'.toFhirString,
  );

  /// JasPer_2_0
  static final SPDXLicense JasPer_2_0 = SPDXLicense._(
    validatedValue: 'JasPer-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'JasPer License'.toFhirString,
  );

  /// JSON
  static final SPDXLicense JSON = SPDXLicense._(
    validatedValue: 'JSON',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'JSON License'.toFhirString,
  );

  /// LAL_1_2
  static final SPDXLicense LAL_1_2 = SPDXLicense._(
    validatedValue: 'LAL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Licence Art Libre 1.2'.toFhirString,
  );

  /// LAL_1_3
  static final SPDXLicense LAL_1_3 = SPDXLicense._(
    validatedValue: 'LAL-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Licence Art Libre 1.3'.toFhirString,
  );

  /// Latex2e
  static final SPDXLicense Latex2e = SPDXLicense._(
    validatedValue: 'Latex2e',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Latex2e License'.toFhirString,
  );

  /// Leptonica
  static final SPDXLicense Leptonica = SPDXLicense._(
    validatedValue: 'Leptonica',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Leptonica License'.toFhirString,
  );

  /// LGPL_2_0_only
  static final SPDXLicense LGPL_2_0_only = SPDXLicense._(
    validatedValue: 'LGPL-2.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Library General Public License v2 only'.toFhirString,
  );

  /// LGPL_2_0_or_later
  static final SPDXLicense LGPL_2_0_or_later = SPDXLicense._(
    validatedValue: 'LGPL-2.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Library General Public License v2 or later'.toFhirString,
  );

  /// LGPL_2_1_only
  static final SPDXLicense LGPL_2_1_only = SPDXLicense._(
    validatedValue: 'LGPL-2.1-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Lesser General Public License v2.1 only'.toFhirString,
  );

  /// LGPL_2_1_or_later
  static final SPDXLicense LGPL_2_1_or_later = SPDXLicense._(
    validatedValue: 'LGPL-2.1-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Lesser General Public License v2.1 or later'.toFhirString,
  );

  /// LGPL_3_0_only
  static final SPDXLicense LGPL_3_0_only = SPDXLicense._(
    validatedValue: 'LGPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Lesser General Public License v3.0 only'.toFhirString,
  );

  /// LGPL_3_0_or_later
  static final SPDXLicense LGPL_3_0_or_later = SPDXLicense._(
    validatedValue: 'LGPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'GNU Lesser General Public License v3.0 or later'.toFhirString,
  );

  /// LGPLLR
  static final SPDXLicense LGPLLR = SPDXLicense._(
    validatedValue: 'LGPLLR',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Lesser General Public License For Linguistic Resources'.toFhirString,
  );

  /// Libpng
  static final SPDXLicense Libpng = SPDXLicense._(
    validatedValue: 'Libpng',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'libpng License'.toFhirString,
  );

  /// libtiff
  static final SPDXLicense libtiff = SPDXLicense._(
    validatedValue: 'libtiff',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'libtiff License'.toFhirString,
  );

  /// LiLiQ_P_1_1
  static final SPDXLicense LiLiQ_P_1_1 = SPDXLicense._(
    validatedValue: 'LiLiQ-P-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Licence Libre du Québec – Permissive version 1.1'.toFhirString,
  );

  /// LiLiQ_R_1_1
  static final SPDXLicense LiLiQ_R_1_1 = SPDXLicense._(
    validatedValue: 'LiLiQ-R-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Licence Libre du Québec – Réciprocité version 1.1'.toFhirString,
  );

  /// LiLiQ_Rplus_1_1
  static final SPDXLicense LiLiQ_Rplus_1_1 = SPDXLicense._(
    validatedValue: 'LiLiQ-Rplus-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Licence Libre du Québec – Réciprocité forte version 1.1'.toFhirString,
  );

  /// Linux_OpenIB
  static final SPDXLicense Linux_OpenIB = SPDXLicense._(
    validatedValue: 'Linux-OpenIB',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Linux Kernel Variant of OpenIB.org license'.toFhirString,
  );

  /// LPL_1_0
  static final SPDXLicense LPL_1_0 = SPDXLicense._(
    validatedValue: 'LPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Lucent Public License Version 1.0'.toFhirString,
  );

  /// LPL_1_02
  static final SPDXLicense LPL_1_02 = SPDXLicense._(
    validatedValue: 'LPL-1.02',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Lucent Public License v1.02'.toFhirString,
  );

  /// LPPL_1_0
  static final SPDXLicense LPPL_1_0 = SPDXLicense._(
    validatedValue: 'LPPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'LaTeX Project Public License v1.0'.toFhirString,
  );

  /// LPPL_1_1
  static final SPDXLicense LPPL_1_1 = SPDXLicense._(
    validatedValue: 'LPPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'LaTeX Project Public License v1.1'.toFhirString,
  );

  /// LPPL_1_2
  static final SPDXLicense LPPL_1_2 = SPDXLicense._(
    validatedValue: 'LPPL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'LaTeX Project Public License v1.2'.toFhirString,
  );

  /// LPPL_1_3a
  static final SPDXLicense LPPL_1_3a = SPDXLicense._(
    validatedValue: 'LPPL-1.3a',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'LaTeX Project Public License v1.3a'.toFhirString,
  );

  /// LPPL_1_3c
  static final SPDXLicense LPPL_1_3c = SPDXLicense._(
    validatedValue: 'LPPL-1.3c',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'LaTeX Project Public License v1.3c'.toFhirString,
  );

  /// MakeIndex
  static final SPDXLicense MakeIndex = SPDXLicense._(
    validatedValue: 'MakeIndex',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MakeIndex License'.toFhirString,
  );

  /// MirOS
  static final SPDXLicense MirOS = SPDXLicense._(
    validatedValue: 'MirOS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MirOS License'.toFhirString,
  );

  /// MIT_0
  static final SPDXLicense MIT_0 = SPDXLicense._(
    validatedValue: 'MIT-0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MIT No Attribution'.toFhirString,
  );

  /// MIT_advertising
  static final SPDXLicense MIT_advertising = SPDXLicense._(
    validatedValue: 'MIT-advertising',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Enlightenment License (e16)'.toFhirString,
  );

  /// MIT_CMU
  static final SPDXLicense MIT_CMU = SPDXLicense._(
    validatedValue: 'MIT-CMU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'CMU License'.toFhirString,
  );

  /// MIT_enna
  static final SPDXLicense MIT_enna = SPDXLicense._(
    validatedValue: 'MIT-enna',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'enna License'.toFhirString,
  );

  /// MIT_feh
  static final SPDXLicense MIT_feh = SPDXLicense._(
    validatedValue: 'MIT-feh',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'feh License'.toFhirString,
  );

  /// MIT
  static final SPDXLicense MIT = SPDXLicense._(
    validatedValue: 'MIT',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MIT License'.toFhirString,
  );

  /// MITNFA
  static final SPDXLicense MITNFA = SPDXLicense._(
    validatedValue: 'MITNFA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'MIT +no-false-attribs license'.toFhirString,
  );

  /// Motosoto
  static final SPDXLicense Motosoto = SPDXLicense._(
    validatedValue: 'Motosoto',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Motosoto License'.toFhirString,
  );

  /// mpich2
  static final SPDXLicense mpich2 = SPDXLicense._(
    validatedValue: 'mpich2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'mpich2 License'.toFhirString,
  );

  /// MPL_1_0
  static final SPDXLicense MPL_1_0 = SPDXLicense._(
    validatedValue: 'MPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mozilla Public License 1.0'.toFhirString,
  );

  /// MPL_1_1
  static final SPDXLicense MPL_1_1 = SPDXLicense._(
    validatedValue: 'MPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mozilla Public License 1.1'.toFhirString,
  );

  /// MPL_2_0_no_copyleft_exception
  static final SPDXLicense MPL_2_0_no_copyleft_exception = SPDXLicense._(
    validatedValue: 'MPL-2.0-no-copyleft-exception',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mozilla Public License 2.0 (no copyleft exception)'.toFhirString,
  );

  /// MPL_2_0
  static final SPDXLicense MPL_2_0 = SPDXLicense._(
    validatedValue: 'MPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mozilla Public License 2.0'.toFhirString,
  );

  /// MS_PL
  static final SPDXLicense MS_PL = SPDXLicense._(
    validatedValue: 'MS-PL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Microsoft Public License'.toFhirString,
  );

  /// MS_RL
  static final SPDXLicense MS_RL = SPDXLicense._(
    validatedValue: 'MS-RL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Microsoft Reciprocal License'.toFhirString,
  );

  /// MTLL
  static final SPDXLicense MTLL = SPDXLicense._(
    validatedValue: 'MTLL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Matrix Template Library License'.toFhirString,
  );

  /// Multics
  static final SPDXLicense Multics = SPDXLicense._(
    validatedValue: 'Multics',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Multics License'.toFhirString,
  );

  /// Mup
  static final SPDXLicense Mup = SPDXLicense._(
    validatedValue: 'Mup',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mup License'.toFhirString,
  );

  /// NASA_1_3
  static final SPDXLicense NASA_1_3 = SPDXLicense._(
    validatedValue: 'NASA-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NASA Open Source Agreement 1.3'.toFhirString,
  );

  /// Naumen
  static final SPDXLicense Naumen = SPDXLicense._(
    validatedValue: 'Naumen',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Naumen Public License'.toFhirString,
  );

  /// NBPL_1_0
  static final SPDXLicense NBPL_1_0 = SPDXLicense._(
    validatedValue: 'NBPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Net Boolean Public License v1'.toFhirString,
  );

  /// NCSA
  static final SPDXLicense NCSA = SPDXLicense._(
    validatedValue: 'NCSA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'University of Illinois/NCSA Open Source License'.toFhirString,
  );

  /// Net_SNMP
  static final SPDXLicense Net_SNMP = SPDXLicense._(
    validatedValue: 'Net-SNMP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Net-SNMP License'.toFhirString,
  );

  /// NetCDF
  static final SPDXLicense NetCDF = SPDXLicense._(
    validatedValue: 'NetCDF',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NetCDF license'.toFhirString,
  );

  /// Newsletr
  static final SPDXLicense Newsletr = SPDXLicense._(
    validatedValue: 'Newsletr',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Newsletr License'.toFhirString,
  );

  /// NGPL
  static final SPDXLicense NGPL = SPDXLicense._(
    validatedValue: 'NGPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Nethack General Public License'.toFhirString,
  );

  /// NLOD_1_0
  static final SPDXLicense NLOD_1_0 = SPDXLicense._(
    validatedValue: 'NLOD-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Norwegian Licence for Open Government Data'.toFhirString,
  );

  /// NLPL
  static final SPDXLicense NLPL = SPDXLicense._(
    validatedValue: 'NLPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'No Limit Public License'.toFhirString,
  );

  /// Nokia
  static final SPDXLicense Nokia = SPDXLicense._(
    validatedValue: 'Nokia',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Nokia Open Source License'.toFhirString,
  );

  /// NOSL
  static final SPDXLicense NOSL = SPDXLicense._(
    validatedValue: 'NOSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Netizen Open Source License'.toFhirString,
  );

  /// Noweb
  static final SPDXLicense Noweb = SPDXLicense._(
    validatedValue: 'Noweb',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Noweb License'.toFhirString,
  );

  /// NPL_1_0
  static final SPDXLicense NPL_1_0 = SPDXLicense._(
    validatedValue: 'NPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Netscape Public License v1.0'.toFhirString,
  );

  /// NPL_1_1
  static final SPDXLicense NPL_1_1 = SPDXLicense._(
    validatedValue: 'NPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Netscape Public License v1.1'.toFhirString,
  );

  /// NPOSL_3_0
  static final SPDXLicense NPOSL_3_0 = SPDXLicense._(
    validatedValue: 'NPOSL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Non-Profit Open Software License 3.0'.toFhirString,
  );

  /// NRL
  static final SPDXLicense NRL = SPDXLicense._(
    validatedValue: 'NRL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NRL License'.toFhirString,
  );

  /// NTP
  static final SPDXLicense NTP = SPDXLicense._(
    validatedValue: 'NTP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'NTP License'.toFhirString,
  );

  /// OCCT_PL
  static final SPDXLicense OCCT_PL = SPDXLicense._(
    validatedValue: 'OCCT-PL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open CASCADE Technology Public License'.toFhirString,
  );

  /// OCLC_2_0
  static final SPDXLicense OCLC_2_0 = SPDXLicense._(
    validatedValue: 'OCLC-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OCLC Research Public License 2.0'.toFhirString,
  );

  /// ODbL_1_0
  static final SPDXLicense ODbL_1_0 = SPDXLicense._(
    validatedValue: 'ODbL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ODC Open Database License v1.0'.toFhirString,
  );

  /// OFL_1_0
  static final SPDXLicense OFL_1_0 = SPDXLicense._(
    validatedValue: 'OFL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SIL Open Font License 1.0'.toFhirString,
  );

  /// OFL_1_1
  static final SPDXLicense OFL_1_1 = SPDXLicense._(
    validatedValue: 'OFL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SIL Open Font License 1.1'.toFhirString,
  );

  /// OGTSL
  static final SPDXLicense OGTSL = SPDXLicense._(
    validatedValue: 'OGTSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Group Test Suite License'.toFhirString,
  );

  /// OLDAP_1_1
  static final SPDXLicense OLDAP_1_1 = SPDXLicense._(
    validatedValue: 'OLDAP-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v1.1'.toFhirString,
  );

  /// OLDAP_1_2
  static final SPDXLicense OLDAP_1_2 = SPDXLicense._(
    validatedValue: 'OLDAP-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v1.2'.toFhirString,
  );

  /// OLDAP_1_3
  static final SPDXLicense OLDAP_1_3 = SPDXLicense._(
    validatedValue: 'OLDAP-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v1.3'.toFhirString,
  );

  /// OLDAP_1_4
  static final SPDXLicense OLDAP_1_4 = SPDXLicense._(
    validatedValue: 'OLDAP-1.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v1.4'.toFhirString,
  );

  /// OLDAP_2_0_1
  static final SPDXLicense OLDAP_2_0_1 = SPDXLicense._(
    validatedValue: 'OLDAP-2.0.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.0.1'.toFhirString,
  );

  /// OLDAP_2_0
  static final SPDXLicense OLDAP_2_0 = SPDXLicense._(
    validatedValue: 'OLDAP-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)'
        .toFhirString,
  );

  /// OLDAP_2_1
  static final SPDXLicense OLDAP_2_1 = SPDXLicense._(
    validatedValue: 'OLDAP-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.1'.toFhirString,
  );

  /// OLDAP_2_2_1
  static final SPDXLicense OLDAP_2_2_1 = SPDXLicense._(
    validatedValue: 'OLDAP-2.2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.2.1'.toFhirString,
  );

  /// OLDAP_2_2_2
  static final SPDXLicense OLDAP_2_2_2 = SPDXLicense._(
    validatedValue: 'OLDAP-2.2.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License 2.2.2'.toFhirString,
  );

  /// OLDAP_2_2
  static final SPDXLicense OLDAP_2_2 = SPDXLicense._(
    validatedValue: 'OLDAP-2.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.2'.toFhirString,
  );

  /// OLDAP_2_3
  static final SPDXLicense OLDAP_2_3 = SPDXLicense._(
    validatedValue: 'OLDAP-2.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.3'.toFhirString,
  );

  /// OLDAP_2_4
  static final SPDXLicense OLDAP_2_4 = SPDXLicense._(
    validatedValue: 'OLDAP-2.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.4'.toFhirString,
  );

  /// OLDAP_2_5
  static final SPDXLicense OLDAP_2_5 = SPDXLicense._(
    validatedValue: 'OLDAP-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.5'.toFhirString,
  );

  /// OLDAP_2_6
  static final SPDXLicense OLDAP_2_6 = SPDXLicense._(
    validatedValue: 'OLDAP-2.6',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.6'.toFhirString,
  );

  /// OLDAP_2_7
  static final SPDXLicense OLDAP_2_7 = SPDXLicense._(
    validatedValue: 'OLDAP-2.7',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.7'.toFhirString,
  );

  /// OLDAP_2_8
  static final SPDXLicense OLDAP_2_8 = SPDXLicense._(
    validatedValue: 'OLDAP-2.8',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open LDAP Public License v2.8'.toFhirString,
  );

  /// OML
  static final SPDXLicense OML = SPDXLicense._(
    validatedValue: 'OML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Market License'.toFhirString,
  );

  /// OpenSSL
  static final SPDXLicense OpenSSL = SPDXLicense._(
    validatedValue: 'OpenSSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OpenSSL License'.toFhirString,
  );

  /// OPL_1_0
  static final SPDXLicense OPL_1_0 = SPDXLicense._(
    validatedValue: 'OPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Public License v1.0'.toFhirString,
  );

  /// OSET_PL_2_1
  static final SPDXLicense OSET_PL_2_1 = SPDXLicense._(
    validatedValue: 'OSET-PL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OSET Public License version 2.1'.toFhirString,
  );

  /// OSL_1_0
  static final SPDXLicense OSL_1_0 = SPDXLicense._(
    validatedValue: 'OSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Software License 1.0'.toFhirString,
  );

  /// OSL_1_1
  static final SPDXLicense OSL_1_1 = SPDXLicense._(
    validatedValue: 'OSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Software License 1.1'.toFhirString,
  );

  /// OSL_2_0
  static final SPDXLicense OSL_2_0 = SPDXLicense._(
    validatedValue: 'OSL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Software License 2.0'.toFhirString,
  );

  /// OSL_2_1
  static final SPDXLicense OSL_2_1 = SPDXLicense._(
    validatedValue: 'OSL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Software License 2.1'.toFhirString,
  );

  /// OSL_3_0
  static final SPDXLicense OSL_3_0 = SPDXLicense._(
    validatedValue: 'OSL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open Software License 3.0'.toFhirString,
  );

  /// PDDL_1_0
  static final SPDXLicense PDDL_1_0 = SPDXLicense._(
    validatedValue: 'PDDL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'ODC Public Domain Dedication & License 1.0'.toFhirString,
  );

  /// PHP_3_0
  static final SPDXLicense PHP_3_0 = SPDXLicense._(
    validatedValue: 'PHP-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PHP License v3.0'.toFhirString,
  );

  /// PHP_3_01
  static final SPDXLicense PHP_3_01 = SPDXLicense._(
    validatedValue: 'PHP-3.01',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PHP License v3.01'.toFhirString,
  );

  /// Plexus
  static final SPDXLicense Plexus = SPDXLicense._(
    validatedValue: 'Plexus',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Plexus Classworlds License'.toFhirString,
  );

  /// PostgreSQL
  static final SPDXLicense PostgreSQL = SPDXLicense._(
    validatedValue: 'PostgreSQL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'PostgreSQL License'.toFhirString,
  );

  /// psfrag
  static final SPDXLicense psfrag = SPDXLicense._(
    validatedValue: 'psfrag',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'psfrag License'.toFhirString,
  );

  /// psutils
  static final SPDXLicense psutils = SPDXLicense._(
    validatedValue: 'psutils',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'psutils License'.toFhirString,
  );

  /// Python_2_0
  static final SPDXLicense Python_2_0 = SPDXLicense._(
    validatedValue: 'Python-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Python License 2.0'.toFhirString,
  );

  /// Qhull
  static final SPDXLicense Qhull = SPDXLicense._(
    validatedValue: 'Qhull',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Qhull License'.toFhirString,
  );

  /// QPL_1_0
  static final SPDXLicense QPL_1_0 = SPDXLicense._(
    validatedValue: 'QPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Q Public License 1.0'.toFhirString,
  );

  /// Rdisc
  static final SPDXLicense Rdisc = SPDXLicense._(
    validatedValue: 'Rdisc',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rdisc License'.toFhirString,
  );

  /// RHeCos_1_1
  static final SPDXLicense RHeCos_1_1 = SPDXLicense._(
    validatedValue: 'RHeCos-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Red Hat eCos Public License v1.1'.toFhirString,
  );

  /// RPL_1_1
  static final SPDXLicense RPL_1_1 = SPDXLicense._(
    validatedValue: 'RPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reciprocal Public License 1.1'.toFhirString,
  );

  /// RPL_1_5
  static final SPDXLicense RPL_1_5 = SPDXLicense._(
    validatedValue: 'RPL-1.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Reciprocal Public License 1.5'.toFhirString,
  );

  /// RPSL_1_0
  static final SPDXLicense RPSL_1_0 = SPDXLicense._(
    validatedValue: 'RPSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RealNetworks Public Source License v1.0'.toFhirString,
  );

  /// RSA_MD
  static final SPDXLicense RSA_MD = SPDXLicense._(
    validatedValue: 'RSA-MD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RSA Message-Digest License'.toFhirString,
  );

  /// RSCPL
  static final SPDXLicense RSCPL = SPDXLicense._(
    validatedValue: 'RSCPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ricoh Source Code Public License'.toFhirString,
  );

  /// Ruby
  static final SPDXLicense Ruby = SPDXLicense._(
    validatedValue: 'Ruby',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ruby License'.toFhirString,
  );

  /// SAX_PD
  static final SPDXLicense SAX_PD = SPDXLicense._(
    validatedValue: 'SAX-PD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sax Public Domain Notice'.toFhirString,
  );

  /// Saxpath
  static final SPDXLicense Saxpath = SPDXLicense._(
    validatedValue: 'Saxpath',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Saxpath License'.toFhirString,
  );

  /// SCEA
  static final SPDXLicense SCEA = SPDXLicense._(
    validatedValue: 'SCEA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SCEA Shared Source License'.toFhirString,
  );

  /// Sendmail
  static final SPDXLicense Sendmail = SPDXLicense._(
    validatedValue: 'Sendmail',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sendmail License'.toFhirString,
  );

  /// SGI_B_1_0
  static final SPDXLicense SGI_B_1_0 = SPDXLicense._(
    validatedValue: 'SGI-B-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SGI Free Software License B v1.0'.toFhirString,
  );

  /// SGI_B_1_1
  static final SPDXLicense SGI_B_1_1 = SPDXLicense._(
    validatedValue: 'SGI-B-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SGI Free Software License B v1.1'.toFhirString,
  );

  /// SGI_B_2_0
  static final SPDXLicense SGI_B_2_0 = SPDXLicense._(
    validatedValue: 'SGI-B-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SGI Free Software License B v2.0'.toFhirString,
  );

  /// SimPL_2_0
  static final SPDXLicense SimPL_2_0 = SPDXLicense._(
    validatedValue: 'SimPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Simple Public License 2.0'.toFhirString,
  );

  /// SISSL_1_2
  static final SPDXLicense SISSL_1_2 = SPDXLicense._(
    validatedValue: 'SISSL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sun Industry Standards Source License v1.2'.toFhirString,
  );

  /// SISSL
  static final SPDXLicense SISSL = SPDXLicense._(
    validatedValue: 'SISSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sun Industry Standards Source License v1.1'.toFhirString,
  );

  /// Sleepycat
  static final SPDXLicense Sleepycat = SPDXLicense._(
    validatedValue: 'Sleepycat',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sleepycat License'.toFhirString,
  );

  /// SMLNJ
  static final SPDXLicense SMLNJ = SPDXLicense._(
    validatedValue: 'SMLNJ',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Standard ML of New Jersey License'.toFhirString,
  );

  /// SMPPL
  static final SPDXLicense SMPPL = SPDXLicense._(
    validatedValue: 'SMPPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Secure Messaging Protocol Public License'.toFhirString,
  );

  /// SNIA
  static final SPDXLicense SNIA = SPDXLicense._(
    validatedValue: 'SNIA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SNIA Public License 1.1'.toFhirString,
  );

  /// Spencer_86
  static final SPDXLicense Spencer_86 = SPDXLicense._(
    validatedValue: 'Spencer-86',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spencer License 86'.toFhirString,
  );

  /// Spencer_94
  static final SPDXLicense Spencer_94 = SPDXLicense._(
    validatedValue: 'Spencer-94',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spencer License 94'.toFhirString,
  );

  /// Spencer_99
  static final SPDXLicense Spencer_99 = SPDXLicense._(
    validatedValue: 'Spencer-99',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Spencer License 99'.toFhirString,
  );

  /// SPL_1_0
  static final SPDXLicense SPL_1_0 = SPDXLicense._(
    validatedValue: 'SPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sun Public License v1.0'.toFhirString,
  );

  /// SugarCRM_1_1_3
  static final SPDXLicense SugarCRM_1_1_3 = SPDXLicense._(
    validatedValue: 'SugarCRM-1.1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SugarCRM Public License v1.1.3'.toFhirString,
  );

  /// SWL
  static final SPDXLicense SWL = SPDXLicense._(
    validatedValue: 'SWL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'Scheme Widget Library (SWL) Software License Agreement'.toFhirString,
  );

  /// TCL
  static final SPDXLicense TCL = SPDXLicense._(
    validatedValue: 'TCL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TCL/TK License'.toFhirString,
  );

  /// TCP_wrappers
  static final SPDXLicense TCP_wrappers = SPDXLicense._(
    validatedValue: 'TCP-wrappers',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TCP Wrappers License'.toFhirString,
  );

  /// TMate
  static final SPDXLicense TMate = SPDXLicense._(
    validatedValue: 'TMate',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TMate Open Source License'.toFhirString,
  );

  /// TORQUE_1_1
  static final SPDXLicense TORQUE_1_1 = SPDXLicense._(
    validatedValue: 'TORQUE-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'TORQUE v2.5+ Software License v1.1'.toFhirString,
  );

  /// TOSL
  static final SPDXLicense TOSL = SPDXLicense._(
    validatedValue: 'TOSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Trusster Open Source License'.toFhirString,
  );

  /// Unicode_DFS_2015
  static final SPDXLicense Unicode_DFS_2015 = SPDXLicense._(
    validatedValue: 'Unicode-DFS-2015',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unicode License Agreement - Data Files and Software (2015)'
        .toFhirString,
  );

  /// Unicode_DFS_2016
  static final SPDXLicense Unicode_DFS_2016 = SPDXLicense._(
    validatedValue: 'Unicode-DFS-2016',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unicode License Agreement - Data Files and Software (2016)'
        .toFhirString,
  );

  /// Unicode_TOU
  static final SPDXLicense Unicode_TOU = SPDXLicense._(
    validatedValue: 'Unicode-TOU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unicode Terms of Use'.toFhirString,
  );

  /// Unlicense
  static final SPDXLicense Unlicense = SPDXLicense._(
    validatedValue: 'Unlicense',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'The Unlicense'.toFhirString,
  );

  /// UPL_1_0
  static final SPDXLicense UPL_1_0 = SPDXLicense._(
    validatedValue: 'UPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Universal Permissive License v1.0'.toFhirString,
  );

  /// Vim
  static final SPDXLicense Vim = SPDXLicense._(
    validatedValue: 'Vim',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Vim License'.toFhirString,
  );

  /// VOSTROM
  static final SPDXLicense VOSTROM = SPDXLicense._(
    validatedValue: 'VOSTROM',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'VOSTROM Public License for Open Source'.toFhirString,
  );

  /// VSL_1_0
  static final SPDXLicense VSL_1_0 = SPDXLicense._(
    validatedValue: 'VSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Vovida Software License v1.0'.toFhirString,
  );

  /// W3C_19980720
  static final SPDXLicense W3C_19980720 = SPDXLicense._(
    validatedValue: 'W3C-19980720',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'W3C Software Notice and License (1998-07-20)'.toFhirString,
  );

  /// W3C_20150513
  static final SPDXLicense W3C_20150513 = SPDXLicense._(
    validatedValue: 'W3C-20150513',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display:
        'W3C Software Notice and Document License (2015-05-13)'.toFhirString,
  );

  /// W3C
  static final SPDXLicense W3C = SPDXLicense._(
    validatedValue: 'W3C',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'W3C Software Notice and License (2002-12-31)'.toFhirString,
  );

  /// Watcom_1_0
  static final SPDXLicense Watcom_1_0 = SPDXLicense._(
    validatedValue: 'Watcom-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sybase Open Watcom Public License 1.0'.toFhirString,
  );

  /// Wsuipa
  static final SPDXLicense Wsuipa = SPDXLicense._(
    validatedValue: 'Wsuipa',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Wsuipa License'.toFhirString,
  );

  /// WTFPL
  static final SPDXLicense WTFPL = SPDXLicense._(
    validatedValue: 'WTFPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Do What The F*ck You Want To Public License'.toFhirString,
  );

  /// X11
  static final SPDXLicense X11 = SPDXLicense._(
    validatedValue: 'X11',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'X11 License'.toFhirString,
  );

  /// Xerox
  static final SPDXLicense Xerox = SPDXLicense._(
    validatedValue: 'Xerox',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Xerox License'.toFhirString,
  );

  /// XFree86_1_1
  static final SPDXLicense XFree86_1_1 = SPDXLicense._(
    validatedValue: 'XFree86-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XFree86 License 1.1'.toFhirString,
  );

  /// xinetd
  static final SPDXLicense xinetd = SPDXLicense._(
    validatedValue: 'xinetd',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'xinetd License'.toFhirString,
  );

  /// Xnet
  static final SPDXLicense Xnet = SPDXLicense._(
    validatedValue: 'Xnet',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'X.Net License'.toFhirString,
  );

  /// xpp
  static final SPDXLicense xpp = SPDXLicense._(
    validatedValue: 'xpp',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XPP License'.toFhirString,
  );

  /// XSkat
  static final SPDXLicense XSkat = SPDXLicense._(
    validatedValue: 'XSkat',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'XSkat License'.toFhirString,
  );

  /// YPL_1_0
  static final SPDXLicense YPL_1_0 = SPDXLicense._(
    validatedValue: 'YPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Yahoo! Public License v1.0'.toFhirString,
  );

  /// YPL_1_1
  static final SPDXLicense YPL_1_1 = SPDXLicense._(
    validatedValue: 'YPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Yahoo! Public License v1.1'.toFhirString,
  );

  /// Zed
  static final SPDXLicense Zed = SPDXLicense._(
    validatedValue: 'Zed',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zed License'.toFhirString,
  );

  /// Zend_2_0
  static final SPDXLicense Zend_2_0 = SPDXLicense._(
    validatedValue: 'Zend-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zend License v2.0'.toFhirString,
  );

  /// Zimbra_1_3
  static final SPDXLicense Zimbra_1_3 = SPDXLicense._(
    validatedValue: 'Zimbra-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zimbra Public License v1.3'.toFhirString,
  );

  /// Zimbra_1_4
  static final SPDXLicense Zimbra_1_4 = SPDXLicense._(
    validatedValue: 'Zimbra-1.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zimbra Public License v1.4'.toFhirString,
  );

  /// zlib_acknowledgement
  static final SPDXLicense zlib_acknowledgement = SPDXLicense._(
    validatedValue: 'zlib-acknowledgement',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'zlib/libpng License with Acknowledgement'.toFhirString,
  );

  /// Zlib
  static final SPDXLicense Zlib = SPDXLicense._(
    validatedValue: 'Zlib',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'zlib License'.toFhirString,
  );

  /// ZPL_1_1
  static final SPDXLicense ZPL_1_1 = SPDXLicense._(
    validatedValue: 'ZPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zope Public License 1.1'.toFhirString,
  );

  /// ZPL_2_0
  static final SPDXLicense ZPL_2_0 = SPDXLicense._(
    validatedValue: 'ZPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zope Public License 2.0'.toFhirString,
  );

  /// ZPL_2_1
  static final SPDXLicense ZPL_2_1 = SPDXLicense._(
    validatedValue: 'ZPL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Zope Public License 2.1'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SPDXLicense elementOnly = SPDXLicense._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SPDXLicense withElement(Element? newElement) {
    return SPDXLicense._(validatedValue: value, element: newElement);
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
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
