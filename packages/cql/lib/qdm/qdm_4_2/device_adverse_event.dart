import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document an unexpected or dangerous reaction to a
/// device indicated by the QDM category and its corresponding value
/// set.
///

class DeviceAdverseEvent {
  final LiteralConcept? reaction;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DeviceAdverseEvent({
    this.startDatetime,
    this.stopDatetime,
    this.reaction,
  });
}
