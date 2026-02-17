import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlNamedTypeSpecifierVisitor extends CqlBaseVisitor<NamedTypeSpecifier> {
  CqlNamedTypeSpecifierVisitor(super.library);

  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    String? qualifier;
    String? referentialOrTypeNameIdentifier;
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is QualifierContext) {
        qualifier = visitQualifier(child);
      }
      if (child is ReferentialOrTypeNameIdentifierContext) {
        referentialOrTypeNameIdentifier =
            visitReferentialOrTypeNameIdentifier(child);
      }
    }
    if (referentialOrTypeNameIdentifier != null) {
      final qname = _resolveQName(qualifier, referentialOrTypeNameIdentifier);
      return NamedTypeSpecifier(namespace: qname);
    } else {
      throw ArgumentError('$thisNode Invalid NamedTypeSpecifier');
    }
  }

  /// Resolve a type name with optional qualifier to a fully-qualified QName.
  /// When a qualifier like "FHIR" or "System" is present, use the
  /// corresponding namespace. When absent, ELM core types take priority
  /// (e.g. Quantity → urn:hl7-org:elm-types:r1), then FHIR-only types
  /// (e.g. dateTime → http://hl7.org/fhir).
  QName _resolveQName(String? qualifier, String typeName) {
    // Explicit qualifier resolves to known namespace
    if (qualifier != null) {
      // Check usings to resolve the qualifier to a URI
      final usings = library.usings?.def ?? [];
      for (final using in usings) {
        if (using.localIdentifier == qualifier && using.uri != null) {
          return QName(namespaceURI: using.uri!, localPart: typeName);
        }
      }
      // If qualifier is "FHIR", use FHIR namespace directly
      if (qualifier == 'FHIR') {
        return QName(
            namespaceURI: 'http://hl7.org/fhir', localPart: typeName);
      }
      if (qualifier == 'System') {
        return QName(
            namespaceURI: 'urn:hl7-org:elm-types:r1', localPart: typeName);
      }
    }

    // No qualifier — use QName.parse which checks ELM core types first,
    // then FHIR types, preserving correct namespace priority.
    return QName.parse(typeName);
  }
}
