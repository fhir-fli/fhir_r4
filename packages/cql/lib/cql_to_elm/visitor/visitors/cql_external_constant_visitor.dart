import 'package:antlr4/antlr4.dart';
import '../../../../cql.dart';

// TODO(Dokotela): test that it works
class CqlExternalConstantVisitor extends CqlBaseVisitor<dynamic> {
  CqlExternalConstantVisitor(super.library);

  @override
  dynamic visitExternalConstant(ExternalConstantContext ctx) {
    // Initial debugging entry point for ExternalConstant
    print('[DEBUG] Entering visitExternalConstant with context: $ctx');
    final int thisNode = getNextNode();
    print('[DEBUG] Node ID for ExternalConstant: $thisNode');

    // Components of the external constant
    String? identifier;

    // Iterate over children to determine whether it is an identifier or a string
    for (final child in ctx.children ?? <ParseTree>[]) {
      print('[DEBUG] Processing child in visitExternalConstant: $child');
      if (child is TerminalNodeImpl) {
        // Assuming `%` is the first part; skip it
        if (child.text == '%') {
          print('[DEBUG] Found % sign');
          continue;
        }

        // Assign the identifier or string value
        identifier = child.text;
        print('[DEBUG] Assigned identifier or string: $identifier');
      }
    }

    // Ensure the identifier is assigned correctly
    if (identifier == null) {
      final errorMessage =
          'Invalid ExternalConstant: missing identifier or string';
      print('[ERROR] $errorMessage');
      throw ArgumentError('$thisNode $errorMessage');
    }

    // Build the ExternalConstant object
    final externalConstant =
        NamedTypeSpecifier(namespace: QName.fromLocalPart(identifier));
    print('[DEBUG] Returning ExternalConstant: $externalConstant');

    return externalConstant;
  }
}
