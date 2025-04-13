// ignore_for_file: lines_longer_than_80_chars, constant_identifier_names
import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Class to parse and render StructureMap resources
class StructureMapParser {
  /// Constructor for StructureMapParser
  StructureMapParser._(this.fpe);

  /// Factory method to create an instance of StructureMapParser
  static Future<StructureMapParser> create() async {
    final fpe = await FHIRPathEngine.create(WorkerContext());
    return StructureMapParser._(fpe);
  }

  /// Constants for various tokens and keywords used in the parser

  /// Token for the 'map' keyword - 'map.where.check'
  static const String MAP_WHERE_CHECK = 'map.where.check';

  /// Token for the 'map' keyword - 'map.where.log'
  static const String MAP_WHERE_LOG = 'map.where.log';

  /// Token for the 'map' keyword - 'map.where.expression'
  static const String MAP_WHERE_EXPRESSION = 'map.where.expression';

  /// Token for the 'map' keyword - 'map.search.expression'
  static const String MAP_SEARCH_EXPRESSION = 'map.search.expression';

  /// Token for the 'map' keyword - 'map.transform.expression'
  static const String MAP_EXPRESSION = 'map.transform.expression';

  /// Defines if multiple targets should be rendered on one line
  static const bool RENDER_MULTIPLE_TARGETS_ONELINE = true;

  /// Defines if multiple sources should be rendered on one line
  static const String AUTO_VAR_NAME = 'vvv';

  /// FhirPathEngine instance for evaluating expressions
  FHIRPathEngine? fpe;

  /// Renders the StructureMap resource to a string format
  static String render(StructureMap map) {
    final b = StringBuffer()
      ..write('map "')
      ..write(map.url)
      ..write('" = "')
      ..write(_escapeJson(map.name.toString()))
      ..write('"\r\n\r\n');
    if (map.description?.valueString != null &&
        map.description!.valueString!.isNotEmpty) {
      _renderMultilineDoco(b, map.description!.valueString!, 0);
      b.write('\r\n');
    }
    _renderConceptMaps(b, map.toBuilder as StructureMapBuilder);
    _renderUses(b, map.toBuilder as StructureMapBuilder);
    _renderImports(b, map.toBuilder as StructureMapBuilder);
    for (final g in map.group) {
      _renderGroup(b, g.toBuilder as StructureMapGroupBuilder);
    }
    return b.toString();
  }

  /// Main entry point for parsing a StructureMap from Map file
  StructureMap parse(String text, String srcName) {
    final lexer = FHIRLexer(source: text, name: srcName);

    try {
      if (lexer.done()) throw lexer.error('Map Input cannot be empty');

      // Immediately expect and consume the "map" token
      lexer.token('map');

      // Create a new StructureMap (similar to new StructureMap() in Java/.NET)
      final result = StructureMapBuilder()

        // Read the URL and name from constants
        ..url = FhirUriBuilder(lexer.readConstant('url'));
      lexer.token('=');
      result.name = FhirStringBuilder(lexer.readConstant('name'));

      // Get all comments for additional metadata (this will later be used for description, status, etc.)
      final comments = lexer.getAllComments();
      if (comments.isNotEmpty) {
        // Here we mimic the Java/.NET approach:
        // We iterate over comment lines and process known metadata keys.
        final lines = comments.split(RegExp(r'\r\n?|\n'));
        final buffer = <String>[];
        for (final line in lines) {
          final index = line.indexOf('=');
          if (line.startsWith('/ ') && index > 2) {
            final prop = line.substring(2, index).trim().toLowerCase();
            final value = line
                .substring(index + 1)
                .trim()
                .replaceAll("'", '')
                .replaceAll('"', '');
            switch (prop) {
              case 'status':
                result.status =
                    PublicationStatusBuilder.fromJson({'value': value});
              case 'title':
                result.title = FhirStringBuilder(value);
              case 'name':
              case 'url':
                continue;
              case 'description':
                result.description =
                    FhirMarkdownBuilder(value.replaceAll('"', ''));
              default:
                final lineText = line.substring(2).trim();
                if (lineText.isNotEmpty) {
                  buffer.add(lineText);
                }
            }
          } else {
            if (line.trim().isNotEmpty) buffer.add(line.trim());
          }
        }
        if (buffer.isNotEmpty && result.description == null) {
          result.description = FhirMarkdownBuilder(buffer.join(', '));
        }
      }
      if (result.id == null && result.name != null) {
        result.id =
            FhirStringBuilder(result.name!.valueString!.replaceAll(' ', ''));
      }
      result.status = result.status ?? PublicationStatusBuilder.draft;
      if (result.description == null && result.title != null) {
        result.description = FhirMarkdownBuilder(result.title!.valueString);
      }

      // Parse concept maps and add them to contained resources
      while (lexer.hasToken('conceptmap')) {
        result.contained ??= <ResourceBuilder>[];
        result.contained!.add(_parseConceptMap(lexer));
      }

      // Parse 'uses' statements and add them to structures
      while (lexer.hasToken('uses')) {
        result.structure ??= <StructureMapStructureBuilder>[];
        result.structure!.add(_parseUses(lexer));
      }

      // Parse 'imports' statements and add them to imports
      while (lexer.hasToken('imports')) {
        result.import_ ??= <FhirCanonicalBuilder>[];
        result.import_!.add(_parseImports(lexer));
      }

      // Parse groups and add them to the groups list
      while (!lexer.done()) {
        result.group ??= <StructureMapGroupBuilder>[];
        result.group!.add(_parseGroup(lexer));
      }

      if (text.isNotEmpty) {
        try {
          result.text = NarrativeBuilder(
            status: NarrativeStatusBuilder.additional,
            div: (text.startsWith('<div>')
                    ? text
                    : '<div xmlns="http://www.w3.org/1999/xhtml">${text.replaceAll("<", "&lt;").replaceAll(">", "&gt;")}</div>')
                .toFhirXhtmlBuilder,
          );
        } catch (e) {
          result.text = NarrativeBuilder(
            status: NarrativeStatusBuilder.additional,
            div:
                '<div xmlns="http://www.w3.org/1999/xhtml">Invalid XHTML content</div>'
                    .toFhirXhtmlBuilder,
          );
        }
      }

      // Construct the StructureMap with parsed metadata and details
      return result.build();
    } catch (e) {
      throw FhirParserException(
        message:
            'Position ${lexer.currentLocation.line}, ${lexer.currentLocation.column}',
        cause: e,
        stackTrace: StackTrace.current,
      );
    }
  }

  StructureMapRuleBuilder _parseRule(FHIRLexer lexer, bool newFmt) {
    // Initialize local variables for parsing
    String? name;
    var documentation = lexer.getFirstComment();
    final sources = <StructureMapSourceBuilder>[];
    final targets = <StructureMapTargetBuilder>[];
    final dependents = <StructureMapDependentBuilder>[];
    final rules = <StructureMapRuleBuilder>[];

    // Determine rule name and format
    if (!newFmt) {
      name = lexer.takeDottedToken();
      lexer
        ..token(':')
        ..token('for');
    } else {
      documentation = lexer.getFirstComment() ?? documentation;
    }

    // Source parsing loop
    var done = false;
    while (!done) {
      final source = _parseSource(lexer);
      sources.add(source);
      done = !lexer.hasToken(',');
      if (!done) lexer.next();
    }

    // Target parsing
    if ((newFmt && lexer.hasToken('->')) ||
        (!newFmt && lexer.hasToken('make'))) {
      lexer.token(newFmt ? '->' : 'make');
      done = false;
      while (!done) {
        final target = _parseTarget(lexer);
        targets.add(target);
        done = !lexer.hasToken(',');
        if (!done) lexer.next();
      }
    }

    // Handling nested rules or dependencies if present
    if (lexer.hasToken('then')) {
      lexer.token('then');
      if (lexer.hasToken('{')) {
        lexer.token('{');
        while (!lexer.hasToken('}')) {
          if (lexer.done()) {
            throw lexer
                .error("Premature termination expecting '}' in nested group");
          }
          final innerRule = _parseRule(lexer, newFmt);
          rules.add(innerRule);
        }
        lexer.token('}');
      } else {
        // Handle function calls within then clause
        done = false;
        while (!done) {
          final dependent = _parseRuleReference(lexer);
          dependents.add(dependent);
          done = !lexer.hasToken(',');
          if (!done) lexer.next();
        }
      }
    } else if (documentation == null && lexer.hasComments()) {
      documentation = lexer.getFirstComment();
    }

    // Simple syntax adjustment if applicable
    if (_isSimpleSyntax(sources, targets, dependents, rules)) {
      final updatedSource =
          sources.first.copyWith(variable: AUTO_VAR_NAME.toFhirIdBuilder);
      final updatedTarget = targets.first.copyWith(
        variable: AUTO_VAR_NAME.toFhirIdBuilder,
        transform: StructureMapTransformBuilder.create,
      );
      sources[0] = updatedSource;
      targets[0] = updatedTarget;
    }

    // Final naming and semicolon handling
    if (newFmt) {
      if (lexer.isConstant()) {
        if (lexer.isStringConstant()) {
          name = lexer.readConstant('ruleName');
        } else {
          name = lexer.take();
        }
      } else {
        if (sources.isNotEmpty && sources.first.element?.valueString != null) {
          name = sources.first.element!.valueString;
          if (sources.first.type?.valueString != null) {
            // Only concatenate if type is not null and valid
            name =
                '$name${sources.first.type!.valueString!.capitalizeFirstLetter()}';
          }
        } else {
          throw lexer.error('Complex rules must have an explicit name');
        }
      }
      if (lexer.hasToken(';')) lexer.token(';');
    }

    // Append any post-rule comments to documentation
    if (lexer.hasComments()) {
      final postComment = lexer.getFirstComment();
      documentation = (documentation != null && documentation.isNotEmpty)
          ? '$documentation\n$postComment'
          : postComment;
    }

    // Return the completed StructureMapRule with documentation
    return StructureMapRuleBuilder(
      name: name?.toFhirIdBuilder ?? AUTO_VAR_NAME.toFhirIdBuilder,
      documentation: documentation?.isNotEmpty ?? false
          ? documentation!.toFhirStringBuilder
          : null,
      source: sources,
      target: targets,
      dependent: dependents,
      rule: rules,
    );
  }

  /// Maps for tracking aliases and variables
  final Map<String, String> aliasToUrlMap = {};

  /// New map for variables in groups
  final Map<String, String> variableToAliasMap = {};

  StructureMapStructureBuilder _parseUses(FHIRLexer lexer) {
    lexer.token('uses');

    // Collect URL and alias information
    final url = lexer.readConstant('url');
    String? alias;
    if (lexer.hasToken('alias')) {
      lexer.token('alias');
      alias = lexer.take();
    }
    lexer.token('as');
    final modeCode = lexer.take();
    final mode = StructureMapModelModeBuilder.fromJson({'value': modeCode});
    lexer.skipToken(';');
    final documentation = lexer.getFirstComment();

    // Store alias for identifier tracking in later parts
    if (alias != null) {
      aliasToUrlMap[alias] = url; // alias-to-URL mapping
    }

    return StructureMapStructureBuilder(
      url: url.toFhirCanonicalBuilder,
      alias: alias?.toFhirStringBuilder,
      mode: mode,
      documentation: documentation?.toFhirStringBuilder,
    );
  }

  FhirCanonicalBuilder _parseImports(FHIRLexer lexer) {
    lexer.token('imports');

    // Collect the import URL
    final importUrl = lexer.readConstant('url');
    lexer
      ..skipToken(';')
      ..getFirstComment(); // Consume any comments

    // Return the FhirCanonical object
    return importUrl.toFhirCanonicalBuilder;
  }

  StructureMapGroupBuilder _parseGroup(FHIRLexer lexer) {
    // Capture initial comments and token
    final comment = lexer.getAllComments();

    lexer.token('group'); // Should consume 'group' token

    // Initialize variables
    final documentation = comment.isNotEmpty ? comment : null;
    var newFmt = false;
    StructureMapGroupTypeModeBuilder? typeMode;
    String? extends_;
    final inputs = <StructureMapInputBuilder>[];
    final rules = <StructureMapRuleBuilder>[];

    // Log initial values of variables

    // Check for 'for' token to determine type mode
    if (lexer.hasToken('for')) {
      lexer.token('for');
      if (lexer.current == 'type') {
        lexer
          ..token('type')
          ..token('+')
          ..token('types');
        typeMode = StructureMapGroupTypeModeBuilder.type_and_types;
      } else {
        lexer.token('types');
        typeMode = StructureMapGroupTypeModeBuilder.types;
      }
    } else {
      typeMode = StructureMapGroupTypeModeBuilder.none;
    }

    // Capture and print group name
    final name = lexer.take();

    // Handle new format inputs
    if (lexer.hasToken('(')) {
      newFmt = true;
      lexer.take(); // Consume '('

      while (!lexer.hasToken(')')) {
        final input = _parseInput(lexer, true);
        inputs.add(input);

        if (lexer.hasToken(',')) {
          lexer.token(',');
        }
      }
      lexer.take(); // Consume ')'
    }

    // Check for group extension
    if (lexer.hasToken('extends')) {
      lexer.next();
      extends_ = lexer.take();
    }

    // Check if new format with type mode
    if (newFmt) {
      typeMode = StructureMapGroupTypeModeBuilder.none;
      if (lexer.hasToken('<')) {
        lexer
          ..token('<')
          ..token('<');
        if (lexer.hasToken('types')) {
          typeMode = StructureMapGroupTypeModeBuilder.types;
          lexer.token('types');
        } else {
          lexer
            ..token('type')
            ..token('+');
          typeMode = StructureMapGroupTypeModeBuilder.type_and_types;
        }
        lexer
          ..token('>')
          ..token('>');
      }
      lexer.token('{');
    }

    // Parsing rules in newFmt group
    if (newFmt) {
      while (!lexer.hasToken('}')) {
        if (lexer.done()) {
          throw lexer.error("Premature termination expecting '}'");
        }

        final rule = _parseRule(lexer, true);
        rules.add(rule);
      }
      lexer.token('}'); // Close current group block
    } else {
      while (lexer.hasToken('input')) {
        final input = _parseInput(lexer, false);
        inputs.add(input);
      }
      while (!lexer.hasToken('endgroup')) {
        if (lexer.done()) {
          throw lexer.error("Premature termination expecting 'endgroup'");
        }

        final rule = _parseRule(lexer, false);
        rules.add(rule);
      }
      lexer.token('endgroup');
    }

    // Ensure proper lexer state after group parsing

    if (lexer.hasToken('group')) {
    } else {
      lexer.next(); // Move to the next token if no group follows
    }

    return StructureMapGroupBuilder(
      name: name.toFhirIdBuilder,
      extends_: extends_?.toFhirIdBuilder,
      typeMode: typeMode,
      documentation: documentation?.toFhirStringBuilder,
      input: inputs,
      rule: rules,
    );
  }

  StructureMapInputBuilder _parseInput(FHIRLexer lexer, bool newFmt) {
    StructureMapInputModeBuilder? mode;
    String? name;
    String? type;
    String? documentation;

    if (newFmt) {
      mode = StructureMapInputModeBuilder.fromJson({'value': lexer.take()});
    } else {
      lexer.token('input');
    }
    name = lexer.take();
    if (lexer.hasToken(':')) {
      lexer.token(':');
      type = lexer.take();
    }
    if (!newFmt) {
      lexer.token('as');
      mode = StructureMapInputModeBuilder.fromJson({'value': lexer.take()});
      documentation = lexer.getAllComments();
      lexer.skipToken(';');
    }

    // Store variable name and type in variable-to-alias map for later reference
    if (type != null) {
      variableToAliasMap[name] = type;
    }

    return StructureMapInputBuilder(
      mode: mode,
      name: name.toFhirIdBuilder,
      type: type?.toFhirStringBuilder,
      documentation: documentation?.toFhirStringBuilder,
    );
  }

  StructureMapSourceBuilder _parseSource(FHIRLexer lexer) {
    final source =
        StructureMapSourceBuilder(context: lexer.take().toFhirIdBuilder);

    // Handle 'search' context special case
    if (source.context?.valueString == 'search' && lexer.hasToken('(')) {
      source.context = '@search'.toFhirIdBuilder;
      lexer.take();
      final expressionNode = fpe?.parseLexer(lexer);
      if (expressionNode != null) {
        source.element = expressionNode.toString().toFhirStringBuilder;
      }
      lexer.token(')');
    } else if (lexer.hasToken('.')) {
      lexer.token('.');
      source.element = lexer.take().toFhirCodeBuilder;
    }

    // Additional step to ensure tokens are properly split and checked
    if (lexer.hasToken(':')) {
      lexer.token(':');
      source.type = lexer.takeDottedToken().toFhirStringBuilder;
      if (!lexer.hasTokenList([
        'as',
        'first',
        'last',
        'not_first',
        'not_last',
        'only_one',
        'default',
      ])) {
        source.min = FhirIntegerBuilder(int.parse(lexer.take()));
        lexer.token('..');
        source.max = lexer.take().toFhirStringBuilder;
      }
    }

    if (lexer.hasToken('default')) {
      lexer.token('default');
      source.defaultValueX =
          lexer.readConstant('default value').toFhirStringBuilder;
    }

    if (['first', 'last', 'not_first', 'not_last', 'only_one']
        .contains(lexer.current)) {
      source.listMode =
          StructureMapSourceListModeBuilder.fromJson({'value': lexer.take()});
    }

    if (lexer.hasToken('as')) {
      lexer.take();
      source.variable = lexer.take().toFhirIdBuilder;
    }

    // Capture condition and check expressions
    if (lexer.hasToken('where')) {
      lexer.take();
      source.condition = fpe?.parseLexer(lexer).toString().toFhirStringBuilder;
    }
    if (lexer.hasToken('check')) {
      lexer.take();
      source.check = fpe?.parseLexer(lexer).toString().toFhirStringBuilder;
    }
    if (lexer.hasToken('log')) {
      lexer.take();
      source.logMessage = fpe?.parseLexer(lexer).toString().toFhirStringBuilder;
    }

    return source;
  }

  StructureMapTargetBuilder _parseTarget(FHIRLexer lexer) {
    final target = StructureMapTargetBuilder();

    // 1) Grab the first token (e.g., "someContext" or "variableName")
    String? start = lexer.take();

    // 2) If there's a '.' after 'start', that means "start.element"
    if (lexer.hasToken('.')) {
      target
        ..context = start.toFhirIdBuilder
        ..contextType = StructureMapContextTypeBuilder.variable;
      start = null;
      lexer.token('.');
      target.element = lexer.take().toFhirStringBuilder;
    }

    // 3) Figure out if we have '='. If so, read the next token as "name"
    String? name;
    var isConstant = false;
    if (lexer.hasToken('=')) {
      if (start != null) {
        target
          ..context = start.toFhirIdBuilder
          ..contextType = StructureMapContextTypeBuilder.variable;
      }
      lexer.token('=');
      isConstant = lexer.isConstant();
      name = lexer.take();
    } else {
      name = start;
    }

    target.parameter ??= <StructureMapParameterBuilder>[];

    // 4) Now handle three major cases:
    //
    //    (a) name == '(' -> "inline fluentpath expression"
    //    (b) we see '(' next -> transform(...) call
    //    (c) otherwise it's just name != null -> transform = copy

    // 4a) Inline fluentpath: name == "("
    if (name == '(') {
      target.transform = StructureMapTransformBuilder.evaluate;
      final node = fpe?.parseLexer(lexer); // parse the expression
      target.setUserData(MAP_EXPRESSION, node);

      // Add that expression as a parameter
      if (node != null) {
        target.parameter!.add(
          StructureMapParameterBuilder(
            valueX: node.toString().toFhirStringBuilder,
          ),
        );
      }
      lexer.token(')'); // consume the closing parenthesis

      // 4b) If there's a '(' token after 'name',
      //     then it's transform(name)(...) syntax
    } else if (lexer.hasToken('(')) {
      target.transform = StructureMapTransformBuilder.fromJson({'value': name});
      lexer.token('(');
      if (target.transform == StructureMapTransformBuilder.evaluate) {
        // The first argument is a parameter, then we expect a comma,
        // then an expression
        final params = _parseParameter(lexer);
        lexer.token(',');
        final node = fpe?.parseLexer(lexer);
        target.setUserData(MAP_EXPRESSION, node);

        target.parameter!.addAll(params);
        if (node != null) {
          target.parameter!.add(
            StructureMapParameterBuilder(
              valueX: node.toString().toFhirStringBuilder,
            ),
          );
        }
      } else {
        // Keep collecting parameters until we see ')'
        while (!lexer.hasToken(')')) {
          final params = _parseParameter(lexer);
          target.parameter!.addAll(params);
          if (!lexer.hasToken(')')) {
            lexer.token(',');
          }
        }
      }
      lexer.token(')'); // close the transform call

      // 4c) Otherwise, if name != null, it's a plain "copy" transform
    } else if (name != null) {
      target
        ..transform = StructureMapTransformBuilder.copy_
        ..contextType ??= StructureMapContextTypeBuilder.variable;
      if (!isConstant) {
        // Possibly "someName.more.dots"
        final buffer = StringBuffer(name);
        while (lexer.hasToken('.')) {
          buffer
            ..write(lexer.take())
            ..write(lexer.take());
        }
        target.parameter!.add(
          StructureMapParameterBuilder(
            valueX: buffer.toString().toFhirIdBuilder,
          ),
        );
      } else {
        // If it's a numeric constant
        final intVal = int.tryParse(name);
        if (intVal != null) {
          target.parameter!.add(
            StructureMapParameterBuilder(
              valueX: FhirIntegerBuilder(intVal),
            ),
          );
        } else {
          final boolVal = bool.tryParse(name);
          if (boolVal != null) {
            target.parameter!.add(
              StructureMapParameterBuilder(
                valueX: FhirBooleanBuilder(boolVal),
              ),
            );
          } else {
            // Otherwise treat it as a FHIR constant/string
            target.parameter!.add(
              StructureMapParameterBuilder(
                valueX: lexer.processConstant(name).toFhirStringBuilder,
              ),
            );
          }
        }
      }
    }

    // 5) If there's an "as someVar" syntax
    if (lexer.hasToken('as')) {
      lexer.take(); // consume the "as"
      target
        ..variable = lexer.take().toFhirIdBuilder
        ..contextType = StructureMapContextTypeBuilder.variable;
    }

    // 6) Check for "first", "last", "share", "collate"
    while (['first', 'last', 'share', 'collate'].contains(lexer.current)) {
      target.listMode ??= <StructureMapTargetListModeBuilder>[];
      if (lexer.current == 'share') {
        target.listMode!.add(StructureMapTargetListModeBuilder.share);
        lexer.next(); // consume 'share'
        target.listRuleId =
            lexer.take().toFhirIdBuilder; // the next token is the rule ID
      } else {
        if (lexer.current == 'first') {
          target.listMode!.add(StructureMapTargetListModeBuilder.first);
        } else {
          target.listMode!.add(StructureMapTargetListModeBuilder.last);
        }
        lexer.next(); // consume 'first' or 'last'
      }
    }

    // Return the completed target
    return target;
  }

  StructureMapDependentBuilder _parseRuleReference(FHIRLexer lexer) {
    // Collect values in local variables
    final name = lexer.take();
    final variables = <FhirStringBuilder>[];
    lexer.token('(');
    var done = false;
    while (!done) {
      variables.add(lexer.take().toFhirStringBuilder);
      done = !lexer.hasToken(',');
      if (!done) {
        lexer.next();
      }
    }
    lexer.token(')');

    // Create the StructureMapDependent object at the end
    return StructureMapDependentBuilder(
      name: name.toFhirIdBuilder,
      variable: variables,
    );
  }

  List<StructureMapParameterBuilder> _parseParameter(FHIRLexer lexer) {
    final params = <StructureMapParameterBuilder>[];

    if (!lexer.isConstant()) {
      params.add(
        StructureMapParameterBuilder(
          valueX: lexer.take().toFhirIdBuilder,
        ),
      );
    } else if (lexer.isStringConstant()) {
      params.add(
        StructureMapParameterBuilder(
          valueX: lexer.readConstant('??').toFhirStringBuilder,
        ),
      );
    } else {
      final type = _readConstant(lexer.take(), lexer);

      if (type is FhirBooleanBuilder) {
        params.add(StructureMapParameterBuilder(valueX: type));
      } else if (type is FhirIntegerBuilder) {
        params.add(StructureMapParameterBuilder(valueX: type));
      } else if (type is FhirDecimalBuilder) {
        params.add(StructureMapParameterBuilder(valueX: type));
      } else if (type is FhirStringBuilder) {
        params.add(StructureMapParameterBuilder(valueX: type));
      }
    }

    return params;
  }

  PrimitiveTypeBuilder _readConstant(String s, FHIRLexer lexer) {
    if (s == 'true') {
      return FhirBooleanBuilder(true);
    } else if (s == 'false') {
      return FhirBooleanBuilder(false);
    } else if (int.tryParse(s) != null) {
      return FhirIntegerBuilder(int.parse(s));
    } else if (double.tryParse(s) != null) {
      return FhirDecimalBuilder(double.parse(s));
    } else {
      return FhirStringBuilder(lexer.processConstant(s));
    }
  }

  bool _isSimpleSyntax(
    List<StructureMapSourceBuilder> sources,
    List<StructureMapTargetBuilder> targets,
    List<StructureMapDependentBuilder> dependents,
    List<StructureMapRuleBuilder> rules,
  ) {
    return sources.length == 1 &&
        targets.length == 1 &&
        sources.first.element != null &&
        sources.first.variable == null &&
        targets.first.context != null &&
        targets.first.element != null &&
        targets.first.variable == null &&
        (targets.first.parameter?.isEmpty ?? true) &&
        dependents.isEmpty &&
        rules.isEmpty;
  }

  ConceptMapBuilder _parseConceptMap(FHIRLexer lexer) {
    lexer.token('conceptmap');

    // Collect values in local variables with debugging output
    final id = lexer.readConstant('map id');

    if (!id.startsWith('#')) {
      // ignore: avoid_print
      print('Concept map ID missing # prefix, adding # prefix automatically');
    }
    final cmId = id.startsWith('#') ? id.substring(1) : id;

    final prefixes = <String, String>{};
    final groups = <ConceptMapGroupBuilder>[];

    lexer.token('{');

    // Parse prefixes
    while (lexer.hasToken('prefix')) {
      lexer.token('prefix');
      final n = lexer.take();
      lexer.token('=');
      final v = lexer.readConstant('prefix url');
      prefixes[n] = v;
    }

    final unmappedModes = <String, ConceptMapGroupUnmappedModeBuilder>{};

    // Parse unmapped modes
    while (lexer.hasToken('unmapped')) {
      lexer
        ..token('unmapped')
        ..token('for');
      final n = _readPrefix(prefixes, lexer);
      lexer.token('=');
      final v = lexer.take();
      if (v == 'provided') {
        unmappedModes[n] = ConceptMapGroupUnmappedModeBuilder.provided;
      } else {
        throw lexer
            .error('Only unmapped mode PROVIDED is supported at this time');
      }
    }

    // Parse equivalences within the concept map
    while (!lexer.hasToken('}')) {
      final srcs = _readPrefix(prefixes, lexer);
      lexer.token(':');
      final sc = lexer.current?.startsWith('"') ?? false
          ? lexer.readConstant('code')
          : lexer.take();
      final eq = _readEquivalence(lexer);
      final tgts = (eq != ConceptMapEquivalenceBuilder.unmatched)
          ? _readPrefix(prefixes, lexer)
          : null;

      // Find or create the appropriate group
      var group = groups.firstWhereOrNull(
        (g) => g.source?.toString() == srcs && g.target?.toString() == tgts,
      );
      if (group == null) {
        ConceptMapUnmappedBuilder? unmapped;
        if (unmappedModes.containsKey(srcs)) {
          unmapped = ConceptMapUnmappedBuilder(
            mode: unmappedModes[srcs] ??
                ConceptMapGroupUnmappedModeBuilder.provided,
          );
        }

        group = ConceptMapGroupBuilder(
          source: srcs.toFhirUriBuilder,
          target: tgts?.toFhirUriBuilder,
          element: [],
          unmapped: unmapped,
        );
        groups.add(group);
      }

      // Collect elements for the group
      final code = sc.startsWith('"') ? lexer.processConstant(sc) : sc;
      final targets = <ConceptMapTargetBuilder>[];

      if (eq != ConceptMapEquivalenceBuilder.unmatched) {
        lexer.token(':');
        var targetCode = lexer.take();
        targetCode = targetCode.startsWith('"')
            ? lexer.processConstant(targetCode)
            : targetCode;
        final target = ConceptMapTargetBuilder(
          code: targetCode.toFhirCodeBuilder,
          equivalence: eq,
          comment: lexer.getFirstComment()?.toFhirStringBuilder,
        );
        targets.add(target);
      } else {
        final target = ConceptMapTargetBuilder(
          equivalence: eq,
          comment: lexer.getFirstComment()?.toFhirStringBuilder,
        );
        targets.add(target);
      }

      final element = ConceptMapElementBuilder(
        code: code.toFhirCodeBuilder,
        target: targets,
      );

      // Update group elements
      final updatedElements =
          List<ConceptMapElementBuilder>.from(group.element ?? [])
            ..add(element);
      final updatedGroup = group.copyWith(element: updatedElements);
      groups[groups.indexOf(group)] = updatedGroup;
    }

    lexer.token('}');

    // Create and return the ConceptMap object
    final conceptMap = ConceptMapBuilder(
      id: cmId.toFhirStringBuilder,
      status: PublicationStatusBuilder.draft,
      group: groups,
    );

    return conceptMap;
  }

  // Helper methods matching the .NET code
  static String _escapeJson(String s) {
    // Implement escaping logic
    return s;
  }

  String _readPrefix(Map<String, String> prefixes, FHIRLexer lexer) {
    final prefix = lexer.take();
    if (!prefixes.containsKey(prefix)) {
      throw lexer.error("Unknown prefix '$prefix'");
    }
    return prefixes[prefix]!;
  }

  ConceptMapEquivalenceBuilder _readEquivalence(FHIRLexer lexer) {
    final token = lexer.take();
    switch (token) {
      case '-':
        return ConceptMapEquivalenceBuilder.relatedto;
      case '=':
        return ConceptMapEquivalenceBuilder.equal;
      case '==':
        return ConceptMapEquivalenceBuilder.equivalent;
      case '!=':
        return ConceptMapEquivalenceBuilder.disjoint;
      case '--':
        return ConceptMapEquivalenceBuilder.unmatched;
      case '<=':
        return ConceptMapEquivalenceBuilder.wider;
      case '<-':
        return ConceptMapEquivalenceBuilder.subsumes;
      case '>=':
        return ConceptMapEquivalenceBuilder.narrower;
      case '>-':
        return ConceptMapEquivalenceBuilder.specializes;
      case '~':
        return ConceptMapEquivalenceBuilder.inexact;
      default:
        throw lexer.error("Unknown equivalence token '$token'");
    }
  }

  static void _renderConceptMaps(StringBuffer b, StructureMapBuilder map) {
    for (final r in map.contained ?? <ResourceBuilder>[]) {
      if (r is ConceptMapBuilder) {
        _produceConceptMap(b, r);
      }
    }
  }

  static void _produceConceptMap(StringBuffer b, ConceptMapBuilder cm) {
    b
      ..write('conceptmap "')
      ..write(cm.id)
      ..write('" {\r\n');
    final prefixesSrc = <String, String>{};
    final prefixesTgt = <String, String>{};
    var prefix = 's'.codeUnitAt(0);

    for (final cg in cm.group ?? <ConceptMapGroupBuilder>[]) {
      if (!prefixesSrc.containsKey(cg.source?.toString())) {
        prefixesSrc[cg.source!.toString()] = String.fromCharCode(prefix);
        b
          ..write('  prefix ')
          ..write(String.fromCharCode(prefix))
          ..write(' = "')
          ..write(cg.source)
          ..write('"\r\n');
        prefix++;
      }
      if (!prefixesTgt.containsKey(cg.target?.toString())) {
        prefixesTgt[cg.target!.toString()] = String.fromCharCode(prefix);
        b
          ..write('  prefix ')
          ..write(String.fromCharCode(prefix))
          ..write(' = "')
          ..write(cg.target)
          ..write('"\r\n');
        prefix++;
      }
    }
    b.write('\n');
    for (final cg in cm.group ?? <ConceptMapGroupBuilder>[]) {
      if (cg.unmapped != null) {
        b
          ..write('  unmapped for ')
          ..write(prefixesSrc[cg.source!.toString()])
          ..write(' = ')
          ..write(cg.unmapped!.mode.toString())
          ..write('\n');
      }
    }

    for (final cg in cm.group ?? <ConceptMapGroupBuilder>[]) {
      for (final ce in cg.element ?? <ConceptMapElementBuilder>[]) {
        b
          ..write('  ')
          ..write(prefixesSrc[cg.source!.toString()])
          ..write(':');
        if (_isToken(ce.code!.toString())) {
          b.write(ce.code);
        } else {
          b
            ..write('"')
            ..write(ce.code)
            ..write('"');
        }
        b.write(' ');
        final e = (ce.target?.isNotEmpty ?? false)
            ? ce.target!.first.equivalence
            : null;
        b
          ..write(e != null ? _getChar(e) : '??')
          ..write(' ')
          ..write(prefixesTgt[cg.target!.toString()])
          ..write(':');
        if (ce.target?.isNotEmpty ?? false) {
          final targetCode = ce.target!.first.code;
          if (targetCode?.valueString != null &&
              _isToken(targetCode!.valueString!)) {
            b.write(targetCode);
          } else {
            b
              ..write('"')
              ..write(targetCode)
              ..write('"');
          }
        }
        b.write('\n');
      }
    }
    b.write('}\r\n\r\n');
  }

  static String _getChar(ConceptMapEquivalenceBuilder equivalence) {
    switch (equivalence.toString()) {
      case 'relatedto':
        return '-';
      case 'equal':
        return '=';
      case 'equivalent':
        return '==';
      case 'disjoint':
        return '!=';
      case 'unmatched':
        return '--';
      case 'wider':
        return '<=';
      case 'subsumes':
        return '<-';
      case 'narrower':
        return '>=';
      case 'specializes':
        return '>-';
      case 'inexact':
        return '~';
      default:
        return '??';
    }
  }

  static void _renderUses(StringBuffer b, StructureMapBuilder map) {
    for (final s in map.structure ?? <StructureMapStructureBuilder>[]) {
      b
        ..write('uses "')
        ..write(s.url)
        ..write('" ');
      if (s.alias?.valueString != null && s.alias!.valueString!.isNotEmpty) {
        b
          ..write('alias ')
          ..write(s.alias)
          ..write(' ');
      }
      b
        ..write('as ')
        ..write(s.mode.toString());
      _renderDoco(b, s.documentation?.valueString);
      b.write('\n');
    }
    if (map.structure?.isNotEmpty ?? false) b.write('\n');
  }

  static void _renderImports(StringBuffer b, StructureMapBuilder map) {
    if (map.import_?.isNotEmpty ?? false) {
      for (final s in map.import_ ?? <FhirCanonicalBuilder>[]) {
        b.write('imports "$s"\n');
      }
      b.write('\n');
    }
  }

  static void _renderGroup(StringBuffer b, StructureMapGroupBuilder g) {
    if (g.documentation?.valueString != null &&
        g.documentation!.valueString!.isNotEmpty) {
      _renderMultilineDoco(b, g.documentation!.valueString!, 0);
    }
    b
      ..write('group ')
      ..write(g.name)
      ..write('(');
    var first = true;
    for (final gi in g.input ?? <StructureMapInputBuilder>[]) {
      if (first) {
        first = false;
      } else {
        b.write(', ');
      }
      b
        ..write(gi.mode.toString())
        ..write(' ')
        ..write(gi.name);
      if (gi.type?.valueString != null && gi.type!.valueString!.isNotEmpty) {
        b
          ..write(' : ')
          ..write(gi.type);
      }
    }
    b.write(')');
    if (g.extends_?.valueString != null &&
        g.extends_!.valueString!.isNotEmpty) {
      b
        ..write(' extends ')
        ..write(g.extends_);
    }

    switch (g.typeMode.toString()) {
      case 'types':
        b.write(' <<types>>');
      case 'type-and-types':
        b.write(' <<type+>>');
      default:
        break;
    }
    b.write(' {\r\n');
    for (final r in g.rule ?? <StructureMapRuleBuilder>[]) {
      _renderRule(b, r, 2);
    }
    b.write('}\r\n\r\n');
  }

  static void _renderRule(
    StringBuffer b,
    StructureMapRuleBuilder r,
    int indent,
  ) {
    if (r.documentation?.valueString != null &&
        r.documentation!.valueString!.isNotEmpty) {
      _renderMultilineDoco(b, r.documentation!.valueString!, indent);
    }
    b.write(' ' * indent);
    final canBeAbbreviated = _checkIsSimple(r);

    var first = true;
    for (final rs in r.source ?? <StructureMapSourceBuilder>[]) {
      if (first) {
        first = false;
      } else {
        b.write(', ');
      }
      _renderSource(b, rs, canBeAbbreviated);
    }
    if (r.target?.isNotEmpty ?? false) {
      b.write(' -> ');
      first = true;
      for (final rt in r.target ?? <StructureMapTargetBuilder>[]) {
        if (first) {
          first = false;
        } else {
          b.write(', ');
        }
        if (RENDER_MULTIPLE_TARGETS_ONELINE) {
          b.write(' ');
        } else {
          b
            ..write('\n')
            ..write(' ' * (indent + 4));
        }
        _renderTarget(b, rt, canBeAbbreviated);
      }
    } else if (r.target?.isNotEmpty ?? false) {
      b.write(' -> ');
      _renderTarget(b, r.target!.first, canBeAbbreviated);
    }
    if (r.rule?.isNotEmpty ?? false) {
      b.write(' then {\r\n');
      for (final ir in r.rule ?? <StructureMapRuleBuilder>[]) {
        _renderRule(b, ir, indent + 2);
      }
      b
        ..write(' ' * indent)
        ..write('}');
    } else {
      if (r.dependent?.isNotEmpty ?? false) {
        b.write(' then ');
        first = true;
        for (final rd in r.dependent ?? <StructureMapDependentBuilder>[]) {
          if (first) {
            first = false;
          } else {
            b.write(', ');
          }
          b
            ..write(rd.name)
            ..write('(');
          var ifirst = true;
          for (final rdp in rd.variable ?? <FhirStringBuilder>[]) {
            if (ifirst) {
              ifirst = false;
            } else {
              b.write(', ');
            }
            b.write(rdp);
          }
          b.write(')');
        }
      }
    }
    if (r.name?.valueString?.isNotEmpty ?? false) {
      var n = _ntail(r.name!.valueString!);
      if (!n.startsWith('"')) n = '"$n"';
      if (!_matchesName(n, r.source ?? <StructureMapSourceBuilder>[])) {
        b
          ..write(' ')
          ..write(n);
      }
    }
    b
      ..write(';')
      ..write('\n');
  }

  static bool _matchesName(String n, List<StructureMapSourceBuilder> source) {
    if (source.length != 1) return false;
    final src = source.first;
    var s = src.element;
    if (s?.valueString == null || s!.valueString!.isEmpty) return false;
    if (n == s.valueString || n == '"$s"') return true;
    if (src.type != null && src.type!.valueString!.isNotEmpty) {
      s = '$s-${src.type}'.toFhirStringBuilder;
      if (n == s.valueString || n == '"$s"') return true;
    }
    return false;
  }

  static String _ntail(String oldName) {
    var name = oldName;
    if (name.startsWith('"') && name.endsWith('"')) {
      name = name.substring(1, name.length - 1);
    }
    return '"${name.contains('.') ? name.substring(name.lastIndexOf('.') + 1) : name}"';
  }

  static bool _checkIsSimple(StructureMapRuleBuilder r) {
    return (r.source?.length == 1 &&
            r.source!.first.element != null &&
            r.source!.first.variable != null) &&
        (r.target?.length == 1 &&
            r.target?.first.variable != null &&
            (r.target?.first.transform == null ||
                r.target?.first.transform ==
                    StructureMapTransformBuilder.create) &&
            (r.target?.first.parameter?.isEmpty ?? true)) &&
        (r.dependent?.isEmpty ?? true) &&
        (r.rule?.isEmpty ?? true);
  }

  static void _renderSource(
    StringBuffer b,
    StructureMapSourceBuilder rs,
    bool abbreviate,
  ) {
    b.write(rs.context);
    if (rs.context?.valueString == '@search') {
      b
        ..write('(')
        ..write(rs.element)
        ..write(')');
    } else if (rs.element?.valueString != null &&
        rs.element!.valueString!.isNotEmpty) {
      b
        ..write('.')
        ..write(rs.element);
    }
    if (rs.type?.valueString != null && rs.type!.valueString!.isNotEmpty) {
      b
        ..write(' : ')
        ..write(rs.type);
      if (rs.min != null) {
        b
          ..write(' ')
          ..write(rs.min)
          ..write('..')
          ..write(rs.max);
      }
    }

    if (rs.listMode != null) {
      b
        ..write(' ')
        ..write(rs.listMode!.toString());
    }
    if (rs.defaultValueX != null) {
      b
        ..write(' default ')
        ..write('"${_escapeJson(rs.defaultValueX!.toString())}"');
    }
    if (!abbreviate &&
        rs.variable?.valueString != null &&
        rs.variable!.valueString!.isNotEmpty) {
      b
        ..write(' as ')
        ..write(rs.variable);
    }
    if (rs.condition?.valueString != null &&
        rs.condition!.valueString!.isNotEmpty) {
      b
        ..write(' where ')
        ..write(rs.condition);
    }
    if (rs.check?.valueString != null && rs.check!.valueString!.isNotEmpty) {
      b
        ..write(' check ')
        ..write(rs.check);
    }
    if (rs.logMessage?.valueString != null &&
        rs.logMessage!.valueString!.isNotEmpty) {
      b
        ..write(' log ')
        ..write(rs.logMessage);
    }
  }

  static void _renderTarget(
    StringBuffer b,
    StructureMapTargetBuilder rt,
    bool abbreviate,
  ) {
    if (rt.context?.valueString != null &&
        rt.context!.valueString!.isNotEmpty) {
      b.write(rt.context);
      if (rt.element?.valueString != null &&
          rt.element!.valueString!.isNotEmpty) {
        b
          ..write('.')
          ..write(rt.element);
      }
    }
    if (!abbreviate && rt.transform != null) {
      if (rt.context?.valueString != null &&
          rt.context!.valueString!.isNotEmpty) {
        b.write(' = ');
      }
      if (rt.transform == StructureMapTransformBuilder.copy_ &&
          rt.parameter?.length == 1) {
        _renderTransformParam(b, rt.parameter!.first);
      } else if (rt.transform == StructureMapTransformBuilder.evaluate &&
          rt.parameter?.length == 1) {
        b
          ..write('(')
          ..write(rt.parameter?.first.valueX)
          ..write(')');
      } else if (rt.transform == StructureMapTransformBuilder.evaluate &&
          rt.parameter?.length == 2) {
        b
          ..write(rt.transform!.toString())
          ..write('(')
          ..write(rt.parameter?.first.valueX)
          ..write(', ')
          ..write(rt.parameter?[1].valueX)
          ..write(')');
      } else {
        b
          ..write(rt.transform!.toString())
          ..write('(');
        var first = true;
        for (final rtp in rt.parameter ?? <StructureMapParameterBuilder>[]) {
          if (first) {
            first = false;
          } else {
            b.write(', ');
          }
          _renderTransformParam(b, rtp);
        }
        b.write(')');
      }
    }
    if (!abbreviate &&
        rt.variable?.valueString != null &&
        rt.variable!.valueString!.isNotEmpty) {
      b
        ..write(' as ')
        ..write(rt.variable);
    }
    for (final lm in rt.listMode ?? <StructureMapTargetListModeBuilder>[]) {
      b
        ..write(' ')
        ..write(lm.toString());
      if (lm == StructureMapTargetListModeBuilder.share) {
        b
          ..write(' ')
          ..write(rt.listRuleId);
      }
    }
  }

  static void _renderTransformParam(
    StringBuffer b,
    StructureMapParameterBuilder rtp,
  ) {
    final value = rtp.valueX;
    if (value is FhirBooleanBuilder ||
        value is FhirIntegerBuilder ||
        value is FhirDecimalBuilder) {
      b.write(value.toString());
    } else {
      b.write("'${_escapeJava(value.toString())}'");
    }
  }

  static void _renderDoco(StringBuffer b, String? doco) {
    if (doco == null || doco.isEmpty) return;
    if (b.isNotEmpty &&
        !b.toString().endsWith('\n') &&
        !b.toString().endsWith(' ')) {
      b.write(' ');
    }
    b
      ..write('// ')
      ..write(
        doco
            .replaceAll('\r\n', ' ')
            .replaceAll('\r', ' ')
            .replaceAll('\n', ' '),
      );
  }

  static void _renderMultilineDoco(StringBuffer b, String doco, int indent) {
    if (doco.isEmpty) return;
    final lines = doco.replaceAll('\r\n', '\n').split(RegExp(r'[\r\n]'));
    for (final line in lines) {
      b.write(' ' * indent);
      _renderDoco(b, line);
      b.write('\r\n');
    }
  }

  static String _escapeJava(String s) {
    return s
        .replaceAll(r'\', r'\\')
        .replaceAll('"', r'\"')
        .replaceAll("'", r"\'")
        .replaceAll('\b', r'\b')
        .replaceAll('\f', r'\f')
        .replaceAll('\n', r'\n')
        .replaceAll('\r', r'\r')
        .replaceAll('\t', r'\t');
  }

// Helper method to check if a string is a valid token
  static bool _isToken(String s) {
    return RegExp(r'^[a-zA-Z_][a-zA-Z0-9_]*$').hasMatch(s);
  }
}
