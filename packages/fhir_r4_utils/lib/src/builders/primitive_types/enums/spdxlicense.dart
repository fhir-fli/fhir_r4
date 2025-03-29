// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The license that applies to an Implementation Guide (using an SPDX
/// license Identifiers, or 'not-open-source'). The binding is required but
/// new SPDX license Identifiers are allowed to be used
/// (https://spdx.org/licenses/).
class SPDXLicenseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SPDXLicenseBuilder._({
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
  factory SPDXLicenseBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return SPDXLicenseBuilder._(
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

  /// Create empty [SPDXLicenseBuilder] with element only
  factory SPDXLicenseBuilder.empty() =>
      SPDXLicenseBuilder._(validatedValue: '');

  /// Factory constructor to create [SPDXLicenseBuilder] from JSON.
  factory SPDXLicenseBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SPDXLicenseBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SPDXLicenseBuilder cannot be constructed from JSON.',
      );
    }
    return SPDXLicenseBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// not_open_source
  static SPDXLicenseBuilder not_open_source = SPDXLicenseBuilder._(
    validatedValue: 'not-open-source',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Not open source'.toFhirStringBuilder,
  );

  /// value0BSD
  static SPDXLicenseBuilder value0BSD = SPDXLicenseBuilder._(
    validatedValue: '0BSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD Zero Clause License'.toFhirStringBuilder,
  );

  /// AAL
  static SPDXLicenseBuilder AAL = SPDXLicenseBuilder._(
    validatedValue: 'AAL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Attribution Assurance License'.toFhirStringBuilder,
  );

  /// Abstyles
  static SPDXLicenseBuilder Abstyles = SPDXLicenseBuilder._(
    validatedValue: 'Abstyles',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Abstyles License'.toFhirStringBuilder,
  );

  /// Adobe_2006
  static SPDXLicenseBuilder Adobe_2006 = SPDXLicenseBuilder._(
    validatedValue: 'Adobe-2006',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Adobe Systems Incorporated Source Code License Agreement'
        .toFhirStringBuilder,
  );

  /// Adobe_Glyph
  static SPDXLicenseBuilder Adobe_Glyph = SPDXLicenseBuilder._(
    validatedValue: 'Adobe-Glyph',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Adobe Glyph List License'.toFhirStringBuilder,
  );

  /// ADSL
  static SPDXLicenseBuilder ADSL = SPDXLicenseBuilder._(
    validatedValue: 'ADSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amazon Digital Services License'.toFhirStringBuilder,
  );

  /// AFL_1_1
  static SPDXLicenseBuilder AFL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'AFL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Academic Free License v1.1'.toFhirStringBuilder,
  );

  /// AFL_1_2
  static SPDXLicenseBuilder AFL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'AFL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Academic Free License v1.2'.toFhirStringBuilder,
  );

  /// AFL_2_0
  static SPDXLicenseBuilder AFL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'AFL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Academic Free License v2.0'.toFhirStringBuilder,
  );

  /// AFL_2_1
  static SPDXLicenseBuilder AFL_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'AFL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Academic Free License v2.1'.toFhirStringBuilder,
  );

  /// AFL_3_0
  static SPDXLicenseBuilder AFL_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'AFL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Academic Free License v3.0'.toFhirStringBuilder,
  );

  /// Afmparse
  static SPDXLicenseBuilder Afmparse = SPDXLicenseBuilder._(
    validatedValue: 'Afmparse',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Afmparse License'.toFhirStringBuilder,
  );

  /// AGPL_1_0_only
  static SPDXLicenseBuilder AGPL_1_0_only = SPDXLicenseBuilder._(
    validatedValue: 'AGPL-1.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Affero General Public License v1.0 only'.toFhirStringBuilder,
  );

  /// AGPL_1_0_or_later
  static SPDXLicenseBuilder AGPL_1_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'AGPL-1.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Affero General Public License v1.0 or later'.toFhirStringBuilder,
  );

  /// AGPL_3_0_only
  static SPDXLicenseBuilder AGPL_3_0_only = SPDXLicenseBuilder._(
    validatedValue: 'AGPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Affero General Public License v3.0 only'.toFhirStringBuilder,
  );

  /// AGPL_3_0_or_later
  static SPDXLicenseBuilder AGPL_3_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'AGPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'GNU Affero General Public License v3.0 or later'.toFhirStringBuilder,
  );

  /// Aladdin
  static SPDXLicenseBuilder Aladdin = SPDXLicenseBuilder._(
    validatedValue: 'Aladdin',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Aladdin Free Public License'.toFhirStringBuilder,
  );

  /// AMDPLPA
  static SPDXLicenseBuilder AMDPLPA = SPDXLicenseBuilder._(
    validatedValue: 'AMDPLPA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: "AMD's plpa_map.c License".toFhirStringBuilder,
  );

  /// AML
  static SPDXLicenseBuilder AML = SPDXLicenseBuilder._(
    validatedValue: 'AML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apple MIT License'.toFhirStringBuilder,
  );

  /// AMPAS
  static SPDXLicenseBuilder AMPAS = SPDXLicenseBuilder._(
    validatedValue: 'AMPAS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Academy of Motion Picture Arts and Sciences BSD'.toFhirStringBuilder,
  );

  /// ANTLR_PD
  static SPDXLicenseBuilder ANTLR_PD = SPDXLicenseBuilder._(
    validatedValue: 'ANTLR-PD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ANTLR Software Rights Notice'.toFhirStringBuilder,
  );

  /// Apache_1_0
  static SPDXLicenseBuilder Apache_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'Apache-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apache License 1.0'.toFhirStringBuilder,
  );

  /// Apache_1_1
  static SPDXLicenseBuilder Apache_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'Apache-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apache License 1.1'.toFhirStringBuilder,
  );

  /// Apache_2_0
  static SPDXLicenseBuilder Apache_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'Apache-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apache License 2.0'.toFhirStringBuilder,
  );

  /// APAFML
  static SPDXLicenseBuilder APAFML = SPDXLicenseBuilder._(
    validatedValue: 'APAFML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Adobe Postscript AFM License'.toFhirStringBuilder,
  );

  /// APL_1_0
  static SPDXLicenseBuilder APL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'APL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Adaptive Public License 1.0'.toFhirStringBuilder,
  );

  /// APSL_1_0
  static SPDXLicenseBuilder APSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'APSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apple Public Source License 1.0'.toFhirStringBuilder,
  );

  /// APSL_1_1
  static SPDXLicenseBuilder APSL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'APSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apple Public Source License 1.1'.toFhirStringBuilder,
  );

  /// APSL_1_2
  static SPDXLicenseBuilder APSL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'APSL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apple Public Source License 1.2'.toFhirStringBuilder,
  );

  /// APSL_2_0
  static SPDXLicenseBuilder APSL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'APSL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Apple Public Source License 2.0'.toFhirStringBuilder,
  );

  /// Artistic_1_0_cl8
  static SPDXLicenseBuilder Artistic_1_0_cl8 = SPDXLicenseBuilder._(
    validatedValue: 'Artistic-1.0-cl8',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Artistic License 1.0 w/clause 8'.toFhirStringBuilder,
  );

  /// Artistic_1_0_Perl
  static SPDXLicenseBuilder Artistic_1_0_Perl = SPDXLicenseBuilder._(
    validatedValue: 'Artistic-1.0-Perl',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Artistic License 1.0 (Perl)'.toFhirStringBuilder,
  );

  /// Artistic_1_0
  static SPDXLicenseBuilder Artistic_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'Artistic-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Artistic License 1.0'.toFhirStringBuilder,
  );

  /// Artistic_2_0
  static SPDXLicenseBuilder Artistic_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'Artistic-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Artistic License 2.0'.toFhirStringBuilder,
  );

  /// Bahyph
  static SPDXLicenseBuilder Bahyph = SPDXLicenseBuilder._(
    validatedValue: 'Bahyph',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Bahyph License'.toFhirStringBuilder,
  );

  /// Barr
  static SPDXLicenseBuilder Barr = SPDXLicenseBuilder._(
    validatedValue: 'Barr',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Barr License'.toFhirStringBuilder,
  );

  /// Beerware
  static SPDXLicenseBuilder Beerware = SPDXLicenseBuilder._(
    validatedValue: 'Beerware',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Beerware License'.toFhirStringBuilder,
  );

  /// BitTorrent_1_0
  static SPDXLicenseBuilder BitTorrent_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'BitTorrent-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BitTorrent Open Source License v1.0'.toFhirStringBuilder,
  );

  /// BitTorrent_1_1
  static SPDXLicenseBuilder BitTorrent_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'BitTorrent-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BitTorrent Open Source License v1.1'.toFhirStringBuilder,
  );

  /// Borceux
  static SPDXLicenseBuilder Borceux = SPDXLicenseBuilder._(
    validatedValue: 'Borceux',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Borceux license'.toFhirStringBuilder,
  );

  /// BSD_1_Clause
  static SPDXLicenseBuilder BSD_1_Clause = SPDXLicenseBuilder._(
    validatedValue: 'BSD-1-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 1-Clause License'.toFhirStringBuilder,
  );

  /// BSD_2_Clause_FreeBSD
  static SPDXLicenseBuilder BSD_2_Clause_FreeBSD = SPDXLicenseBuilder._(
    validatedValue: 'BSD-2-Clause-FreeBSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 2-Clause FreeBSD License'.toFhirStringBuilder,
  );

  /// BSD_2_Clause_NetBSD
  static SPDXLicenseBuilder BSD_2_Clause_NetBSD = SPDXLicenseBuilder._(
    validatedValue: 'BSD-2-Clause-NetBSD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 2-Clause NetBSD License'.toFhirStringBuilder,
  );

  /// BSD_2_Clause_Patent
  static SPDXLicenseBuilder BSD_2_Clause_Patent = SPDXLicenseBuilder._(
    validatedValue: 'BSD-2-Clause-Patent',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD-2-Clause Plus Patent License'.toFhirStringBuilder,
  );

  /// BSD_2_Clause
  static SPDXLicenseBuilder BSD_2_Clause = SPDXLicenseBuilder._(
    validatedValue: 'BSD-2-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 2-Clause "Simplified" License'.toFhirStringBuilder,
  );

  /// BSD_3_Clause_Attribution
  static SPDXLicenseBuilder BSD_3_Clause_Attribution = SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-Attribution',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD with attribution'.toFhirStringBuilder,
  );

  /// BSD_3_Clause_Clear
  static SPDXLicenseBuilder BSD_3_Clause_Clear = SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-Clear',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 3-Clause Clear License'.toFhirStringBuilder,
  );

  /// BSD_3_Clause_LBNL
  static SPDXLicenseBuilder BSD_3_Clause_LBNL = SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-LBNL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Lawrence Berkeley National Labs BSD variant license'
        .toFhirStringBuilder,
  );

  /// BSD_3_Clause_No_Nuclear_License_2014
  static SPDXLicenseBuilder BSD_3_Clause_No_Nuclear_License_2014 =
      SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-License-2014',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 3-Clause No Nuclear License 2014'.toFhirStringBuilder,
  );

  /// BSD_3_Clause_No_Nuclear_License
  static SPDXLicenseBuilder BSD_3_Clause_No_Nuclear_License =
      SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-License',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 3-Clause No Nuclear License'.toFhirStringBuilder,
  );

  /// BSD_3_Clause_No_Nuclear_Warranty
  static SPDXLicenseBuilder BSD_3_Clause_No_Nuclear_Warranty =
      SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause-No-Nuclear-Warranty',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 3-Clause No Nuclear Warranty'.toFhirStringBuilder,
  );

  /// BSD_3_Clause
  static SPDXLicenseBuilder BSD_3_Clause = SPDXLicenseBuilder._(
    validatedValue: 'BSD-3-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 3-Clause "New" or "Revised" License'.toFhirStringBuilder,
  );

  /// BSD_4_Clause_UC
  static SPDXLicenseBuilder BSD_4_Clause_UC = SPDXLicenseBuilder._(
    validatedValue: 'BSD-4-Clause-UC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'BSD-4-Clause (University of California-Specific)'.toFhirStringBuilder,
  );

  /// BSD_4_Clause
  static SPDXLicenseBuilder BSD_4_Clause = SPDXLicenseBuilder._(
    validatedValue: 'BSD-4-Clause',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD 4-Clause "Original" or "Old" License'.toFhirStringBuilder,
  );

  /// BSD_Protection
  static SPDXLicenseBuilder BSD_Protection = SPDXLicenseBuilder._(
    validatedValue: 'BSD-Protection',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD Protection License'.toFhirStringBuilder,
  );

  /// BSD_Source_Code
  static SPDXLicenseBuilder BSD_Source_Code = SPDXLicenseBuilder._(
    validatedValue: 'BSD-Source-Code',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BSD Source Code Attribution'.toFhirStringBuilder,
  );

  /// BSL_1_0
  static SPDXLicenseBuilder BSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'BSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Boost Software License 1.0'.toFhirStringBuilder,
  );

  /// bzip2_1_0_5
  static SPDXLicenseBuilder bzip2_1_0_5 = SPDXLicenseBuilder._(
    validatedValue: 'bzip2-1.0.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'bzip2 and libbzip2 License v1.0.5'.toFhirStringBuilder,
  );

  /// bzip2_1_0_6
  static SPDXLicenseBuilder bzip2_1_0_6 = SPDXLicenseBuilder._(
    validatedValue: 'bzip2-1.0.6',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'bzip2 and libbzip2 License v1.0.6'.toFhirStringBuilder,
  );

  /// Caldera
  static SPDXLicenseBuilder Caldera = SPDXLicenseBuilder._(
    validatedValue: 'Caldera',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Caldera License'.toFhirStringBuilder,
  );

  /// CATOSL_1_1
  static SPDXLicenseBuilder CATOSL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'CATOSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Computer Associates Trusted Open Source License 1.1'
        .toFhirStringBuilder,
  );

  /// CC_BY_1_0
  static SPDXLicenseBuilder CC_BY_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution 1.0 Generic'.toFhirStringBuilder,
  );

  /// CC_BY_2_0
  static SPDXLicenseBuilder CC_BY_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution 2.0 Generic'.toFhirStringBuilder,
  );

  /// CC_BY_2_5
  static SPDXLicenseBuilder CC_BY_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution 2.5 Generic'.toFhirStringBuilder,
  );

  /// CC_BY_3_0
  static SPDXLicenseBuilder CC_BY_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution 3.0 Unported'.toFhirStringBuilder,
  );

  /// CC_BY_4_0
  static SPDXLicenseBuilder CC_BY_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution 4.0 International'.toFhirStringBuilder,
  );

  /// CC_BY_NC_1_0
  static SPDXLicenseBuilder CC_BY_NC_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Non Commercial 1.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_NC_2_0
  static SPDXLicenseBuilder CC_BY_NC_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Non Commercial 2.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_NC_2_5
  static SPDXLicenseBuilder CC_BY_NC_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Non Commercial 2.5 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_NC_3_0
  static SPDXLicenseBuilder CC_BY_NC_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Non Commercial 3.0 Unported'
        .toFhirStringBuilder,
  );

  /// CC_BY_NC_4_0
  static SPDXLicenseBuilder CC_BY_NC_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Non Commercial 4.0 International'
        .toFhirStringBuilder,
  );

  /// CC_BY_NC_ND_1_0
  static SPDXLicenseBuilder CC_BY_NC_ND_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-ND-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 1.0 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_ND_2_0
  static SPDXLicenseBuilder CC_BY_NC_ND_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-ND-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 2.0 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_ND_2_5
  static SPDXLicenseBuilder CC_BY_NC_ND_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-ND-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 2.5 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_ND_3_0
  static SPDXLicenseBuilder CC_BY_NC_ND_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-ND-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 3.0 Unported'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_ND_4_0
  static SPDXLicenseBuilder CC_BY_NC_ND_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-ND-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial No Derivatives 4.0 International'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_SA_1_0
  static SPDXLicenseBuilder CC_BY_NC_SA_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-SA-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 1.0 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_SA_2_0
  static SPDXLicenseBuilder CC_BY_NC_SA_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-SA-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 2.0 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_SA_2_5
  static SPDXLicenseBuilder CC_BY_NC_SA_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-SA-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 2.5 Generic'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_SA_3_0
  static SPDXLicenseBuilder CC_BY_NC_SA_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-SA-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 3.0 Unported'
            .toFhirStringBuilder,
  );

  /// CC_BY_NC_SA_4_0
  static SPDXLicenseBuilder CC_BY_NC_SA_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-NC-SA-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Creative Commons Attribution Non Commercial Share Alike 4.0 International'
            .toFhirStringBuilder,
  );

  /// CC_BY_ND_1_0
  static SPDXLicenseBuilder CC_BY_ND_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-ND-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution No Derivatives 1.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_ND_2_0
  static SPDXLicenseBuilder CC_BY_ND_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-ND-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution No Derivatives 2.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_ND_2_5
  static SPDXLicenseBuilder CC_BY_ND_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-ND-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution No Derivatives 2.5 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_ND_3_0
  static SPDXLicenseBuilder CC_BY_ND_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-ND-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution No Derivatives 3.0 Unported'
        .toFhirStringBuilder,
  );

  /// CC_BY_ND_4_0
  static SPDXLicenseBuilder CC_BY_ND_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-ND-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution No Derivatives 4.0 International'
        .toFhirStringBuilder,
  );

  /// CC_BY_SA_1_0
  static SPDXLicenseBuilder CC_BY_SA_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-SA-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Share Alike 1.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_SA_2_0
  static SPDXLicenseBuilder CC_BY_SA_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-SA-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Share Alike 2.0 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_SA_2_5
  static SPDXLicenseBuilder CC_BY_SA_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-SA-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Share Alike 2.5 Generic'
        .toFhirStringBuilder,
  );

  /// CC_BY_SA_3_0
  static SPDXLicenseBuilder CC_BY_SA_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-SA-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Share Alike 3.0 Unported'
        .toFhirStringBuilder,
  );

  /// CC_BY_SA_4_0
  static SPDXLicenseBuilder CC_BY_SA_4_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC-BY-SA-4.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Attribution Share Alike 4.0 International'
        .toFhirStringBuilder,
  );

  /// CC0_1_0
  static SPDXLicenseBuilder CC0_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CC0-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Creative Commons Zero v1.0 Universal'.toFhirStringBuilder,
  );

  /// CDDL_1_0
  static SPDXLicenseBuilder CDDL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CDDL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Common Development and Distribution License 1.0'.toFhirStringBuilder,
  );

  /// CDDL_1_1
  static SPDXLicenseBuilder CDDL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'CDDL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Common Development and Distribution License 1.1'.toFhirStringBuilder,
  );

  /// CDLA_Permissive_1_0
  static SPDXLicenseBuilder CDLA_Permissive_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CDLA-Permissive-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Community Data License Agreement Permissive 1.0'.toFhirStringBuilder,
  );

  /// CDLA_Sharing_1_0
  static SPDXLicenseBuilder CDLA_Sharing_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CDLA-Sharing-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Community Data License Agreement Sharing 1.0'.toFhirStringBuilder,
  );

  /// CECILL_1_0
  static SPDXLicenseBuilder CECILL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL Free Software License Agreement v1.0'.toFhirStringBuilder,
  );

  /// CECILL_1_1
  static SPDXLicenseBuilder CECILL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL Free Software License Agreement v1.1'.toFhirStringBuilder,
  );

  /// CECILL_2_0
  static SPDXLicenseBuilder CECILL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL Free Software License Agreement v2.0'.toFhirStringBuilder,
  );

  /// CECILL_2_1
  static SPDXLicenseBuilder CECILL_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL Free Software License Agreement v2.1'.toFhirStringBuilder,
  );

  /// CECILL_B
  static SPDXLicenseBuilder CECILL_B = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-B',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL-B Free Software License Agreement'.toFhirStringBuilder,
  );

  /// CECILL_C
  static SPDXLicenseBuilder CECILL_C = SPDXLicenseBuilder._(
    validatedValue: 'CECILL-C',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CeCILL-C Free Software License Agreement'.toFhirStringBuilder,
  );

  /// ClArtistic
  static SPDXLicenseBuilder ClArtistic = SPDXLicenseBuilder._(
    validatedValue: 'ClArtistic',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Clarified Artistic License'.toFhirStringBuilder,
  );

  /// CNRI_Jython
  static SPDXLicenseBuilder CNRI_Jython = SPDXLicenseBuilder._(
    validatedValue: 'CNRI-Jython',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CNRI Jython License'.toFhirStringBuilder,
  );

  /// CNRI_Python_GPL_Compatible
  static SPDXLicenseBuilder CNRI_Python_GPL_Compatible = SPDXLicenseBuilder._(
    validatedValue: 'CNRI-Python-GPL-Compatible',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CNRI Python Open Source GPL Compatible License Agreement'
        .toFhirStringBuilder,
  );

  /// CNRI_Python
  static SPDXLicenseBuilder CNRI_Python = SPDXLicenseBuilder._(
    validatedValue: 'CNRI-Python',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CNRI Python License'.toFhirStringBuilder,
  );

  /// Condor_1_1
  static SPDXLicenseBuilder Condor_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'Condor-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Condor Public License v1.1'.toFhirStringBuilder,
  );

  /// CPAL_1_0
  static SPDXLicenseBuilder CPAL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CPAL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Common Public Attribution License 1.0'.toFhirStringBuilder,
  );

  /// CPL_1_0
  static SPDXLicenseBuilder CPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Common Public License 1.0'.toFhirStringBuilder,
  );

  /// CPOL_1_02
  static SPDXLicenseBuilder CPOL_1_02 = SPDXLicenseBuilder._(
    validatedValue: 'CPOL-1.02',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Code Project Open License 1.02'.toFhirStringBuilder,
  );

  /// Crossword
  static SPDXLicenseBuilder Crossword = SPDXLicenseBuilder._(
    validatedValue: 'Crossword',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Crossword License'.toFhirStringBuilder,
  );

  /// CrystalStacker
  static SPDXLicenseBuilder CrystalStacker = SPDXLicenseBuilder._(
    validatedValue: 'CrystalStacker',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CrystalStacker License'.toFhirStringBuilder,
  );

  /// CUA_OPL_1_0
  static SPDXLicenseBuilder CUA_OPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'CUA-OPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CUA Office Public License v1.0'.toFhirStringBuilder,
  );

  /// Cube
  static SPDXLicenseBuilder Cube = SPDXLicenseBuilder._(
    validatedValue: 'Cube',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cube License'.toFhirStringBuilder,
  );

  /// curl
  static SPDXLicenseBuilder curl = SPDXLicenseBuilder._(
    validatedValue: 'curl',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'curl License'.toFhirStringBuilder,
  );

  /// D_FSL_1_0
  static SPDXLicenseBuilder D_FSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'D-FSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Deutsche Freie Software Lizenz'.toFhirStringBuilder,
  );

  /// diffmark
  static SPDXLicenseBuilder diffmark = SPDXLicenseBuilder._(
    validatedValue: 'diffmark',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'diffmark license'.toFhirStringBuilder,
  );

  /// DOC
  static SPDXLicenseBuilder DOC = SPDXLicenseBuilder._(
    validatedValue: 'DOC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DOC License'.toFhirStringBuilder,
  );

  /// Dotseqn
  static SPDXLicenseBuilder Dotseqn = SPDXLicenseBuilder._(
    validatedValue: 'Dotseqn',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dotseqn License'.toFhirStringBuilder,
  );

  /// DSDP
  static SPDXLicenseBuilder DSDP = SPDXLicenseBuilder._(
    validatedValue: 'DSDP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DSDP License'.toFhirStringBuilder,
  );

  /// dvipdfm
  static SPDXLicenseBuilder dvipdfm = SPDXLicenseBuilder._(
    validatedValue: 'dvipdfm',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dvipdfm License'.toFhirStringBuilder,
  );

  /// ECL_1_0
  static SPDXLicenseBuilder ECL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'ECL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Educational Community License v1.0'.toFhirStringBuilder,
  );

  /// ECL_2_0
  static SPDXLicenseBuilder ECL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'ECL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Educational Community License v2.0'.toFhirStringBuilder,
  );

  /// EFL_1_0
  static SPDXLicenseBuilder EFL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'EFL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eiffel Forum License v1.0'.toFhirStringBuilder,
  );

  /// EFL_2_0
  static SPDXLicenseBuilder EFL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'EFL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eiffel Forum License v2.0'.toFhirStringBuilder,
  );

  /// eGenix
  static SPDXLicenseBuilder eGenix = SPDXLicenseBuilder._(
    validatedValue: 'eGenix',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'eGenix.com Public License 1.1.0'.toFhirStringBuilder,
  );

  /// Entessa
  static SPDXLicenseBuilder Entessa = SPDXLicenseBuilder._(
    validatedValue: 'Entessa',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entessa Public License v1.0'.toFhirStringBuilder,
  );

  /// EPL_1_0
  static SPDXLicenseBuilder EPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'EPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eclipse Public License 1.0'.toFhirStringBuilder,
  );

  /// EPL_2_0
  static SPDXLicenseBuilder EPL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'EPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eclipse Public License 2.0'.toFhirStringBuilder,
  );

  /// ErlPL_1_1
  static SPDXLicenseBuilder ErlPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'ErlPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Erlang Public License v1.1'.toFhirStringBuilder,
  );

  /// EUDatagrid
  static SPDXLicenseBuilder EUDatagrid = SPDXLicenseBuilder._(
    validatedValue: 'EUDatagrid',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'EU DataGrid Software License'.toFhirStringBuilder,
  );

  /// EUPL_1_0
  static SPDXLicenseBuilder EUPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'EUPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'European Union Public License 1.0'.toFhirStringBuilder,
  );

  /// EUPL_1_1
  static SPDXLicenseBuilder EUPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'EUPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'European Union Public License 1.1'.toFhirStringBuilder,
  );

  /// EUPL_1_2
  static SPDXLicenseBuilder EUPL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'EUPL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'European Union Public License 1.2'.toFhirStringBuilder,
  );

  /// Eurosym
  static SPDXLicenseBuilder Eurosym = SPDXLicenseBuilder._(
    validatedValue: 'Eurosym',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Eurosym License'.toFhirStringBuilder,
  );

  /// Fair
  static SPDXLicenseBuilder Fair = SPDXLicenseBuilder._(
    validatedValue: 'Fair',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fair License'.toFhirStringBuilder,
  );

  /// Frameworx_1_0
  static SPDXLicenseBuilder Frameworx_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'Frameworx-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Frameworx Open License 1.0'.toFhirStringBuilder,
  );

  /// FreeImage
  static SPDXLicenseBuilder FreeImage = SPDXLicenseBuilder._(
    validatedValue: 'FreeImage',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FreeImage Public License v1.0'.toFhirStringBuilder,
  );

  /// FSFAP
  static SPDXLicenseBuilder FSFAP = SPDXLicenseBuilder._(
    validatedValue: 'FSFAP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FSF All Permissive License'.toFhirStringBuilder,
  );

  /// FSFUL
  static SPDXLicenseBuilder FSFUL = SPDXLicenseBuilder._(
    validatedValue: 'FSFUL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'FSF Unlimited License'.toFhirStringBuilder,
  );

  /// FSFULLR
  static SPDXLicenseBuilder FSFULLR = SPDXLicenseBuilder._(
    validatedValue: 'FSFULLR',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'FSF Unlimited License (with License Retention)'.toFhirStringBuilder,
  );

  /// FTL
  static SPDXLicenseBuilder FTL = SPDXLicenseBuilder._(
    validatedValue: 'FTL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Freetype Project License'.toFhirStringBuilder,
  );

  /// GFDL_1_1_only
  static SPDXLicenseBuilder GFDL_1_1_only = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.1-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.1 only'.toFhirStringBuilder,
  );

  /// GFDL_1_1_or_later
  static SPDXLicenseBuilder GFDL_1_1_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.1-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.1 or later'.toFhirStringBuilder,
  );

  /// GFDL_1_2_only
  static SPDXLicenseBuilder GFDL_1_2_only = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.2-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.2 only'.toFhirStringBuilder,
  );

  /// GFDL_1_2_or_later
  static SPDXLicenseBuilder GFDL_1_2_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.2-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.2 or later'.toFhirStringBuilder,
  );

  /// GFDL_1_3_only
  static SPDXLicenseBuilder GFDL_1_3_only = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.3-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.3 only'.toFhirStringBuilder,
  );

  /// GFDL_1_3_or_later
  static SPDXLicenseBuilder GFDL_1_3_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GFDL-1.3-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Free Documentation License v1.3 or later'.toFhirStringBuilder,
  );

  /// Giftware
  static SPDXLicenseBuilder Giftware = SPDXLicenseBuilder._(
    validatedValue: 'Giftware',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Giftware License'.toFhirStringBuilder,
  );

  /// GL2PS
  static SPDXLicenseBuilder GL2PS = SPDXLicenseBuilder._(
    validatedValue: 'GL2PS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GL2PS License'.toFhirStringBuilder,
  );

  /// Glide
  static SPDXLicenseBuilder Glide = SPDXLicenseBuilder._(
    validatedValue: 'Glide',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: '3dfx Glide License'.toFhirStringBuilder,
  );

  /// Glulxe
  static SPDXLicenseBuilder Glulxe = SPDXLicenseBuilder._(
    validatedValue: 'Glulxe',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Glulxe License'.toFhirStringBuilder,
  );

  /// gnuplot
  static SPDXLicenseBuilder gnuplot = SPDXLicenseBuilder._(
    validatedValue: 'gnuplot',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'gnuplot License'.toFhirStringBuilder,
  );

  /// GPL_1_0_only
  static SPDXLicenseBuilder GPL_1_0_only = SPDXLicenseBuilder._(
    validatedValue: 'GPL-1.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v1.0 only'.toFhirStringBuilder,
  );

  /// GPL_1_0_or_later
  static SPDXLicenseBuilder GPL_1_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GPL-1.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v1.0 or later'.toFhirStringBuilder,
  );

  /// GPL_2_0_only
  static SPDXLicenseBuilder GPL_2_0_only = SPDXLicenseBuilder._(
    validatedValue: 'GPL-2.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v2.0 only'.toFhirStringBuilder,
  );

  /// GPL_2_0_or_later
  static SPDXLicenseBuilder GPL_2_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GPL-2.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v2.0 or later'.toFhirStringBuilder,
  );

  /// GPL_3_0_only
  static SPDXLicenseBuilder GPL_3_0_only = SPDXLicenseBuilder._(
    validatedValue: 'GPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v3.0 only'.toFhirStringBuilder,
  );

  /// GPL_3_0_or_later
  static SPDXLicenseBuilder GPL_3_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'GPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU General Public License v3.0 or later'.toFhirStringBuilder,
  );

  /// gSOAP_1_3b
  static SPDXLicenseBuilder gSOAP_1_3b = SPDXLicenseBuilder._(
    validatedValue: 'gSOAP-1.3b',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'gSOAP Public License v1.3b'.toFhirStringBuilder,
  );

  /// HaskellReport
  static SPDXLicenseBuilder HaskellReport = SPDXLicenseBuilder._(
    validatedValue: 'HaskellReport',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Haskell Language Report License'.toFhirStringBuilder,
  );

  /// HPND
  static SPDXLicenseBuilder HPND = SPDXLicenseBuilder._(
    validatedValue: 'HPND',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Historical Permission Notice and Disclaimer'.toFhirStringBuilder,
  );

  /// IBM_pibs
  static SPDXLicenseBuilder IBM_pibs = SPDXLicenseBuilder._(
    validatedValue: 'IBM-pibs',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'IBM PowerPC Initialization and Boot Software'.toFhirStringBuilder,
  );

  /// ICU
  static SPDXLicenseBuilder ICU = SPDXLicenseBuilder._(
    validatedValue: 'ICU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ICU License'.toFhirStringBuilder,
  );

  /// IJG
  static SPDXLicenseBuilder IJG = SPDXLicenseBuilder._(
    validatedValue: 'IJG',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Independent JPEG Group License'.toFhirStringBuilder,
  );

  /// ImageMagick
  static SPDXLicenseBuilder ImageMagick = SPDXLicenseBuilder._(
    validatedValue: 'ImageMagick',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ImageMagick License'.toFhirStringBuilder,
  );

  /// iMatix
  static SPDXLicenseBuilder iMatix = SPDXLicenseBuilder._(
    validatedValue: 'iMatix',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'iMatix Standard Function Library Agreement'.toFhirStringBuilder,
  );

  /// Imlib2
  static SPDXLicenseBuilder Imlib2 = SPDXLicenseBuilder._(
    validatedValue: 'Imlib2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Imlib2 License'.toFhirStringBuilder,
  );

  /// Info_ZIP
  static SPDXLicenseBuilder Info_ZIP = SPDXLicenseBuilder._(
    validatedValue: 'Info-ZIP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Info-ZIP License'.toFhirStringBuilder,
  );

  /// Intel_ACPI
  static SPDXLicenseBuilder Intel_ACPI = SPDXLicenseBuilder._(
    validatedValue: 'Intel-ACPI',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Intel ACPI Software License Agreement'.toFhirStringBuilder,
  );

  /// Intel
  static SPDXLicenseBuilder Intel = SPDXLicenseBuilder._(
    validatedValue: 'Intel',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Intel Open Source License'.toFhirStringBuilder,
  );

  /// Interbase_1_0
  static SPDXLicenseBuilder Interbase_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'Interbase-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Interbase Public License v1.0'.toFhirStringBuilder,
  );

  /// IPA
  static SPDXLicenseBuilder IPA = SPDXLicenseBuilder._(
    validatedValue: 'IPA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'IPA Font License'.toFhirStringBuilder,
  );

  /// IPL_1_0
  static SPDXLicenseBuilder IPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'IPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'IBM Public License v1.0'.toFhirStringBuilder,
  );

  /// ISC
  static SPDXLicenseBuilder ISC = SPDXLicenseBuilder._(
    validatedValue: 'ISC',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ISC License'.toFhirStringBuilder,
  );

  /// JasPer_2_0
  static SPDXLicenseBuilder JasPer_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'JasPer-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'JasPer License'.toFhirStringBuilder,
  );

  /// JSON
  static SPDXLicenseBuilder JSON = SPDXLicenseBuilder._(
    validatedValue: 'JSON',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'JSON License'.toFhirStringBuilder,
  );

  /// LAL_1_2
  static SPDXLicenseBuilder LAL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'LAL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Licence Art Libre 1.2'.toFhirStringBuilder,
  );

  /// LAL_1_3
  static SPDXLicenseBuilder LAL_1_3 = SPDXLicenseBuilder._(
    validatedValue: 'LAL-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Licence Art Libre 1.3'.toFhirStringBuilder,
  );

  /// Latex2e
  static SPDXLicenseBuilder Latex2e = SPDXLicenseBuilder._(
    validatedValue: 'Latex2e',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Latex2e License'.toFhirStringBuilder,
  );

  /// Leptonica
  static SPDXLicenseBuilder Leptonica = SPDXLicenseBuilder._(
    validatedValue: 'Leptonica',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Leptonica License'.toFhirStringBuilder,
  );

  /// LGPL_2_0_only
  static SPDXLicenseBuilder LGPL_2_0_only = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-2.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Library General Public License v2 only'.toFhirStringBuilder,
  );

  /// LGPL_2_0_or_later
  static SPDXLicenseBuilder LGPL_2_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-2.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'GNU Library General Public License v2 or later'.toFhirStringBuilder,
  );

  /// LGPL_2_1_only
  static SPDXLicenseBuilder LGPL_2_1_only = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-2.1-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Lesser General Public License v2.1 only'.toFhirStringBuilder,
  );

  /// LGPL_2_1_or_later
  static SPDXLicenseBuilder LGPL_2_1_or_later = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-2.1-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'GNU Lesser General Public License v2.1 or later'.toFhirStringBuilder,
  );

  /// LGPL_3_0_only
  static SPDXLicenseBuilder LGPL_3_0_only = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-3.0-only',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'GNU Lesser General Public License v3.0 only'.toFhirStringBuilder,
  );

  /// LGPL_3_0_or_later
  static SPDXLicenseBuilder LGPL_3_0_or_later = SPDXLicenseBuilder._(
    validatedValue: 'LGPL-3.0-or-later',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'GNU Lesser General Public License v3.0 or later'.toFhirStringBuilder,
  );

  /// LGPLLR
  static SPDXLicenseBuilder LGPLLR = SPDXLicenseBuilder._(
    validatedValue: 'LGPLLR',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Lesser General Public License For Linguistic Resources'
        .toFhirStringBuilder,
  );

  /// Libpng
  static SPDXLicenseBuilder Libpng = SPDXLicenseBuilder._(
    validatedValue: 'Libpng',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'libpng License'.toFhirStringBuilder,
  );

  /// libtiff
  static SPDXLicenseBuilder libtiff = SPDXLicenseBuilder._(
    validatedValue: 'libtiff',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'libtiff License'.toFhirStringBuilder,
  );

  /// LiLiQ_P_1_1
  static SPDXLicenseBuilder LiLiQ_P_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'LiLiQ-P-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Licence Libre du Québec – Permissive version 1.1'.toFhirStringBuilder,
  );

  /// LiLiQ_R_1_1
  static SPDXLicenseBuilder LiLiQ_R_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'LiLiQ-R-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'Licence Libre du Québec – Réciprocité version 1.1'.toFhirStringBuilder,
  );

  /// LiLiQ_Rplus_1_1
  static SPDXLicenseBuilder LiLiQ_Rplus_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'LiLiQ-Rplus-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Licence Libre du Québec – Réciprocité forte version 1.1'
        .toFhirStringBuilder,
  );

  /// Linux_OpenIB
  static SPDXLicenseBuilder Linux_OpenIB = SPDXLicenseBuilder._(
    validatedValue: 'Linux-OpenIB',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Linux Kernel Variant of OpenIB.org license'.toFhirStringBuilder,
  );

  /// LPL_1_0
  static SPDXLicenseBuilder LPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'LPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Lucent Public License Version 1.0'.toFhirStringBuilder,
  );

  /// LPL_1_02
  static SPDXLicenseBuilder LPL_1_02 = SPDXLicenseBuilder._(
    validatedValue: 'LPL-1.02',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Lucent Public License v1.02'.toFhirStringBuilder,
  );

  /// LPPL_1_0
  static SPDXLicenseBuilder LPPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'LPPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'LaTeX Project Public License v1.0'.toFhirStringBuilder,
  );

  /// LPPL_1_1
  static SPDXLicenseBuilder LPPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'LPPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'LaTeX Project Public License v1.1'.toFhirStringBuilder,
  );

  /// LPPL_1_2
  static SPDXLicenseBuilder LPPL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'LPPL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'LaTeX Project Public License v1.2'.toFhirStringBuilder,
  );

  /// LPPL_1_3a
  static SPDXLicenseBuilder LPPL_1_3a = SPDXLicenseBuilder._(
    validatedValue: 'LPPL-1.3a',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'LaTeX Project Public License v1.3a'.toFhirStringBuilder,
  );

  /// LPPL_1_3c
  static SPDXLicenseBuilder LPPL_1_3c = SPDXLicenseBuilder._(
    validatedValue: 'LPPL-1.3c',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'LaTeX Project Public License v1.3c'.toFhirStringBuilder,
  );

  /// MakeIndex
  static SPDXLicenseBuilder MakeIndex = SPDXLicenseBuilder._(
    validatedValue: 'MakeIndex',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MakeIndex License'.toFhirStringBuilder,
  );

  /// MirOS
  static SPDXLicenseBuilder MirOS = SPDXLicenseBuilder._(
    validatedValue: 'MirOS',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MirOS License'.toFhirStringBuilder,
  );

  /// MIT_0
  static SPDXLicenseBuilder MIT_0 = SPDXLicenseBuilder._(
    validatedValue: 'MIT-0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MIT No Attribution'.toFhirStringBuilder,
  );

  /// MIT_advertising
  static SPDXLicenseBuilder MIT_advertising = SPDXLicenseBuilder._(
    validatedValue: 'MIT-advertising',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Enlightenment License (e16)'.toFhirStringBuilder,
  );

  /// MIT_CMU
  static SPDXLicenseBuilder MIT_CMU = SPDXLicenseBuilder._(
    validatedValue: 'MIT-CMU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CMU License'.toFhirStringBuilder,
  );

  /// MIT_enna
  static SPDXLicenseBuilder MIT_enna = SPDXLicenseBuilder._(
    validatedValue: 'MIT-enna',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'enna License'.toFhirStringBuilder,
  );

  /// MIT_feh
  static SPDXLicenseBuilder MIT_feh = SPDXLicenseBuilder._(
    validatedValue: 'MIT-feh',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'feh License'.toFhirStringBuilder,
  );

  /// MIT
  static SPDXLicenseBuilder MIT = SPDXLicenseBuilder._(
    validatedValue: 'MIT',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MIT License'.toFhirStringBuilder,
  );

  /// MITNFA
  static SPDXLicenseBuilder MITNFA = SPDXLicenseBuilder._(
    validatedValue: 'MITNFA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'MIT +no-false-attribs license'.toFhirStringBuilder,
  );

  /// Motosoto
  static SPDXLicenseBuilder Motosoto = SPDXLicenseBuilder._(
    validatedValue: 'Motosoto',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Motosoto License'.toFhirStringBuilder,
  );

  /// mpich2
  static SPDXLicenseBuilder mpich2 = SPDXLicenseBuilder._(
    validatedValue: 'mpich2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'mpich2 License'.toFhirStringBuilder,
  );

  /// MPL_1_0
  static SPDXLicenseBuilder MPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'MPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mozilla Public License 1.0'.toFhirStringBuilder,
  );

  /// MPL_1_1
  static SPDXLicenseBuilder MPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'MPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mozilla Public License 1.1'.toFhirStringBuilder,
  );

  /// MPL_2_0_no_copyleft_exception
  static SPDXLicenseBuilder MPL_2_0_no_copyleft_exception =
      SPDXLicenseBuilder._(
    validatedValue: 'MPL-2.0-no-copyleft-exception',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mozilla Public License 2.0 (no copyleft exception)'
        .toFhirStringBuilder,
  );

  /// MPL_2_0
  static SPDXLicenseBuilder MPL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'MPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mozilla Public License 2.0'.toFhirStringBuilder,
  );

  /// MS_PL
  static SPDXLicenseBuilder MS_PL = SPDXLicenseBuilder._(
    validatedValue: 'MS-PL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Microsoft Public License'.toFhirStringBuilder,
  );

  /// MS_RL
  static SPDXLicenseBuilder MS_RL = SPDXLicenseBuilder._(
    validatedValue: 'MS-RL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Microsoft Reciprocal License'.toFhirStringBuilder,
  );

  /// MTLL
  static SPDXLicenseBuilder MTLL = SPDXLicenseBuilder._(
    validatedValue: 'MTLL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Matrix Template Library License'.toFhirStringBuilder,
  );

  /// Multics
  static SPDXLicenseBuilder Multics = SPDXLicenseBuilder._(
    validatedValue: 'Multics',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Multics License'.toFhirStringBuilder,
  );

  /// Mup
  static SPDXLicenseBuilder Mup = SPDXLicenseBuilder._(
    validatedValue: 'Mup',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mup License'.toFhirStringBuilder,
  );

  /// NASA_1_3
  static SPDXLicenseBuilder NASA_1_3 = SPDXLicenseBuilder._(
    validatedValue: 'NASA-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NASA Open Source Agreement 1.3'.toFhirStringBuilder,
  );

  /// Naumen
  static SPDXLicenseBuilder Naumen = SPDXLicenseBuilder._(
    validatedValue: 'Naumen',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Naumen Public License'.toFhirStringBuilder,
  );

  /// NBPL_1_0
  static SPDXLicenseBuilder NBPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'NBPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Net Boolean Public License v1'.toFhirStringBuilder,
  );

  /// NCSA
  static SPDXLicenseBuilder NCSA = SPDXLicenseBuilder._(
    validatedValue: 'NCSA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display:
        'University of Illinois/NCSA Open Source License'.toFhirStringBuilder,
  );

  /// Net_SNMP
  static SPDXLicenseBuilder Net_SNMP = SPDXLicenseBuilder._(
    validatedValue: 'Net-SNMP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Net-SNMP License'.toFhirStringBuilder,
  );

  /// NetCDF
  static SPDXLicenseBuilder NetCDF = SPDXLicenseBuilder._(
    validatedValue: 'NetCDF',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NetCDF license'.toFhirStringBuilder,
  );

  /// Newsletr
  static SPDXLicenseBuilder Newsletr = SPDXLicenseBuilder._(
    validatedValue: 'Newsletr',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Newsletr License'.toFhirStringBuilder,
  );

  /// NGPL
  static SPDXLicenseBuilder NGPL = SPDXLicenseBuilder._(
    validatedValue: 'NGPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Nethack General Public License'.toFhirStringBuilder,
  );

  /// NLOD_1_0
  static SPDXLicenseBuilder NLOD_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'NLOD-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Norwegian Licence for Open Government Data'.toFhirStringBuilder,
  );

  /// NLPL
  static SPDXLicenseBuilder NLPL = SPDXLicenseBuilder._(
    validatedValue: 'NLPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'No Limit Public License'.toFhirStringBuilder,
  );

  /// Nokia
  static SPDXLicenseBuilder Nokia = SPDXLicenseBuilder._(
    validatedValue: 'Nokia',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Nokia Open Source License'.toFhirStringBuilder,
  );

  /// NOSL
  static SPDXLicenseBuilder NOSL = SPDXLicenseBuilder._(
    validatedValue: 'NOSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Netizen Open Source License'.toFhirStringBuilder,
  );

  /// Noweb
  static SPDXLicenseBuilder Noweb = SPDXLicenseBuilder._(
    validatedValue: 'Noweb',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Noweb License'.toFhirStringBuilder,
  );

  /// NPL_1_0
  static SPDXLicenseBuilder NPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'NPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Netscape Public License v1.0'.toFhirStringBuilder,
  );

  /// NPL_1_1
  static SPDXLicenseBuilder NPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'NPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Netscape Public License v1.1'.toFhirStringBuilder,
  );

  /// NPOSL_3_0
  static SPDXLicenseBuilder NPOSL_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'NPOSL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Non-Profit Open Software License 3.0'.toFhirStringBuilder,
  );

  /// NRL
  static SPDXLicenseBuilder NRL = SPDXLicenseBuilder._(
    validatedValue: 'NRL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NRL License'.toFhirStringBuilder,
  );

  /// NTP
  static SPDXLicenseBuilder NTP = SPDXLicenseBuilder._(
    validatedValue: 'NTP',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'NTP License'.toFhirStringBuilder,
  );

  /// OCCT_PL
  static SPDXLicenseBuilder OCCT_PL = SPDXLicenseBuilder._(
    validatedValue: 'OCCT-PL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open CASCADE Technology Public License'.toFhirStringBuilder,
  );

  /// OCLC_2_0
  static SPDXLicenseBuilder OCLC_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'OCLC-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OCLC Research Public License 2.0'.toFhirStringBuilder,
  );

  /// ODbL_1_0
  static SPDXLicenseBuilder ODbL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'ODbL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ODC Open Database License v1.0'.toFhirStringBuilder,
  );

  /// OFL_1_0
  static SPDXLicenseBuilder OFL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'OFL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SIL Open Font License 1.0'.toFhirStringBuilder,
  );

  /// OFL_1_1
  static SPDXLicenseBuilder OFL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'OFL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SIL Open Font License 1.1'.toFhirStringBuilder,
  );

  /// OGTSL
  static SPDXLicenseBuilder OGTSL = SPDXLicenseBuilder._(
    validatedValue: 'OGTSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Group Test Suite License'.toFhirStringBuilder,
  );

  /// OLDAP_1_1
  static SPDXLicenseBuilder OLDAP_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v1.1'.toFhirStringBuilder,
  );

  /// OLDAP_1_2
  static SPDXLicenseBuilder OLDAP_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v1.2'.toFhirStringBuilder,
  );

  /// OLDAP_1_3
  static SPDXLicenseBuilder OLDAP_1_3 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v1.3'.toFhirStringBuilder,
  );

  /// OLDAP_1_4
  static SPDXLicenseBuilder OLDAP_1_4 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-1.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v1.4'.toFhirStringBuilder,
  );

  /// OLDAP_2_0_1
  static SPDXLicenseBuilder OLDAP_2_0_1 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.0.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.0.1'.toFhirStringBuilder,
  );

  /// OLDAP_2_0
  static SPDXLicenseBuilder OLDAP_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.0 (or possibly 2.0A and 2.0B)'
        .toFhirStringBuilder,
  );

  /// OLDAP_2_1
  static SPDXLicenseBuilder OLDAP_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.1'.toFhirStringBuilder,
  );

  /// OLDAP_2_2_1
  static SPDXLicenseBuilder OLDAP_2_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.2.1'.toFhirStringBuilder,
  );

  /// OLDAP_2_2_2
  static SPDXLicenseBuilder OLDAP_2_2_2 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.2.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License 2.2.2'.toFhirStringBuilder,
  );

  /// OLDAP_2_2
  static SPDXLicenseBuilder OLDAP_2_2 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.2'.toFhirStringBuilder,
  );

  /// OLDAP_2_3
  static SPDXLicenseBuilder OLDAP_2_3 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.3'.toFhirStringBuilder,
  );

  /// OLDAP_2_4
  static SPDXLicenseBuilder OLDAP_2_4 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.4'.toFhirStringBuilder,
  );

  /// OLDAP_2_5
  static SPDXLicenseBuilder OLDAP_2_5 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.5'.toFhirStringBuilder,
  );

  /// OLDAP_2_6
  static SPDXLicenseBuilder OLDAP_2_6 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.6',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.6'.toFhirStringBuilder,
  );

  /// OLDAP_2_7
  static SPDXLicenseBuilder OLDAP_2_7 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.7',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.7'.toFhirStringBuilder,
  );

  /// OLDAP_2_8
  static SPDXLicenseBuilder OLDAP_2_8 = SPDXLicenseBuilder._(
    validatedValue: 'OLDAP-2.8',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open LDAP Public License v2.8'.toFhirStringBuilder,
  );

  /// OML
  static SPDXLicenseBuilder OML = SPDXLicenseBuilder._(
    validatedValue: 'OML',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Market License'.toFhirStringBuilder,
  );

  /// OpenSSL
  static SPDXLicenseBuilder OpenSSL = SPDXLicenseBuilder._(
    validatedValue: 'OpenSSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OpenSSL License'.toFhirStringBuilder,
  );

  /// OPL_1_0
  static SPDXLicenseBuilder OPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'OPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Public License v1.0'.toFhirStringBuilder,
  );

  /// OSET_PL_2_1
  static SPDXLicenseBuilder OSET_PL_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'OSET-PL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OSET Public License version 2.1'.toFhirStringBuilder,
  );

  /// OSL_1_0
  static SPDXLicenseBuilder OSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'OSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Software License 1.0'.toFhirStringBuilder,
  );

  /// OSL_1_1
  static SPDXLicenseBuilder OSL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'OSL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Software License 1.1'.toFhirStringBuilder,
  );

  /// OSL_2_0
  static SPDXLicenseBuilder OSL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'OSL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Software License 2.0'.toFhirStringBuilder,
  );

  /// OSL_2_1
  static SPDXLicenseBuilder OSL_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'OSL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Software License 2.1'.toFhirStringBuilder,
  );

  /// OSL_3_0
  static SPDXLicenseBuilder OSL_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'OSL-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Open Software License 3.0'.toFhirStringBuilder,
  );

  /// PDDL_1_0
  static SPDXLicenseBuilder PDDL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'PDDL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'ODC Public Domain Dedication & License 1.0'.toFhirStringBuilder,
  );

  /// PHP_3_0
  static SPDXLicenseBuilder PHP_3_0 = SPDXLicenseBuilder._(
    validatedValue: 'PHP-3.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PHP License v3.0'.toFhirStringBuilder,
  );

  /// PHP_3_01
  static SPDXLicenseBuilder PHP_3_01 = SPDXLicenseBuilder._(
    validatedValue: 'PHP-3.01',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PHP License v3.01'.toFhirStringBuilder,
  );

  /// Plexus
  static SPDXLicenseBuilder Plexus = SPDXLicenseBuilder._(
    validatedValue: 'Plexus',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Plexus Classworlds License'.toFhirStringBuilder,
  );

  /// PostgreSQL
  static SPDXLicenseBuilder PostgreSQL = SPDXLicenseBuilder._(
    validatedValue: 'PostgreSQL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'PostgreSQL License'.toFhirStringBuilder,
  );

  /// psfrag
  static SPDXLicenseBuilder psfrag = SPDXLicenseBuilder._(
    validatedValue: 'psfrag',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'psfrag License'.toFhirStringBuilder,
  );

  /// psutils
  static SPDXLicenseBuilder psutils = SPDXLicenseBuilder._(
    validatedValue: 'psutils',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'psutils License'.toFhirStringBuilder,
  );

  /// Python_2_0
  static SPDXLicenseBuilder Python_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'Python-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Python License 2.0'.toFhirStringBuilder,
  );

  /// Qhull
  static SPDXLicenseBuilder Qhull = SPDXLicenseBuilder._(
    validatedValue: 'Qhull',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Qhull License'.toFhirStringBuilder,
  );

  /// QPL_1_0
  static SPDXLicenseBuilder QPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'QPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Q Public License 1.0'.toFhirStringBuilder,
  );

  /// Rdisc
  static SPDXLicenseBuilder Rdisc = SPDXLicenseBuilder._(
    validatedValue: 'Rdisc',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rdisc License'.toFhirStringBuilder,
  );

  /// RHeCos_1_1
  static SPDXLicenseBuilder RHeCos_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'RHeCos-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Red Hat eCos Public License v1.1'.toFhirStringBuilder,
  );

  /// RPL_1_1
  static SPDXLicenseBuilder RPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'RPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reciprocal Public License 1.1'.toFhirStringBuilder,
  );

  /// RPL_1_5
  static SPDXLicenseBuilder RPL_1_5 = SPDXLicenseBuilder._(
    validatedValue: 'RPL-1.5',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reciprocal Public License 1.5'.toFhirStringBuilder,
  );

  /// RPSL_1_0
  static SPDXLicenseBuilder RPSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'RPSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RealNetworks Public Source License v1.0'.toFhirStringBuilder,
  );

  /// RSA_MD
  static SPDXLicenseBuilder RSA_MD = SPDXLicenseBuilder._(
    validatedValue: 'RSA-MD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RSA Message-Digest License'.toFhirStringBuilder,
  );

  /// RSCPL
  static SPDXLicenseBuilder RSCPL = SPDXLicenseBuilder._(
    validatedValue: 'RSCPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ricoh Source Code Public License'.toFhirStringBuilder,
  );

  /// Ruby
  static SPDXLicenseBuilder Ruby = SPDXLicenseBuilder._(
    validatedValue: 'Ruby',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Ruby License'.toFhirStringBuilder,
  );

  /// SAX_PD
  static SPDXLicenseBuilder SAX_PD = SPDXLicenseBuilder._(
    validatedValue: 'SAX-PD',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sax Public Domain Notice'.toFhirStringBuilder,
  );

  /// Saxpath
  static SPDXLicenseBuilder Saxpath = SPDXLicenseBuilder._(
    validatedValue: 'Saxpath',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Saxpath License'.toFhirStringBuilder,
  );

  /// SCEA
  static SPDXLicenseBuilder SCEA = SPDXLicenseBuilder._(
    validatedValue: 'SCEA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SCEA Shared Source License'.toFhirStringBuilder,
  );

  /// Sendmail
  static SPDXLicenseBuilder Sendmail = SPDXLicenseBuilder._(
    validatedValue: 'Sendmail',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sendmail License'.toFhirStringBuilder,
  );

  /// SGI_B_1_0
  static SPDXLicenseBuilder SGI_B_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'SGI-B-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SGI Free Software License B v1.0'.toFhirStringBuilder,
  );

  /// SGI_B_1_1
  static SPDXLicenseBuilder SGI_B_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'SGI-B-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SGI Free Software License B v1.1'.toFhirStringBuilder,
  );

  /// SGI_B_2_0
  static SPDXLicenseBuilder SGI_B_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'SGI-B-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SGI Free Software License B v2.0'.toFhirStringBuilder,
  );

  /// SimPL_2_0
  static SPDXLicenseBuilder SimPL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'SimPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Simple Public License 2.0'.toFhirStringBuilder,
  );

  /// SISSL_1_2
  static SPDXLicenseBuilder SISSL_1_2 = SPDXLicenseBuilder._(
    validatedValue: 'SISSL-1.2',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sun Industry Standards Source License v1.2'.toFhirStringBuilder,
  );

  /// SISSL
  static SPDXLicenseBuilder SISSL = SPDXLicenseBuilder._(
    validatedValue: 'SISSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sun Industry Standards Source License v1.1'.toFhirStringBuilder,
  );

  /// Sleepycat
  static SPDXLicenseBuilder Sleepycat = SPDXLicenseBuilder._(
    validatedValue: 'Sleepycat',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sleepycat License'.toFhirStringBuilder,
  );

  /// SMLNJ
  static SPDXLicenseBuilder SMLNJ = SPDXLicenseBuilder._(
    validatedValue: 'SMLNJ',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Standard ML of New Jersey License'.toFhirStringBuilder,
  );

  /// SMPPL
  static SPDXLicenseBuilder SMPPL = SPDXLicenseBuilder._(
    validatedValue: 'SMPPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Secure Messaging Protocol Public License'.toFhirStringBuilder,
  );

  /// SNIA
  static SPDXLicenseBuilder SNIA = SPDXLicenseBuilder._(
    validatedValue: 'SNIA',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SNIA Public License 1.1'.toFhirStringBuilder,
  );

  /// Spencer_86
  static SPDXLicenseBuilder Spencer_86 = SPDXLicenseBuilder._(
    validatedValue: 'Spencer-86',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spencer License 86'.toFhirStringBuilder,
  );

  /// Spencer_94
  static SPDXLicenseBuilder Spencer_94 = SPDXLicenseBuilder._(
    validatedValue: 'Spencer-94',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spencer License 94'.toFhirStringBuilder,
  );

  /// Spencer_99
  static SPDXLicenseBuilder Spencer_99 = SPDXLicenseBuilder._(
    validatedValue: 'Spencer-99',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Spencer License 99'.toFhirStringBuilder,
  );

  /// SPL_1_0
  static SPDXLicenseBuilder SPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'SPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sun Public License v1.0'.toFhirStringBuilder,
  );

  /// SugarCRM_1_1_3
  static SPDXLicenseBuilder SugarCRM_1_1_3 = SPDXLicenseBuilder._(
    validatedValue: 'SugarCRM-1.1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SugarCRM Public License v1.1.3'.toFhirStringBuilder,
  );

  /// SWL
  static SPDXLicenseBuilder SWL = SPDXLicenseBuilder._(
    validatedValue: 'SWL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Scheme Widget Library (SWL) Software License Agreement'
        .toFhirStringBuilder,
  );

  /// TCL
  static SPDXLicenseBuilder TCL = SPDXLicenseBuilder._(
    validatedValue: 'TCL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TCL/TK License'.toFhirStringBuilder,
  );

  /// TCP_wrappers
  static SPDXLicenseBuilder TCP_wrappers = SPDXLicenseBuilder._(
    validatedValue: 'TCP-wrappers',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TCP Wrappers License'.toFhirStringBuilder,
  );

  /// TMate
  static SPDXLicenseBuilder TMate = SPDXLicenseBuilder._(
    validatedValue: 'TMate',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TMate Open Source License'.toFhirStringBuilder,
  );

  /// TORQUE_1_1
  static SPDXLicenseBuilder TORQUE_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'TORQUE-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'TORQUE v2.5+ Software License v1.1'.toFhirStringBuilder,
  );

  /// TOSL
  static SPDXLicenseBuilder TOSL = SPDXLicenseBuilder._(
    validatedValue: 'TOSL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Trusster Open Source License'.toFhirStringBuilder,
  );

  /// Unicode_DFS_2015
  static SPDXLicenseBuilder Unicode_DFS_2015 = SPDXLicenseBuilder._(
    validatedValue: 'Unicode-DFS-2015',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unicode License Agreement - Data Files and Software (2015)'
        .toFhirStringBuilder,
  );

  /// Unicode_DFS_2016
  static SPDXLicenseBuilder Unicode_DFS_2016 = SPDXLicenseBuilder._(
    validatedValue: 'Unicode-DFS-2016',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unicode License Agreement - Data Files and Software (2016)'
        .toFhirStringBuilder,
  );

  /// Unicode_TOU
  static SPDXLicenseBuilder Unicode_TOU = SPDXLicenseBuilder._(
    validatedValue: 'Unicode-TOU',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unicode Terms of Use'.toFhirStringBuilder,
  );

  /// Unlicense
  static SPDXLicenseBuilder Unlicense = SPDXLicenseBuilder._(
    validatedValue: 'Unlicense',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'The Unlicense'.toFhirStringBuilder,
  );

  /// UPL_1_0
  static SPDXLicenseBuilder UPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'UPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Universal Permissive License v1.0'.toFhirStringBuilder,
  );

  /// Vim
  static SPDXLicenseBuilder Vim = SPDXLicenseBuilder._(
    validatedValue: 'Vim',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Vim License'.toFhirStringBuilder,
  );

  /// VOSTROM
  static SPDXLicenseBuilder VOSTROM = SPDXLicenseBuilder._(
    validatedValue: 'VOSTROM',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'VOSTROM Public License for Open Source'.toFhirStringBuilder,
  );

  /// VSL_1_0
  static SPDXLicenseBuilder VSL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'VSL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Vovida Software License v1.0'.toFhirStringBuilder,
  );

  /// W3C_19980720
  static SPDXLicenseBuilder W3C_19980720 = SPDXLicenseBuilder._(
    validatedValue: 'W3C-19980720',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'W3C Software Notice and License (1998-07-20)'.toFhirStringBuilder,
  );

  /// W3C_20150513
  static SPDXLicenseBuilder W3C_20150513 = SPDXLicenseBuilder._(
    validatedValue: 'W3C-20150513',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'W3C Software Notice and Document License (2015-05-13)'
        .toFhirStringBuilder,
  );

  /// W3C
  static SPDXLicenseBuilder W3C = SPDXLicenseBuilder._(
    validatedValue: 'W3C',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'W3C Software Notice and License (2002-12-31)'.toFhirStringBuilder,
  );

  /// Watcom_1_0
  static SPDXLicenseBuilder Watcom_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'Watcom-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sybase Open Watcom Public License 1.0'.toFhirStringBuilder,
  );

  /// Wsuipa
  static SPDXLicenseBuilder Wsuipa = SPDXLicenseBuilder._(
    validatedValue: 'Wsuipa',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Wsuipa License'.toFhirStringBuilder,
  );

  /// WTFPL
  static SPDXLicenseBuilder WTFPL = SPDXLicenseBuilder._(
    validatedValue: 'WTFPL',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Do What The F*ck You Want To Public License'.toFhirStringBuilder,
  );

  /// X11
  static SPDXLicenseBuilder X11 = SPDXLicenseBuilder._(
    validatedValue: 'X11',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'X11 License'.toFhirStringBuilder,
  );

  /// Xerox
  static SPDXLicenseBuilder Xerox = SPDXLicenseBuilder._(
    validatedValue: 'Xerox',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Xerox License'.toFhirStringBuilder,
  );

  /// XFree86_1_1
  static SPDXLicenseBuilder XFree86_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'XFree86-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XFree86 License 1.1'.toFhirStringBuilder,
  );

  /// xinetd
  static SPDXLicenseBuilder xinetd = SPDXLicenseBuilder._(
    validatedValue: 'xinetd',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'xinetd License'.toFhirStringBuilder,
  );

  /// Xnet
  static SPDXLicenseBuilder Xnet = SPDXLicenseBuilder._(
    validatedValue: 'Xnet',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'X.Net License'.toFhirStringBuilder,
  );

  /// xpp
  static SPDXLicenseBuilder xpp = SPDXLicenseBuilder._(
    validatedValue: 'xpp',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XPP License'.toFhirStringBuilder,
  );

  /// XSkat
  static SPDXLicenseBuilder XSkat = SPDXLicenseBuilder._(
    validatedValue: 'XSkat',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XSkat License'.toFhirStringBuilder,
  );

  /// YPL_1_0
  static SPDXLicenseBuilder YPL_1_0 = SPDXLicenseBuilder._(
    validatedValue: 'YPL-1.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Yahoo! Public License v1.0'.toFhirStringBuilder,
  );

  /// YPL_1_1
  static SPDXLicenseBuilder YPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'YPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Yahoo! Public License v1.1'.toFhirStringBuilder,
  );

  /// Zed
  static SPDXLicenseBuilder Zed = SPDXLicenseBuilder._(
    validatedValue: 'Zed',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zed License'.toFhirStringBuilder,
  );

  /// Zend_2_0
  static SPDXLicenseBuilder Zend_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'Zend-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zend License v2.0'.toFhirStringBuilder,
  );

  /// Zimbra_1_3
  static SPDXLicenseBuilder Zimbra_1_3 = SPDXLicenseBuilder._(
    validatedValue: 'Zimbra-1.3',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zimbra Public License v1.3'.toFhirStringBuilder,
  );

  /// Zimbra_1_4
  static SPDXLicenseBuilder Zimbra_1_4 = SPDXLicenseBuilder._(
    validatedValue: 'Zimbra-1.4',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zimbra Public License v1.4'.toFhirStringBuilder,
  );

  /// zlib_acknowledgement
  static SPDXLicenseBuilder zlib_acknowledgement = SPDXLicenseBuilder._(
    validatedValue: 'zlib-acknowledgement',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'zlib/libpng License with Acknowledgement'.toFhirStringBuilder,
  );

  /// Zlib
  static SPDXLicenseBuilder Zlib = SPDXLicenseBuilder._(
    validatedValue: 'Zlib',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'zlib License'.toFhirStringBuilder,
  );

  /// ZPL_1_1
  static SPDXLicenseBuilder ZPL_1_1 = SPDXLicenseBuilder._(
    validatedValue: 'ZPL-1.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zope Public License 1.1'.toFhirStringBuilder,
  );

  /// ZPL_2_0
  static SPDXLicenseBuilder ZPL_2_0 = SPDXLicenseBuilder._(
    validatedValue: 'ZPL-2.0',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zope Public License 2.0'.toFhirStringBuilder,
  );

  /// ZPL_2_1
  static SPDXLicenseBuilder ZPL_2_1 = SPDXLicenseBuilder._(
    validatedValue: 'ZPL-2.1',
    system: 'http://hl7.org/fhir/ValueSet/spdx-license'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Zope Public License 2.1'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SPDXLicenseBuilder elementOnly =
      SPDXLicenseBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SPDXLicenseBuilder> values = [
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
  SPDXLicenseBuilder clone() => SPDXLicenseBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SPDXLicenseBuilder withElement(ElementBuilder? newElement) {
    return SPDXLicenseBuilder._(validatedValue: value, element: newElement);
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
  SPDXLicenseBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return SPDXLicenseBuilder._(
      validatedValue: newValue ?? value,
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
