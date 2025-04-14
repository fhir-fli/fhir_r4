import 'package:cql/engine/types/cql_literal.dart';

///
/// To meet criteria using this datatype, the
/// diagnosis/problem indicated by the FamilyHistory QDM category and
/// its corresponding value set should reflect a diagnosis/problem of a
/// family member. When used in timing relationships, the recorded
/// datetime acts as both the implicit start datetime and implicit stop
/// datetime.
///

class FamilyHistory {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? relationship;

  FamilyHistory({
    this.authorDatetime,
    this.relationship,
  });
}
