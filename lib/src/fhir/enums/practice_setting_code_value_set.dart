// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This is the code representing the clinical specialty of the clinician or provider who interacted with, treated, or provided a service to/for the patient. The value set used for clinical specialty has been limited by HITSP to the value set reproduced from HITSP C80 Table 2-149 Clinical Specialty Value Set Definition.
@collection
class PracticeSettingCodeValueSet {
  /// Constructor for internal use (like enum)
  PracticeSettingCodeValueSet({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PracticeSettingCodeValueSet values
  /// value408467006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408467006 =
      PracticeSettingCodeValueSet(
    fhirCode: '408467006',
  );

  /// value394577000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394577000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394577000',
  );

  /// value394578005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394578005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394578005',
  );

  /// value421661004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value421661004 =
      PracticeSettingCodeValueSet(
    fhirCode: '421661004',
  );

  /// value408462000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408462000 =
      PracticeSettingCodeValueSet(
    fhirCode: '408462000',
  );

  /// value394579002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394579002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394579002',
  );

  /// value394804000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394804000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394804000',
  );

  /// value394580004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394580004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394580004',
  );

  /// value394803006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394803006 =
      PracticeSettingCodeValueSet(
    fhirCode: '394803006',
  );

  /// value408480009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408480009 =
      PracticeSettingCodeValueSet(
    fhirCode: '408480009',
  );

  /// value408454008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408454008 =
      PracticeSettingCodeValueSet(
    fhirCode: '408454008',
  );

  /// value394809005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394809005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394809005',
  );

  /// value394592004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394592004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394592004',
  );

  /// value394600006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394600006 =
      PracticeSettingCodeValueSet(
    fhirCode: '394600006',
  );

  /// value394601005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394601005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394601005',
  );

  /// value394581000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394581000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394581000',
  );

  /// value408478003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408478003 =
      PracticeSettingCodeValueSet(
    fhirCode: '408478003',
  );

  /// value394812008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394812008 =
      PracticeSettingCodeValueSet(
    fhirCode: '394812008',
  );

  /// value408444009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408444009 =
      PracticeSettingCodeValueSet(
    fhirCode: '408444009',
  );

  /// value394582007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394582007 =
      PracticeSettingCodeValueSet(
    fhirCode: '394582007',
  );

  /// value408475000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408475000 =
      PracticeSettingCodeValueSet(
    fhirCode: '408475000',
  );

  /// value410005002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value410005002 =
      PracticeSettingCodeValueSet(
    fhirCode: '410005002',
  );

  /// value394583002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394583002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394583002',
  );

  /// value419772000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419772000 =
      PracticeSettingCodeValueSet(
    fhirCode: '419772000',
  );

  /// value394584008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394584008 =
      PracticeSettingCodeValueSet(
    fhirCode: '394584008',
  );

  /// value408443003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408443003 =
      PracticeSettingCodeValueSet(
    fhirCode: '408443003',
  );

  /// value394802001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394802001 =
      PracticeSettingCodeValueSet(
    fhirCode: '394802001',
  );

  /// value394915009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394915009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394915009',
  );

  /// value394814009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394814009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394814009',
  );

  /// value394808002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394808002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394808002',
  );

  /// value394811001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394811001 =
      PracticeSettingCodeValueSet(
    fhirCode: '394811001',
  );

  /// value408446006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408446006 =
      PracticeSettingCodeValueSet(
    fhirCode: '408446006',
  );

  /// value394586005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394586005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394586005',
  );

  /// value394916005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394916005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394916005',
  );

  /// value408472002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408472002 =
      PracticeSettingCodeValueSet(
    fhirCode: '408472002',
  );

  /// value394597005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394597005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394597005',
  );

  /// value394598000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394598000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394598000',
  );

  /// value394807007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394807007 =
      PracticeSettingCodeValueSet(
    fhirCode: '394807007',
  );

  /// value419192003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419192003 =
      PracticeSettingCodeValueSet(
    fhirCode: '419192003',
  );

  /// value408468001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408468001 =
      PracticeSettingCodeValueSet(
    fhirCode: '408468001',
  );

  /// value394593009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394593009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394593009',
  );

  /// value394813003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394813003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394813003',
  );

  /// value410001006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value410001006 =
      PracticeSettingCodeValueSet(
    fhirCode: '410001006',
  );

  /// value394589003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394589003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394589003',
  );

  /// value394591006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394591006 =
      PracticeSettingCodeValueSet(
    fhirCode: '394591006',
  );

  /// value394599008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394599008 =
      PracticeSettingCodeValueSet(
    fhirCode: '394599008',
  );

  /// value394649004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394649004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394649004',
  );

  /// value408470005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408470005 =
      PracticeSettingCodeValueSet(
    fhirCode: '408470005',
  );

  /// value394585009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394585009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394585009',
  );

  /// value394821009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394821009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394821009',
  );

  /// value422191005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value422191005 =
      PracticeSettingCodeValueSet(
    fhirCode: '422191005',
  );

  /// value394594003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394594003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394594003',
  );

  /// value416304004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value416304004 =
      PracticeSettingCodeValueSet(
    fhirCode: '416304004',
  );

  /// value418960008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418960008 =
      PracticeSettingCodeValueSet(
    fhirCode: '418960008',
  );

  /// value394882004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394882004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394882004',
  );

  /// value394806003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394806003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394806003',
  );

  /// value394588006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394588006 =
      PracticeSettingCodeValueSet(
    fhirCode: '394588006',
  );

  /// value408459003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408459003 =
      PracticeSettingCodeValueSet(
    fhirCode: '408459003',
  );

  /// value394607009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394607009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394607009',
  );

  /// value419610006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419610006 =
      PracticeSettingCodeValueSet(
    fhirCode: '419610006',
  );

  /// value418058008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418058008 =
      PracticeSettingCodeValueSet(
    fhirCode: '418058008',
  );

  /// value420208008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value420208008 =
      PracticeSettingCodeValueSet(
    fhirCode: '420208008',
  );

  /// value418652005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418652005 =
      PracticeSettingCodeValueSet(
    fhirCode: '418652005',
  );

  /// value418535003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418535003 =
      PracticeSettingCodeValueSet(
    fhirCode: '418535003',
  );

  /// value418862001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418862001 =
      PracticeSettingCodeValueSet(
    fhirCode: '418862001',
  );

  /// value419365004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419365004 =
      PracticeSettingCodeValueSet(
    fhirCode: '419365004',
  );

  /// value418002000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418002000 =
      PracticeSettingCodeValueSet(
    fhirCode: '418002000',
  );

  /// value419983000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419983000 =
      PracticeSettingCodeValueSet(
    fhirCode: '419983000',
  );

  /// value419170002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419170002 =
      PracticeSettingCodeValueSet(
    fhirCode: '419170002',
  );

  /// value419472004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419472004 =
      PracticeSettingCodeValueSet(
    fhirCode: '419472004',
  );

  /// value394539006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394539006 =
      PracticeSettingCodeValueSet(
    fhirCode: '394539006',
  );

  /// value420112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value420112009 =
      PracticeSettingCodeValueSet(
    fhirCode: '420112009',
  );

  /// value409968004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value409968004 =
      PracticeSettingCodeValueSet(
    fhirCode: '409968004',
  );

  /// value394587001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394587001 =
      PracticeSettingCodeValueSet(
    fhirCode: '394587001',
  );

  /// value394913002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394913002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394913002',
  );

  /// value408440000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408440000 =
      PracticeSettingCodeValueSet(
    fhirCode: '408440000',
  );

  /// value418112009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418112009 =
      PracticeSettingCodeValueSet(
    fhirCode: '418112009',
  );

  /// value419815003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419815003 =
      PracticeSettingCodeValueSet(
    fhirCode: '419815003',
  );

  /// value394914008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394914008 =
      PracticeSettingCodeValueSet(
    fhirCode: '394914008',
  );

  /// value408455009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408455009 =
      PracticeSettingCodeValueSet(
    fhirCode: '408455009',
  );

  /// value394602003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394602003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394602003',
  );

  /// value408447002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408447002 =
      PracticeSettingCodeValueSet(
    fhirCode: '408447002',
  );

  /// value394810000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394810000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394810000',
  );

  /// value408450004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408450004 =
      PracticeSettingCodeValueSet(
    fhirCode: '408450004',
  );

  /// value408476004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408476004 =
      PracticeSettingCodeValueSet(
    fhirCode: '408476004',
  );

  /// value408469009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408469009 =
      PracticeSettingCodeValueSet(
    fhirCode: '408469009',
  );

  /// value408466002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408466002 =
      PracticeSettingCodeValueSet(
    fhirCode: '408466002',
  );

  /// value408471009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408471009 =
      PracticeSettingCodeValueSet(
    fhirCode: '408471009',
  );

  /// value408464004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408464004 =
      PracticeSettingCodeValueSet(
    fhirCode: '408464004',
  );

  /// value408441001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408441001 =
      PracticeSettingCodeValueSet(
    fhirCode: '408441001',
  );

  /// value408465003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408465003 =
      PracticeSettingCodeValueSet(
    fhirCode: '408465003',
  );

  /// value394605001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394605001 =
      PracticeSettingCodeValueSet(
    fhirCode: '394605001',
  );

  /// value394608004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394608004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394608004',
  );

  /// value408461007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408461007 =
      PracticeSettingCodeValueSet(
    fhirCode: '408461007',
  );

  /// value408460008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408460008 =
      PracticeSettingCodeValueSet(
    fhirCode: '408460008',
  );

  /// value394606000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394606000 =
      PracticeSettingCodeValueSet(
    fhirCode: '394606000',
  );

  /// value408449004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408449004 =
      PracticeSettingCodeValueSet(
    fhirCode: '408449004',
  );

  /// value418018006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value418018006 =
      PracticeSettingCodeValueSet(
    fhirCode: '418018006',
  );

  /// value394604002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394604002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394604002',
  );

  /// value394609007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394609007 =
      PracticeSettingCodeValueSet(
    fhirCode: '394609007',
  );

  /// value408474001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408474001 =
      PracticeSettingCodeValueSet(
    fhirCode: '408474001',
  );

  /// value394610002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394610002 =
      PracticeSettingCodeValueSet(
    fhirCode: '394610002',
  );

  /// value394611003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394611003 =
      PracticeSettingCodeValueSet(
    fhirCode: '394611003',
  );

  /// value408477008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408477008 =
      PracticeSettingCodeValueSet(
    fhirCode: '408477008',
  );

  /// value394801008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394801008 =
      PracticeSettingCodeValueSet(
    fhirCode: '394801008',
  );

  /// value408463005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408463005 =
      PracticeSettingCodeValueSet(
    fhirCode: '408463005',
  );

  /// value419321007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419321007 =
      PracticeSettingCodeValueSet(
    fhirCode: '419321007',
  );

  /// value394576009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394576009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394576009',
  );

  /// value394590007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394590007 =
      PracticeSettingCodeValueSet(
    fhirCode: '394590007',
  );

  /// value409967009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value409967009 =
      PracticeSettingCodeValueSet(
    fhirCode: '409967009',
  );

  /// value408448007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value408448007 =
      PracticeSettingCodeValueSet(
    fhirCode: '408448007',
  );

  /// value419043006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value419043006 =
      PracticeSettingCodeValueSet(
    fhirCode: '419043006',
  );

  /// value394612005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394612005 =
      PracticeSettingCodeValueSet(
    fhirCode: '394612005',
  );

  /// value394733009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394733009 =
      PracticeSettingCodeValueSet(
    fhirCode: '394733009',
  );

  /// value394732004
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PracticeSettingCodeValueSet value394732004 =
      PracticeSettingCodeValueSet(
    fhirCode: '394732004',
  );

  /// For instances where an Element is present but not value

  static final PracticeSettingCodeValueSet elementOnly =
      PracticeSettingCodeValueSet();

  /// List of all enum-like values
  static final List<PracticeSettingCodeValueSet> values = [
    value408467006,
    value394577000,
    value394578005,
    value421661004,
    value408462000,
    value394579002,
    value394804000,
    value394580004,
    value394803006,
    value408480009,
    value408454008,
    value394809005,
    value394592004,
    value394600006,
    value394601005,
    value394581000,
    value408478003,
    value394812008,
    value408444009,
    value394582007,
    value408475000,
    value410005002,
    value394583002,
    value419772000,
    value394584008,
    value408443003,
    value394802001,
    value394915009,
    value394814009,
    value394808002,
    value394811001,
    value408446006,
    value394586005,
    value394916005,
    value408472002,
    value394597005,
    value394598000,
    value394807007,
    value419192003,
    value408468001,
    value394593009,
    value394813003,
    value410001006,
    value394589003,
    value394591006,
    value394599008,
    value394649004,
    value408470005,
    value394585009,
    value394821009,
    value422191005,
    value394594003,
    value416304004,
    value418960008,
    value394882004,
    value394806003,
    value394588006,
    value408459003,
    value394607009,
    value419610006,
    value418058008,
    value420208008,
    value418652005,
    value418535003,
    value418862001,
    value419365004,
    value418002000,
    value419983000,
    value419170002,
    value419472004,
    value394539006,
    value420112009,
    value409968004,
    value394587001,
    value394913002,
    value408440000,
    value418112009,
    value419815003,
    value394914008,
    value408455009,
    value394602003,
    value408447002,
    value394810000,
    value408450004,
    value408476004,
    value408469009,
    value408466002,
    value408471009,
    value408464004,
    value408441001,
    value408465003,
    value394605001,
    value394608004,
    value408461007,
    value408460008,
    value394606000,
    value408449004,
    value418018006,
    value394604002,
    value394609007,
    value408474001,
    value394610002,
    value394611003,
    value408477008,
    value394801008,
    value408463005,
    value419321007,
    value394576009,
    value394590007,
    value409967009,
    value408448007,
    value419043006,
    value394612005,
    value394733009,
    value394732004,
  ];

  /// Returns the enum value with an element attached
  PracticeSettingCodeValueSet withElement(Element? newElement) {
    return PracticeSettingCodeValueSet(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PracticeSettingCodeValueSet] from JSON.
  static PracticeSettingCodeValueSet fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PracticeSettingCodeValueSet.elementOnly.withElement(element);
    }
    return PracticeSettingCodeValueSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PracticeSettingCodeValueSet.$fhirCode';
}
