import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

class StructureMapParser {
  StructureMapParser() : fpe = FHIRPathEngine(WorkerContext());
  static const String MAP_WHERE_CHECK = 'map.where.check';
  static const String MAP_WHERE_LOG = 'map.where.log';
  static const String MAP_WHERE_EXPRESSION = 'map.where.expression';
  static const String MAP_SEARCH_EXPRESSION = 'map.search.expression';
  static const String MAP_EXPRESSION = 'map.transform.expression';
  static const bool RENDER_MULTIPLE_TARGETS_ONELINE = true;
  static const String AUTO_VAR_NAME = 'vvv';

  final FHIRPathEngine fpe;

  static String render(StructureMap map) {
    final b = StringBuffer();
    b.write('map "');
    b.write(map.url);
    b.write('" = "');
    b.write(_escapeJson(map.name.toString()));
    b.write('"\r\n\r\n');
    if (map.description != null && map.description!.value!.isNotEmpty) {
      _renderMultilineDoco(b, map.description!.value!, 0);
      b.write('\r\n');
    }
    _renderConceptMaps(b, map);
    _renderUses(b, map);
    _renderImports(b, map);
    for (final g in map.group) {
      _renderGroup(b, g);
    }
    return b.toString();
  }

  StructureMap parse(String text, String srcName) {
    final lexer = FHIRLexer(source: text, name: srcName);
    if (lexer.done()) throw lexer.error('Map Input cannot be empty');

    // Initialize variables for metadata
    String? urlFromComments;
    String? nameFromComments;
    String? titleFromComments;
    String? idFromComments;
    PublicationStatus? statusFromComments;
    String? descriptionFromComments;

    // Process comments for metadata if present
    final comments = lexer.getAllComments();
    if (comments.isNotEmpty) {
      for (final line in comments.split(RegExp(r'\r\n?|\n'))) {
        final index = line.indexOf('=');
        if (index > 0) {
          final prop = line.substring(0, index).trim();
          final value = line
              .substring(index + 1)
              .trim()
              .replaceAll("'", '')
              .replaceAll('"', '');
          switch (prop.toLowerCase()) {
            case 'url':
              urlFromComments = value;
            case 'name':
              nameFromComments = value;
            case 'title':
              titleFromComments = value;
            case 'id':
              idFromComments = value.replaceAll(' ', '');
            case 'status':
              statusFromComments = PublicationStatus.fromJson({'value': value});
            case 'description':
              descriptionFromComments = value;
          }
        }
      }
    }

    // If no URL or name from comments, check for map line metadata
    if (urlFromComments == null || nameFromComments == null) {
      if (lexer.hasToken('map')) {
        lexer.token('map');
        urlFromComments = lexer.readConstant('URL');
        lexer.token('=');
        nameFromComments = lexer.readConstant('name');
      } else {
        throw lexer.error(
          'Map Input must start with "map" or contain "url" and "name" in comments',
        );
      }
    }

    // Set up the metadata for StructureMap
    final url = FhirUri(urlFromComments);
    final name = FhirString(nameFromComments);
    final title =
        titleFromComments != null ? FhirString(titleFromComments) : null;
    final id = idFromComments != null
        ? FhirString(idFromComments)
        : FhirString(
            nameFromComments.replaceAll(
              ' ',
              '',
            ),
          ); // Default to name without spaces if no id
    final status = statusFromComments ?? PublicationStatus.draft;
    final description = descriptionFromComments != null
        ? FhirMarkdown(descriptionFromComments)
        : titleFromComments != null
            ? FhirMarkdown(titleFromComments)
            : null;

    // Initialize lists to collect structures, imports, groups, and contained resources
    final contained = <Resource>[];
    final structures = <StructureMapStructure>[];
    final imports = <FhirCanonical>[];
    final groups = <StructureMapGroup>[];

    // Parse concept maps and add them to contained resources
    while (lexer.hasToken('conceptmap')) {
      final conceptMap = _parseConceptMap(lexer);
      contained.add(conceptMap);
    }

    // Parse 'uses' statements and add them to structures
    while (lexer.hasToken('uses')) {
      final structure = _parseUses(lexer);
      structures.add(structure);
    }

    // Parse 'imports' statements and add them to imports
    while (lexer.hasToken('imports')) {
      final importUrl = _parseImports(lexer);
      imports.add(importUrl);
    }

    // Parse groups and add them to the groups list
    while (!lexer.done()) {
      final group = _parseGroup(lexer);
      groups.add(group);
    }

    // Create Narrative text if available
    Narrative? textNode;
    if (text.isNotEmpty) {
      try {
        textNode = Narrative(
          status: NarrativeStatus.additional,
          div: (text.startsWith('<div>')
                  ? text
                  : '<div xmlns="http://www.w3.org/1999/xhtml">${text.replaceAll("<", "&lt;").replaceAll(">", "&gt;")}</div>')
              .toFhirXhtml,
        );
      } catch (e) {
        textNode = Narrative(
          status: NarrativeStatus.additional,
          div:
              '<div xmlns="http://www.w3.org/1999/xhtml">Invalid XHTML content</div>'
                  .toFhirXhtml,
        );
      }
    }

    // Construct the StructureMap with parsed metadata and details
    return StructureMap(
      id: id,
      url: url,
      name: name,
      title: title,
      status: status,
      description: description,
      contained: contained.isNotEmpty ? contained : null,
      structure: structures.isNotEmpty ? structures : null,
      import_: imports.isNotEmpty ? imports : null,
      group: groups,
      text: textNode,
    );
  }

  StructureMapRule _parseRule(FHIRLexer lexer, bool newFmt) {
    // Initialize local variables for parsing
    String? name;
    var documentation = lexer.getFirstComment();
    final sources = <StructureMapSource>[];
    final targets = <StructureMapTarget>[];
    final dependents = <StructureMapDependent>[];
    final rules = <StructureMapRule>[];

    // Determine rule name and format
    if (!newFmt) {
      name = lexer.takeDottedToken();
      lexer.token(':');
      lexer.token('for');
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
          sources.first.copyWith(variable: AUTO_VAR_NAME.toFhirId);
      final updatedTarget = targets.first.copyWith(
        variable: AUTO_VAR_NAME.toFhirId,
        transform: StructureMapTransform.create,
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
        print('SOURCE: ${sources.first.toJson()} : end source');
        if (sources.isNotEmpty && sources.first.element != null) {
          name = sources.first.element!.value;
          if (sources.first.type != null) {
            // Only concatenate if type is not null and valid
            name = '$name${sources.first.type}';
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
    return StructureMapRule(
      name: name?.toFhirId ?? AUTO_VAR_NAME.toFhirId,
      documentation: documentation?.isNotEmpty ?? false
          ? documentation!.toFhirString
          : null,
      source: sources,
      target: targets,
      dependent: dependents,
      rule: rules,
    );
  }

// Maps for tracking aliases and variables
  final Map<String, String> aliasToUrlMap = {};
  final Map<String, String> variableToAliasMap =
      {}; // New map for variables in groups

  StructureMapStructure _parseUses(FHIRLexer lexer) {
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
    final mode = StructureMapModelMode.fromJson({'value': modeCode});
    lexer.skipToken(';');
    final documentation = lexer.getFirstComment();

    // Store alias for identifier tracking in later parts
    if (alias != null) {
      aliasToUrlMap[alias] = url; // alias-to-URL mapping
    }

    return StructureMapStructure(
      url: url.toFhirCanonical,
      alias: alias?.toFhirString,
      mode: mode,
      documentation: documentation?.toFhirString,
    );
  }

  FhirCanonical _parseImports(FHIRLexer lexer) {
    lexer.token('imports');

    // Collect the import URL
    final importUrl = lexer.readConstant('url');
    lexer.skipToken(';');
    lexer.getFirstComment(); // Consume any comments

    // Return the FhirCanonical object
    return importUrl.toFhirCanonical;
  }

  StructureMapGroup _parseGroup(FHIRLexer lexer) {
    // Capture initial comments and token
    final comment = lexer.getAllComments();
    print('Starting _parseGroup with initial comments: $comment');
    print('Initial token at group start: ${lexer.current}');

    lexer.token('group'); // Should consume 'group' token

    // Initialize variables
    final documentation = comment.isNotEmpty ? comment : null;
    var newFmt = false;
    StructureMapGroupTypeMode? typeMode;
    String? extends_;
    final inputs = <StructureMapInput>[];
    final rules = <StructureMapRule>[];

    // Log initial values of variables
    print('Documentation initialized: $documentation');

    // Check for 'for' token to determine type mode
    if (lexer.hasToken('for')) {
      print('Detected "for" token.');
      lexer.token('for');
      if (lexer.current == 'type') {
        lexer.token('type');
        lexer.token('+');
        lexer.token('types');
        typeMode = StructureMapGroupTypeMode.type_and_types;
        print('Type mode set to type_and_types');
      } else {
        lexer.token('types');
        typeMode = StructureMapGroupTypeMode.types;
        print('Type mode set to types');
      }
    } else {
      typeMode = StructureMapGroupTypeMode.none;
      print('Type mode set to none');
    }

    // Capture and print group name
    final name = lexer.take();
    print('Group name captured: $name');
    print(
      'Current lexer token after capturing group name: ${lexer.current}',
    );

    // Handle new format inputs
    if (lexer.hasToken('(')) {
      newFmt = true;
      lexer.take(); // Consume '('
      print('New format detected; starting input parsing');

      while (!lexer.hasToken(')')) {
        final input = _parseInput(lexer, true);
        inputs.add(input);
        print('Input added: $input');
        if (lexer.hasToken(',')) {
          lexer.token(',');
        }
      }
      lexer.take(); // Consume ')'
      print('Finished parsing inputs');
    }

    // Check for group extension
    if (lexer.hasToken('extends')) {
      lexer.next();
      extends_ = lexer.take();
      print('Group extends: $extends_');
    }

    // Check if new format with type mode
    if (newFmt) {
      typeMode = StructureMapGroupTypeMode.none;
      if (lexer.hasToken('<')) {
        lexer.token('<');
        lexer.token('<');
        if (lexer.hasToken('types')) {
          typeMode = StructureMapGroupTypeMode.types;
          lexer.token('types');
        } else {
          lexer.token('type');
          lexer.token('+');
          typeMode = StructureMapGroupTypeMode.type_and_types;
        }
        lexer.token('>');
        lexer.token('>');
        print('Type mode finalized for newFmt: $typeMode');
      }
      lexer.token('{');
      print('Opening group block for new format');
    }

    // Parsing rules in newFmt group
    if (newFmt) {
      while (!lexer.hasToken('}')) {
        if (lexer.done()) {
          throw lexer.error("Premature termination expecting '}'");
        }
        print('Parsing rule inside newFmt group');
        final rule = _parseRule(lexer, true);
        rules.add(rule);
        print('Rule added: $rule');
      }
      lexer.token('}'); // Close current group block
      print('Closed group block for new format');
    } else {
      while (lexer.hasToken('input')) {
        final input = _parseInput(lexer, false);
        inputs.add(input);
        print('Input added in non-newFmt: $input');
      }
      while (!lexer.hasToken('endgroup')) {
        if (lexer.done()) {
          throw lexer.error("Premature termination expecting 'endgroup'");
        }
        print('Parsing rule in non-newFmt group');
        final rule = _parseRule(lexer, false);
        rules.add(rule);
        print('Rule added: $rule');
      }
      lexer.token('endgroup');
      print('End of non-newFmt group');
    }

    // Ensure proper lexer state after group parsing
    print('Lexer state before checking for next token: ${lexer.current}');
    if (lexer.hasToken('group')) {
      print('Next token is another group; resetting for next parse');
    } else {
      lexer.next(); // Move to the next token if no group follows
      print('Moved lexer to next token: ${lexer.current}');
    }

    // Final log for group parsing
    print(
      'Final parsed group - Name: $name, Extends: $extends_, TypeMode: $typeMode, Documentation: $documentation',
    );
    return StructureMapGroup(
      name: name.toFhirId,
      extends_: extends_?.toFhirId,
      typeMode: typeMode,
      documentation: documentation?.toFhirString,
      input: inputs,
      rule: rules,
    );
  }

  StructureMapInput _parseInput(FHIRLexer lexer, bool newFmt) {
    StructureMapInputMode? mode;
    String? name;
    String? type;
    String? documentation;

    if (newFmt) {
      mode = StructureMapInputMode.fromJson({'value': lexer.take()});
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
      mode = StructureMapInputMode.fromJson({'value': lexer.take()});
      documentation = lexer.getAllComments();
      lexer.skipToken(';');
    }

    // Store variable name and type in variable-to-alias map for later reference
    if (type != null) {
      variableToAliasMap[name] = type;
    }

    return StructureMapInput(
      mode: mode!,
      name: name.toFhirId,
      type: type?.toFhirString,
      documentation: documentation?.toFhirString,
    );
  }

  StructureMapSource _parseSource(FHIRLexer lexer) {
    var context = lexer.take();
    String? element;
    String? type;
    FhirInteger? min;
    String? max;
    StructureMapSourceListMode? listMode;
    FhirId? variable;
    String? defaultValue;
    String? condition;
    String? check;
    String? logMessage;

    // Handle 'search' context special case
    if (context == 'search' && lexer.hasToken('(')) {
      context = '@search';
      lexer.take();
      final expression = _extractExpressionFromLexer(lexer);
      if (fpe.isValid(expression)) {
        element = expression;
      }
      lexer.token(')');
    } else if (lexer.hasToken('.')) {
      lexer.token('.');
      element = lexer.take();
    }

    // Additional step to ensure tokens are properly split and checked
    if (lexer.hasToken(':')) {
      lexer.token(':');
      type = lexer.takeDottedToken();
      if (!lexer.hasTokenList([
        'as',
        'first',
        'last',
        'not_first',
        'not_last',
        'only_one',
        'default',
      ])) {
        min = FhirInteger(int.parse(lexer.take()));
        lexer.token('..');
        max = lexer.take();
      }
    }

    if (lexer.hasToken('default')) {
      lexer.token('default');
      defaultValue = lexer.readConstant('default value');
    }

    if (['first', 'last', 'not_first', 'not_last', 'only_one']
        .contains(lexer.current)) {
      listMode = StructureMapSourceListMode.fromJson({'value': lexer.take()});
    }

    if (lexer.hasToken('as')) {
      lexer.take();
      variable = lexer.take().toFhirId;
    }

    // Capture condition and check expressions
    if (lexer.hasToken('where')) {
      lexer.take();
      condition = _extractConditionOrCheckExpression(lexer);
    }
    if (lexer.hasToken('check')) {
      lexer.take();
      check = _extractConditionOrCheckExpression(lexer);
    }

    if (lexer.hasToken('log')) {
      lexer.take();
      logMessage = _extractExpressionFromLexer(lexer);
    }

    // Debugging output for validation
    print('Parsed source - context: $context, element: $element, type: $type, '
        'min: $min, max: $max, listMode: $listMode, variable: $variable, '
        'defaultValue: $defaultValue, condition: $condition, check: $check, logMessage: $logMessage');

    return StructureMapSource(
      context: context.toFhirId,
      element: element?.toFhirString,
      type: type?.toFhirString,
      min: min,
      max: max?.toFhirString,
      listMode: listMode,
      variable: variable,
      defaultValueX: defaultValue?.toFhirString,
      condition: condition?.toFhirString,
      check: check?.toFhirString,
      logMessage: logMessage?.toFhirString,
    );
  }

  String _extractConditionOrCheckExpression(FHIRLexer lexer) {
    final buffer = StringBuffer();
    while (!lexer.done()) {
      final token = lexer.current;
      if (token == '->' || token == 'make') break; // Stop at start of target
      buffer.write(token);
      lexer.next();
    }
    return buffer.toString().trim();
  }

  StructureMapTarget _parseTarget(FHIRLexer lexer) {
    String? context;
    String? element;
    StructureMapTransform? transform;
    final parameters = <StructureMapParameter>[];
    FhirId? variable;
    final listModes = <StructureMapTargetListMode>[];
    String? listRuleId;

    String? start = lexer.take();
    if (lexer.hasToken('.')) {
      context = start;
      start = null;
      lexer.token('.');
      element = lexer.take();
    }
    String? name;
    var isConstant = false;
    if (lexer.hasToken('=')) {
      if (start != null) context = start;
      lexer.token('=');
      isConstant = lexer.isConstant();
      name = lexer.take();
    } else {
      name = start;
    }

    if (name == '(') {
      transform = StructureMapTransform.evaluate;
      final expression = _extractExpressionFromLexer(lexer);
      if (fpe.isValid(expression)) {
        parameters.add(StructureMapParameter(valueX: expression.toFhirString));
      }
      lexer.token(')');
    } else if (lexer.hasToken('(')) {
      transform = StructureMapTransform.fromJson({'value': name});
      lexer.token('(');
      if (transform == StructureMapTransform.evaluate) {
        parameters.add(
          StructureMapParameter(
            valueX: lexer.readConstant('expression').toFhirString,
          ),
        );
        lexer.token(',');
        final expression = _extractExpressionFromLexer(lexer);
        if (fpe.isValid(expression)) {
          parameters
              .add(StructureMapParameter(valueX: expression.toFhirString));
        }
      } else {
        while (!lexer.hasToken(')')) {
          final params = _parseParameter(lexer);
          parameters.addAll(params);
          if (!lexer.hasToken(')')) lexer.token(',');
        }
      }
      lexer.token(')');
    } else if (name != null) {
      transform = StructureMapTransform.copy_;
      if (!isConstant) {
        var id = name;
        while (lexer.hasToken('.')) {
          id += lexer.take() + lexer.take();
        }
        parameters.add(StructureMapParameter(valueX: id.toFhirId));
      } else if (int.tryParse(name) != null) {
        parameters.add(
          StructureMapParameter(valueX: FhirInteger(int.parse(name))),
        );
      } else {
        parameters.add(
          StructureMapParameter(
            valueX: lexer.processConstant(name).toFhirString,
          ),
        );
      }
    }

    if (lexer.hasToken('as')) {
      lexer.take();
      variable = lexer.take().toFhirId;
    }

    final targetListModes = ['first', 'last', 'share', 'collate'];
    while (targetListModes.contains(lexer.current)) {
      if (lexer.current == 'share') {
        listModes.add(StructureMapTargetListMode.share);
        lexer.next();
        listRuleId = lexer.take();
      } else {
        listModes.add(
          lexer.current == 'first'
              ? StructureMapTargetListMode.first
              : StructureMapTargetListMode.last,
        );
        lexer.next();
      }
    }

    return StructureMapTarget(
      context: context?.toFhirId,
      contextType: context != null ? StructureMapContextType.variable : null,
      element: element?.toFhirString,
      transform: transform,
      parameter: parameters,
      variable: variable,
      listMode: listModes.isNotEmpty ? listModes : null,
      listRuleId: listRuleId?.toFhirId,
    );
  }

  String _extractExpressionFromLexer(FHIRLexer lexer) {
    final expressionBuffer = StringBuffer();
    var parenthesisCount = 0;

    while (!lexer.done()) {
      final token = lexer.current!;

      if (token == '(') {
        parenthesisCount++;
      } else if (token == ')') {
        if (parenthesisCount == 0) {
          break;
        }
        parenthesisCount--;
      }

      expressionBuffer.write(token);
      lexer.next();

      if (parenthesisCount == 0 && (token == ',' || token == ';')) {
        // End of the expression
        break;
      }
    }

    return expressionBuffer.toString().trim();
  }

  StructureMapDependent _parseRuleReference(FHIRLexer lexer) {
    // Collect values in local variables
    final name = lexer.take();
    final variables = <FhirString>[];
    lexer.token('(');
    var done = false;
    while (!done) {
      variables.add(lexer.take().toFhirString);
      done = !lexer.hasToken(',');
      if (!done) {
        lexer.next();
      }
    }
    lexer.token(')');

    // Create the StructureMapDependent object at the end
    return StructureMapDependent(
      name: name.toFhirId,
      variable: variables,
    );
  }

  List<StructureMapParameter> _parseParameter(FHIRLexer lexer) {
    print(
      'Parsing parameter at ${lexer.currentLocation}',
    ); // Debugging entry
    print('Current token: ${lexer.current}'); // Debugging token

    final params = <StructureMapParameter>[];

    if (!lexer.isConstant()) {
      params.add(StructureMapParameter(valueX: lexer.take().toFhirId));
    } else if (lexer.isStringConstant()) {
      params.add(
        StructureMapParameter(
          valueX: lexer.readConstant('string').toFhirString,
        ),
      );
    } else {
      final type = _readConstant(lexer.take(), lexer);

      if (type is FhirBoolean) {
        params.add(StructureMapParameter(valueX: type));
      } else if (type is FhirInteger) {
        params.add(StructureMapParameter(valueX: type));
      } else if (type is FhirDecimal) {
        params.add(StructureMapParameter(valueX: type));
      } else if (type is FhirString) {
        params.add(StructureMapParameter(valueX: type));
      }
    }

    print('Parsed parameters: $params'); // Debugging parsed parameters
    return params;
  }

  PrimitiveType<dynamic> _readConstant(String s, FHIRLexer lexer) {
    if (s == 'true') {
      return FhirBoolean(true);
    } else if (s == 'false') {
      return FhirBoolean(false);
    } else if (int.tryParse(s) != null) {
      return FhirInteger(int.parse(s));
    } else if (double.tryParse(s) != null) {
      return FhirDecimal(double.parse(s));
    } else {
      return FhirString(lexer.processConstant(s));
    }
  }

  bool _isSimpleSyntax(
    List<StructureMapSource> sources,
    List<StructureMapTarget> targets,
    List<StructureMapDependent> dependents,
    List<StructureMapRule> rules,
  ) {
    return sources.length == 1 &&
        targets.length == 1 &&
        sources.first.element != null &&
        sources.first.variable == null &&
        targets.first.context != null &&
        targets.first.element != null &&
        targets.first.variable == null &&
        (targets.first.parameter?.isEmpty ?? false) &&
        dependents.isEmpty &&
        rules.isEmpty;
  }

  ConceptMap _parseConceptMap(FHIRLexer lexer) {
    lexer.token('conceptmap');

    // Collect values in local variables with debugging output
    final id = lexer.readConstant('map id');
    print('Captured concept map ID: $id');

    if (!id.startsWith('#')) {
      print('Concept map ID missing # prefix, adding # prefix automatically');
    }
    final cmId = id.startsWith('#') ? id.substring(1) : id;

    final prefixes = <String, String>{};
    final groups = <ConceptMapGroup>[];

    lexer.token('{');
    print('Entering concept map body');

    // Parse prefixes
    while (lexer.hasToken('prefix')) {
      lexer.token('prefix');
      final n = lexer.take();
      lexer.token('=');
      final v = lexer.readConstant('prefix url');
      prefixes[n] = v;
      print('Captured prefix: $n = $v');
    }

    final unmappedModes = <String, ConceptMapGroupUnmappedMode>{};

    // Parse unmapped modes
    while (lexer.hasToken('unmapped')) {
      lexer.token('unmapped');
      lexer.token('for');
      final n = _readPrefix(prefixes, lexer);
      lexer.token('=');
      final v = lexer.take();
      if (v == 'provided') {
        unmappedModes[n] = ConceptMapGroupUnmappedMode.provided;
        print('Captured unmapped mode: $n = provided');
      } else {
        throw lexer
            .error('Only unmapped mode PROVIDED is supported at this time');
      }
    }

    // Parse equivalences within the concept map
    while (!lexer.hasToken('}')) {
      print('Parsing equivalence entry');
      final srcs = _readPrefix(prefixes, lexer);
      lexer.token(':');
      final sc = lexer.current?.startsWith('"') ?? false
          ? lexer.readConstant('code')
          : lexer.take();
      final eq = _readEquivalence(lexer);
      final tgts = (eq != ConceptMapEquivalence.unmatched)
          ? _readPrefix(prefixes, lexer)
          : null;

      print('Equivalence captured: $srcs:$sc == $tgts with equivalence $eq');

      // Find or create the appropriate group
      var group = groups.firstWhereOrNull(
        (g) => g.source?.toString() == srcs && g.target?.toString() == tgts,
      );
      if (group == null) {
        ConceptMapUnmapped? unmapped;
        if (unmappedModes.containsKey(srcs)) {
          unmapped = ConceptMapUnmapped(
            mode: unmappedModes[srcs] ?? ConceptMapGroupUnmappedMode.provided,
          );
        }

        group = ConceptMapGroup(
          source: srcs.toFhirUri,
          target: tgts?.toFhirUri,
          element: [],
          unmapped: unmapped,
        );
        groups.add(group);
        print('Created new group: source=$srcs, target=$tgts');
      }

      // Collect elements for the group
      final code = sc.startsWith('"') ? lexer.processConstant(sc) : sc;
      final targets = <ConceptMapTarget>[];

      if (eq != ConceptMapEquivalence.unmatched) {
        lexer.token(':');
        var targetCode = lexer.take();
        targetCode = targetCode.startsWith('"')
            ? lexer.processConstant(targetCode)
            : targetCode;
        final target = ConceptMapTarget(
          code: targetCode.toFhirCode,
          equivalence: eq,
          comment: lexer.getFirstComment()?.toFhirString,
        );
        targets.add(target);
        print('Added target with code: $targetCode');
      } else {
        final target = ConceptMapTarget(
          equivalence: eq,
          comment: lexer.getFirstComment()?.toFhirString,
        );
        targets.add(target);
        print('Added unmatched target');
      }

      final element = ConceptMapElement(
        code: code.toFhirCode,
        target: targets,
      );

      // Update group elements
      final updatedElements = List<ConceptMapElement>.from(group.element)
        ..add(element);
      final updatedGroup = group.copyWith(element: updatedElements);
      groups[groups.indexOf(group)] = updatedGroup;
      print('Updated group elements');
    }

    lexer.token('}');
    print('Exiting concept map body');

    // Create and return the ConceptMap object
    final conceptMap = ConceptMap(
      id: cmId.toFhirString,
      status: PublicationStatus.draft,
      group: groups,
    );

    print('ConceptMap parsing completed with ID: $cmId');
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

  ConceptMapEquivalence _readEquivalence(FHIRLexer lexer) {
    final token = lexer.take();
    switch (token) {
      case '-':
        return ConceptMapEquivalence.relatedto;
      case '=':
        return ConceptMapEquivalence.equal;
      case '==':
        return ConceptMapEquivalence.equivalent;
      case '!=':
        return ConceptMapEquivalence.disjoint;
      case '--':
        return ConceptMapEquivalence.unmatched;
      case '<=':
        return ConceptMapEquivalence.wider;
      case '<-':
        return ConceptMapEquivalence.subsumes;
      case '>=':
        return ConceptMapEquivalence.narrower;
      case '>-':
        return ConceptMapEquivalence.specializes;
      case '~':
        return ConceptMapEquivalence.inexact;
      default:
        throw lexer.error("Unknown equivalence token '$token'");
    }
  }

  static void _renderConceptMaps(StringBuffer b, StructureMap map) {
    for (final r in map.contained ?? <Resource>[]) {
      if (r is ConceptMap) {
        _produceConceptMap(b, r);
      }
    }
  }

  static void _produceConceptMap(StringBuffer b, ConceptMap cm) {
    b.write('conceptmap "');
    b.write(cm.id);
    b.write('" {\r\n');
    final prefixesSrc = <String, String>{};
    final prefixesTgt = <String, String>{};
    var prefix = 's'.codeUnitAt(0);

    for (final cg in cm.group ?? <ConceptMapGroup>[]) {
      if (!prefixesSrc.containsKey(cg.source?.toString())) {
        prefixesSrc[cg.source!.toString()] = String.fromCharCode(prefix);
        b.write('  prefix ');
        b.write(String.fromCharCode(prefix));
        b.write(' = "');
        b.write(cg.source);
        b.write('"\r\n');
        prefix++;
      }
      if (!prefixesTgt.containsKey(cg.target?.toString())) {
        prefixesTgt[cg.target!.toString()] = String.fromCharCode(prefix);
        b.write('  prefix ');
        b.write(String.fromCharCode(prefix));
        b.write(' = "');
        b.write(cg.target);
        b.write('"\r\n');
        prefix++;
      }
    }
    b.write('\n');
    for (final cg in cm.group ?? <ConceptMapGroup>[]) {
      if (cg.unmapped != null) {
        b.write('  unmapped for ');
        b.write(prefixesSrc[cg.source!.toString()]);
        b.write(' = ');
        b.write(cg.unmapped!.mode.toString());
        b.write('\n');
      }
    }

    for (final cg in cm.group ?? <ConceptMapGroup>[]) {
      for (final ce in cg.element) {
        b.write('  ');
        b.write(prefixesSrc[cg.source!.toString()]);
        b.write(':');
        if (_isToken(ce.code!.toString())) {
          b.write(ce.code);
        } else {
          b.write('"');
          b.write(ce.code);
          b.write('"');
        }
        b.write(' ');
        final e = (ce.target?.isNotEmpty ?? false)
            ? ce.target!.first.equivalence
            : null;
        b.write(e != null ? _getChar(e) : '??');
        b.write(' ');
        b.write(prefixesTgt[cg.target!.toString()]);
        b.write(':');
        if (ce.target?.isNotEmpty ?? false) {
          final targetCode = ce.target!.first.code;
          if (_isToken(targetCode!.value!)) {
            b.write(targetCode);
          } else {
            b.write('"');
            b.write(targetCode);
            b.write('"');
          }
        }
        b.write('\n');
      }
    }
    b.write('}\r\n\r\n');
  }

  static String _getChar(ConceptMapEquivalence equivalence) {
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

  static void _renderUses(StringBuffer b, StructureMap map) {
    for (final s in map.structure ?? <StructureMapStructure>[]) {
      b.write('uses "');
      b.write(s.url);
      b.write('" ');
      if (s.alias != null && s.alias!.value!.isNotEmpty) {
        b.write('alias ');
        b.write(s.alias);
        b.write(' ');
      }
      b.write('as ');
      b.write(s.mode.toString());
      _renderDoco(b, s.documentation?.value);
      b.write('\n');
    }
    if (map.structure?.isNotEmpty ?? false) b.write('\n');
  }

  static void _renderImports(StringBuffer b, StructureMap map) {
    if (map.import_?.isNotEmpty ?? false) {
      for (final s in map.import_ ?? <FhirCanonical>[]) {
        b.write('imports "$s"\n');
      }
      b.write('\n');
    }
  }

  static void _renderGroup(StringBuffer b, StructureMapGroup g) {
    if (g.documentation != null && g.documentation!.value!.isNotEmpty) {
      _renderMultilineDoco(b, g.documentation!.value!, 0);
    }
    b.write('group ');
    b.write(g.name);
    b.write('(');
    var first = true;
    for (final gi in g.input) {
      if (first) {
        first = false;
      } else {
        b.write(', ');
      }
      b.write(gi.mode.toString());
      b.write(' ');
      b.write(gi.name);
      if (gi.type != null && gi.type!.value!.isNotEmpty) {
        b.write(' : ');
        b.write(gi.type);
      }
    }
    b.write(')');
    if (g.extends_ != null && g.extends_!.value!.isNotEmpty) {
      b.write(' extends ');
      b.write(g.extends_);
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
    for (final r in g.rule) {
      _renderRule(b, r, 2);
    }
    b.write('}\r\n\r\n');
  }

  static void _renderRule(StringBuffer b, StructureMapRule r, int indent) {
    if (r.documentation != null && r.documentation!.value!.isNotEmpty) {
      _renderMultilineDoco(b, r.documentation!.value!, indent);
    }
    b.write(' ' * indent);
    final canBeAbbreviated = _checkIsSimple(r);

    var first = true;
    for (final rs in r.source) {
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
      for (final rt in r.target ?? <StructureMapTarget>[]) {
        if (first) {
          first = false;
        } else {
          b.write(', ');
        }
        if (RENDER_MULTIPLE_TARGETS_ONELINE) {
          b.write(' ');
        } else {
          b.write('\n');
          b.write(' ' * (indent + 4));
        }
        _renderTarget(b, rt, canBeAbbreviated);
      }
    } else if (r.target?.isNotEmpty ?? false) {
      b.write(' -> ');
      _renderTarget(b, r.target!.first, canBeAbbreviated);
    }
    if (r.rule?.isNotEmpty ?? false) {
      b.write(' then {\r\n');
      for (final ir in r.rule ?? <StructureMapRule>[]) {
        _renderRule(b, ir, indent + 2);
      }
      b.write(' ' * indent);
      b.write('}');
    } else {
      if (r.dependent?.isNotEmpty ?? false) {
        b.write(' then ');
        first = true;
        for (final rd in r.dependent ?? <StructureMapDependent>[]) {
          if (first) {
            first = false;
          } else {
            b.write(', ');
          }
          b.write(rd.name);
          b.write('(');
          var ifirst = true;
          for (final rdp in rd.variable) {
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
    if (r.name.value!.isNotEmpty) {
      var n = _ntail(r.name.value!);
      if (!n.startsWith('"')) n = '"$n"';
      if (!_matchesName(n, r.source)) {
        b.write(' ');
        b.write(n);
      }
    }
    b.write(';');
    b.write('\n');
  }

  static bool _matchesName(String n, List<StructureMapSource> source) {
    if (source.length != 1) return false;
    final src = source.first;
    var s = src.element;
    if (s == null || s.isEmpty()) return false;
    if (n == s.value || n == '"$s"') return true;
    if (src.type != null && src.type!.value!.isNotEmpty) {
      s = '$s-${src.type}'.toFhirString;
      if (n == s.value || n == '"$s"') return true;
    }
    return false;
  }

  static String _ntail(String name) {
    if (name.startsWith('"') && name.endsWith('"')) {
      name = name.substring(1, name.length - 1);
    }
    return '"${name.contains('.') ? name.substring(name.lastIndexOf('.') + 1) : name}"';
  }

  static bool _checkIsSimple(StructureMapRule r) {
    return (r.source.length == 1 &&
            r.source.first.element != null &&
            r.source.first.variable != null) &&
        (r.target?.length == 1 &&
            r.target?.first.variable != null &&
            (r.target?.first.transform == null ||
                r.target?.first.transform == StructureMapTransform.create) &&
            (r.target?.first.parameter?.isEmpty ?? true)) &&
        (r.dependent?.isEmpty ?? true) &&
        (r.rule?.isEmpty ?? true);
  }

  static void _renderSource(
    StringBuffer b,
    StructureMapSource rs,
    bool abbreviate,
  ) {
    b.write(rs.context);
    if (rs.context.value == '@search') {
      b.write('(');
      b.write(rs.element);
      b.write(')');
    } else if (rs.element != null && rs.element!.value!.isNotEmpty) {
      b.write('.');
      b.write(rs.element);
    }
    if (rs.type != null && rs.type!.value!.isNotEmpty) {
      b.write(' : ');
      b.write(rs.type);
      if (rs.min != null) {
        b.write(' ');
        b.write(rs.min);
        b.write('..');
        b.write(rs.max);
      }
    }

    if (rs.listMode != null) {
      b.write(' ');
      b.write(rs.listMode!.toString());
    }
    if (rs.defaultValueX != null) {
      b.write(' default ');
      b.write('"${_escapeJson(rs.defaultValueX!.toString())}"');
    }
    if (!abbreviate && rs.variable != null && rs.variable!.value!.isNotEmpty) {
      b.write(' as ');
      b.write(rs.variable);
    }
    if (rs.condition != null && rs.condition!.value!.isNotEmpty) {
      b.write(' where ');
      b.write(rs.condition);
    }
    if (rs.check != null && rs.check!.value!.isNotEmpty) {
      b.write(' check ');
      b.write(rs.check);
    }
    if (rs.logMessage != null && rs.logMessage!.value!.isNotEmpty) {
      b.write(' log ');
      b.write(rs.logMessage);
    }
  }

  static void _renderTarget(
    StringBuffer b,
    StructureMapTarget rt,
    bool abbreviate,
  ) {
    if (rt.context != null && rt.context!.value!.isNotEmpty) {
      b.write(rt.context);
      if (rt.element != null && rt.element!.value!.isNotEmpty) {
        b.write('.');
        b.write(rt.element);
      }
    }
    if (!abbreviate && rt.transform != null) {
      if (rt.context != null && rt.context!.value!.isNotEmpty) b.write(' = ');
      if (rt.transform == StructureMapTransform.copy_ &&
          rt.parameter?.length == 1) {
        _renderTransformParam(b, rt.parameter!.first);
      } else if (rt.transform == StructureMapTransform.evaluate &&
          rt.parameter?.length == 1) {
        b.write('(');
        b.write(rt.parameter?.first.valueX);
        b.write(')');
      } else if (rt.transform == StructureMapTransform.evaluate &&
          rt.parameter?.length == 2) {
        b.write(rt.transform!.toString());
        b.write('(');
        b.write(rt.parameter?.first.valueX);
        b.write(', ');
        b.write(rt.parameter?[1].valueX);
        b.write(')');
      } else {
        b.write(rt.transform!.toString());
        b.write('(');
        var first = true;
        for (final rtp in rt.parameter ?? <StructureMapParameter>[]) {
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
    if (!abbreviate && rt.variable != null && rt.variable!.value!.isNotEmpty) {
      b.write(' as ');
      b.write(rt.variable);
    }
    for (final lm in rt.listMode ?? <StructureMapTargetListMode>[]) {
      b.write(' ');
      b.write(lm.toString());
      if (lm == StructureMapTargetListMode.share) {
        b.write(' ');
        b.write(rt.listRuleId);
      }
    }
  }

  static void _renderTransformParam(StringBuffer b, StructureMapParameter rtp) {
    final value = rtp.valueX;
    if (value is FhirBoolean || value is FhirInteger || value is FhirDecimal) {
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
    b.write('// ');
    b.write(
      doco.replaceAll('\r\n', ' ').replaceAll('\r', ' ').replaceAll('\n', ' '),
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
