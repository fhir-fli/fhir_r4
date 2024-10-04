import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestReport {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final String name;
  final PrimitiveElement Name;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference testScript;
  final FhirCode result;
  final PrimitiveElement Result;
  final FhirDecimal score;
  final PrimitiveElement Score;
  final String tester;
  final PrimitiveElement Tester;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final List<TestReportParticipant> participant;
  final TestReport_Setup setup;
  final List<TestReportTest> test;
  final TestReport_Teardown teardown;
  const TestReport({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.name,
    this.Name,
    this.status,
    this.Status,
    required this.testScript,
    this.result,
    this.Result,
    this.score,
    this.Score,
    this.tester,
    this.Tester,
    this.issued,
    this.Issued,
    this.participant,
    this.setup,
    this.test,
    this.teardown,
  });
}
