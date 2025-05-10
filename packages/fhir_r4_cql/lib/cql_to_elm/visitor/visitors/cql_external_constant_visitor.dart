import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4/fhir_r4.dart' show R4ResourceType;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Visits constructs like `%String`, `%FhirDateTime`, or
/// `%MyExternalConstant`
class CqlExternalConstantVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlExternalConstantVisitor(super.library);

  @override
  CqlExpression visitExternalConstant(ExternalConstantContext ctx) {
    // 1) Pull off all the terminal texts except the leading '%'
    final raw = ctx.children!
        .whereType<TerminalNodeImpl>()
        .map((t) => t.text)
        .where((s) => s != '%')
        .join();

    if (raw.isEmpty) {
      throw ArgumentError('Invalid external constant at ${ctx.text}');
    }

    // 2) Elm‐core types, e.g. %String, %Boolean, %Integer, %DateTime, etc.
    if (QName.elmCoreTypes.contains(raw)) {
      final qn = QName.fromElmType(raw);
      return NamedTypeSpecifier(namespace: qn);
    }

    // 3) FHIR primitives or resource types, e.g. %FhirDecimal, %Patient, etc.
    if (QName.fhirTypes.contains(raw) ||
        R4ResourceType.typesAsStrings.contains(raw)) {
      final qn = QName.fromFhirType(raw);
      return NamedTypeSpecifier(namespace: qn);
    }

    // 4) Fully‐qualified QName syntax `{ns}LocalPart}`
    if (raw.startsWith('{')) {
      final qn = QName.parse(raw);
      return NamedTypeSpecifier(namespace: qn);
    }

    // 5) Otherwise: this really is an external constant lookup
    return NamedTypeSpecifier(namespace: QName(localPart: raw));
  }
}
