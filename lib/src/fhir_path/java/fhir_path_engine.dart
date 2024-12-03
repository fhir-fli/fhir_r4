// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars, slash_for_doc_comments

import 'dart:collection';
import 'dart:core';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4/src/fhir_path/java/expression_node.dart';
import 'package:fhir_r4/src/fhir_path/java/fhir_lexer.dart';
import 'package:fhir_r4/src/fhir_path/java/fhir_publication.dart';
import 'package:fhir_r4/src/fhir_path/java/iworker_context.dart';
import 'package:fhir_r4/src/fhir_path/java/type_details.dart';
import 'package:fhir_r4/src/fhir_path/java/utility.dart';

 class FHIRPathEngine {
   IWorkerContext worker;
   IEvaluationContext hostServices;
   StringBuffer log =StringBuffer();
   Set<String> primitiveTypes = HashSet<String>();
   Map<String, StructureDefinition> allTypes = HashMap<String, StructureDefinition>();
   bool legacyMode; // some R2 and R3 constraints assume that != is valid for emptty sets, so when
                              // running for R2/R3, this is set ot true
   ValidationOptions terminologyServiceOptions =ValidationOptions(FhirPublication.R4B);
   ProfileUtilities profileUtilities;
   String location; // for error messages
   bool allowPolymorphicNames;
   bool doImplicitStringConversion;
   bool liquidMode; // in liquid mode, || terminates the expression and hands the parser back to the
                              // host
   bool doNotEnforceAsSingletonRule;
   bool doNotEnforceAsCaseSensitive;
   bool allowDoubleQuotes;


  /**
   * @param worker - used when validating paths (@check), and used doing value set
   *               membership when executing tests (once that's defined)
   */

   FHIRPathEngine(this.worker, [ProfileUtilities? utils]) {
    final utilities = utils ?? ProfileUtilities(worker, null, null);
    profileUtilities = utilities;
    for (final sd in worker.getStructures()) {
      if (sd.derivation == TypeDerivationRule.specialization && sd.kind != StructureDefinitionKind.LOGICAL) {
        allTypes[sd.name.value!] = sd;
      }
      if (sd.derivation == TypeDerivationRule.specialization
          && sd.kind == StructureDefinitionKind.primitive_type) {
        primitiveTypes.add(sd.name.value!);
      }
    }
    initFlags();
  }

   void initFlags() {
    if (!VersionUtilities.isR5VerOrLater(worker.getVersion())) {
      doNotEnforceAsCaseSensitive = true;
      doNotEnforceAsSingletonRule = true;
    }
  }

  /**
   * Given an item, return all the children that conform to the pattern described
   * in name
   * 
   * Possible patterns: - a simple name (which may be the base of a name with []
   * e.g. value[x]) - a name with a type replacement e.g. valueCodeableConcept - *
   * which means all children - ** which means all descendants
   * 
   * @param item
   * @param name
   * @param result
   * @throws FHIRException
   */
void getChildrenByName(FhirBase item, String name, List<FhirBase> result) {
    String? tn;
    if (isAllowPolymorphicNames()) {
      // we'll look to see whether we hav a polymorphic name
      for (final p in item.children ?? <FhirBase>[]) {
        if (p.name.endsWith("[x]")) {
          String n = p.getName().substring(0, p.getName().length() - 3);
          if (name.startsWith(n)) {
            tn = name.substring(n.length());
            name = n;
            break;
          }
        }
      }
    }
    FhirBase[] list = item.listChildrenByName(name, false);
    if (list != null) {
      for (FhirBase v : list) {
        if (v != null && (tn == null || v.fhirType().equalsIgnoreCase(tn))) {
          result.add(filterIdType(v));
        }
      }
    }
  }

   FhirBase filterIdType(FhirBase v) {
    if (v instanceof IIdType) {
      return (FhirBase) ((IIdType) v).toUnqualifiedVersionless().withResourceType(null);
    }
    return v;
  }

   bool isLegacyMode() {
    return legacyMode;
  }

   void setLegacyMode(bool legacyMode) {
    this.legacyMode = legacyMode;
  }

   bool isDoImplicitStringConversion() {
    return doImplicitStringConversion;
  }

   void setDoImplicitStringConversion(bool doImplicitStringConversion) {
    this.doImplicitStringConversion = doImplicitStringConversion;
  }

   bool isDoNotEnforceAsSingletonRule() {
    return doNotEnforceAsSingletonRule;
  }

   void setDoNotEnforceAsSingletonRule(bool doNotEnforceAsSingletonRule) {
    this.doNotEnforceAsSingletonRule = doNotEnforceAsSingletonRule;
  }

   bool isDoNotEnforceAsCaseSensitive() {
    return doNotEnforceAsCaseSensitive;
  }

   void setDoNotEnforceAsCaseSensitive(bool doNotEnforceAsCaseSensitive) {
    this.doNotEnforceAsCaseSensitive = doNotEnforceAsCaseSensitive;
  }

  // ---  API -------------------------------------------------------
  /**
   * Parse a path for later use using execute
   * 
   * @param path
   * @return
   * @throws PathEngineException
   * @throws Exception
   */
   ExpressionNode parse(String path) {
    return parse(path, null);
  }

   ExpressionNode parse(String path, String name) {
    FHIRLexer lexer =FHIRLexer(path, name, false, allowDoubleQuotes);
    if (lexer.done()) {
      throw lexer.error("Path cannot be empty");
    }
    ExpressionNode result = parseExpression(lexer, true);
    if (!lexer.done()) {
      throw lexer.error("Premature ExpressionNode termination at unexpected token \"" + lexer.getCurrent() + "\"");
    }
    result.check();
    return result;
  }


//   /**
//    * Parse a path for later use using execute
//    * 
//    * @param path
//    * @return
//    * @throws PathEngineException
//    * @throws Exception
//    */
//    ExpressionNodeWithOffset parsePartial(String path, int i) {
//     FHIRLexer lexer =FHIRLexer(path, i, allowDoubleQuotes);
//     if (lexer.done()) {
//       throw lexer.error("Path cannot be empty");
//     }
//     ExpressionNode result = parseExpression(lexer, true);
//     result.check();
//     returnExpressionNodeWithOffset(lexer.getCurrentStart(), result);
//   }

//   /**
//    * Parse a path that is part of some other syntax
//    * 
//    * @return
//    * @throws PathEngineException
//    * @throws Exception
//    */
//    ExpressionNode parse(FHIRLexer lexer) {
//     ExpressionNode result = parseExpression(lexer, true);
//     result.check();
//     return result;
//   }

//   /**
//    * check that paths referred to in the ExpressionNode are valid
//    * 
//    * xPathStartsWithValueRef is a hack work around for the fact that FHIR Path
//    * sometimes needs a different starting point than the xpath
//    * 
//    * returns a list of the possible types that might be returned by executing the
//    * ExpressionNode against a particular context
//    * 
//    * @param context - the logical type against which this path is applied
//    * @throws DefinitionException
//    * @throws PathEngineException
//    * @if the path is not valid
//    */
//    TypeDetails check(Object appContext, String resourceType, String context, ExpressionNode expr)
//       throws FHIRLexerException, PathEngineException, DefinitionException {
//     // if context is a path that refers to a type, do that conversion now
//     TypeDetails types;
//     if (context == null) {
//       types = null; // this is a special case; the first path reference will have to resolve to
//                     // something in the context
//     } else if (!context.contains(".")) {
//       StructureDefinition sd = worker.fetchTypeDefinition(context);
//       types =TypeDetails(CollectionStatus.SINGLETON, sd.getUrl());
//     } else {
//       String ctxt = context.substring(0, context.indexOf('.'));
//       if (Utilities.isAbsoluteUrl(resourceType)) {
//         ctxt = resourceType.substring(0, resourceType.lastIndexOf("/") + 1) + ctxt;
//       }
//       StructureDefinition sd = worker.fetchResource(StructureDefinition.class, ctxt);
//       if (sd == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONTEXT, context);
//       }
//       ElementDefinitionMatch ed = getElementDefinition(sd, context, true, expr);
//       if (ed == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONTEXT_ELEMENT, context);
//       }
//       if (ed.fixedType != null) {
//         types =TypeDetails(CollectionStatus.SINGLETON, ed.fixedType);
//       } else if (ed.getDefinition().getType().isEmpty() || isAbstractType(ed.getDefinition().getType())) {
//         types =TypeDetails(CollectionStatus.SINGLETON, ctxt + "#" + context);
//       } else {
//         types =TypeDetails(CollectionStatus.SINGLETON);
//         for (TypeRefComponent t : ed.getDefinition().getType()) {
//           types.addType(t.getCode());
//         }
//       }
//     }

//     return executeType(new ExecutionTypeContext(appContext, resourceType, types, types), types, expr, true);
//   }

//    FHIRException makeExceptionPlural(Integer num, ExpressionNode holder, String constName, Object... args) {
//     String fmt = worker.formatMessagePlural(num, constName, args);
//     if (location != null) {
//       fmt = fmt + " " + worker.formatMessage(I18nConstants.FHIRPATH_LOCATION, location);
//     }
//     if (holder != null) {
//       returnPathEngineException(fmt, holder.getStart(), holder.toString());
//     } else {
//       returnPathEngineException(fmt);
//     }
//   }

//    FHIRException makeException(ExpressionNode holder, String constName, Object... args) {
//     String fmt = worker.formatMessage(constName, args);
//     if (location != null) {
//       fmt = fmt + " " + worker.formatMessage(I18nConstants.FHIRPATH_LOCATION, location);
//     }
//     if (holder != null) {
//       returnPathEngineException(fmt, holder.getStart(), holder.toString());
//     } else {
//       returnPathEngineException(fmt);
//     }
//   }

//    TypeDetails check(Object appContext, StructureDefinition sd, String context, ExpressionNode expr)
//       throws FHIRLexerException, PathEngineException, DefinitionException {
//     // if context is a path that refers to a type, do that conversion now
//     TypeDetails types;
//     if (!context.contains(".")) {
//       types =TypeDetails(CollectionStatus.SINGLETON, sd.getUrl());
//     } else {
//       ElementDefinitionMatch ed = getElementDefinition(sd, context, true, expr);
//       if (ed == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONTEXT_ELEMENT, context);
//       }
//       if (ed.fixedType != null) {
//         types =TypeDetails(CollectionStatus.SINGLETON, ed.fixedType);
//       } else if (ed.getDefinition().getType().isEmpty() || isAbstractType(ed.getDefinition().getType())) {
//         types =TypeDetails(CollectionStatus.SINGLETON, sd.getUrl() + "#" + context);
//       } else {
//         types =TypeDetails(CollectionStatus.SINGLETON);
//         for (TypeRefComponent t : ed.getDefinition().getType()) {
//           types.addType(t.getCode());
//         }
//       }
//     }

//     return executeType(new ExecutionTypeContext(appContext, sd.getUrl(), types, types), types, expr, true);
//   }

//    TypeDetails check(Object appContext, StructureDefinition sd, ExpressionNode expr)
//       throws FHIRLexerException, PathEngineException, DefinitionException {
//     // if context is a path that refers to a type, do that conversion now
//     TypeDetails types = null; // this is a special case; the first path reference will have to resolve to
//                               // something in the context
//     return executeType(new ExecutionTypeContext(appContext, sd == null ? null : sd.getUrl(), null, types), types, expr,
//         true);
//   }

//    TypeDetails check(Object appContext, String resourceType, String context, String expr)
//       throws FHIRLexerException, PathEngineException, DefinitionException {
//     return check(appContext, resourceType, context, parse(expr));
//   }

//    Integer compareDateTimeElements(FhirBase theL, FhirBase theR, bool theEquivalenceTest) {
//     DateTimeType left = theL instanceof DateTimeType ? (DateTimeType) theL :DateTimeType(theL.primitiveValue());
//     DateTimeType right = theR instanceof DateTimeType ? (DateTimeType) theR :DateTimeType(theR.primitiveValue());

//     if (theEquivalenceTest) {
//       return left.equalsUsingFhirPathRules(right) == Boolean.TRUE ? 0 : 1;
//     }

//     if (left.getPrecision().ordinal() > TemporalPrecisionEnum.DAY.ordinal()) {
//       left.setTimeZoneZulu(true);
//     }
//     if (right.getPrecision().ordinal() > TemporalPrecisionEnum.DAY.ordinal()) {
//       right.setTimeZoneZulu(true);
//     }
//     return FhirBaseDateTimeType.compareTimes(left, right, null);
//   }

//    Integer compareTimeElements(FhirBase theL, FhirBase theR, bool theEquivalenceTest) {
//     TimeType left = theL instanceof TimeType ? (TimeType) theL :TimeType(theL.primitiveValue());
//     TimeType right = theR instanceof TimeType ? (TimeType) theR :TimeType(theR.primitiveValue());

//     if (left.getHour() < right.getHour()) {
//       return -1;
//     } else if (left.getHour() > right.getHour()) {
//       return 1;
//       // hour is not a valid precision
//       // } else if (dateLeft.getPrecision() == TemporalPrecisionEnum.YEAR &&
//       // dateRight.getPrecision() == TemporalPrecisionEnum.YEAR) {
//       // return 0;
//       // } else if (dateLeft.getPrecision() == TemporalPrecisionEnum.HOUR ||
//       // dateRight.getPrecision() == TemporalPrecisionEnum.HOUR) {
//       // return null;
//     }

//     if (left.getMinute() < right.getMinute()) {
//       return -1;
//     } else if (left.getMinute() > right.getMinute()) {
//       return 1;
//     } else if (left.getPrecision() == TemporalPrecisionEnum.MINUTE
//         && right.getPrecision() == TemporalPrecisionEnum.MINUTE) {
//       return 0;
//     } else if (left.getPrecision() == TemporalPrecisionEnum.MINUTE
//         || right.getPrecision() == TemporalPrecisionEnum.MINUTE) {
//       return null;
//     }

//     if (left.getSecond() < right.getSecond()) {
//       return -1;
//     } else if (left.getSecond() > right.getSecond()) {
//       return 1;
//     } else {
//       return 0;
//     }

//   }

//   /**
//    * evaluate a path and return the matching elements
//    * 
//    * @param base           - the object against which the path is being evaluated
//    * @param ExpressionNode - the parsed ExpressionNode statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    List<FhirBase> evaluate(FhirBase base, ExpressionNode ExpressionNode) {
//     List<FhirBase> list =ArrayList<FhirBase>();
//     if (base != null) {
//       list.add(base);
//     }
//     log =StringBuffer();
//     return execute(new ExecutionContext(null, base != null && base.isResource() ? base : null,
//         base != null && base.isResource() ? base : null, base, base), list, ExpressionNode, true);
//   }

//   /**
//    * evaluate a path and return the matching elements
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @param path - the FHIR Path statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    List<FhirBase> evaluate(FhirBase base, String path) {
//     ExpressionNode exp = parse(path);
//     List<FhirBase> list =ArrayList<FhirBase>();
//     if (base != null) {
//       list.add(base);
//     }
//     log =StringBuffer();
//     return execute(
//        ExecutionContext(null, base.isResource() ? base : null, base.isResource() ? base : null, base, base),
//         list, exp, true);
//   }

//   /**
//    * evaluate a path and return the matching elements
//    * 
//    * @param base           - the object against which the path is being evaluated
//    * @param ExpressionNode - the parsed ExpressionNode statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    List<FhirBase> evaluate(Object appContext, Resource focusResource, Resource rootResource, FhirBase base,
//       ExpressionNode ExpressionNode) {
//     List<FhirBase> list =ArrayList<FhirBase>();
//     if (base != null) {
//       list.add(base);
//     }
//     log =StringBuffer();
//     return execute(new ExecutionContext(appContext, focusResource, rootResource, base, base), list,
//         ExpressionNode, true);
//   }

//   /**
//    * evaluate a path and return the matching elements
//    * 
//    * @param base           - the object against which the path is being evaluated
//    * @param expressionNode - the parsed ExpressionNode statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    List<FhirBase> evaluate(Object appContext, FhirBase focusResource, FhirBase rootResource, FhirBase base,
//       ExpressionNode expressionNode) {
//     List<FhirBase> list =ArrayList<FhirBase>();
//     if (base != null) {
//       list.add(base);
//     }
//     log =StringBuffer();
//     return execute(new ExecutionContext(appContext, focusResource, rootResource, base, base), list,
//         expressionNode, true);
//   }

//   /**
//    * evaluate a path and return the matching elements
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @param path - the FHIR Path statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    List<FhirBase> evaluate(Object appContext, Resource focusResource, Resource rootResource, FhirBase base, String path)
//       throws FHIRException {
//     ExpressionNode exp = parse(path);
//     List<FhirBase> list =ArrayList<FhirBase>();
//     if (base != null) {
//       list.add(base);
//     }
//     log =StringBuffer();
//     return execute(new ExecutionContext(appContext, focusResource, rootResource, base, base), list, exp, true);
//   }

//   /**
//    * evaluate a path and return true or false (e.g. for an invariant)
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @param path - the FHIR Path statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    bool evaluateToBoolean(Resource focusResource, Resource rootResource, FhirBase base, String path)
//       throws FHIRException {
//     return convertToBoolean(evaluate(null, focusResource, rootResource, base, path));
//   }

//   /**
//    * evaluate a path and return true or false (e.g. for an invariant)
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @return
//    * @throws FHIRException @
//    */
//    bool evaluateToBoolean(Resource focusResource, Resource rootResource, FhirBase base, ExpressionNode node)
//       throws FHIRException {
//     return convertToBoolean(evaluate(null, focusResource, rootResource, base, node));
//   }

//   /**
//    * evaluate a path and return true or false (e.g. for an invariant)
//    * 
//    * @param appInfo - application context
//    * @param base    - the object against which the path is being evaluated
//    * @return
//    * @throws FHIRException @
//    */
//    bool evaluateToBoolean(Object appInfo, Resource focusResource, Resource rootResource, FhirBase base,
//       ExpressionNode node) {
//     return convertToBoolean(evaluate(appInfo, focusResource, rootResource, base, node));
//   }

//   /**
//    * evaluate a path and return true or false (e.g. for an invariant)
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @return
//    * @throws FHIRException @
//    */
//    bool evaluateToBoolean(Object appInfo, FhirBase focusResource, FhirBase rootResource, FhirBase base,
//       ExpressionNode node) {
//     return convertToBoolean(evaluate(appInfo, focusResource, rootResource, base, node));
//   }

//   /**
//    * evaluate a path and a string containing the outcome (for display)
//    * 
//    * @param base - the object against which the path is being evaluated
//    * @param path - the FHIR Path statement to use
//    * @return
//    * @throws FHIRException @
//    */
//    String evaluateToString(FhirBase base, String path) {
//     return convertToString(evaluate(base, path));
//   }

//    String evaluateToString(Object appInfo, FhirBase focusResource, FhirBase rootResource, FhirBase base, ExpressionNode node)
//       throws FHIRException {
//     return convertToString(evaluate(appInfo, focusResource, rootResource, base, node));
//   }

//   /**
//    * worker routine for converting a set of objects to a string representation
//    * 
//    * @param items - result from @evaluate
//    * @return
//    */
//    String convertToString(List<FhirBase> items) {
//     StringBuffer b =StringBuffer();
//     bool first = true;
//     for (FhirBase item : items) {
//       if (first) {
//         first = false;
//       } else {
//         b.append(',');
//       }

//       b.append(convertToString(item));
//     }
//     return b.toString();
//   }

//    String convertToString(FhirBase item) {
//     if (item instanceof IIdType) {
//       return ((IIdType) item).getIdPart();
//     } else if (item.isPrimitive()) {
//       return item.primitiveValue();
//     } else if (item instanceof Quantity) {
//       Quantity q = (Quantity) item;
//       if (q.hasUnit()
//           && Utilities.existsInList(q.getUnit(), "year", "years", "month", "months", "week", "weeks", "day", "days",
//               "hour", "hours", "minute", "minutes", "second", "seconds", "millisecond", "milliseconds")
//           && (!q.hasSystem() || q.getSystem().equals("http://unitsofmeasure.org"))) {
//         return q.getValue().toPlainString() + " " + q.getUnit();
//       }
//       if (q.getSystem().equals("http://unitsofmeasure.org")) {
//         String u = "'" + q.getCode() + "'";
//         return q.getValue().toPlainString() + " " + u;
//       } else {
//         return item.toString();
//       }
//     } else
//       return item.toString();
//   }

//   /**
//    * worker routine for converting a set of objects to a bool representation
//    * (for invariants)
//    * 
//    * @param items - result from @evaluate
//    * @return
//    */
//    bool convertToBoolean(List<FhirBase> items) {
//     if (items == null) {
//       return false;
//     } else if (items.size() == 1 && items.get(0) instanceof BooleanType) {
//       return ((BooleanType) items.get(0)).getValue();
//     } else if (items.size() == 1 && items.get(0).isBooleanPrimitive()) { // element model
//       return Boolean.valueOf(items.get(0).primitiveValue());
//     } else {
//       return items.size() > 0;
//     }
//   }

//    void log(String name, List<FhirBase> contents) {
//     if (hostServices == null || !hostServices.log(name, contents)) {
//       if (log.length() > 0) {
//         log.append("; ");
//       }
//       log.append(name);
//       log.append(": ");
//       bool first = true;
//       for (FhirBase b : contents) {
//         if (first) {
//           first = false;
//         } else {
//           log.append(",");
//         }
//         log.append(convertToString(b));
//       }
//     }
//   }

//    String forLog() {
//     if (log.length() > 0) {
//       return " (" + log.toString() + ")";
//     } else {
//       return "";
//     }
//   }

//    class ExecutionContext {
//      Object appInfo;
//      FhirBase focusResource;
//      FhirBase rootResource;
//      FhirBase context;
//      FhirBase thisItem;
//      List<FhirBase> total;
//      int index;
//      Map<String, List<FhirBase>> definedVariables;

//      ExecutionContext(Object appInfo, FhirBase resource, FhirBase rootResource, FhirBase context, FhirBase thisItem) {
//       this.appInfo = appInfo;
//       this.context = context;
//       this.focusResource = resource;
//       this.rootResource = rootResource;
//       this.thisItem = thisItem;
//       this.index = 0;
//     }

//      FhirBase getFocusResource() {
//       return focusResource;
//     }

//      FhirBase getRootResource() {
//       return rootResource;
//     }

//      FhirBase getThisItem() {
//       return thisItem;
//     }

//      List<FhirBase> getTotal() {
//       return total;
//     }

//      void next() {
//       index++;
//     }

//      FhirBase getIndex() {
//       returnIntegerType(index);
//     }

//      ExecutionContext setIndex(int i) {
//       index = i;
//       return this;
//     }

//      bool hasDefinedVariable(String name) {
//       return definedVariables != null && definedVariables.containsKey(name);
//     }

//      List<FhirBase> getDefinedVariable(String name) {
//       return definedVariables == null ? makeNull() : definedVariables.get(name);
//     }

//      void setDefinedVariable(String name, List<FhirBase> value) {
//       if (isSystemVariable(name))
//         throwPathEngineException(worker.formatMessage(I18nConstants.FHIRPATH_REDEFINE_VARIABLE, name), I18nConstants.FHIRPATH_REDEFINE_VARIABLE);

//       if (definedVariables == null) {
//         definedVariables =HashMap<String, List<FhirBase>>();
//       } else {
//         if (definedVariables.containsKey(name)) {
//           // Can't do this, so throw an error
//           throwPathEngineException(worker.formatMessage(I18nConstants.FHIRPATH_REDEFINE_VARIABLE, name), I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
//         }
//       }

//       definedVariables.put(name, value);
//     }
//   }

//    class ExecutionTypeContext {
//      Object appInfo;
//      String resource;
//      TypeDetails context;
//      TypeDetails thisItem;
//      TypeDetails total;
//      Map<String, TypeDetails> definedVariables;

//      ExecutionTypeContext(Object appInfo, String resource, TypeDetails context, TypeDetails thisItem) {
//       super();
//       this.appInfo = appInfo;
//       this.resource = resource;
//       this.context = context;
//       this.thisItem = thisItem;

//     }

//      String getResource() {
//       return resource;
//     }

//      TypeDetails getThisItem() {
//       return thisItem;
//     }

//      bool hasDefinedVariable(String name) {
//       return definedVariables != null && definedVariables.containsKey(name);
//     }

//      TypeDetails getDefinedVariable(String name) {
//       return definedVariables == null ? null : definedVariables.get(name);
//     }
    
//      void setDefinedVariable(String name, TypeDetails value) {
//       if (isSystemVariable(name))
//         throwPathEngineException("Redefine of variable "+name, I18nConstants.FHIRPATH_REDEFINE_VARIABLE);

//       if (definedVariables == null) {
//         definedVariables =HashMap<String, TypeDetails>();
//       } else {
//         if (definedVariables.containsKey(name)) {
//           // Can't do this, so throw an error
//           throwPathEngineException("Redefine of variable "+name, I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
//         }
//       }

//       definedVariables.put(name, value);
//     }
//   }

//    ExpressionNode parseExpression(FHIRLexer lexer, bool proximal) {
//     ExpressionNode result =ExpressionNode(lexer.nextId());
//     ExpressionNode wrapper = null;
//     SourceLocation c = lexer.getCurrentStartLocation();
//     result.setStart(lexer.getCurrentLocation());
//     // special: +/- represents a unary operation at this point, but cannot be a
//     // feature of the lexer, since that's not always true.
//     // so we back correct for both +/- and as part of a numeric constant below.

//     // special: +/- represents a unary operation at this point, but cannot be a
//     // feature of the lexer, since that's not always true.
//     // so we back correct for both +/- and as part of a numeric constant below.
//     if (Utilities.existsInList(lexer.getCurrent(), "-", "+")) {
//       wrapper =ExpressionNode(lexer.nextId());
//       wrapper.setKind(Kind.Unary);
//       wrapper.setOperation(ExpressionNode.Operation.fromCode(lexer.take()));
//       wrapper.setStart(lexer.getCurrentLocation());
//       wrapper.setProximal(proximal);
//     }

//     if (lexer.getCurrent() == null) {
//       throw lexer.error("Expression terminated unexpectedly");
//     } else if (lexer.isConstant()) {
//       bool isString = lexer.isStringConstant();
//       if (!isString && (lexer.getCurrent().startsWith("-") || lexer.getCurrent().startsWith("+"))) {
//         // the grammar says that this is a unary operation; it affects the correct
//         // processing order of the inner operations
//         wrapper =ExpressionNode(lexer.nextId());
//         wrapper.setKind(Kind.Unary);
//         wrapper.setOperation(ExpressionNode.Operation.fromCode(lexer.getCurrent().substring(0, 1)));
//         wrapper.setProximal(proximal);
//         wrapper.setStart(lexer.getCurrentLocation());
//         lexer.setCurrent(lexer.getCurrent().substring(1));
//       }
//       result.setConstant(processConstant(lexer));
//       result.setKind(Kind.Constant);
//       if (!isString && !lexer.done()
//           && (result.getConstant() instanceof IntegerType || result.getConstant() instanceof DecimalType)
//           && (lexer.isStringConstant() || lexer.hasToken("year", "years", "month", "months", "week", "weeks", "day",
//               "days", "hour", "hours", "minute", "minutes", "second", "seconds", "millisecond", "milliseconds"))) {
//         // it's a quantity
//         String ucum = null;
//         String unit = null;
//         if (lexer.hasToken("year", "years", "month", "months", "week", "weeks", "day", "days", "hour", "hours",
//             "minute", "minutes", "second", "seconds", "millisecond", "milliseconds")) {
//           String s = lexer.take();
//           unit = s;
//           if (s.equals("year") || s.equals("years")) {
//             // this is not the UCUM year
//           } else if (s.equals("month") || s.equals("months")) {
//             // this is not the UCUM month
//           } else if (s.equals("week") || s.equals("weeks")) {
//             ucum = "wk";
//           } else if (s.equals("day") || s.equals("days")) {
//             ucum = "d";
//           } else if (s.equals("hour") || s.equals("hours")) {
//             ucum = "h";
//           } else if (s.equals("minute") || s.equals("minutes")) {
//             ucum = "min";
//           } else if (s.equals("second") || s.equals("seconds")) {
//             ucum = "s";
//           } else { // (s.equals("millisecond") || s.equals("milliseconds"))
//             ucum = "ms";
//           }
//         } else {
//           ucum = lexer.readConstant("units");
//         }
//         result.setConstant(new Quantity().setValue(new BigDecimal(result.getConstant().primitiveValue())).setUnit(unit)
//             .setSystem(ucum == null ? null : "http://unitsofmeasure.org").setCode(ucum));
//       }
//       result.setEnd(lexer.getCurrentLocation());
//     } else if ("(".equals(lexer.getCurrent())) {
//       lexer.next();
//       result.setKind(Kind.Group);
//       result.setGroup(parseExpression(lexer, true));
//       if (!")".equals(lexer.getCurrent())) {
//         throw lexer.error("Found " + lexer.getCurrent() + " expecting a \")\"");
//       }
//       result.setEnd(lexer.getCurrentLocation());
//       lexer.next();
//     } else {
//       if (!lexer.isToken() && !lexer.getCurrent().startsWith("`")) {
//         throw lexer.error("Found " + lexer.getCurrent() + " expecting a token name");
//       }
//       if (lexer.isFixedName()) {
//         result.setName(lexer.readFixedName("Path Name"));
//       } else {
//         result.setName(lexer.take());
//       }
//       result.setEnd(lexer.getCurrentLocation());
//       if (!result.checkName()) {
//         throw lexer.error("Found " + result.getName() + " expecting a valid token name");
//       }
//       if ("(".equals(lexer.getCurrent())) {
//         Function f = Function.fromCode(result.getName());
//         FunctionDetails details = null;
//         if (f == null) {
//           if (hostServices != null) {
//             details = hostServices.resolveFunction(this, result.getName());
//           }
//           if (details == null) {
//             throw lexer.error("The name " + result.getName() + " is not a valid function name");
//           }
//           f = Function.Custom;
//         }
//         result.setKind(Kind.Function);
//         result.setFunction(f);
//         lexer.next();
//         while (!")".equals(lexer.getCurrent())) {
//           result.getParameters().add(parseExpression(lexer, true));
//           if (",".equals(lexer.getCurrent())) {
//             lexer.next();
//           } else if (!")".equals(lexer.getCurrent())) {
//             throw lexer.error(
//                 "The token " + lexer.getCurrent() + " is not expected here - either a \",\" or a \")\" expected");
//           }
//         }
//         result.setEnd(lexer.getCurrentLocation());
//         lexer.next();
//         checkParameters(lexer, c, result, details);
//       } else {
//         result.setKind(Kind.Name);
//       }
//     }
//     ExpressionNode focus = result;
//     if ("[".equals(lexer.getCurrent())) {
//       lexer.next();
//       ExpressionNode item =ExpressionNode(lexer.nextId());
//       item.setKind(Kind.Function);
//       item.setFunction(ExpressionNode.Function.Item);
//       item.getParameters().add(parseExpression(lexer, true));
//       if (!lexer.getCurrent().equals("]")) {
//         throw lexer.error("The token " + lexer.getCurrent() + " is not expected here - a \"]\" expected");
//       }
//       lexer.next();
//       result.setInner(item);
//       focus = item;
//     }
//     if (".".equals(lexer.getCurrent())) {
//       lexer.next();
//       focus.setInner(parseExpression(lexer, false));
//     }
//     result.setProximal(proximal);
//     if (proximal) {
//       while (lexer.isOp()) {
//         focus.setOperation(ExpressionNode.Operation.fromCode(lexer.getCurrent()));
//         focus.setOpStart(lexer.getCurrentStartLocation());
//         focus.setOpEnd(lexer.getCurrentLocation());
//         lexer.next();
//         focus.setOpNext(parseExpression(lexer, false));
//         focus = focus.getOpNext();
//       }
//       result = organisePrecedence(lexer, result);
//     }
//     if (wrapper != null) {
//       wrapper.setOpNext(result);
//       result.setProximal(false);
//       result = wrapper;
//     }
//     return result;
//   }

//    ExpressionNode organisePrecedence(FHIRLexer lexer, ExpressionNode node) {
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.Times, Operation.DivideBy, Operation.Div, Operation.Mod));
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.Plus, Operation.Minus, Operation.Concatenate));
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.Union));
//     node = gatherPrecedence(lexer, node,
//         EnumSet.of(Operation.LessThan, Operation.Greater, Operation.LessOrEqual, Operation.GreaterOrEqual));
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.Is));
//     node = gatherPrecedence(lexer, node,
//         EnumSet.of(Operation.Equals, Operation.Equivalent, Operation.NotEquals, Operation.NotEquivalent));
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.And));
//     node = gatherPrecedence(lexer, node, EnumSet.of(Operation.Xor, Operation.Or));
//     // last: implies
//     return node;
//   }

//    ExpressionNode gatherPrecedence(FHIRLexer lexer, ExpressionNode start, EnumSet<Operation> ops) {
//     // work : boolean;
//     // focus, node, group : ExpressionNode;

//     assert (start.isProximal());

//     // is there anything to do?
//     bool work = false;
//     ExpressionNode focus = start.getOpNext();
//     if (ops.contains(start.getOperation())) {
//       while (focus != null && focus.getOperation() != null) {
//         work = work || !ops.contains(focus.getOperation());
//         focus = focus.getOpNext();
//       }
//     } else {
//       while (focus != null && focus.getOperation() != null) {
//         work = work || ops.contains(focus.getOperation());
//         focus = focus.getOpNext();
//       }
//     }
//     if (!work) {
//       return start;
//     }

//     // entry point: tricky
//     ExpressionNode group;
//     if (ops.contains(start.getOperation())) {
//       group = newGroup(lexer, start);
//       group.setProximal(true);
//       focus = start;
//       start = group;
//     } else {
//       ExpressionNode node = start;

//       focus = node.getOpNext();
//       while (!ops.contains(focus.getOperation())) {
//         node = focus;
//         focus = focus.getOpNext();
//       }
//       group = newGroup(lexer, focus);
//       node.setOpNext(group);
//     }

//     // now, at this point:
//     // group is the group we are adding to, it already has a .group property filled
//     // out.
//     // focus points at the group.group
//     do {
//       // run until we find the end of the sequence
//       while (ops.contains(focus.getOperation())) {
//         focus = focus.getOpNext();
//       }
//       if (focus.getOperation() != null) {
//         group.setOperation(focus.getOperation());
//         group.setOpNext(focus.getOpNext());
//         focus.setOperation(null);
//         focus.setOpNext(null);
//         // now look for another sequence, and start it
//         ExpressionNode node = group;
//         focus = group.getOpNext();
//         if (focus != null) {
//           while (focus != null && !ops.contains(focus.getOperation())) {
//             node = focus;
//             focus = focus.getOpNext();
//           }
//           if (focus != null) { // && (focus.Operation in Ops) - must be true
//             group = newGroup(lexer, focus);
//             node.setOpNext(group);
//           }
//         }
//       }
//     } while (focus != null && focus.getOperation() != null);
//     return start;
//   }

//    ExpressionNode newGroup(FHIRLexer lexer, ExpressionNode next) {
//     ExpressionNode result =ExpressionNode(lexer.nextId());
//     result.setKind(Kind.Group);
//     result.setGroup(next);
//     result.getGroup().setProximal(true);
//     return result;
//   }

//    FhirBase processConstant(FHIRLexer lexer) {
//     if (lexer.isStringConstant()) {
//       returnStringType(processConstantString(lexer.take(), lexer)).noExtensions();
//     } else if (Utilities.isInteger(lexer.getCurrent())) {
//       returnIntegerType(lexer.take()).noExtensions();
//     } else if (Utilities.isDecimal(lexer.getCurrent(), false)) {
//       returnDecimalType(lexer.take()).noExtensions();
//     } else if (Utilities.existsInList(lexer.getCurrent(), "true", "false")) {
//       returnBooleanType(lexer.take()).noExtensions();
//     } else if (lexer.getCurrent().equals("{}")) {
//       lexer.take();
//       return null;
//     } else if (lexer.getCurrent().startsWith("%") || lexer.getCurrent().startsWith("@")) {
//       returnFHIRConstant(lexer.take());
//     } else {
//       throw lexer.error("Invalid Constant " + lexer.getCurrent());
//     }
//   }

//   // procedure CheckParamCount(c : integer);
//   // begin
//   // if exp.Parameters.Count <> c then
//   // raise lexer.error('The function "'+exp.name+'" requires '+inttostr(c)+'
//   // parameters', offset);
//   // end;

//    bool checkParamCount(FHIRLexer lexer, SourceLocation location, ExpressionNode exp, int count)
//       throws FHIRLexerException {
//     if (exp.getParameters().size() != count) {
//       throw lexer.error("The function \"" + exp.getName() + "\" requires " + Integer.toString(count) + " parameters");
//     }
//     return true;
//   }

//    bool checkParamCount(FHIRLexer lexer, SourceLocation location, ExpressionNode exp, int countMin,
//       int countMax) {
//     if (exp.getParameters().size() < countMin || exp.getParameters().size() > countMax) {
//       throw lexer.error("The function \"" + exp.getName() + "\" requires between " + Integer.toString(countMin)
//           + " and " + Integer.toString(countMax) + " parameters");
//     }
//     return true;
//   }

//    bool checkParameters(FHIRLexer lexer, SourceLocation location, ExpressionNode exp, FunctionDetails details)
//       throws FHIRLexerException {
//     switch (exp.getFunction()) {
//     case Empty:
//       return checkParamCount(lexer, location, exp, 0);
//     case Not:
//       return checkParamCount(lexer, location, exp, 0);
//     case Exists:
//       return checkParamCount(lexer, location, exp, 0, 1);
//     case SubsetOf:
//       return checkParamCount(lexer, location, exp, 1);
//     case SupersetOf:
//       return checkParamCount(lexer, location, exp, 1);
//     case IsDistinct:
//       return checkParamCount(lexer, location, exp, 0);
//     case Distinct:
//       return checkParamCount(lexer, location, exp, 0);
//     case Count:
//       return checkParamCount(lexer, location, exp, 0);
//     case Where:
//       return checkParamCount(lexer, location, exp, 1);
//     case Select:
//       return checkParamCount(lexer, location, exp, 1);
//     case All:
//       return checkParamCount(lexer, location, exp, 0, 1);
//     case Repeat:
//       return checkParamCount(lexer, location, exp, 1);
//     case Aggregate:
//       return checkParamCount(lexer, location, exp, 1, 2);
//     case Item:
//       return checkParamCount(lexer, location, exp, 1);
//     case As:
//       return checkParamCount(lexer, location, exp, 1);
//     case OfType:
//       return checkParamCount(lexer, location, exp, 1);
//     case Type:
//       return checkParamCount(lexer, location, exp, 0);
//     case Is:
//       return checkParamCount(lexer, location, exp, 1);
//     case Single:
//       return checkParamCount(lexer, location, exp, 0);
//     case First:
//       return checkParamCount(lexer, location, exp, 0);
//     case Last:
//       return checkParamCount(lexer, location, exp, 0);
//     case Tail:
//       return checkParamCount(lexer, location, exp, 0);
//     case Skip:
//       return checkParamCount(lexer, location, exp, 1);
//     case Take:
//       return checkParamCount(lexer, location, exp, 1);
//     case Union:
//       return checkParamCount(lexer, location, exp, 1);
//     case Combine:
//       return checkParamCount(lexer, location, exp, 1);
//     case Intersect:
//       return checkParamCount(lexer, location, exp, 1);
//     case Exclude:
//       return checkParamCount(lexer, location, exp, 1);
//     case Iif:
//       return checkParamCount(lexer, location, exp, 2, 3);
//     case Lower:
//       return checkParamCount(lexer, location, exp, 0);
//     case Upper:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToChars:
//       return checkParamCount(lexer, location, exp, 0);
//     case IndexOf:
//       return checkParamCount(lexer, location, exp, 1);
//     case Substring:
//       return checkParamCount(lexer, location, exp, 1, 2);
//     case StartsWith:
//       return checkParamCount(lexer, location, exp, 1);
//     case EndsWith:
//       return checkParamCount(lexer, location, exp, 1);
//     case Matches:
//       return checkParamCount(lexer, location, exp, 1);
//     case MatchesFull:
//       return checkParamCount(lexer, location, exp, 1);
//     case ReplaceMatches:
//       return checkParamCount(lexer, location, exp, 2);
//     case Contains:
//       return checkParamCount(lexer, location, exp, 1);
//     case Replace:
//       return checkParamCount(lexer, location, exp, 2);
//     case Length:
//       return checkParamCount(lexer, location, exp, 0);
//     case Children:
//       return checkParamCount(lexer, location, exp, 0);
//     case Descendants:
//       return checkParamCount(lexer, location, exp, 0);
//     case MemberOf:
//       return checkParamCount(lexer, location, exp, 1);
//     case Trace:
//       return checkParamCount(lexer, location, exp, 1, 2);
//     case DefineVariable:
//       return checkParamCount(lexer, location, exp, 1, 2);
//     case Check:
//       return checkParamCount(lexer, location, exp, 2);
//     case Today:
//       return checkParamCount(lexer, location, exp, 0);
//     case Now:
//       return checkParamCount(lexer, location, exp, 0);
//     case Resolve:
//       return checkParamCount(lexer, location, exp, 0);
//     case Extension:
//       return checkParamCount(lexer, location, exp, 1);
//     case AllFalse:
//       return checkParamCount(lexer, location, exp, 0);
//     case AnyFalse:
//       return checkParamCount(lexer, location, exp, 0);
//     case AllTrue:
//       return checkParamCount(lexer, location, exp, 0);
//     case AnyTrue:
//       return checkParamCount(lexer, location, exp, 0);
//     case HasValue:
//       return checkParamCount(lexer, location, exp, 0);
//     case Encode:
//       return checkParamCount(lexer, location, exp, 1);
//     case Decode:
//       return checkParamCount(lexer, location, exp, 1);
//     case Escape:
//       return checkParamCount(lexer, location, exp, 1);
//     case Unescape:
//       return checkParamCount(lexer, location, exp, 1);
//     case Trim:
//       return checkParamCount(lexer, location, exp, 0);
//     case Split:
//       return checkParamCount(lexer, location, exp, 1);
//     case Join:
//       return checkParamCount(lexer, location, exp, 1);
//     case HtmlChecks1:
//       return checkParamCount(lexer, location, exp, 0);
//     case HtmlChecks2:
//       return checkParamCount(lexer, location, exp, 0);
//     case Comparable:
//       return checkParamCount(lexer, location, exp, 1);
//     case ToInteger:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToDecimal:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToString:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToQuantity:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToBoolean:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToDateTime:
//       return checkParamCount(lexer, location, exp, 0);
//     case ToTime:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToInteger:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToDecimal:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToString:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToQuantity:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToBoolean:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToDateTime:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToDate:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConvertsToTime:
//       return checkParamCount(lexer, location, exp, 0);
//     case ConformsTo:
//       return checkParamCount(lexer, location, exp, 1);
//     case Round:
//       return checkParamCount(lexer, location, exp, 0, 1);
//     case Sqrt:
//       return checkParamCount(lexer, location, exp, 0);
//     case Abs:
//       return checkParamCount(lexer, location, exp, 0);
//     case Ceiling:
//       return checkParamCount(lexer, location, exp, 0);
//     case Exp:
//       return checkParamCount(lexer, location, exp, 0);
//     case Floor:
//       return checkParamCount(lexer, location, exp, 0);
//     case Ln:
//       return checkParamCount(lexer, location, exp, 0);
//     case Log:
//       return checkParamCount(lexer, location, exp, 1);
//     case Power:
//       return checkParamCount(lexer, location, exp, 1);
//     case Truncate:
//       return checkParamCount(lexer, location, exp, 0);
//     case LowBoundary:
//       return checkParamCount(lexer, location, exp, 0, 1);
//     case HighBoundary:
//       return checkParamCount(lexer, location, exp, 0, 1);
//     case Precision:
//       return checkParamCount(lexer, location, exp, 0);

//     case Custom:
//       return checkParamCount(lexer, location, exp, details.getMinParameters(), details.getMaxParameters());
//     }
//     return false;
//   }

//    List<FhirBase> execute(ExecutionContext inContext, List<FhirBase> focus, ExpressionNode exp, bool atEntry)
//       throws FHIRException {
//     // System.out.println("Evaluate {'"+exp.toString()+"'} on "+focus.toString());
//     ExecutionContext context = contextForParameter(inContext);
//     List<FhirBase> work =ArrayList<FhirBase>();
//     switch (exp.getKind()) {
//     case Unary:
//       work.add(new IntegerType(0));
//       break;
//     case Name:
//       if (atEntry && exp.getName().equals("$this")) {
//         work.add(context.getThisItem());
//       } else if (atEntry && exp.getName().equals("$total")) {
//         work.addAll(context.getTotal());
//       } else if (atEntry && exp.getName().equals("$index")) {
//         work.add(context.getIndex());
//       } else {
//         for (FhirBase item : focus) {
//           List<FhirBase> outcome = execute(context, item, exp, atEntry);
//           for (FhirBase base : outcome) {
//             if (base != null) {
//               work.add(base);
//             }
//           }
//         }
//       }
//       break;
//     case Function:
//       List<FhirBase> work2 = evaluateFunction(context, focus, exp);
//       work.addAll(work2);
//       break;
//     case Constant:
//       work.addAll(resolveConstant(context, exp.getConstant(), false, exp, true));
//       break;
//     case Group:
//       work2 = execute(context, focus, exp.getGroup(), atEntry);
//       work.addAll(work2);
//     }

//     if (exp.getInner() != null) {
//       work = execute(context, work, exp.getInner(), false);
//     }

//     if (exp.isProximal() && exp.getOperation() != null) {
//       ExpressionNode next = exp.getOpNext();
//       ExpressionNode last = exp;
//       while (next != null) {
//         context = contextForParameter(inContext);
//         List<FhirBase> work2 = preOperate(work, last.getOperation(), exp);
//         if (work2 != null) {
//           work = work2;
//         } else if (last.getOperation() == Operation.Is || last.getOperation() == Operation.As) {
//           work2 = executeTypeName(context, focus, next, false);
//           work = operate(context, work, last.getOperation(), work2, last);
//         } else {
//           work2 = execute(context, focus, next, true);
//           work = operate(context, work, last.getOperation(), work2, last);
//           // System.out.println("Result of {'"+last.toString()+"
//           // "+last.getOperation().toCode()+" "+next.toString()+"'}: "+focus.toString());
//         }
//         last = next;
//         next = next.getOpNext();
//       }
//     }
//     // System.out.println("Result of {'"+exp.toString()+"'}: "+work.toString());
//     return work;
//   }

//    List<FhirBase> executeTypeName(ExecutionContext context, List<FhirBase> focus, ExpressionNode next, bool atEntry) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (next.getInner() != null) {
//       result.add(new StringType(next.getName() + "." + next.getInner().getName()));
//     } else {
//       result.add(new StringType(next.getName()));
//     }
//     return result;
//   }

//    List<FhirBase> preOperate(List<FhirBase> left, Operation operation, ExpressionNode expr) {
//     if (left.size() == 0) {
//       return null;
//     }
//     switch (operation) {
//     case And:
//       return isBoolean(left, false) ? makeBoolean(false) : null;
//     case Or:
//       return isBoolean(left, true) ? makeBoolean(true) : null;
//     case Implies:
//       Equality v = asBool(left, expr);
//       return v == Equality.False ? makeBoolean(true) : null;
//     default:
//       return null;
//     }
//   }

//    List<FhirBase> makeBoolean(bool b) {
//     List<FhirBase> res =ArrayList<FhirBase>();
//     res.add(new BooleanType(b).noExtensions());
//     return res;
//   }

//    List<FhirBase> makeNull() {
//     List<FhirBase> res =ArrayList<FhirBase>();
//     return res;
//   }

//    TypeDetails executeTypeName(ExecutionTypeContext context, TypeDetails focus, ExpressionNode exp,
//       bool atEntry) {
//     returnTypeDetails(CollectionStatus.SINGLETON, exp.getName());
//   }

//    TypeDetails executeType(ExecutionTypeContext inContext, TypeDetails focus, ExpressionNode exp, bool atEntry)
//       throws PathEngineException, DefinitionException {
//     ExecutionTypeContext context = contextForParameter(inContext);
//     TypeDetails result =TypeDetails(null);
//     switch (exp.getKind()) {
//     case Name:
//       if (atEntry && exp.getName().equals("$this")) {
//         result.update(context.getThisItem());
//       } else if (atEntry && exp.getName().equals("$total")) {
//         result.update(anything(CollectionStatus.UNORDERED));
//       } else if (atEntry && exp.getName().equals("$index")) {
//         result.addType(TypeDetails.FP_Integer);
//       } else if (atEntry && focus == null) {
//         result.update(executeContextType(context, exp.getName(), exp, false));
//       } else {
//         for (String s : focus.getTypes()) {
//           result.update(executeType(s, exp, atEntry));
//         }
//         if (result.hasNoTypes()) {
//           throw makeException(exp, I18nConstants.FHIRPATH_UNKNOWN_NAME, exp.getName(), focus.describe());
//         }
//       }
//       break;
//     case Function:
//       result.update(evaluateFunctionType(context, focus, exp));
//       break;
//     case Unary:
//       result.addType(TypeDetails.FP_Integer);
//       result.addType(TypeDetails.FP_Decimal);
//       result.addType(TypeDetails.FP_Quantity);
//       break;
//     case Constant:
//       result.update(resolveConstantType(context, exp.getConstant(), exp, true));
//       break;
//     case Group:
//       result.update(executeType(context, focus, exp.getGroup(), atEntry));
//     }
//     exp.setTypes(result);

//     if (exp.getInner() != null) {
//       result = executeType(context, result, exp.getInner(), false);
//     }

//     if (exp.isProximal() && exp.getOperation() != null) {
//       ExpressionNode next = exp.getOpNext();
//       ExpressionNode last = exp;
//       while (next != null) {
//         context = contextForParameter(inContext);
//         TypeDetails work;
//         if (last.getOperation() == Operation.Is || last.getOperation() == Operation.As) {
//           work = executeTypeName(context, focus, next, atEntry);
//         } else {
//           work = executeType(context, focus, next, atEntry);
//         }
//         result = operateTypes(result, last.getOperation(), work, last);
//         last = next;
//         next = next.getOpNext();
//       }
//       exp.setOpTypes(result);
//     }
//     return result;
//   }

//    List<FhirBase> resolveConstant(ExecutionContext context, FhirBase constant, bool beforeContext,
//       ExpressionNode expr, bool explicitConstant) {
//     if (constant == null) {
//       returnArrayList<FhirBase>();
//     }
//     if (!(constant instanceof FHIRConstant)) {
//       returnArrayList<FhirBase>(Arrays.asList(constant));
//     }
//     FHIRConstant c = (FHIRConstant) constant;
//     if (c.getValue().startsWith("%")) {
//       String varName = c.getValue().substring(1);
//       if (context.hasDefinedVariable(varName)) {
//         return context.getDefinedVariable(varName);
//       }
//       return resolveConstant(context, c.getValue(), beforeContext, expr, explicitConstant);
//     } else if (c.getValue().startsWith("@")) {
//       returnArrayList<FhirBase>(Arrays.asList(processDateConstant(context.appInfo, c.getValue().substring(1), expr)));
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONSTANT, c.getValue());
//     }
//   }

//    FhirBase processDateConstant(Object appInfo, String value, ExpressionNode expr) {
//     String date = null;
//     String time = null;
//     String tz = null;

//     TemporalPrecisionEnum temp = null;

//     if (value.startsWith("T")) {
//       time = value.substring(1);
//     } else if (!value.contains("T")) {
//       date = value;
//     } else {
//       String[] p = value.split("T");
//       date = p[0];
//       if (p.length > 1) {
//         time = p[1];
//       }
//     }

//     if (time != null) {
//       int i = time.indexOf("-");
//       if (i == -1) {
//         i = time.indexOf("+");
//       }
//       if (i == -1) {
//         i = time.indexOf("Z");
//       }
//       if (i > -1) {
//         tz = time.substring(i);
//         time = time.substring(0, i);
//       }

//       if (time.length() == 2) {
//         time = time + ":00:00";
//         temp = TemporalPrecisionEnum.MINUTE;
//       } else if (time.length() == 5) {
//         temp = TemporalPrecisionEnum.MINUTE;
//         time = time + ":00";
//       } else if (time.contains(".")) {
//         temp = TemporalPrecisionEnum.MILLI;
//       } else {
//         temp = TemporalPrecisionEnum.SECOND;
//       }
//     }

//     if (date == null) {
//       if (tz != null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONTEXT, value);
//       } else {
//         TimeType tt =TimeType(time);
//         tt.setPrecision(temp);
//         return tt.noExtensions();
//       }
//     } else if (time != null) {
//       DateTimeType dt =DateTimeType(date + "T" + time + (tz == null ? "" : tz));
//       dt.setPrecision(temp);
//       return dt.noExtensions();
//     } else {
//       returnDateType(date).noExtensions();
//     }
//   }

//   static bool isSystemVariable(String name){
//     if (name.equals("sct"))
//       return true;
//     if (name.equals("loinc"))
//       return true;
//     if (name.equals("ucum"))
//       return true;
//     if (name.equals("resource"))
//       return true;
//     if (name.equals("rootResource"))
//       return true;
//     if (name.equals("context"))
//       return true;
//     return false;
//   }

//    List<FhirBase> resolveConstant(ExecutionContext context, String s, bool beforeContext, ExpressionNode expr, bool explicitConstant)
//       throws PathEngineException {
//     if (s.equals("%sct")) {
//       returnArrayList<FhirBase>(Arrays.asList(new StringType("http://snomed.info/sct").noExtensions()));
//     } else if (s.equals("%loinc")) {
//       returnArrayList<FhirBase>(Arrays.asList(new StringType("http://loinc.org").noExtensions()));
//     } else if (s.equals("%ucum")) {
//       returnArrayList<FhirBase>(Arrays.asList(new StringType("http://unitsofmeasure.org").noExtensions()));
//     } else if (s.equals("%resource")) {
//       if (context.focusResource == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANNOT_USE, "%resource", "no focus resource");
//       }
//       returnArrayList<FhirBase>(Arrays.asList(context.focusResource));
//     } else if (s.equals("%rootResource")) {
//       if (context.rootResource == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANNOT_USE, "%rootResource", "no focus resource");
//       }
//       returnArrayList<FhirBase>(Arrays.asList(context.rootResource));
//     } else if (s.equals("%context")) {
//       returnArrayList<FhirBase>(Arrays.asList(context.context));
//     } else if (s.equals("%us-zip")) {
//       returnArrayList<FhirBase>(Arrays.asList(new StringType("[0-9]{5}(-[0-9]{4}){0,1}").noExtensions()));
//     } else if (s.startsWith("%`vs-")) {
//       returnArrayList<FhirBase>(Arrays.asList(
//          StringType("http://hl7.org/fhir/ValueSet/" + s.substring(5, s.length() - 1) + "").noExtensions()));
//     } else if (s.startsWith("%`cs-")) {
//       returnArrayList<FhirBase>(
//           Arrays.asList(new StringType("http://hl7.org/fhir/" + s.substring(5, s.length() - 1) + "").noExtensions()));
//     } else if (s.startsWith("%`ext-")) {
//       returnArrayList<FhirBase>(Arrays.asList(
//          StringType("http://hl7.org/fhir/StructureDefinition/" + s.substring(6, s.length() - 1)).noExtensions()));
//     } else if (hostServices == null) {
//       throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONSTANT, s);
//     } else {
//       return hostServices.resolveConstant(this, context.appInfo, s.substring(1), beforeContext, explicitConstant);
//     }
//   }

//    String processConstantString(String s, FHIRLexer lexer) {
//     StringBuffer b =StringBuffer();
//     int i = 1;
//     while (i < s.length() - 1) {
//       char ch = s.charAt(i);
//       if (ch == '\\') {
//         i++;
//         switch (s.charAt(i)) {
//         case 't':
//           b.append('\t');
//           break;
//         case 'r':
//           b.append('\r');
//           break;
//         case 'n':
//           b.append('\n');
//           break;
//         case 'f':
//           b.append('\f');
//           break;
//         case '\'':
//           b.append('\'');
//           break;
//         case '"':
//           b.append('"');
//           break;
//         case '`':
//           b.append('`');
//           break;
//         case '\\':
//           b.append('\\');
//           break;
//         case '/':
//           b.append('/');
//           break;
//         case 'u':
//           i++;
//           int uc = Integer.parseInt(s.substring(i, i + 4), 16);
//           b.append(Character.toString(uc));
//           i = i + 3;
//           break;
//         default:
//           throw lexer.error("Unknown character escape \\" + s.charAt(i));
//         }
//         i++;
//       } else {
//         b.append(ch);
//         i++;
//       }
//     }
//     return b.toString();
//   }

//    List<FhirBase> operate(ExecutionContext context, List<FhirBase> left, Operation operation, List<FhirBase> right,
//       ExpressionNode holder) {
//     switch (operation) {
//     case Equals:
//       return opEquals(left, right, holder);
//     case Equivalent:
//       return opEquivalent(left, right, holder);
//     case NotEquals:
//       return opNotEquals(left, right, holder);
//     case NotEquivalent:
//       return opNotEquivalent(left, right, holder);
//     case LessThan:
//       return opLessThan(left, right, holder);
//     case Greater:
//       return opGreater(left, right, holder);
//     case LessOrEqual:
//       return opLessOrEqual(left, right, holder);
//     case GreaterOrEqual:
//       return opGreaterOrEqual(left, right, holder);
//     case Union:
//       return opUnion(left, right, holder);
//     case In:
//       return opIn(left, right, holder);
//     case MemberOf:
//       return opMemberOf(context, left, right, holder);
//     case Contains:
//       return opContains(left, right, holder);
//     case Or:
//       return opOr(left, right, holder);
//     case And:
//       return opAnd(left, right, holder);
//     case Xor:
//       return opXor(left, right, holder);
//     case Implies:
//       return opImplies(left, right, holder);
//     case Plus:
//       return opPlus(left, right, holder);
//     case Times:
//       return opTimes(left, right, holder);
//     case Minus:
//       return opMinus(left, right, holder);
//     case Concatenate:
//       return opConcatenate(left, right, holder);
//     case DivideBy:
//       return opDivideBy(left, right, holder);
//     case Div:
//       return opDiv(left, right, holder);
//     case Mod:
//       return opMod(left, right, holder);
//     case Is:
//       return opIs(left, right, holder);
//     case As:
//       return opAs(left, right, holder);
//     default:
//       throwError("Not Done Yet: " + operation.toCode());
//     }
//   }

//    List<FhirBase> opAs(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     List<FhirBase> result =ArrayList<>();
//     if (right.size() != 1) {
//       return result;
//     } else {
//       String tn = convertToString(right);
//       if (!isKnownType(tn)) {
//         throwPathEngineException("The type " + tn + " is not valid");
//       }
//       if (!doNotEnforceAsSingletonRule && left.size() > 1) {
//         throwPathEngineException(
//             "Attempt to use as on more than one item (" + left.size() + ", '" + expr.toString() + "')");
//       }
//       for (FhirBase nextLeft : left) {
//         if (compareTypeNames(tn, nextLeft.fhirType())) {
//           result.add(nextLeft);
//         }
//       }
//     }
//     return result;
//   }

//    bool compareTypeNames(String left, String right) {
//     if (doNotEnforceAsCaseSensitive) {
//       return left.equalsIgnoreCase(right);
//     } else {
//       return left.equals(right);
//     }
//   }

//    bool isKnownType(String tn) {
//     if (!tn.contains(".")) {
//       if (Utilities.existsInList(tn, "String", "Boolean", "Integer", "Decimal", "Quantity", "DateTime", "Time",
//           "SimpleTypeInfo", "ClassInfo")) {
//         return true;
//       }
//       try {
//         return worker.fetchTypeDefinition(tn) != null;
//       } catch (Exception e) {
//         return false;
//       }
//     }
//     String[] t = tn.split("\\.");
//     if (t.length != 2) {
//       return false;
//     }
//     if ("System".equals(t[0])) {
//       return Utilities.existsInList(t[1], "String", "Boolean", "Integer", "Decimal", "Quantity", "DateTime", "Time",
//           "SimpleTypeInfo", "ClassInfo");
//     } else if ("FHIR".equals(t[0])) {
//       try {
//         return worker.fetchTypeDefinition(t[1]) != null;
//       } catch (Exception e) {
//         return false;
//       }
//     } else {
//       return false;
//     }
//   }

//    List<FhirBase> opIs(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (left.size() == 0 || right.size() == 0) {
//     } else if (left.size() != 1 || right.size() != 1)
//       result.add(new BooleanType(false).noExtensions());
//     else {
//       String tn = convertToString(right);
//       if (left.get(0) instanceof org.hl7.fhir.r4b.elementmodel.Element) {
//         result.add(new BooleanType(left.get(0).hasType(tn)).noExtensions());
//       } else if ((left.get(0) instanceof Element) && ((Element) left.get(0)).isDisallowExtensions()) {
//         result.add(new BooleanType(Utilities.capitalize(left.get(0).fhirType()).equals(tn)
//             || ("System." + Utilities.capitalize(left.get(0).fhirType())).equals(tn)).noExtensions());
//       } else {
//         if (left.get(0).fhirType().equals(tn)) {
//           result.add(new BooleanType(true).noExtensions());
//         } else {
//           StructureDefinition sd = worker.fetchTypeDefinition(left.get(0).fhirType());
//           while (sd != null) {
//             if (tn.equals(sd.getType())) {
//               return makeBoolean(true);
//             }
//             sd = worker.fetchResource(StructureDefinition.class, sd.getFhirBaseDefinition());
//           }
//           return makeBoolean(false);
//         }
//       }
//     }
//     return result;
//   }

//    TypeDetails operateTypes(TypeDetails left, Operation operation, TypeDetails right, ExpressionNode expr) {
//     switch (operation) {
//     case Equals:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Equivalent:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case NotEquals:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case NotEquivalent:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case LessThan:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Greater:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case LessOrEqual:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case GreaterOrEqual:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Is:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case As:
//       returnTypeDetails(CollectionStatus.SINGLETON, right.getTypes());
//     case Union:
//       return left.union(right);
//     case Or:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case And:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Xor:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Implies:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Times:
//       TypeDetails result =TypeDetails(CollectionStatus.SINGLETON);
//       if (left.hasType(worker, "integer") && right.hasType(worker, "integer")) {
//         result.addType(TypeDetails.FP_Integer);
//       } else if (left.hasType(worker, "integer", "decimal") && right.hasType(worker, "integer", "decimal")) {
//         result.addType(TypeDetails.FP_Decimal);
//       }
//       return result;
//     case DivideBy:
//       result =TypeDetails(CollectionStatus.SINGLETON);
//       if (left.hasType(worker, "integer") && right.hasType(worker, "integer")) {
//         result.addType(TypeDetails.FP_Decimal);
//       } else if (left.hasType(worker, "integer", "decimal") && right.hasType(worker, "integer", "decimal")) {
//         result.addType(TypeDetails.FP_Decimal);
//       }
//       return result;
//     case Concatenate:
//       result =TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//       return result;
//     case Plus:
//       result =TypeDetails(CollectionStatus.SINGLETON);
//       if (left.hasType(worker, "integer") && right.hasType(worker, "integer")) {
//         result.addType(TypeDetails.FP_Integer);
//       } else if (left.hasType(worker, "integer", "decimal") && right.hasType(worker, "integer", "decimal")) {
//         result.addType(TypeDetails.FP_Decimal);
//       } else if (left.hasType(worker, "string", "id", "code", "uri")
//           && right.hasType(worker, "string", "id", "code", "uri")) {
//         result.addType(TypeDetails.FP_String);
//       } else if (left.hasType(worker, "date", "dateTime", "instant")) {
//         if (right.hasType(worker, "Quantity")) {
//           result.addType(left.getType());
//         } else {
//           throwPathEngineException(
//               String.format("Error in date arithmetic: Unable to add type {0} to {1}", right.getType(), left.getType()),
//               expr.getOpStart(), expr.toString());
//         }
//       }
//       return result;
//     case Minus:
//       result =TypeDetails(CollectionStatus.SINGLETON);
//       if (left.hasType(worker, "integer") && right.hasType(worker, "integer")) {
//         result.addType(TypeDetails.FP_Integer);
//       } else if (left.hasType(worker, "integer", "decimal") && right.hasType(worker, "integer", "decimal")) {
//         result.addType(TypeDetails.FP_Decimal);
//       } else if (left.hasType(worker, "Quantity") && right.hasType(worker, "Quantity")) {
//         result.addType(TypeDetails.FP_Quantity);
//       } else if (left.hasType(worker, "date", "dateTime", "instant")) {
//         if (right.hasType(worker, "Quantity")) {
//           result.addType(left.getType());
//         } else {
//           throwPathEngineException(String.format("Error in date arithmetic: Unable to subtract type {0} from {1}",
//               right.getType(), left.getType()));
//         }
//       }
//       return result;
//     case Div:
//     case Mod:
//       result =TypeDetails(CollectionStatus.SINGLETON);
//       if (left.hasType(worker, "integer") && right.hasType(worker, "integer")) {
//         result.addType(TypeDetails.FP_Integer);
//       } else if (left.hasType(worker, "integer", "decimal") && right.hasType(worker, "integer", "decimal")) {
//         result.addType(TypeDetails.FP_Decimal);
//       }
//       return result;
//     case In:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case MemberOf:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Contains:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     default:
//       return null;
//     }
//   }

//    List<FhirBase> opEquals(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }

//     if (left.size() != right.size()) {
//       return makeBoolean(false);
//     }

//     bool res = true;
//     bool nil = false;
//     for (int i = 0; i < left.size(); i++) {
//       Boolean eq = doEquals(left.get(i), right.get(i));
//       if (eq == null) {
//         nil = true;
//       } else if (eq == false) {
//         res = false;
//         break;
//       }
//     }
//     if (!res) {
//       return makeBoolean(res);
//     } else if (nil) {
//       returnArrayList<FhirBase>();
//     } else {
//       return makeBoolean(res);
//     }
//   }

//    List<FhirBase> opNotEquals(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (!legacyMode && (left.size() == 0 || right.size() == 0)) {
//       returnArrayList<FhirBase>();
//     }

//     if (left.size() != right.size()) {
//       return makeBoolean(true);
//     }

//     bool res = true;
//     bool nil = false;
//     for (int i = 0; i < left.size(); i++) {
//       Boolean eq = doEquals(left.get(i), right.get(i));
//       if (eq == null) {
//         nil = true;
//       } else if (eq == true) {
//         res = false;
//         break;
//       }
//     }
//     if (!res) {
//       return makeBoolean(res);
//     } else if (nil) {
//       returnArrayList<FhirBase>();
//     } else {
//       return makeBoolean(res);
//     }
//   }

//    String removeTrailingZeros(String s) {
//     if (Utilities.noString(s))
//       return "";
//     int i = s.length() - 1;
//     bool done = false;
//     bool dot = false;
//     while (i > 0 && !done) {
//       if (s.charAt(i) == '.') {
//         i--;
//         dot = true;
//       } else if (!dot && s.charAt(i) == '0') {
//         i--;
//       } else {
//         done = true;
//       }
//     }
//     return s.substring(0, i + 1);
//   }

//    bool decEqual(String left, String right) {
//     left = removeTrailingZeros(left);
//     right = removeTrailingZeros(right);
//     return left.equals(right);
//   }

//    Boolean datesEqual(FhirBaseDateTimeType left, FhirBaseDateTimeType right) {
//     return left.equalsUsingFhirPathRules(right);
//   }

//    Boolean doEquals(FhirBase left, FhirBase right) {
//     if (left instanceof Quantity && right instanceof Quantity) {
//       return qtyEqual((Quantity) left, (Quantity) right);
//     } else if (left.isDateTime() && right.isDateTime()) {
//       return datesEqual(left.dateTimeValue(), right.dateTimeValue());
//     } else if (left instanceof DecimalType || right instanceof DecimalType) {
//       return decEqual(left.primitiveValue(), right.primitiveValue());
//     } else if (left.isPrimitive() && right.isPrimitive()) {
//       return FhirBase.equals(left.primitiveValue(), right.primitiveValue());
//     } else {
//       return FhirBase.compareDeep(left, right, false);
//     }
//   }

//    bool doEquivalent(FhirBase left, FhirBase right) {
//     if (left instanceof Quantity && right instanceof Quantity) {
//       return qtyEquivalent((Quantity) left, (Quantity) right);
//     }
//     if (left.hasType("integer") && right.hasType("integer")) {
//       return doEquals(left, right);
//     }
//     if (left.hasType("boolean") && right.hasType("boolean")) {
//       return doEquals(left, right);
//     }
//     if (left.hasType("integer", "decimal", "unsignedInt", "positiveInt")
//         && right.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       return Utilities.equivalentNumber(left.primitiveValue(), right.primitiveValue());
//     }
//     if (left.hasType("date", "dateTime", "time", "instant") && right.hasType("date", "dateTime", "time", "instant")) {
//       Integer i = compareDateTimeElements(left, right, true);
//       if (i == null) {
//         i = 0;
//       }
//       return i == 0;
//     }
//     if (left.hasType(FHIR_TYPES_STRING) && right.hasType(FHIR_TYPES_STRING)) {
//       return Utilities.equivalent(convertToString(left), convertToString(right));
//     }
//     if (left.isPrimitive() && right.isPrimitive()) {
//       return Utilities.equivalent(left.primitiveValue(), right.primitiveValue());
//     }
//     if (!left.isPrimitive() && !right.isPrimitive()) {
//       MergedList<Property> props =MergedList<Property>(left.children(), right.children(),PropertyMatcher());
//       for (MergeNode<Property> t : props) {
//         if (t.hasLeft() && t.hasRight()) {
//           if (t.getLeft().hasValues() && t.getRight().hasValues()) {
//             MergedList<FhirBase> values =MergedList<FhirBase>(t.getLeft().getValues(), t.getRight().getValues());
//             for (MergeNode<FhirBase> v : values) {
//               if (v.hasLeft() && v.hasRight()) {
//                 if (!doEquivalent(v.getLeft(), v.getRight())) {
//                   return false;
//                 }
//               } else if (v.hasLeft() || v.hasRight()) {
//                 return false;
//               }
//             }
//           } else if (t.getLeft().hasValues() || t.getRight().hasValues()) {
//             return false;
//           }
//         } else {
//           return false;
//         }
//       }
//       return true;
//     } else {
//       return false;
//     }
//   }

//    Boolean qtyEqual(Quantity left, Quantity right) {
//     if (!left.hasValue() && !right.hasValue()) {
//       return true;
//     }
//     if (!left.hasValue() || !right.hasValue()) {
//       return null;
//     }
//     if (worker.getUcumService() != null) {
//       Pair dl = qtyToCanonicalPair(left);
//       Pair dr = qtyToCanonicalPair(right);
//       if (dl != null && dr != null) {
//         if (dl.getCode().equals(dr.getCode())) {
//           return doEquals(new DecimalType(dl.getValue().asDecimal()),DecimalType(dr.getValue().asDecimal()));
//         } else {
//           return false;
//         }
//       }
//     }
//     if (left.hasCode() || right.hasCode()) {
//       if (!(left.hasCode() && right.hasCode()) || !left.getCode().equals(right.getCode())) {
//         return null;
//       }
//     } else if (!left.hasUnit() || right.hasUnit()) {
//       if (!(left.hasUnit() && right.hasUnit()) || !left.getUnit().equals(right.getUnit())) {
//         return null;
//       }
//     }
//     return doEquals(new DecimalType(left.getValue()),DecimalType(right.getValue()));
//   }

//    Pair qtyToCanonicalPair(Quantity q) {
//     if (!"http://unitsofmeasure.org".equals(q.getSystem())) {
//       return null;
//     }
//     try {
//       Pair p =Pair(new Decimal(q.getValue().toPlainString()), q.getCode() == null ? "1" : q.getCode());
//       Pair c = worker.getUcumService().getCanonicalForm(p);
//       return c;
//     } catch (UcumException e) {
//       return null;
//     }
//   }

//    DecimalType qtyToCanonicalDecimal(Quantity q) {
//     if (!"http://unitsofmeasure.org".equals(q.getSystem())) {
//       return null;
//     }
//     try {
//       Pair p =Pair(new Decimal(q.getValue().toPlainString()), q.getCode() == null ? "1" : q.getCode());
//       Pair c = worker.getUcumService().getCanonicalForm(p);
//       returnDecimalType(c.getValue().asDecimal());
//     } catch (UcumException e) {
//       return null;
//     }
//   }

//    FhirBase pairToQty(Pair p) {
//     returnQuantity().setValue(new BigDecimal(p.getValue().toString())).setSystem("http://unitsofmeasure.org")
//         .setCode(p.getCode()).noExtensions();
//   }

//    Pair qtyToPair(Quantity q) {
//     if (!"http://unitsofmeasure.org".equals(q.getSystem())) {
//       return null;
//     }
//     try {
//       returnPair(new Decimal(q.getValue().toPlainString()), q.getCode());
//     } catch (UcumException e) {
//       return null;
//     }
//   }

//    Boolean qtyEquivalent(Quantity left, Quantity right) {
//     if (!left.hasValue() && !right.hasValue()) {
//       return true;
//     }
//     if (!left.hasValue() || !right.hasValue()) {
//       return null;
//     }
//     if (worker.getUcumService() != null) {
//       Pair dl = qtyToCanonicalPair(left);
//       Pair dr = qtyToCanonicalPair(right);
//       if (dl != null && dr != null) {
//         if (dl.getCode().equals(dr.getCode())) {
//           return doEquivalent(new DecimalType(dl.getValue().asDecimal()),DecimalType(dr.getValue().asDecimal()));
//         } else {
//           return false;
//         }
//       }
//     }
//     if (left.hasCode() || right.hasCode()) {
//       if (!(left.hasCode() && right.hasCode()) || !left.getCode().equals(right.getCode())) {
//         return null;
//       }
//     } else if (!left.hasUnit() || right.hasUnit()) {
//       if (!(left.hasUnit() && right.hasUnit()) || !left.getUnit().equals(right.getUnit())) {
//         return null;
//       }
//     }
//     return doEquivalent(new DecimalType(left.getValue()),DecimalType(right.getValue()));
//   }

//    List<FhirBase> opEquivalent(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() != right.size()) {
//       return makeBoolean(false);
//     }

//     bool res = true;
//     for (int i = 0; i < left.size(); i++) {
//       bool found = false;
//       for (int j = 0; j < right.size(); j++) {
//         if (doEquivalent(left.get(i), right.get(j))) {
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         res = false;
//         break;
//       }
//     }
//     return makeBoolean(res);
//   }

//    List<FhirBase> opNotEquivalent(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr)
//       throws PathEngineException {
//     if (left.size() != right.size()) {
//       return makeBoolean(true);
//     }

//     bool res = true;
//     for (int i = 0; i < left.size(); i++) {
//       bool found = false;
//       for (int j = 0; j < right.size(); j++) {
//         if (doEquivalent(left.get(i), right.get(j))) {
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         res = false;
//         break;
//       }
//     }
//     return makeBoolean(!res);
//   }

//    final static String[] FHIR_TYPES_STRING =String[] { "string", "uri", "code", "oid", "id", "uuid", "sid",
//       "markdown", "base64Binary", "canonical", "url" };

//    List<FhirBase> opLessThan(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0)
//       returnArrayList<FhirBase>();

//     if (left.size() == 1 && right.size() == 1 && left.get(0).isPrimitive() && right.get(0).isPrimitive()) {
//       FhirBase l = left.get(0);
//       FhirBase r = right.get(0);
//       if (l.hasType(FHIR_TYPES_STRING) && r.hasType(FHIR_TYPES_STRING)) {
//         return makeBoolean(l.primitiveValue().compareTo(r.primitiveValue()) < 0);
//       } else if ((l.hasType("integer") || l.hasType("decimal")) && (r.hasType("integer") || r.hasType("decimal"))) {
//         return makeBoolean(new Double(l.primitiveValue()) <Double(r.primitiveValue()));
//       } else if ((l.hasType("date", "dateTime", "instant")) && (r.hasType("date", "dateTime", "instant"))) {
//         Integer i = compareDateTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i < 0);
//         }
//       } else if ((l.hasType("time")) && (r.hasType("time"))) {
//         Integer i = compareTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i < 0);
//         }
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANT_COMPARE, l.fhirType(), r.fhirType());
//       }
//     } else if (left.size() == 1 && right.size() == 1 && left.get(0).fhirType().equals("Quantity")
//         && right.get(0).fhirType().equals("Quantity")) {
//       List<FhirBase> lUnit = left.get(0).listChildrenByName("code");
//       List<FhirBase> rUnit = right.get(0).listChildrenByName("code");
//       if (FhirBase.compareDeep(lUnit, rUnit, true)) {
//         return opLessThan(left.get(0).listChildrenByName("value"), right.get(0).listChildrenByName("value"), expr);
//       } else {
//         if (worker.getUcumService() == null) {
//           return makeBoolean(false);
//         } else {
//           List<FhirBase> dl =ArrayList<FhirBase>();
//           dl.add(qtyToCanonicalDecimal((Quantity) left.get(0)));
//           List<FhirBase> dr =ArrayList<FhirBase>();
//           dr.add(qtyToCanonicalDecimal((Quantity) right.get(0)));
//           return opLessThan(dl, dr, expr);
//         }
//       }
//     }
//     returnArrayList<FhirBase>();
//   }

//    List<FhirBase> opGreater(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0)
//       returnArrayList<FhirBase>();
//     if (left.size() == 1 && right.size() == 1 && left.get(0).isPrimitive() && right.get(0).isPrimitive()) {
//       FhirBase l = left.get(0);
//       FhirBase r = right.get(0);
//       if (l.hasType(FHIR_TYPES_STRING) && r.hasType(FHIR_TYPES_STRING)) {
//         return makeBoolean(l.primitiveValue().compareTo(r.primitiveValue()) > 0);
//       } else if ((l.hasType("integer", "decimal", "unsignedInt", "positiveInt"))
//           && (r.hasType("integer", "decimal", "unsignedInt", "positiveInt"))) {
//         return makeBoolean(new Double(l.primitiveValue()) >Double(r.primitiveValue()));
//       } else if ((l.hasType("date", "dateTime", "instant")) && (r.hasType("date", "dateTime", "instant"))) {
//         Integer i = compareDateTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i > 0);
//         }
//       } else if ((l.hasType("time")) && (r.hasType("time"))) {
//         Integer i = compareTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i > 0);
//         }
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANT_COMPARE, l.fhirType(), r.fhirType());
//       }
//     } else if (left.size() == 1 && right.size() == 1 && left.get(0).fhirType().equals("Quantity")
//         && right.get(0).fhirType().equals("Quantity")) {
//       List<FhirBase> lUnit = left.get(0).listChildrenByName("unit");
//       List<FhirBase> rUnit = right.get(0).listChildrenByName("unit");
//       if (FhirBase.compareDeep(lUnit, rUnit, true)) {
//         return opGreater(left.get(0).listChildrenByName("value"), right.get(0).listChildrenByName("value"), expr);
//       } else {
//         if (worker.getUcumService() == null) {
//           return makeBoolean(false);
//         } else {
//           List<FhirBase> dl =ArrayList<FhirBase>();
//           dl.add(qtyToCanonicalDecimal((Quantity) left.get(0)));
//           List<FhirBase> dr =ArrayList<FhirBase>();
//           dr.add(qtyToCanonicalDecimal((Quantity) right.get(0)));
//           return opGreater(dl, dr, expr);
//         }
//       }
//     }
//     returnArrayList<FhirBase>();
//   }

//    List<FhirBase> opLessOrEqual(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() == 1 && right.size() == 1 && left.get(0).isPrimitive() && right.get(0).isPrimitive()) {
//       FhirBase l = left.get(0);
//       FhirBase r = right.get(0);
//       if (l.hasType(FHIR_TYPES_STRING) && r.hasType(FHIR_TYPES_STRING)) {
//         return makeBoolean(l.primitiveValue().compareTo(r.primitiveValue()) <= 0);
//       } else if ((l.hasType("integer", "decimal", "unsignedInt", "positiveInt"))
//           && (r.hasType("integer", "decimal", "unsignedInt", "positiveInt"))) {
//         return makeBoolean(new Double(l.primitiveValue()) <=Double(r.primitiveValue()));
//       } else if ((l.hasType("date", "dateTime", "instant")) && (r.hasType("date", "dateTime", "instant"))) {
//         Integer i = compareDateTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i <= 0);
//         }
//       } else if ((l.hasType("time")) && (r.hasType("time"))) {
//         Integer i = compareTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i <= 0);
//         }
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANT_COMPARE, l.fhirType(), r.fhirType());
//       }
//     } else if (left.size() == 1 && right.size() == 1 && left.get(0).fhirType().equals("Quantity")
//         && right.get(0).fhirType().equals("Quantity")) {
//       List<FhirBase> lUnits = left.get(0).listChildrenByName("unit");
//       String lunit = lUnits.size() == 1 ? lUnits.get(0).primitiveValue() : null;
//       List<FhirBase> rUnits = right.get(0).listChildrenByName("unit");
//       String runit = rUnits.size() == 1 ? rUnits.get(0).primitiveValue() : null;
//       if ((lunit == null && runit == null) || lunit.equals(runit)) {
//         return opLessOrEqual(left.get(0).listChildrenByName("value"), right.get(0).listChildrenByName("value"), expr);
//       } else {
//         if (worker.getUcumService() == null) {
//           return makeBoolean(false);
//         } else {
//           List<FhirBase> dl =ArrayList<FhirBase>();
//           dl.add(qtyToCanonicalDecimal((Quantity) left.get(0)));
//           List<FhirBase> dr =ArrayList<FhirBase>();
//           dr.add(qtyToCanonicalDecimal((Quantity) right.get(0)));
//           return opLessOrEqual(dl, dr, expr);
//         }
//       }
//     }
//     returnArrayList<FhirBase>();
//   }

//    List<FhirBase> opGreaterOrEqual(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() == 1 && right.size() == 1 && left.get(0).isPrimitive() && right.get(0).isPrimitive()) {
//       FhirBase l = left.get(0);
//       FhirBase r = right.get(0);
//       if (l.hasType(FHIR_TYPES_STRING) && r.hasType(FHIR_TYPES_STRING)) {
//         return makeBoolean(l.primitiveValue().compareTo(r.primitiveValue()) >= 0);
//       } else if ((l.hasType("integer", "decimal", "unsignedInt", "positiveInt"))
//           && (r.hasType("integer", "decimal", "unsignedInt", "positiveInt"))) {
//         return makeBoolean(new Double(l.primitiveValue()) >=Double(r.primitiveValue()));
//       } else if ((l.hasType("date", "dateTime", "instant")) && (r.hasType("date", "dateTime", "instant"))) {
//         Integer i = compareDateTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i >= 0);
//         }
//       } else if ((l.hasType("time")) && (r.hasType("time"))) {
//         Integer i = compareTimeElements(l, r, false);
//         if (i == null) {
//           return makeNull();
//         } else {
//           return makeBoolean(i >= 0);
//         }
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANT_COMPARE, l.fhirType(), r.fhirType());
//       }
//     } else if (left.size() == 1 && right.size() == 1 && left.get(0).fhirType().equals("Quantity")
//         && right.get(0).fhirType().equals("Quantity")) {
//       List<FhirBase> lUnit = left.get(0).listChildrenByName("unit");
//       List<FhirBase> rUnit = right.get(0).listChildrenByName("unit");
//       if (FhirBase.compareDeep(lUnit, rUnit, true)) {
//         return opGreaterOrEqual(left.get(0).listChildrenByName("value"), right.get(0).listChildrenByName("value"),
//             expr);
//       } else {
//         if (worker.getUcumService() == null) {
//           return makeBoolean(false);
//         } else {
//           List<FhirBase> dl =ArrayList<FhirBase>();
//           dl.add(qtyToCanonicalDecimal((Quantity) left.get(0)));
//           List<FhirBase> dr =ArrayList<FhirBase>();
//           dr.add(qtyToCanonicalDecimal((Quantity) right.get(0)));
//           return opGreaterOrEqual(dl, dr, expr);
//         }
//       }
//     }
//     returnArrayList<FhirBase>();
//   }

//    List<FhirBase> opMemberOf(ExecutionContext context, List<FhirBase> left, List<FhirBase> right, ExpressionNode expr)
//       throws FHIRException {
//     bool ans = false;
//     String url = right.get(0).primitiveValue();
//     ValueSet vs = hostServices != null ? hostServices.resolveValueSet(this, context.appInfo, url)
//         : worker.fetchResource(ValueSet.class, url);
//     if (vs != null) {
//       for (FhirBase l : left) {
//         if (Utilities.existsInList(l.fhirType(), "code", "string", "uri")) {
//           if (worker.validateCode(terminologyServiceOptions.withGuessSystem(), TypeConvertor.castToCoding(l), vs)
//               .isOk()) {
//             ans = true;
//           }
//         } else if (l.fhirType().equals("Coding")) {
//           if (worker.validateCode(terminologyServiceOptions, TypeConvertor.castToCoding(l), vs).isOk()) {
//             ans = true;
//           }
//         } else if (l.fhirType().equals("CodeableConcept")) {
//           CodeableConcept cc = TypeConvertor.castToCodeableConcept(l);
//           ValidationResult vr = worker.validateCode(terminologyServiceOptions, cc, vs);
//           // System.out.println("~~~ "+DataRenderer.display(worker, cc)+ " memberOf
//           // "+url+": "+vr.toString());
//           if (vr.isOk()) {
//             ans = true;
//           }
//         } else {
//           // System.out.println("unknown type in opMemberOf: "+l.fhirType());
//         }
//       }
//     }
//     return makeBoolean(ans);
//   }

//    List<FhirBase> opIn(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (right.size() == 0) {
//       return makeBoolean(false);
//     }
//     bool ans = true;
//     for (FhirBase l : left) {
//       bool f = false;
//       for (FhirBase r : right) {
//         Boolean eq = doEquals(l, r);
//         if (eq != null && eq == true) {
//           f = true;
//           break;
//         }
//       }
//       if (!f) {
//         ans = false;
//         break;
//       }
//     }
//     return makeBoolean(ans);
//   }

//    List<FhirBase> opContains(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     bool ans = true;
//     for (FhirBase r : right) {
//       bool f = false;
//       for (FhirBase l : left) {
//         Boolean eq = doEquals(l, r);
//         if (eq != null && eq == true) {
//           f = true;
//           break;
//         }
//       }
//       if (!f) {
//         ans = false;
//         break;
//       }
//     }
//     return makeBoolean(ans);
//   }

//    List<FhirBase> opPlus(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "+");
//     }
//     if (!left.get(0).isPrimitive()) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "+", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "+");
//     }
//     if (!right.get(0).isPrimitive()
//         && !((left.get(0).isDateTime() || "0".equals(left.get(0).primitiveValue()) || left.get(0).hasType("Quantity"))
//             && right.get(0).hasType("Quantity"))) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "+", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);
//     if (l.hasType(FHIR_TYPES_STRING) && r.hasType(FHIR_TYPES_STRING)) {
//       result.add(new StringType(l.primitiveValue() + r.primitiveValue()));
//     } else if (l.hasType("integer") && r.hasType("integer")) {
//       result.add(new IntegerType(Integer.parseInt(l.primitiveValue()) + Integer.parseInt(r.primitiveValue())));
//     } else if (l.hasType("decimal", "integer") && r.hasType("decimal", "integer")) {
//       result.add(new DecimalType(new BigDecimal(l.primitiveValue()).add(new BigDecimal(r.primitiveValue()))));
//     } else if (l.isDateTime() && r.hasType("Quantity")) {
//       result.add(dateAdd((FhirBaseDateTimeType) l, (Quantity) r, false, expr));
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "+", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    FhirBaseDateTimeType dateAdd(FhirBaseDateTimeType d, Quantity q, bool negate, ExpressionNode holder) {
//     FhirBaseDateTimeType result = (FhirBaseDateTimeType) d.copy();

//     int value = negate ? 0 - q.getValue().intValue() : q.getValue().intValue();
//     switch (q.hasCode() ? q.getCode() : q.getUnit()) {
//     case "years":
//     case "year":
//       result.add(Calendar.YEAR, value);
//       break;
//     case "a":
//       throwPathEngineException(String
//           .format("Error in date arithmetic: attempt to add a definite quantity duration time unit %s", q.getCode()));
//     case "months":
//     case "month":
//       result.add(Calendar.MONTH, value);
//       break;
//     case "mo":
//       throwPathEngineException(String
//           .format("Error in date arithmetic: attempt to add a definite quantity duration time unit %s", q.getCode()),
//           holder.getOpStart(), holder.toString());
//     case "weeks":
//     case "week":
//     case "wk":
//       result.add(Calendar.DAY_OF_MONTH, value * 7);
//       break;
//     case "days":
//     case "day":
//     case "d":
//       result.add(Calendar.DAY_OF_MONTH, value);
//       break;
//     case "hours":
//     case "hour":
//     case "h":
//       result.add(Calendar.HOUR, value);
//       break;
//     case "minutes":
//     case "minute":
//     case "min":
//       result.add(Calendar.MINUTE, value);
//       break;
//     case "seconds":
//     case "second":
//     case "s":
//       result.add(Calendar.SECOND, value);
//       break;
//     case "milliseconds":
//     case "millisecond":
//     case "ms":
//       result.add(Calendar.MILLISECOND, value);
//       break;
//     default:
//       throwPathEngineException(String.format("Error in date arithmetic: unrecognized time unit %s", q.getCode()));
//     }
//     return result;
//   }

//    List<FhirBase> opTimes(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "*");
//     }
//     if (!left.get(0).isPrimitive() && !(left.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "*", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "*");
//     }
//     if (!right.get(0).isPrimitive() && !(right.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "*", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);

//     if (l.hasType("integer") && r.hasType("integer")) {
//       result.add(new IntegerType(Integer.parseInt(l.primitiveValue()) * Integer.parseInt(r.primitiveValue())));
//     } else if (l.hasType("decimal", "integer") && r.hasType("decimal", "integer")) {
//       result.add(new DecimalType(new BigDecimal(l.primitiveValue()).multiply(new BigDecimal(r.primitiveValue()))));
//     } else if (l instanceof Quantity && r instanceof Quantity && worker.getUcumService() != null) {
//       Pair pl = qtyToPair((Quantity) l);
//       Pair pr = qtyToPair((Quantity) r);
//       Pair p;
//       try {
//         p = worker.getUcumService().multiply(pl, pr);
//         result.add(pairToQty(p));
//       } catch (UcumException e) {
//         throwPathEngineException(e.getMessage(), expr.getOpStart(), expr.toString(), e);
//       }
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "*", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    List<FhirBase> opConcatenate(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "&");
//     }
//     if (left.size() > 0 && !left.get(0).hasType(FHIR_TYPES_STRING)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "&", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "&");
//     }
//     if (right.size() > 0 && !right.get(0).hasType(FHIR_TYPES_STRING)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "&", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     String l = left.size() == 0 ? "" : left.get(0).primitiveValue();
//     String r = right.size() == 0 ? "" : right.get(0).primitiveValue();
//     result.add(new StringType(l + r));
//     return result;
//   }

//    List<FhirBase> opUnion(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase item : left) {
//       if (!doContains(result, item)) {
//         result.add(item);
//       }
//     }
//     for (FhirBase item : right) {
//       if (!doContains(result, item)) {
//         result.add(item);
//       }
//     }
//     return result;
//   }

//    bool doContains(List<FhirBase> list, FhirBase item) {
//     for (FhirBase test : list) {
//       Boolean eq = doEquals(test, item);
//       if (eq != null && eq == true) {
//         return true;
//       }
//     }
//     return false;
//   }

//    List<FhirBase> opAnd(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     Equality l = asBool(left, expr);
//     Equality r = asBool(right, expr);
//     switch (l) {
//     case False:
//       return makeBoolean(false);
//     case Null:
//       if (r == Equality.False) {
//         return makeBoolean(false);
//       } else {
//         return makeNull();
//       }
//     case True:
//       switch (r) {
//       case False:
//         return makeBoolean(false);
//       case Null:
//         return makeNull();
//       case True:
//         return makeBoolean(true);
//       }
//     }
//     return makeNull();
//   }

//    bool isBoolean(List<FhirBase> list, bool b) {
//     return list.size() == 1 && list.get(0) instanceof BooleanType && ((BooleanType) list.get(0)).booleanValue() == b;
//   }

//    List<FhirBase> opOr(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     Equality l = asBool(left, expr);
//     Equality r = asBool(right, expr);
//     switch (l) {
//     case True:
//       return makeBoolean(true);
//     case Null:
//       if (r == Equality.True) {
//         return makeBoolean(true);
//       } else {
//         return makeNull();
//       }
//     case False:
//       switch (r) {
//       case False:
//         return makeBoolean(false);
//       case Null:
//         return makeNull();
//       case True:
//         return makeBoolean(true);
//       }
//     }
//     return makeNull();
//   }

//    List<FhirBase> opXor(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     Equality l = asBool(left, expr);
//     Equality r = asBool(right, expr);
//     switch (l) {
//     case True:
//       switch (r) {
//       case False:
//         return makeBoolean(true);
//       case True:
//         return makeBoolean(false);
//       case Null:
//         return makeNull();
//       }
//     case Null:
//       return makeNull();
//     case False:
//       switch (r) {
//       case False:
//         return makeBoolean(false);
//       case True:
//         return makeBoolean(true);
//       case Null:
//         return makeNull();
//       }
//     }
//     return makeNull();
//   }

//    List<FhirBase> opImplies(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     Equality eq = asBool(left, expr);
//     if (eq == Equality.False) {
//       return makeBoolean(true);
//     } else if (right.size() == 0) {
//       return makeNull();
//     } else
//       switch (asBool(right, expr)) {
//       case False:
//         return eq == Equality.Null ? makeNull() : makeBoolean(false);
//       case Null:
//         return makeNull();
//       case True:
//         return makeBoolean(true);
//       }
//     return makeNull();
//   }

//    List<FhirBase> opMinus(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "-");
//     }
//     if (!left.get(0).isPrimitive() && !left.get(0).hasType("Quantity")) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "-", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "-");
//     }
//     if (!right.get(0).isPrimitive()
//         && !((left.get(0).isDateTime() || "0".equals(left.get(0).primitiveValue()) || left.get(0).hasType("Quantity"))
//             && right.get(0).hasType("Quantity"))) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "-", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);

//     if (l.hasType("integer") && r.hasType("integer")) {
//       result.add(new IntegerType(Integer.parseInt(l.primitiveValue()) - Integer.parseInt(r.primitiveValue())));
//     } else if (l.hasType("decimal", "integer") && r.hasType("decimal", "integer")) {
//       result.add(new DecimalType(new BigDecimal(l.primitiveValue()).subtract(new BigDecimal(r.primitiveValue()))));
//     } else if (l.hasType("decimal", "integer", "Quantity") && r.hasType("Quantity")) {
//       String s = l.primitiveValue();
//       if ("0".equals(s)) {
//         Quantity qty = (Quantity) r;
//         result.add(qty.copy().setValue(qty.getValue().abs()));
//       }
//     } else if (l.isDateTime() && r.hasType("Quantity")) {
//       result.add(dateAdd((FhirBaseDateTimeType) l, (Quantity) r, true, expr));
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "-", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    List<FhirBase> opDivideBy(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "/");
//     }
//     if (!left.get(0).isPrimitive() && !(left.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "/", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "/");
//     }
//     if (!right.get(0).isPrimitive() && !(right.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "/", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);

//     if (l.hasType("integer", "decimal", "unsignedInt", "positiveInt")
//         && r.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Decimal d1;
//       try {
//         d1 =Decimal(l.primitiveValue());
//         Decimal d2 =Decimal(r.primitiveValue());
//         result.add(new DecimalType(d1.divide(d2).asDecimal()));
//       } catch (UcumException e) {
//         // just return nothing
//       }
//     } else if (l instanceof Quantity && r instanceof Quantity && worker.getUcumService() != null) {
//       Pair pl = qtyToPair((Quantity) l);
//       Pair pr = qtyToPair((Quantity) r);
//       Pair p;
//       try {
//         p = worker.getUcumService().divideBy(pl, pr);
//         result.add(pairToQty(p));
//       } catch (UcumException e) {
//         // just return nothing
//       }
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "/", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    List<FhirBase> opDiv(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "div");
//     }
//     if (!left.get(0).isPrimitive() && !(left.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "div", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "div");
//     }
//     if (!right.get(0).isPrimitive() && !(right.get(0) instanceof Quantity)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "div", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);

//     if (l.hasType("integer") && r.hasType("integer")) {
//       int divisor = Integer.parseInt(r.primitiveValue());
//       if (divisor != 0) {
//         result.add(new IntegerType(Integer.parseInt(l.primitiveValue()) / divisor));
//       }
//     } else if (l.hasType("decimal", "integer") && r.hasType("decimal", "integer")) {
//       Decimal d1;
//       try {
//         d1 =Decimal(l.primitiveValue());
//         Decimal d2 =Decimal(r.primitiveValue());
//         result.add(new IntegerType(d1.divInt(d2).asDecimal()));
//       } catch (UcumException e) {
//         // just return nothing
//       }
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "div", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    List<FhirBase> opMod(List<FhirBase> left, List<FhirBase> right, ExpressionNode expr) {
//     if (left.size() == 0 || right.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (left.size() > 1) {
//       throw makeExceptionPlural(left.size(), expr, I18nConstants.FHIRPATH_LEFT_VALUE, "mod");
//     }
//     if (!left.get(0).isPrimitive()) {
//       throw makeException(expr, I18nConstants.FHIRPATH_LEFT_VALUE_WRONG_TYPE, "mod", left.get(0).fhirType());
//     }
//     if (right.size() > 1) {
//       throw makeExceptionPlural(right.size(), expr, I18nConstants.FHIRPATH_RIGHT_VALUE, "mod");
//     }
//     if (!right.get(0).isPrimitive()) {
//       throw makeException(expr, I18nConstants.FHIRPATH_RIGHT_VALUE_WRONG_TYPE, "mod", right.get(0).fhirType());
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase l = left.get(0);
//     FhirBase r = right.get(0);

//     if (l.hasType("integer") && r.hasType("integer")) {
//       int modulus = Integer.parseInt(r.primitiveValue());
//       if (modulus != 0) {
//         result.add(new IntegerType(Integer.parseInt(l.primitiveValue()) % modulus));
//       }
//     } else if (l.hasType("decimal", "integer") && r.hasType("decimal", "integer")) {
//       Decimal d1;
//       try {
//         d1 =Decimal(l.primitiveValue());
//         Decimal d2 =Decimal(r.primitiveValue());
//         result.add(new DecimalType(d1.modulo(d2).asDecimal()));
//       } catch (UcumException e) {
//         throwPathEngineException(e);
//       }
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_OP_INCOMPATIBLE, "mod", left.get(0).fhirType(),
//           right.get(0).fhirType());
//     }
//     return result;
//   }

//    TypeDetails resolveConstantType(ExecutionTypeContext context, FhirBase constant, ExpressionNode expr, bool explicitConstant)
//       throws PathEngineException {
//     if (constant instanceof BooleanType) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     } else if (constant instanceof IntegerType) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     } else if (constant instanceof DecimalType) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);
//     } else if (constant instanceof Quantity) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Quantity);
//     } else if (constant instanceof FHIRConstant) {
//       return resolveConstantType(context, ((FHIRConstant) constant).getValue(), expr, explicitConstant);
//     } else if (constant == null) {
//       returnTypeDetails(CollectionStatus.SINGLETON);
//     } else {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//   }

//    TypeDetails resolveConstantType(ExecutionTypeContext context, String s, ExpressionNode expr, bool explicitConstant)
//       throws PathEngineException {
//     if (s.startsWith("@")) {
//       if (s.startsWith("@T")) {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Time);
//       } else {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_DateTime);
//       }
//     } else if (s.equals("%sct")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.equals("%loinc")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.equals("%ucum")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.equals("%resource")) {
//       if (context.resource == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANNOT_USE, "%resource", "no focus resource");
//       }
//       returnTypeDetails(CollectionStatus.SINGLETON, context.resource);
//     } else if (s.equals("%rootResource")) {
//       if (context.resource == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_CANNOT_USE, "%rootResource", "no focus resource");
//       }
//       returnTypeDetails(CollectionStatus.SINGLETON, context.resource);
//     } else if (s.equals("%context")) {
//       return context.context;
//     } else if (s.equals("%map-codes")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.equals("%us-zip")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.startsWith("%`vs-")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.startsWith("%`cs-")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (s.startsWith("%`ext-")) {
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     } else if (hostServices == null) {
//       String varName = s.substring(1);
//       if (context.hasDefinedVariable(varName))
//         return context.getDefinedVariable(varName);
//       throw makeException(expr, I18nConstants.FHIRPATH_UNKNOWN_CONSTANT, s);
//     } else {
//       String varName = s.substring(1);
//       if (context.hasDefinedVariable(varName))
//         return context.getDefinedVariable(varName);
//       return hostServices.resolveConstantType(this, context.appInfo, s, explicitConstant);
//     }
//   }

//    List<FhirBase> execute(ExecutionContext context, FhirBase item, ExpressionNode exp, bool atEntry)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (atEntry && context.appInfo != null && hostServices != null) {
//       // we'll see if the name matches a constant known by the context.
//       List<FhirBase> temp = hostServices.resolveConstant(this, context.appInfo, exp.getName(), true, false);
//       if (!temp.isEmpty()) {
//         result.addAll(temp);
//         return result;
//       }
//     }
//     if (atEntry && exp.getName() != null && Character.isUpperCase(exp.getName().charAt(0))) {// special case for start
//                                                                                              // up
//       StructureDefinition sd = worker.fetchTypeDefinition(item.fhirType());
//       if (sd == null) {
//         // logical model
//         if (exp.getName().equals(item.fhirType())) {
//           result.add(item);
//         }
//       } else {
//         while (sd != null) {
//           if (sd.getType().equals(exp.getName())) {
//             result.add(item);
//             break;
//           }
//           sd = worker.fetchResource(StructureDefinition.class, sd.getFhirBaseDefinition());
//         }
//       }
//     } else {
//       getChildrenByName(item, exp.getName(), result);
//     }
//     if (atEntry && context.appInfo != null && hostServices != null && result.isEmpty()) {
//       // well, we didn't get a match on the name - we'll see if the name matches a
//       // constant known by the context.
//       // (if the name does match, and the user wants to get the constant value,
//       // they'll have to try harder...
//       result.addAll(hostServices.resolveConstant(this, context.appInfo, exp.getName(), false, false));
//     }
//     return result;
//   }

//    String getParent(String rn) {
//     return null;
//   }

//    TypeDetails executeContextType(ExecutionTypeContext context, String name, ExpressionNode expr, bool explicitConstant)
//       throws PathEngineException, DefinitionException {
//     if (hostServices == null) {
//       throw makeException(expr, I18nConstants.FHIRPATH_HO_HOST_SERVICES, "Context Reference");
//     }
//     return hostServices.resolveConstantType(this, context.appInfo, name, explicitConstant);
//   }

//    TypeDetails executeType(String type, ExpressionNode exp, bool atEntry)
//       throws PathEngineException, DefinitionException {
//     if (atEntry && Character.isUpperCase(exp.getName().charAt(0)) && hashTail(type).equals(exp.getName())) { // special
//                                                                                                              // case for
//                                                                                                              // start up
//       returnTypeDetails(CollectionStatus.SINGLETON, type);
//     }
//     TypeDetails result =TypeDetails(null);
//     getChildTypesByName(type, exp.getName(), result, exp);
//     return result;
//   }

//    String hashTail(String type) {
//     return type.contains("#") ? "" : type.substring(type.lastIndexOf("/") + 1);
//   }

//   @SuppressWarnings("unchecked")
//    TypeDetails evaluateFunctionType(ExecutionTypeContext context, TypeDetails focus, ExpressionNode exp)
//       throws PathEngineException, DefinitionException {
//     List<TypeDetails> paramTypes =ArrayList<TypeDetails>();
//     if (exp.getFunction() == Function.Is || exp.getFunction() == Function.As || exp.getFunction() == Function.OfType) {
//       paramTypes.add(new TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//     } else {
//       int i = 0;
//       for (ExpressionNode expr : exp.getParameters()) {
//         if (isExpressionParameter(exp, i)) {
//           paramTypes.add(executeType(changeThis(context, focus), focus, expr, true));
//         } else {
//           paramTypes.add(executeType(context, context.thisItem, expr, true));
//         }
//         i++;
//       }
//     }
//     switch (exp.getFunction()) {
//     case Empty:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Not:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Exists: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case SubsetOf: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes, focus);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case SupersetOf: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes, focus);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case IsDistinct:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Distinct:
//       return focus;
//     case Count:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     case Where:
//       return focus;
//     case Select:
//       return anything(focus.getCollectionStatus());
//     case All:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Repeat:
//       return anything(focus.getCollectionStatus());
//     case Aggregate:
//       return anything(focus.getCollectionStatus());
//     case Item: {
//       checkOrdered(focus, "item", exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       return focus;
//     }
//     case As: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, exp.getParameters().get(0).getName());
//     }
//     case OfType: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, exp.getParameters().get(0).getName());
//     }
//     case Type: {
//       bool s = false;
//       bool c = false;
//       for (ProfiledType pt : focus.getProfiledTypes()) {
//         s = s || pt.isSystemType();
//         c = c || !pt.isSystemType();
//       }
//       if (s && c) {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_SimpleTypeInfo, TypeDetails.FP_ClassInfo);
//       } else if (s) {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_SimpleTypeInfo);
//       } else {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_ClassInfo);
//       }
//     }
//     case Is: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case Single:
//       return focus.toSingleton();
//     case First: {
//       checkOrdered(focus, "first", exp);
//       return focus.toSingleton();
//     }
//     case Last: {
//       checkOrdered(focus, "last", exp);
//       return focus.toSingleton();
//     }
//     case Tail: {
//       checkOrdered(focus, "tail", exp);
//       return focus;
//     }
//     case Skip: {
//       checkOrdered(focus, "skip", exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       return focus;
//     }
//     case Take: {
//       checkOrdered(focus, "take", exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       return focus;
//     }
//     case Union: {
//       return focus.union(paramTypes.get(0));
//     }
//     case Combine: {
//       return focus.union(paramTypes.get(0));
//     }
//     case Intersect: {
//       return focus.intersect(paramTypes.get(0));
//     }
//     case Exclude: {
//       return focus;
//     }
//     case Iif: {
//       TypeDetails types =TypeDetails(null);
//       checkSingleton(focus, "iif", exp);       
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean));       
//       types.update(paramTypes.get(1));
//       if (paramTypes.size() > 2) {
//         types.update(paramTypes.get(2));
//       }
//       return types;
//     }
//     case Lower: {
//       checkContextString(focus, "lower", exp, true);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case Upper: {
//       checkContextString(focus, "upper", exp, true);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case ToChars: {
//       checkContextString(focus, "toChars", exp, true);
//       returnTypeDetails(CollectionStatus.ORDERED, TypeDetails.FP_String);
//     }
//     case IndexOf: {
//       checkContextString(focus, "indexOf", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     }
//     case Substring: {
//       checkContextString(focus, "subString", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer),
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case StartsWith: {
//       checkContextString(focus, "startsWith", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case EndsWith: {
//       checkContextString(focus, "endsWith", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case Matches: {
//       checkContextString(focus, "matches", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case MatchesFull: {
//       checkContextString(focus, "matches", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case ReplaceMatches: {
//       checkContextString(focus, "replaceMatches", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String),
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case Contains: {
//       checkContextString(focus, "contains", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case Replace: {
//       checkContextString(focus, "replace", exp, true);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String),
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case Length: {
//       checkContextPrimitive(focus, "length", false, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     }
//     case Children:
//       return childTypes(focus, "*", exp);
//     case Descendants:
//       return childTypes(focus, "**", exp);
//     case MemberOf: {
//       checkContextCoded(focus, "memberOf", exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case Trace: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       return focus;
//     }
//     case DefineVariable : {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,TypeDetails(CollectionStatus.UNORDERED, TypeDetails.FP_String)); 
//       // set the type of the variable
//       // Actually evaluate the value of the first parameter (to get the name of the variable if possible)
//       // and if have that, set it into the context
//       ExpressionNode p = exp.getParameters().get(0);
//       if (p.getKind() == Kind.Constant && p.getConstant() != null) {
//         String varName = exp.getParameters().get(0).getConstant().primitiveValue();
//         if (varName != null) {
//           if (paramTypes.size() > 1)
//             context.setDefinedVariable(varName, paramTypes.get(1));
//           else
//             context.setDefinedVariable(varName, focus);
//         }
//       } else {
//         // this variable is not a constant, so we can't analyze what name it could have
//       }
//       return focus; 
//     }
//     case Check: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       return focus;
//     }
//     case Today:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_DateTime);
//     case Now:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_DateTime);
//     case Resolve: {
//       checkContextReference(focus, "resolve", exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, "DomainResource");
//     }
//     case Extension: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, "Extension");
//     }
//     case AnyTrue:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case AllTrue:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case AnyFalse:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case AllFalse:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case HasValue:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case HtmlChecks1:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case HtmlChecks2:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Comparable:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     case Encode:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Decode:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Escape:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Unescape:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Trim:
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Split:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case Join:
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     case ToInteger: {
//       checkContextPrimitive(focus, "toInteger", true, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     }
//     case ToDecimal: {
//       checkContextPrimitive(focus, "toDecimal", true, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);
//     }
//     case ToString: {
//       checkContextPrimitive(focus, "toString", true, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String);
//     }
//     case ToQuantity: {
//       checkContextPrimitive(focus, "toQuantity", true, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Quantity);
//     }
//     case ToBoolean: {
//       checkContextPrimitive(focus, "toBoolean", false, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case ToDateTime: {
//       checkContextPrimitive(focus, "ToDateTime", false, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_DateTime);
//     }
//     case ToTime: {
//       checkContextPrimitive(focus, "ToTime", false, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Time);
//     }
//     case ConvertsToString:
//     case ConvertsToQuantity: {
//       checkContextPrimitive(focus, exp.getFunction().toCode(), true, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case ConvertsToInteger:
//     case ConvertsToDecimal:
//     case ConvertsToDateTime:
//     case ConvertsToDate:
//     case ConvertsToTime:
//     case ConvertsToBoolean: {
//       checkContextPrimitive(focus, exp.getFunction().toCode(), false, exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case ConformsTo: {
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_String));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Boolean);
//     }
//     case Abs: {
//       checkContextNumerical(focus, "abs", exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, focus.getTypes());
//     }
//     case Truncate:
//     case Floor:
//     case Ceiling: {
//       checkContextDecimal(focus, exp.getFunction().toCode(), exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);
//     }

//     case Round: {
//       checkContextDecimal(focus, "round", exp);
//       if (paramTypes.size() > 0) {
//         checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//            TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       }
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);
//     }

//     case Exp:
//     case Ln:
//     case Sqrt: {
//       checkContextNumerical(focus, exp.getFunction().toCode(), exp);
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);
//     }
//     case Log: {
//       checkContextNumerical(focus, exp.getFunction().toCode(), exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_NUMBERS));
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);
//     }
//     case Power: {
//       checkContextNumerical(focus, exp.getFunction().toCode(), exp);
//       checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//          TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_NUMBERS));
//       returnTypeDetails(CollectionStatus.SINGLETON, focus.getTypes());
//     }

//     case LowBoundary:
//     case HighBoundary: {
//       checkContextContinuous(focus, exp.getFunction().toCode(), exp, true);      
//       if (paramTypes.size() > 0) {
//         checkParamTypes(exp, exp.getFunction().toCode(), paramTypes,
//            TypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer));
//       }
//       if ((focus.hasType("date") || focus.hasType("datetime") || focus.hasType("instant"))) {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal, TypeDetails.FP_DateTime);       
//       } else if (focus.hasType("decimal") || focus.hasType("integer")) {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Decimal);       
//       } else {
//         returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_DateTime);       
//       }
//     }
//     case Precision: {
//       checkContextContinuous(focus, exp.getFunction().toCode(), exp, false);      
//       returnTypeDetails(CollectionStatus.SINGLETON, TypeDetails.FP_Integer);       
//     }

//     case Custom: {
//       return hostServices.checkFunction(this, context.appInfo, exp.getName(), focus, paramTypes);
//     }
//     default:
//       break;
//     }
//     throwError("not Implemented yet");
//   }

//    bool isExpressionParameter(ExpressionNode exp, int i) {
//     switch (i) {
//     case 0:
//       return exp.getFunction() == Function.Where || exp.getFunction() == Function.Exists
//           || exp.getFunction() == Function.All || exp.getFunction() == Function.Select
//           || exp.getFunction() == Function.Repeat || exp.getFunction() == Function.Aggregate;
//     case 1:
//       return exp.getFunction() == Function.Trace || exp.getFunction() == Function.DefineVariable;
//     default:
//       return false;
//     }
//   }

//    void checkParamTypes(ExpressionNode expr, String funcName, List<TypeDetails> paramTypes,
//       TypeDetails... typeSet) {
//     int i = 0;
//     for (TypeDetails pt : typeSet) {
//       if (i == paramTypes.size()) {
//         return;
//       }
//       TypeDetails actual = paramTypes.get(i);
//       i++;
//       for (String a : actual.getTypes()) {
//         if (!pt.hasType(worker, a)) {
//           throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, funcName, i, a, pt.toString());
//         }
//       }
//     }
//   }
  
//    void checkSingleton(TypeDetails focus, String name, ExpressionNode expr) {
//     if (focus.getCollectionStatus() != CollectionStatus.SINGLETON) {
// //      typeWarnings.add(new IssueMessage(worker.formatMessage(I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT, name, expr.toString()), I18nConstants.FHIRPATH_COLLECTION_STATUS_CONTEXT));
//     }
//   }

//    void checkOrdered(TypeDetails focus, String name, ExpressionNode expr) {
//     if (focus.getCollectionStatus() == CollectionStatus.UNORDERED) {
//       throw makeException(expr, I18nConstants.FHIRPATH_ORDERED_ONLY, name);
//     }
//   }

//    void checkContextReference(TypeDetails focus, String name, ExpressionNode expr) {
//     if (!focus.hasType(worker, "string") && !focus.hasType(worker, "uri") && !focus.hasType(worker, "Reference")
//         && !focus.hasType(worker, "canonical")) {
//       throw makeException(expr, I18nConstants.FHIRPATH_REFERENCE_ONLY, name, focus.describe());
//     }
//   }

//    void checkContextCoded(TypeDetails focus, String name, ExpressionNode expr) {
//     if (!focus.hasType(worker, "string") && !focus.hasType(worker, "code") && !focus.hasType(worker, "uri")
//         && !focus.hasType(worker, "Coding") && !focus.hasType(worker, "CodeableConcept")) {
//       throw makeException(expr, I18nConstants.FHIRPATH_CODED_ONLY, name, focus.describe());
//     }
//   }

//    void checkContextString(TypeDetails focus, String name, ExpressionNode expr, bool sing)
//       throws PathEngineException {
//     if (!focus.hasNoTypes() && !focus.hasType(worker, "string") && !focus.hasType(worker, "code")
//         && !focus.hasType(worker, "uri") && !focus.hasType(worker, "canonical") && !focus.hasType(worker, "id")) {
//       throw makeException(expr, sing ? I18nConstants.FHIRPATH_STRING_SING_ONLY : I18nConstants.FHIRPATH_STRING_ORD_ONLY,
//           name, focus.describe());
//     }
//   }

//    void checkContextPrimitive(TypeDetails focus, String name, bool canQty, ExpressionNode expr)
//       throws PathEngineException {
//     if (!focus.hasNoTypes()) {
//       if (canQty) {
//         if (!focus.hasType(primitiveTypes) && !focus.hasType("Quantity")) {
//           throw makeException(expr, I18nConstants.FHIRPATH_PRIMITIVE_ONLY, name, focus.describe(),
//               "Quantity, " + primitiveTypes.toString());
//         }
//       } else if (!focus.hasType(primitiveTypes)) {
//         throw makeException(expr, I18nConstants.FHIRPATH_PRIMITIVE_ONLY, name, focus.describe(),
//             primitiveTypes.toString());
//       }
//     }
//   }

//    void checkContextNumerical(TypeDetails focus, String name, ExpressionNode expr) {
//     if (!focus.hasNoTypes() && !focus.hasType("integer") && !focus.hasType("decimal") && !focus.hasType("Quantity")) {
//       throw makeException(expr, I18nConstants.FHIRPATH_NUMERICAL_ONLY, name, focus.describe());
//     }
//   }

//    void checkContextDecimal(TypeDetails focus, String name, ExpressionNode expr) {
//     if (!focus.hasNoTypes() && !focus.hasType("decimal") && !focus.hasType("integer")) {
//       throw makeException(expr, I18nConstants.FHIRPATH_DECIMAL_ONLY, name, focus.describe());
//     }
//   }

//    void checkContextContinuous(TypeDetails focus, String name, ExpressionNode expr, bool allowInteger) {
//     if (!focus.hasNoTypes() && !focus.hasType("decimal") && !focus.hasType("date") && !focus.hasType("dateTime") && !focus.hasType("time") && !focus.hasType("Quantity") && !(allowInteger && focus.hasType("integer"))) {
//       throw makeException(expr, I18nConstants.FHIRPATH_CONTINUOUS_ONLY, name, focus.describe());
//     }
//   }

//    TypeDetails childTypes(TypeDetails focus, String mask, ExpressionNode expr)
//       throws PathEngineException, DefinitionException {
//     TypeDetails result =TypeDetails(CollectionStatus.UNORDERED);
//     for (String f : focus.getTypes()) {
//       getChildTypesByName(f, mask, result, expr);
//     }
//     return result;
//   }

//    TypeDetails anything(CollectionStatus status) {
//     returnTypeDetails(status, allTypes.keySet());
//   }

//   //  bool isPrimitiveType(String s) {
//   // return s.equals("boolean") || s.equals("integer") || s.equals("decimal") ||
//   // s.equals("base64Binary") || s.equals("instant") || s.equals("string") ||
//   // s.equals("uri") || s.equals("date") || s.equals("dateTime") ||
//   // s.equals("time") || s.equals("code") || s.equals("oid") || s.equals("id") ||
//   // s.equals("unsignedInt") || s.equals("positiveInt") || s.equals("markdown");
//   // }

//    List<FhirBase> evaluateFunction(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     switch (exp.getFunction()) {
//     case Empty:
//       return funcEmpty(context, focus, exp);
//     case Not:
//       return funcNot(context, focus, exp);
//     case Exists:
//       return funcExists(context, focus, exp);
//     case SubsetOf:
//       return funcSubsetOf(context, focus, exp);
//     case SupersetOf:
//       return funcSupersetOf(context, focus, exp);
//     case IsDistinct:
//       return funcIsDistinct(context, focus, exp);
//     case Distinct:
//       return funcDistinct(context, focus, exp);
//     case Count:
//       return funcCount(context, focus, exp);
//     case Where:
//       return funcWhere(context, focus, exp);
//     case Select:
//       return funcSelect(context, focus, exp);
//     case All:
//       return funcAll(context, focus, exp);
//     case Repeat:
//       return funcRepeat(context, focus, exp);
//     case Aggregate:
//       return funcAggregate(context, focus, exp);
//     case Item:
//       return funcItem(context, focus, exp);
//     case As:
//       return funcAs(context, focus, exp);
//     case OfType:
//       return funcOfType(context, focus, exp);
//     case Type:
//       return funcType(context, focus, exp);
//     case Is:
//       return funcIs(context, focus, exp);
//     case Single:
//       return funcSingle(context, focus, exp);
//     case First:
//       return funcFirst(context, focus, exp);
//     case Last:
//       return funcLast(context, focus, exp);
//     case Tail:
//       return funcTail(context, focus, exp);
//     case Skip:
//       return funcSkip(context, focus, exp);
//     case Take:
//       return funcTake(context, focus, exp);
//     case Union:
//       return funcUnion(context, focus, exp);
//     case Combine:
//       return funcCombine(context, focus, exp);
//     case Intersect:
//       return funcIntersect(context, focus, exp);
//     case Exclude:
//       return funcExclude(context, focus, exp);
//     case Iif:
//       return funcIif(context, focus, exp);
//     case Lower:
//       return funcLower(context, focus, exp);
//     case Upper:
//       return funcUpper(context, focus, exp);
//     case ToChars:
//       return funcToChars(context, focus, exp);
//     case IndexOf:
//       return funcIndexOf(context, focus, exp);
//     case Substring:
//       return funcSubstring(context, focus, exp);
//     case StartsWith:
//       return funcStartsWith(context, focus, exp);
//     case EndsWith:
//       return funcEndsWith(context, focus, exp);
//     case Matches:
//       return funcMatches(context, focus, exp);
//     case MatchesFull:
//       return funcMatchesFull(context, focus, exp);
//     case ReplaceMatches:
//       return funcReplaceMatches(context, focus, exp);
//     case Contains:
//       return funcContains(context, focus, exp);
//     case Replace:
//       return funcReplace(context, focus, exp);
//     case Length:
//       return funcLength(context, focus, exp);
//     case Children:
//       return funcChildren(context, focus, exp);
//     case Descendants:
//       return funcDescendants(context, focus, exp);
//     case MemberOf:
//       return funcMemberOf(context, focus, exp);
//     case Trace:
//       return funcTrace(context, focus, exp);
//     case DefineVariable:
//       return funcDefineVariable(context, focus, exp);
//     case Check:
//       return funcCheck(context, focus, exp);
//     case Today:
//       return funcToday(context, focus, exp);
//     case Now:
//       return funcNow(context, focus, exp);
//     case Resolve:
//       return funcResolve(context, focus, exp);
//     case Extension:
//       return funcExtension(context, focus, exp);
//     case AnyFalse:
//       return funcAnyFalse(context, focus, exp);
//     case AllFalse:
//       return funcAllFalse(context, focus, exp);
//     case AnyTrue:
//       return funcAnyTrue(context, focus, exp);
//     case AllTrue:
//       return funcAllTrue(context, focus, exp);
//     case HasValue:
//       return funcHasValue(context, focus, exp);
//     case Encode:
//       return funcEncode(context, focus, exp);
//     case Decode:
//       return funcDecode(context, focus, exp);
//     case Escape:
//       return funcEscape(context, focus, exp);
//     case Unescape:
//       return funcUnescape(context, focus, exp);
//     case Trim:
//       return funcTrim(context, focus, exp);
//     case Split:
//       return funcSplit(context, focus, exp);
//     case Join:
//       return funcJoin(context, focus, exp);
//     case HtmlChecks1:
//       return funcHtmlChecks1(context, focus, exp);
//     case HtmlChecks2:
//       return funcHtmlChecks2(context, focus, exp);
//     case Comparable:
//       return funcComparable(context, focus, exp);
//     case ToInteger:
//       return funcToInteger(context, focus, exp);
//     case ToDecimal:
//       return funcToDecimal(context, focus, exp);
//     case ToString:
//       return funcToString(context, focus, exp);
//     case ToBoolean:
//       return funcToBoolean(context, focus, exp);
//     case ToQuantity:
//       return funcToQuantity(context, focus, exp);
//     case ToDateTime:
//       return funcToDateTime(context, focus, exp);
//     case ToTime:
//       return funcToTime(context, focus, exp);
//     case ConvertsToInteger:
//       return funcIsInteger(context, focus, exp);
//     case ConvertsToDecimal:
//       return funcIsDecimal(context, focus, exp);
//     case ConvertsToString:
//       return funcIsString(context, focus, exp);
//     case ConvertsToBoolean:
//       return funcIsBoolean(context, focus, exp);
//     case ConvertsToQuantity:
//       return funcIsQuantity(context, focus, exp);
//     case ConvertsToDateTime:
//       return funcIsDateTime(context, focus, exp);
//     case ConvertsToDate:
//       return funcIsDate(context, focus, exp);
//     case ConvertsToTime:
//       return funcIsTime(context, focus, exp);
//     case ConformsTo:
//       return funcConformsTo(context, focus, exp);
//     case Round:
//       return funcRound(context, focus, exp);
//     case Sqrt:
//       return funcSqrt(context, focus, exp);
//     case Abs:
//       return funcAbs(context, focus, exp);
//     case Ceiling:
//       return funcCeiling(context, focus, exp);
//     case Exp:
//       return funcExp(context, focus, exp);
//     case Floor:
//       return funcFloor(context, focus, exp);
//     case Ln:
//       return funcLn(context, focus, exp);
//     case Log:
//       return funcLog(context, focus, exp);
//     case Power:
//       return funcPower(context, focus, exp);
//     case Truncate:
//       return funcTruncate(context, focus, exp);
//     case LowBoundary:
//       return funcLowBoundary(context, focus, exp);
//     case HighBoundary:
//       return funcHighBoundary(context, focus, exp);
//     case Precision:
//       return funcPrecision(context, focus, exp);

//     case Custom: {
//       List<List<FhirBase>> params =ArrayList<List<FhirBase>>();
//       for (ExpressionNode p : exp.getParameters()) {
//         params.add(execute(context, focus, p, true));
//       }
//       return hostServices.executeFunction(this, context.appInfo, focus, exp.getName(), params);
//     }
//     default:
//       throwError("not Implemented yet");
//     }
//   }

//    List<FhirBase> funcSqrt(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "sqrt", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(Math.sqrt(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "sqrt", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcAbs(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "abs", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(Math.abs(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }
//     } else if (base.hasType("Quantity")) {
//       Quantity qty = (Quantity) base;
//       result.add(qty.copy().setValue(qty.getValue().abs()));
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "abs", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcCeiling(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "ceiling", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new IntegerType((int) Math.ceil(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "ceiling", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcFloor(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "floor", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new IntegerType((int) Math.floor(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "floor", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcExp(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() == 0) {
//       returnArrayList<FhirBase>();
//     }
//     if (focus.size() > 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "exp", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(Math.exp(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }

//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "exp", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcLn(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "ln", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(Math.log(d)));
//       } catch (Exception e) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "ln", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcLog(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "log", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//       if (n1.size() != 1) {
//         throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "log", "0", "Multiple Values",
//             "integer or decimal");
//       }
//       Double e = Double.parseDouble(n1.get(0).primitiveValue());
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(customLog(e, d)));
//       } catch (Exception ex) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "log", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    static double customLog(double base, double logNumber) {
//     return Math.log(logNumber) / Math.log(base);
//   }

//    List<FhirBase> funcPower(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "power", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//       if (n1.size() != 1) {
//         throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "power", "0", "Multiple Values",
//             "integer or decimal");
//       }
//       Double e = Double.parseDouble(n1.get(0).primitiveValue());
//       Double d = Double.parseDouble(base.primitiveValue());
//       try {
//         result.add(new DecimalType(Math.pow(d, e)));
//       } catch (Exception ex) {
//         // just return nothing
//       }
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "power", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    List<FhirBase> funcTruncate(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "truncate", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       String s = base.primitiveValue();
//       if (s.contains(".")) {
//         s = s.substring(0, s.indexOf("."));
//       }
//       result.add(new IntegerType(s));
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "sqrt", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    String getNamedValue(FhirBase base, String name) {
//     Property p = base.getChildByName(name);
//     if (p.hasValues() && p.getValues().size() == 1) {
//       return p.getValues().get(0).primitiveValue();
//     }
//     return null;
//   }

//    List<FhirBase> funcLowBoundary(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() == 0) {
//       return makeNull();
//     }
//     if (focus.size() > 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "lowBoundary", focus.size());
//     }
//     Integer precision = null;
//     if (expr.getParameters().size() > 0) {
//       List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//       if (n1.size() != 1) {
//         throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "lowBoundary", "0", "Multiple Values", "integer");
//       }
//       precision = Integer.parseInt(n1.get(0).primitiveValue());
//     }
    
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
    
//     if (base.hasType("decimal")) {
//       if (precision == null || (precision >= 0 && precision < 17)) {
//         result.add(new DecimalType(Utilities.lowBoundaryForDecimal(base.primitiveValue(), precision == null ? 8 : precision)));
//       }
//     } else if (base.hasType("integer")) {
//       if (precision == null || (precision >= 0 && precision < 17)) {
//         result.add(new DecimalType(Utilities.lowBoundaryForDecimal(base.primitiveValue(), precision == null ? 8 : precision)));
//       }
//     } else if (base.hasType("date")) {
//       result.add(new DateTimeType(Utilities.lowBoundaryForDate(base.primitiveValue(), precision == null ? 10 : precision)));
//     } else if (base.hasType("dateTime")) {
//       result.add(new DateTimeType(Utilities.lowBoundaryForDate(base.primitiveValue(), precision == null ? 17 : precision)));
//     } else if (base.hasType("time")) {
//       result.add(new TimeType(Utilities.lowBoundaryForTime(base.primitiveValue(), precision == null ? 9 : precision)));
//     } else if (base.hasType("Quantity")) {
//       String value = getNamedValue(base, "value");
//       FhirBase v = base.copy();
//       v.setProperty("value",DecimalType(Utilities.lowBoundaryForDecimal(value, precision == null ? 8 : precision)));
//       result.add(v);
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "sqrt", "(focus)", base.fhirType(), "decimal or date");
//     }
//     return result;
//   }
  
//    List<FhirBase> funcHighBoundary(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() == 0) {
//       return makeNull();
//     }
//     if (focus.size() > 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "highBoundary", focus.size());
//     }
//     Integer precision = null;
//     if (expr.getParameters().size() > 0) {
//       List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//       if (n1.size() != 1) {
//         throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "lowBoundary", "0", "Multiple Values", "integer");
//       }
//       precision = Integer.parseInt(n1.get(0).primitiveValue());
//     }
    
    
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("decimal")) {
//       if (precision == null || (precision >= 0 && precision < 17)) {
//         result.add(new DecimalType(Utilities.highBoundaryForDecimal(base.primitiveValue(), precision == null ? 8 : precision)));
//       }
//     } else if (base.hasType("integer")) {
//       if (precision == null || (precision >= 0 && precision < 17)) {
//         result.add(new DecimalType(Utilities.highBoundaryForDecimal(base.primitiveValue(), precision == null ? 8 : precision)));
//       }
//     } else if (base.hasType("date")) {
//       result.add(new DateTimeType(Utilities.highBoundaryForDate(base.primitiveValue(), precision == null ? 10 : precision)));
//     } else if (base.hasType("dateTime")) {
//       result.add(new DateTimeType(Utilities.highBoundaryForDate(base.primitiveValue(), precision == null ? 17 : precision)));
//     } else if (base.hasType("time")) {
//       result.add(new TimeType(Utilities.highBoundaryForTime(base.primitiveValue(), precision == null ? 9 : precision)));
//     } else if (base.hasType("Quantity")) {
//       String value = getNamedValue(base, "value");
//       FhirBase v = base.copy();
//       v.setProperty("value",DecimalType(Utilities.highBoundaryForDecimal(value, precision == null ? 8 : precision)));
//       result.add(v);
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "sqrt", "(focus)", base.fhirType(), "decimal or date");
//     }
//     return result;
//   }
  
//    List<FhirBase> funcPrecision(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "highBoundary", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("decimal")) {
//       result.add(new IntegerType(Utilities.getDecimalPrecision(base.primitiveValue())));
//     } else if (base.hasType("date") || base.hasType("dateTime")) {
//       result.add(new IntegerType(Utilities.getDatePrecision(base.primitiveValue())));
//     } else if (base.hasType("time")) {
//       result.add(new IntegerType(Utilities.getTimePrecision(base.primitiveValue())));
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "sqrt", "(focus)", base.fhirType(),
//           "decimal or date");
//     }
//     return result;
//   }

//    List<FhirBase> funcRound(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     if (focus.size() != 1) {
//       throw makeExceptionPlural(focus.size(), expr, I18nConstants.FHIRPATH_FOCUS, "round", focus.size());
//     }
//     FhirBase base = focus.get(0);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (base.hasType("integer", "decimal", "unsignedInt", "positiveInt")) {
//       int i = 0;
//       if (expr.getParameters().size() == 1) {
//         List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//         if (n1.size() != 1) {
//           throw makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "power", "0", "Multiple Values",
//               "integer");
//         }
//         i = Integer.parseInt(n1.get(0).primitiveValue());
//       }
//       BigDecimal d =BigDecimal(base.primitiveValue());
//       result.add(new DecimalType(d.setScale(i, RoundingMode.HALF_UP)));
//     } else {
//       makeException(expr, I18nConstants.FHIRPATH_WRONG_PARAM_TYPE, "round", "(focus)", base.fhirType(),
//           "integer or decimal");
//     }
//     return result;
//   }

//    static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();

//    static String bytesToHex(byte[] bytes) {
//     char[] hexChars =char[bytes.length * 2];
//     for (int j = 0; j < bytes.length; j++) {
//       int v = bytes[j] & 0xFF;
//       hexChars[j * 2] = HEX_ARRAY[v >>> 4];
//       hexChars[j * 2 + 1] = HEX_ARRAY[v & 0x0F];
//     }
//     returnString(hexChars);
//   }

//    static byte[] hexStringToByteArray(String s) {
//     int len = s.length();
//     byte[] data =byte[len / 2];
//     for (int i = 0; i < len; i += 2) {
//       data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
//     }
//     return data;
//   }

//    List<FhirBase> funcEncode(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();

//     List<FhirBase> result =ArrayList<FhirBase>();

//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       if ("hex".equals(param)) {
//         result.add(new StringType(bytesToHex(cnt.getBytes())));
//       } else if ("base64".equals(param)) {
//         FhirBase64.Encoder enc = FhirBase64.getEncoder();
//         result.add(new StringType(enc.encodeToString(cnt.getBytes())));
//       } else if ("urlbase64".equals(param)) {
//         FhirBase64.Encoder enc = FhirBase64.getUrlEncoder();
//         result.add(new StringType(enc.encodeToString(cnt.getBytes())));
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcDecode(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();

//     List<FhirBase> result =ArrayList<FhirBase>();

//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       if ("hex".equals(param)) {
//         result.add(new StringType(new String(hexStringToByteArray(cnt))));
//       } else if ("base64".equals(param)) {
//         FhirBase64.Decoder enc = FhirBase64.getDecoder();
//         result.add(new StringType(new String(enc.decode(cnt))));
//       } else if ("urlbase64".equals(param)) {
//         FhirBase64.Decoder enc = FhirBase64.getUrlDecoder();
//         result.add(new StringType(new String(enc.decode(cnt))));
//       }
//     }

//     return result;
//   }

//    List<FhirBase> funcEscape(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();

//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       if ("html".equals(param)) {
//         result.add(new StringType(Utilities.escapeXml(cnt)));
//       } else if ("json".equals(param)) {
//         result.add(new StringType(Utilities.escapeJson(cnt)));
//       }
//     }

//     return result;
//   }

//    List<FhirBase> funcUnescape(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();

//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       if ("html".equals(param)) {
//         result.add(new StringType(Utilities.unescapeXml(cnt)));
//       } else if ("json".equals(param)) {
//         result.add(new StringType(Utilities.unescapeJson(cnt)));
//       }
//     }

//     return result;
//   }

//    List<FhirBase> funcTrim(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       result.add(new StringType(cnt.trim()));
//     }
//     return result;
//   }

//    List<FhirBase> funcSplit(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();

//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       String cnt = focus.get(0).primitiveValue();
//       String[] sl = Utilities.simpleSplit(cnt, param);
//       for (String s : sl) {
//         result.add(new StringType(s));
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcJoin(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String param = nl.get(0).primitiveValue();
//     String param2 = param;
//     if (exp.getParameters().size() == 2) {
//       nl = execute(context, focus, exp.getParameters().get(1), true);
//       param2 = nl.get(0).primitiveValue();
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     CommaSeparatedStringBuffer b =CommaSeparatedStringBuffer(param, param2);
//     for (FhirBase i : focus) {
//       b.append(i.primitiveValue());
//     }
//     result.add(new StringType(b.toString()));
//     return result;
//   }

//    List<FhirBase> funcHtmlChecks1(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     // todo: actually check the HTML
//     if (focus.size() != 1) {
//       return makeBoolean(false);
//     }
//     XhtmlNode x = focus.get(0).getXhtml();
//     if (x == null) {
//       return makeBoolean(false);
//     }
//     return makeBoolean(checkHtmlNames(x));
//   }

//    List<FhirBase> funcHtmlChecks2(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     // todo: actually check the HTML
//     if (focus.size() != 1) {
//       return makeBoolean(false);
//     }
//     XhtmlNode x = focus.get(0).getXhtml();
//     if (x == null) {
//       return makeBoolean(false);
//     }
//     return makeBoolean(checkForContent(x));
//   }

//    bool checkForContent(XhtmlNode x) {
//     if ((x.getNodeType() == NodeType.Text && !Utilities.noString(x.getContent().trim()))
//         || (x.getNodeType() == NodeType.Element && "img".equals(x.getName()))) {
//       return true;
//     }
//     for (XhtmlNode c : x.getChildNodes()) {
//       if (checkForContent(c)) {
//         return true;
//       }
//     }
//     return false;
//   }

//    List<FhirBase> funcComparable(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     if (focus.size() != 1 || !(focus.get(0).fhirType().equals("Quantity"))) {
//       return makeBoolean(false);
//     }
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     if (nl.size() != 1 || !(nl.get(0).fhirType().equals("Quantity"))) {
//       return makeBoolean(false);
//     }
//     String s1 = getNamedValue(focus.get(0), "system");
//     String u1 = getNamedValue(focus.get(0), "code");
//     String s2 = getNamedValue(nl.get(0), "system");
//     String u2 = getNamedValue(nl.get(0), "code");

//     if (s1 == null || s2 == null || !s1.equals(s2)) {
//       return makeBoolean(false);
//     }
//     if (u1 == null || u2 == null) {
//       return makeBoolean(false);
//     }
//     if (u1.equals(u2)) {
//       return makeBoolean(true);
//     }
//     if (s1.equals("http://unitsofmeasure.org") && worker.getUcumService() != null) {
//       try {
//         return makeBoolean(worker.getUcumService().isComparable(u1, u2));
//       } catch (UcumException e) {
//         return makeBoolean(false);
//       }
//     } else {
//       return makeBoolean(false);
//     }
//   }

//    bool checkHtmlNames(XhtmlNode node) {
//     if (node.getNodeType() == NodeType.Comment) {
//       if (node.getContent().startsWith("DOCTYPE"))
//         return false;
//     }
//     if (node.getNodeType() == NodeType.Element) {
//       if (!Utilities.existsInList(node.getName(), "p", "br", "div", "h1", "h2", "h3", "h4", "h5", "h6", "a", "span",
//           "b", "em", "i", "strong", "small", "big", "tt", "small", "dfn", "q", "var", "abbr", "acronym", "cite",
//           "blockquote", "hr", "address", "bdo", "kbd", "q", "sub", "sup", "ul", "ol", "li", "dl", "dt", "dd", "pre",
//           "table", "caption", "colgroup", "col", "thead", "tr", "tfoot", "tbody", "th", "td", "code", "samp", "img",
//           "map", "area")) {
//         return false;
//       }
//       for (String an : node.getAttributes().keySet()) {
//         bool ok = an.startsWith("xmlns") || Utilities.existsInList(an, "title", "style", "class", "id", "idref", "lang",
//             "xml:lang", "dir", "accesskey", "tabindex",
//             // tables
//             "span", "width", "align", "valign", "char", "charoff", "abbr", "axis", "headers", "scope", "rowspan",
//             "colspan") ||

//             Utilities.existsInList(node.getName() + "." + an, "a.href", "a.name", "img.src", "img.border", "div.xmlns",
//                 "blockquote.cite", "q.cite", "a.charset", "a.type", "a.name", "a.href", "a.hreflang", "a.rel", "a.rev",
//                 "a.shape", "a.coords", "img.src", "img.alt", "img.longdesc", "img.height", "img.width", "img.usemap",
//                 "img.ismap", "map.name", "area.shape", "area.coords", "area.href", "area.nohref", "area.alt",
//                 "table.summary", "table.width", "table.border", "table.frame", "table.rules", "table.cellspacing",
//                 "table.cellpadding", "pre.space", "td.nowrap");
//         if (!ok) {
//           return false;
//         }
//       }
//       for (XhtmlNode c : node.getChildNodes()) {
//         if (!checkHtmlNames(c)) {
//           return false;
//         }
//       }
//     }
//     return true;
//   }

//    List<FhirBase> funcAll(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (exp.getParameters().size() == 1) {
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       bool all = true;
//       for (FhirBase item : focus) {
//         pc.clear();
//         pc.add(item);
//         Equality eq = asBool(execute(changeThis(context, item), pc, exp.getParameters().get(0), true), exp);
//         if (eq != Equality.True) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     } else {// (exp.getParameters().size() == 0) {
//       bool all = true;
//       for (FhirBase item : focus) {
//         Equality eq = asBool(item, true);
//         if (eq != Equality.True) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     }
//     return result;
//   }

//    ExecutionContext changeThis(ExecutionContext context, FhirBase newThis) {
//     ExecutionContext newContext =ExecutionContext(context.appInfo, context.focusResource, context.rootResource, context.context,
//         newThis);
//     // append all of the defined variables from the context into thecontext
//     if (context.definedVariables != null) {
//       for (String s : context.definedVariables.keySet()) {
//         newContext.setDefinedVariable(s, context.definedVariables.get(s));
//       }
//     }
//     return newContext;
//   }

//    ExecutionContext contextForParameter(ExecutionContext context) {
//     ExecutionContext newContext =ExecutionContext(context.appInfo, context.focusResource, context.rootResource, context.context, context.thisItem);
//     newContext.total = context.total;
//     newContext.index = context.index;
//     // append all of the defined variables from the context into thecontext
//     if (context.definedVariables != null) {
//       for (String s : context.definedVariables.keySet()) {
//         newContext.setDefinedVariable(s, context.definedVariables.get(s));
//       }
//     }
//     return newContext;
//   }

//    ExecutionTypeContext changeThis(ExecutionTypeContext context, TypeDetails newThis) {
//     ExecutionTypeContext newContext =ExecutionTypeContext(context.appInfo, context.resource, context.context, newThis);
//     // append all of the defined variables from the context into thecontext
//     if (context.definedVariables != null) {
//       for (String s : context.definedVariables.keySet()) {
//         newContext.setDefinedVariable(s, context.definedVariables.get(s));
//       }
//     }
//     return newContext;
//   }

//    ExecutionTypeContext contextForParameter(ExecutionTypeContext context) {
//     ExecutionTypeContext newContext =ExecutionTypeContext(context.appInfo, context.resource, context.context, context.thisItem);
//     // append all of the defined variables from the context into thecontext
//     if (context.definedVariables != null) {
//       for (String s : context.definedVariables.keySet()) {
//         newContext.setDefinedVariable(s, context.definedVariables.get(s));
//       }
//     }
//     return newContext;
//   }

//    List<FhirBase> funcNow(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(DateTimeType.now());
//     return result;
//   }

//    List<FhirBase> funcToday(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(new DateType(new Date(), TemporalPrecisionEnum.DAY));
//     return result;
//   }

//    List<FhirBase> funcMemberOf(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     if (nl.size() != 1 || focus.size() != 1) {
//       returnArrayList<FhirBase>();
//     }

//     String url = nl.get(0).primitiveValue();
//     ValueSet vs = hostServices != null ? hostServices.resolveValueSet(this, context.appInfo, url)
//         : worker.fetchResource(ValueSet.class, url);
//     if (vs == null) {
//       returnArrayList<FhirBase>();
//     }
//     FhirBase l = focus.get(0);
//     if (Utilities.existsInList(l.fhirType(), "code", "string", "uri")) {
//       return makeBoolean(
//           worker.validateCode(terminologyServiceOptions.withGuessSystem(), TypeConvertor.castToCoding(l), vs).isOk());
//     } else if (l.fhirType().equals("Coding")) {
//       return makeBoolean(worker.validateCode(terminologyServiceOptions, TypeConvertor.castToCoding(l), vs).isOk());
//     } else if (l.fhirType().equals("CodeableConcept")) {
//       return makeBoolean(
//           worker.validateCode(terminologyServiceOptions, TypeConvertor.castToCodeableConcept(l), vs).isOk());
//     } else {
//       // System.out.println("unknown type in funcMemberOf: "+l.fhirType());
//       returnArrayList<FhirBase>();
//     }
//   }

//    List<FhirBase> funcDescendants(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> current =ArrayList<FhirBase>();
//     current.addAll(focus);
//     List<FhirBase> added =ArrayList<FhirBase>();
//     bool more = true;
//     while (more) {
//       added.clear();
//       for (FhirBase item : current) {
//         getChildrenByName(item, "*", added);
//       }
//       more = !added.isEmpty();
//       result.addAll(added);
//       current.clear();
//       current.addAll(added);
//     }
//     return result;
//   }

//    List<FhirBase> funcChildren(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase b : focus) {
//       getChildrenByName(b, "*", result);
//     }
//     return result;
//   }

//    List<FhirBase> funcReplace(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr)
//       throws FHIRException, PathEngineException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> tB = execute(context, focus, expr.getParameters().get(0), true);
//     String t = convertToString(tB);
//     List<FhirBase> rB = execute(context, focus, expr.getParameters().get(1), true);
//     String r = convertToString(rB);

//     if (focus.size() == 0 || tB.size() == 0 || rB.size() == 0) {
//       //
//     } else if (focus.size() == 1) {
//       if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//         String f = convertToString(focus.get(0));
//         if (Utilities.noString(f)) {
//           result.add(new StringType(""));
//         } else {
//           String n = f.replace(t, r);
//           result.add(new StringType(n));
//         }
//       }
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_NO_COLLECTION, "replace", focus.size());
//     }
//     return result;
//   }

//    List<FhirBase> funcReplaceMatches(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> regexB = execute(context, focus, exp.getParameters().get(0), true);
//     String regex = convertToString(regexB);
//     List<FhirBase> replB = execute(context, focus, exp.getParameters().get(1), true);
//     String repl = convertToString(replB);

//     if (focus.size() == 0 || regexB.size() == 0 || replB.size() == 0) {
//       //
//     } else if (focus.size() == 1 && !Utilities.noString(regex)) {
//       if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//         result.add(new StringType(convertToString(focus.get(0)).replaceAll(regex, repl)).noExtensions());
//       }
//     } else {
//       result.add(new StringType(convertToString(focus.get(0))).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcEndsWith(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> swb = execute(context, focus, exp.getParameters().get(0), true);
//     String sw = convertToString(swb);

//     if (focus.size() == 0) {
//       //
//     } else if (swb.size() == 0) {
//       //
//     } else if (Utilities.noString(sw)) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//       if (focus.size() == 1 && !Utilities.noString(sw)) {
//         result.add(new BooleanType(convertToString(focus.get(0)).endsWith(sw)).noExtensions());
//       } else {
//         result.add(new BooleanType(false).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcToString(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       String value = convertToString(item);
//       if (value != null)
//         result.add(new StringType(value).noExtensions());
//     }

//     if (result.size() > 1) {
//       throw makeException(exp, I18nConstants.FHIRPATH_NO_COLLECTION, "toString", result.size());
//     }
//     return result;
//   }

//    List<FhirBase> funcToBoolean(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       if (focus.get(0) instanceof BooleanType) {
//         result.add(focus.get(0));
//       } else if (focus.get(0) instanceof IntegerType) {
//         int i = Integer.parseInt(focus.get(0).primitiveValue());
//         if (i == 0) {
//           result.add(new BooleanType(false).noExtensions());
//         } else if (i == 1) {
//           result.add(new BooleanType(true).noExtensions());
//         }
//       } else if (focus.get(0) instanceof DecimalType) {
//         if (((DecimalType) focus.get(0)).getValue().compareTo(BigDecimal.ZERO) == 0) {
//           result.add(new BooleanType(false).noExtensions());
//         } else if (((DecimalType) focus.get(0)).getValue().compareTo(BigDecimal.ONE) == 0) {
//           result.add(new BooleanType(true).noExtensions());
//         }
//       } else if (focus.get(0) instanceof StringType) {
//         if ("true".equalsIgnoreCase(focus.get(0).primitiveValue())) {
//           result.add(new BooleanType(true).noExtensions());
//         } else if ("false".equalsIgnoreCase(focus.get(0).primitiveValue())) {
//           result.add(new BooleanType(false).noExtensions());
//         }
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcToQuantity(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       if (focus.get(0) instanceof Quantity) {
//         result.add(focus.get(0));
//       } else if (focus.get(0) instanceof StringType) {
//         Quantity q = parseQuantityString(focus.get(0).primitiveValue());
//         if (q != null) {
//           result.add(q.noExtensions());
//         }
//       } else if (focus.get(0) instanceof IntegerType) {
//         result.add(new Quantity().setValue(new BigDecimal(focus.get(0).primitiveValue()))
//             .setSystem("http://unitsofmeasure.org").setCode("1").noExtensions());
//       } else if (focus.get(0) instanceof DecimalType) {
//         result.add(new Quantity().setValue(new BigDecimal(focus.get(0).primitiveValue()))
//             .setSystem("http://unitsofmeasure.org").setCode("1").noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcToDateTime(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     // List<FhirBase> result =ArrayList<FhirBase>();
//     // result.add(new BooleanType(convertToBoolean(focus)));
//     // return result;
//     throw makeException(expr, I18nConstants.FHIRPATH_NOT_IMPLEMENTED, "toDateTime");
//   }

//    List<FhirBase> funcToTime(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     // List<FhirBase> result =ArrayList<FhirBase>();
//     // result.add(new BooleanType(convertToBoolean(focus)));
//     // return result;
//     throw makeException(expr, I18nConstants.FHIRPATH_NOT_IMPLEMENTED, "toTime");
//   }

//    List<FhirBase> funcToDecimal(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     String s = convertToString(focus);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (Utilities.isDecimal(s, true)) {
//       result.add(new DecimalType(s).noExtensions());
//     }
//     if ("true".equals(s)) {
//       result.add(new DecimalType(1).noExtensions());
//     }
//     if ("false".equals(s)) {
//       result.add(new DecimalType(0).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIif(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     if (focus.size() > 1) {
//       throw makeException(exp, I18nConstants.FHIRPATH_NO_COLLECTION, "iif", focus.size());    
//     }
    
//     List<FhirBase> n1 = execute(focus.isEmpty() ? context : changeThis(context, focus.get(0)), focus, exp.getParameters().get(0), true);
//     Equality v = asBool(n1, exp);
//     if (v == Equality.True) {
//       return execute(context, focus, exp.getParameters().get(1), true);
//     } else if (exp.getParameters().size() < 3) {
//       returnArrayList<FhirBase>();
//     } else {
//       return execute(context, focus, exp.getParameters().get(2), true);
//     }
//   }

//    List<FhirBase> funcTake(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> n1 = execute(context, focus, exp.getParameters().get(0), true);
//     int i1 = Integer.parseInt(n1.get(0).primitiveValue());

//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (int i = 0; i < Math.min(focus.size(), i1); i++) {
//       result.add(focus.get(i));
//     }
//     return result;
//   }

//    List<FhirBase> funcUnion(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       if (!doContains(result, item)) {
//         result.add(item);
//       }
//     }
//     for (FhirBase item : execute(context, baseToList(context.thisItem), exp.getParameters().get(0), true)) {
//       if (!doContains(result, item)) {
//         result.add(item);
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcCombine(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       result.add(item);
//     }
//     for (FhirBase item : execute(context, baseToList(context.thisItem), exp.getParameters().get(0), true)) {
//       result.add(item);
//     }
//     return result;
//   }

//    List<FhirBase> funcIntersect(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> other = execute(context, focus, exp.getParameters().get(0), true);

//     for (FhirBase item : focus) {
//       if (!doContains(result, item) && doContains(other, item)) {
//         result.add(item);
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcExclude(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> other = execute(context, focus, exp.getParameters().get(0), true);

//     for (FhirBase item : focus) {
//       if (!doContains(other, item)) {
//         result.add(item);
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcSingle(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr)
//       throws PathEngineException {
//     if (focus.size() == 1) {
//       return focus;
//     }
//     throw makeException(expr, I18nConstants.FHIRPATH_NO_COLLECTION, "single", focus.size());
//   }

//    List<FhirBase> funcIs(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr)
//       throws PathEngineException {
//     if (focus.size() == 0 || focus.size() > 1) {
//       return makeNull();
//     }
//     String ns = null;
//     String n = null;

//     ExpressionNode texp = expr.getParameters().get(0);
//     if (texp.getKind() != Kind.Name) {
//       throw makeException(expr, I18nConstants.FHIRPATH_PARAM_WRONG, texp.getKind(), "0", "is");
//     }
//     if (texp.getInner() != null) {
//       if (texp.getInner().getKind() != Kind.Name) {
//         throw makeException(expr, I18nConstants.FHIRPATH_PARAM_WRONG, texp.getKind(), "1", "is");
//       }
//       ns = texp.getName();
//       n = texp.getInner().getName();
//     } else if (Utilities.existsInList(texp.getName(), "Boolean", "Integer", "Decimal", "String", "DateTime", "Date",
//         "Time", "SimpleTypeInfo", "ClassInfo")) {
//       ns = "System";
//       n = texp.getName();
//     } else {
//       ns = "FHIR";
//       n = texp.getName();
//     }
//     if (ns.equals("System")) {
//       if (focus.get(0) instanceof Resource) {
//         return makeBoolean(false);
//       }
//       if (!(focus.get(0) instanceof Element) || ((Element) focus.get(0)).isDisallowExtensions()) {
//         String t = Utilities.capitalize(focus.get(0).fhirType());
//         if (n.equals(t)) {
//           return makeBoolean(true);
//         }
//         if ("Date".equals(t) && n.equals("DateTime")) {
//           return makeBoolean(true);
//         } else {
//           return makeBoolean(false);
//         }
//       } else {
//         return makeBoolean(false);
//       }
//     } else if (ns.equals("FHIR")) {
//       if (n.equals(focus.get(0).fhirType())) {
//         return makeBoolean(true);
//       } else {
//         StructureDefinition sd = worker.fetchTypeDefinition(focus.get(0).fhirType());
//         while (sd != null) {
//           if (n.equals(sd.getType())) {
//             return makeBoolean(true);
//           }
//           sd = worker.fetchResource(StructureDefinition.class, sd.getFhirBaseDefinition());
//         }
//         return makeBoolean(false);
//       }
//     } else {
//       return makeBoolean(false);
//     }
//   }

//    List<FhirBase> funcAs(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     String tn;
//     if (expr.getParameters().get(0).getInner() != null) {
//       tn = expr.getParameters().get(0).getName() + "." + expr.getParameters().get(0).getInner().getName();
//     } else {
//       tn = "FHIR." + expr.getParameters().get(0).getName();
//     }
//     if (!isKnownType(tn)) {
//       throwPathEngineException("The type " + tn + " is not valid");
//     }
//     if (!doNotEnforceAsSingletonRule && focus.size() > 1) {
//       throwPathEngineException("Attempt to use as() on more than one item (" + focus.size() + ")");
//     }

//     for (FhirBase b : focus) {
//       if (tn.startsWith("System.")) {
//         if (b instanceof Element && ((Element) b).isDisallowExtensions()) {
//           if (b.hasType(tn.substring(7))) {
//             result.add(b);
//           }
//         }

//       } else if (tn.startsWith("FHIR.")) {
//         String tnp = tn.substring(5);
//         if (b.fhirType().equals(tnp)) {
//           result.add(b);
//         } else {
//           StructureDefinition sd = worker.fetchTypeDefinition(b.fhirType());
//           while (sd != null) {
//             if (compareTypeNames(tnp, sd.getType())) {
//               result.add(b);
//               break;
//             }
//             sd = sd.getKind() == StructureDefinitionKind.PRIMITIVETYPE ? null
//                 : worker.fetchResource(StructureDefinition.class, sd.getFhirBaseDefinition(), sd);
//           }
//         }
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcOfType(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     String tn;
//     if (expr.getParameters().get(0).getInner() != null) {
//       tn = expr.getParameters().get(0).getName() + "." + expr.getParameters().get(0).getInner().getName();
//     } else {
//       tn = "FHIR." + expr.getParameters().get(0).getName();
//     }
//     if (!isKnownType(tn)) {
//       throwPathEngineException("The type " + tn + " is not valid");
//     }

//     for (FhirBase b : focus) {
//       if (tn.startsWith("System.")) {
//         if (b instanceof Element && ((Element) b).isDisallowExtensions()) {
//           if (b.hasType(tn.substring(7))) {
//             result.add(b);
//           }
//         }

//       } else if (tn.startsWith("FHIR.")) {
//         String tnp = tn.substring(5);
//         if (b.fhirType().equals(tnp)) {
//           result.add(b);
//         } else {
//           StructureDefinition sd = worker.fetchTypeDefinition(b.fhirType());
//           while (sd != null) {
//             if (tnp.equals(sd.getType())) {
//               result.add(b);
//               break;
//             }
//             sd = sd.getKind() == StructureDefinitionKind.PRIMITIVETYPE ? null
//                 : worker.fetchResource(StructureDefinition.class, sd.getFhirBaseDefinition(), sd);
//           }
//         }
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcType(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       result.add(new ClassTypeInfo(item));
//     }
//     return result;
//   }

//    List<FhirBase> funcRepeat(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> current =ArrayList<FhirBase>();
//     current.addAll(focus);
//     List<FhirBase> added =ArrayList<FhirBase>();
//     bool more = true;
//     while (more) {
//       added.clear();
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       for (FhirBase item : current) {
//         pc.clear();
//         pc.add(item);
//         added.addAll(execute(changeThis(context, item), pc, exp.getParameters().get(0), false));
//       }
//       more = false;
//       current.clear();
//       for (FhirBase b : added) {
//         bool isnew = true;
//         for (FhirBase t : result) {
//           if (b.equalsDeep(t)) {
//             isnew = false;
//           }
//         }
//         if (isnew) {
//           result.add(b);
//           current.add(b);
//           more = true;
//         }
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcAggregate(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> total =ArrayList<FhirBase>();
//     if (exp.parameterCount() > 1) {
//       total = execute(context, focus, exp.getParameters().get(1), false);
//     }

//     List<FhirBase> pc =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       ExecutionContext c = changeThis(context, item);
//       c.total = total;
//       c.next();
//       total = execute(c, pc, exp.getParameters().get(0), true);
//     }
//     return total;
//   }

//    List<FhirBase> funcIsDistinct(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     if (focus.size() < 1) {
//       return makeBoolean(true);
//     }
//     if (focus.size() == 1) {
//       return makeBoolean(true);
//     }

//     bool distinct = true;
//     for (int i = 0; i < focus.size(); i++) {
//       for (int j = i + 1; j < focus.size(); j++) {
//         Boolean eq = doEquals(focus.get(j), focus.get(i));
//         if (eq == null) {
//           returnArrayList<FhirBase>();
//         } else if (eq == true) {
//           distinct = false;
//           break;
//         }
//       }
//     }
//     return makeBoolean(distinct);
//   }

//    List<FhirBase> funcSupersetOf(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> target = execute(context, focus, exp.getParameters().get(0), true);

//     bool valid = true;
//     for (FhirBase item : target) {
//       bool found = false;
//       for (FhirBase t : focus) {
//         if (FhirBase.compareDeep(item, t, false)) {
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         valid = false;
//         break;
//       }
//     }
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(new BooleanType(valid).noExtensions());
//     return result;
//   }

//    List<FhirBase> funcSubsetOf(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> target = execute(context, focus, exp.getParameters().get(0), true);

//     bool valid = true;
//     for (FhirBase item : focus) {
//       bool found = false;
//       for (FhirBase t : target) {
//         if (FhirBase.compareDeep(item, t, false)) {
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         valid = false;
//         break;
//       }
//     }
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(new BooleanType(valid).noExtensions());
//     return result;
//   }

//    List<FhirBase> funcExists(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     bool empty = true;
//     List<FhirBase> pc =ArrayList<FhirBase>();
//     for (FhirBase f : focus) {
//       if (exp.getParameters().size() == 1) {
//         pc.clear();
//         pc.add(f);
//         Equality v = asBool(execute(changeThis(context, f), pc, exp.getParameters().get(0), true), exp);
//         if (v == Equality.True) {
//           empty = false;
//         }
//       } else if (!f.isEmpty()) {
//         empty = false;
//       }
//     }
//     result.add(new BooleanType(!empty).noExtensions());
//     return result;
//   }

//    List<FhirBase> funcResolve(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     FhirBase refContext = null;
//     for (FhirBase item : focus) {
//       String s = convertToString(item);
//       if (item.fhirType().equals("Reference")) {
//         refContext = item;
//         Property p = item.getChildByName("reference");
//         if (p != null && p.hasValues()) {
//           s = convertToString(p.getValues().get(0));
//         } else {
//           s = null; // a reference without any valid actual reference (just identifier or display,
//                     // but we can't resolve it)
//         }
//       }
//       if (item.fhirType().equals("canonical")) {
//         s = item.primitiveValue();
//         refContext = item;
//       }
//       if (s != null) {
//         FhirBase res = null;
//         if (s.startsWith("#")) {
//           Property p = context.rootResource.getChildByName("contained");
//           if (p != null) {
//             for (FhirBase c : p.getValues()) {
//               if (chompHash(s).equals(chompHash(c.getIdFhirBase()))) {
//                 res = c;
//                 break;
//               }
//             }
//           }
//         } else if (hostServices != null) {
//           try {
//             res = hostServices.resolveReference(this, context.appInfo, s, refContext);
//           } catch (Exception e) {
//             res = null;
//           }
//         }
//         if (res != null) {
//           result.add(res);
//         }
//       }
//     }

//     return result;
//   }

//   /**
//    * Strips a leading hashmark (#) if present at the start of a string
//    */
//    String chompHash(String theId) {
//     String retVal = theId;
//     while (retVal.startsWith("#")) {
//       retVal = retVal.substring(1);
//     }
//     return retVal;
//   }

//    List<FhirBase> funcExtension(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String url = nl.get(0).primitiveValue();

//     for (FhirBase item : focus) {
//       List<FhirBase> ext =ArrayList<FhirBase>();
//       getChildrenByName(item, "extension", ext);
//       getChildrenByName(item, "modifierExtension", ext);
//       for (FhirBase ex : ext) {
//         List<FhirBase> vl =ArrayList<FhirBase>();
//         getChildrenByName(ex, "url", vl);
//         if (convertToString(vl).equals(url)) {
//           result.add(ex);
//         }
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcAllFalse(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (exp.getParameters().size() == 1) {
//       bool all = true;
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       for (FhirBase item : focus) {
//         pc.clear();
//         pc.add(item);
//         List<FhirBase> res = execute(context, pc, exp.getParameters().get(0), true);
//         Equality v = asBool(res, exp);
//         if (v != Equality.False) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     } else {
//       bool all = true;
//       for (FhirBase item : focus) {
//         if (!canConvertToBoolean(item)) {
//           throwFHIRException("Unable to convert '" + convertToString(item) + "' to a boolean");
//         }

//         Equality v = asBool(item, true);
//         if (v != Equality.False) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcAnyFalse(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (exp.getParameters().size() == 1) {
//       bool any = false;
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       for (FhirBase item : focus) {
//         pc.clear();
//         pc.add(item);
//         List<FhirBase> res = execute(context, pc, exp.getParameters().get(0), true);
//         Equality v = asBool(res, exp);
//         if (v == Equality.False) {
//           any = true;
//           break;
//         }
//       }
//       result.add(new BooleanType(any).noExtensions());
//     } else {
//       bool any = false;
//       for (FhirBase item : focus) {
//         if (!canConvertToBoolean(item)) {
//           throwFHIRException("Unable to convert '" + convertToString(item) + "' to a boolean");
//         }

//         Equality v = asBool(item, true);
//         if (v == Equality.False) {
//           any = true;
//           break;
//         }
//       }
//       result.add(new BooleanType(any).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcAllTrue(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (exp.getParameters().size() == 1) {
//       bool all = true;
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       for (FhirBase item : focus) {
//         pc.clear();
//         pc.add(item);
//         List<FhirBase> res = execute(context, pc, exp.getParameters().get(0), true);
//         Equality v = asBool(res, exp);
//         if (v != Equality.True) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     } else {
//       bool all = true;
//       for (FhirBase item : focus) {
//         if (!canConvertToBoolean(item)) {
//           throwFHIRException("Unable to convert '" + convertToString(item) + "' to a boolean");
//         }
//         Equality v = asBool(item, true);
//         if (v != Equality.True) {
//           all = false;
//           break;
//         }
//       }
//       result.add(new BooleanType(all).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcAnyTrue(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (exp.getParameters().size() == 1) {
//       bool any = false;
//       List<FhirBase> pc =ArrayList<FhirBase>();
//       for (FhirBase item : focus) {
//         pc.clear();
//         pc.add(item);
//         List<FhirBase> res = execute(context, pc, exp.getParameters().get(0), true);
//         Equality v = asBool(res, exp);
//         if (v == Equality.True) {
//           any = true;
//           break;
//         }
//       }
//       result.add(new BooleanType(any).noExtensions());
//     } else {
//       bool any = false;
//       for (FhirBase item : focus) {
//         if (!canConvertToBoolean(item)) {
//           throwFHIRException("Unable to convert '" + convertToString(item) + "' to a boolean");
//         }

//         Equality v = asBool(item, true);
//         if (v == Equality.True) {
//           any = true;
//           break;
//         }
//       }
//       result.add(new BooleanType(any).noExtensions());
//     }
//     return result;
//   }

//    bool canConvertToBoolean(FhirBase item) {
//     return (item.isBooleanPrimitive());
//   }

//    List<FhirBase> funcTrace(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String name = nl.get(0).primitiveValue();
//     if (exp.getParameters().size() == 2) {
//       List<FhirBase> n2 = execute(context, focus, exp.getParameters().get(1), true);
//       log(name, n2);
//     } else {
//       log(name, focus);
//     }
//     return focus;
//   }

//    List<FhirBase> funcDefineVariable(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> nl = execute(context, focus, exp.getParameters().get(0), true);
//     String name = nl.get(0).primitiveValue();
//     List<FhirBase> value;
//     if (exp.getParameters().size() == 2) {
//       value = execute(context, focus, exp.getParameters().get(1), true);
//     } else { 
//       value = focus;
//     }
//     // stash the variable into the context
//     context.setDefinedVariable(name, value);
//     return focus;
//   }

//    List<FhirBase> funcCheck(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr) {
//     List<FhirBase> n1 = execute(context, focus, expr.getParameters().get(0), true);
//     if (!convertToBoolean(n1)) {
//       List<FhirBase> n2 = execute(context, focus, expr.getParameters().get(1), true);
//       String name = n2.get(0).primitiveValue();
//       throw makeException(expr, I18nConstants.FHIRPATH_CHECK_FAILED, name);
//     }
//     return focus;
//   }

//    List<FhirBase> funcDistinct(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     if (focus.size() <= 1) {
//       return focus;
//     }

//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (int i = 0; i < focus.size(); i++) {
//       bool found = false;
//       for (int j = i + 1; j < focus.size(); j++) {
//         Boolean eq = doEquals(focus.get(j), focus.get(i));
//         if (eq == null)
//           returnArrayList<FhirBase>();
//         else if (eq == true) {
//           found = true;
//           break;
//         }
//       }
//       if (!found) {
//         result.add(focus.get(i));
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcMatches(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> swb = execute(context, focus, exp.getParameters().get(0), true);
//     String sw = convertToString(swb);

//     if (focus.size() == 0 || swb.size() == 0) {
//       //
//     } else if (focus.size() == 1 && !Utilities.noString(sw)) {
//       if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//         String st = convertToString(focus.get(0));
//         if (Utilities.noString(st)) {
//           result.add(new BooleanType(false).noExtensions());
//         } else {
//           Pattern p = Pattern.compile("(?s)" + sw);
//           Matcher m = p.matcher(st);
//           bool ok = m.find();
//           result.add(new BooleanType(ok).noExtensions());
//         }
//       }
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcMatchesFull(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     String sw = convertToString(execute(context, focus, exp.getParameters().get(0), true));

//     if (focus.size() == 1 && !Utilities.noString(sw)) {
//       if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//         String st = convertToString(focus.get(0));
//         if (Utilities.noString(st)) {
//           result.add(new BooleanType(false).noExtensions());
//         } else {
//           Pattern p = Pattern.compile("(?s)" + sw);
//           Matcher m = p.matcher(st);
//           bool ok = m.matches();
//           result.add(new BooleanType(ok).noExtensions());
//         }
//       }
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcContains(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> swb = execute(context, baseToList(context.thisItem), exp.getParameters().get(0), true);
//     String sw = convertToString(swb);

//     if (focus.size() != 1) {
//       //
//     } else if (swb.size() != 1) {
//       //
//     } else if (Utilities.noString(sw)) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//       String st = convertToString(focus.get(0));
//       if (Utilities.noString(st)) {
//         result.add(new BooleanType(false).noExtensions());
//       } else {
//         result.add(new BooleanType(st.contains(sw)).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> baseToList(FhirBase b) {
//     List<FhirBase> res =ArrayList<>();
//     res.add(b);
//     return res;
//   }

//    List<FhirBase> funcLength(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1 && (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion)) {
//       String s = convertToString(focus.get(0));
//       result.add(new IntegerType(s.length()).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcHasValue(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1) {
//       String s = convertToString(focus.get(0));
//       result.add(new BooleanType(!Utilities.noString(s)).noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcStartsWith(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> swb = execute(context, focus, exp.getParameters().get(0), true);
//     String sw = convertToString(swb);

//     if (focus.size() == 0) {
//       // no result
//     } else if (swb.size() == 0) {
//       // no result
//     } else if (Utilities.noString(sw)) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//       String s = convertToString(focus.get(0));
//       if (s == null) {
//         result.add(new BooleanType(false).noExtensions());
//       } else {
//         result.add(new BooleanType(s.startsWith(sw)).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcLower(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1 && (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion)) {
//       String s = convertToString(focus.get(0));
//       if (!Utilities.noString(s)) {
//         result.add(new StringType(s.toLowerCase()).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcUpper(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1 && (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion)) {
//       String s = convertToString(focus.get(0));
//       if (!Utilities.noString(s)) {
//         result.add(new StringType(s.toUpperCase()).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcToChars(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() == 1 && (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion)) {
//       String s = convertToString(focus.get(0));
//       for (char c : s.toCharArray()) {
//         result.add(new StringType(String.valueOf(c)).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcIndexOf(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();

//     List<FhirBase> swb = execute(context, focus, exp.getParameters().get(0), true);
//     String sw = convertToString(swb);
//     if (focus.size() == 0) {
//       // no result
//     } else if (swb.size() == 0) {
//       // no result
//     } else if (Utilities.noString(sw)) {
//       result.add(new IntegerType(0).noExtensions());
//     } else if (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion) {
//       String s = convertToString(focus.get(0));
//       if (s == null) {
//         result.add(new IntegerType(0).noExtensions());
//       } else {
//         result.add(new IntegerType(s.indexOf(sw)).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcSubstring(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws FHIRException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> n1 = execute(context, focus, exp.getParameters().get(0), true);
//     int i1 = Integer.parseInt(n1.get(0).primitiveValue());
//     int i2 = -1;
//     if (exp.parameterCount() == 2) {
//       List<FhirBase> n2 = execute(context, focus, exp.getParameters().get(1), true);
//       if (n2.isEmpty() || !n2.get(0).isPrimitive() || !Utilities.isInteger(n2.get(0).primitiveValue())) {
//         returnArrayList<FhirBase>();
//       }
//       i2 = Integer.parseInt(n2.get(0).primitiveValue());
//     }

//     if (focus.size() == 1 && (focus.get(0).hasType(FHIR_TYPES_STRING) || doImplicitStringConversion)) {
//       String sw = convertToString(focus.get(0));
//       String s;
//       if (i1 < 0 || i1 >= sw.length()) {
//         returnArrayList<FhirBase>();
//       }
//       if (exp.parameterCount() == 2) {
//         s = sw.substring(i1, Math.min(sw.length(), i1 + i2));
//       } else {
//         s = sw.substring(i1);
//       }
//       if (!Utilities.noString(s)) {
//         result.add(new StringType(s).noExtensions());
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcToInteger(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     String s = convertToString(focus);
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (Utilities.isInteger(s)) {
//       result.add(new IntegerType(s).noExtensions());
//     } else if ("true".equals(s)) {
//       result.add(new IntegerType(1).noExtensions());
//     } else if ("false".equals(s)) {
//       result.add(new IntegerType(0).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsInteger(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof IntegerType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof BooleanType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType(Utilities.isInteger(convertToString(focus.get(0)))).noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsBoolean(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof IntegerType) {
//       result.add(
//          BooleanType(((IntegerType) focus.get(0)).getValue() >= 0 && ((IntegerType) focus.get(0)).getValue() <= 1)
//               .noExtensions());
//     } else if (focus.get(0) instanceof DecimalType) {
//       result.add(new BooleanType(((DecimalType) focus.get(0)).getValue().compareTo(BigDecimal.ZERO) == 0
//           || ((DecimalType) focus.get(0)).getValue().compareTo(BigDecimal.ONE) == 0).noExtensions());
//     } else if (focus.get(0) instanceof BooleanType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType(Utilities.existsInList(convertToString(focus.get(0)).toLowerCase(), "true", "false"))
//           .noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsDateTime(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof DateTimeType || focus.get(0) instanceof DateType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType((convertToString(focus.get(0)).matches(
//           "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3])(:[0-5][0-9](:([0-5][0-9]|60))?)?(\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?)?)?)?")))
//               .noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsDate(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof DateTimeType || focus.get(0) instanceof DateType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType((convertToString(focus.get(0)).matches(
//           "([0-9]([0-9]([0-9][1-9]|[1-9]0)|[1-9]00)|[1-9]000)(-(0[1-9]|1[0-2])(-(0[1-9]|[1-2][0-9]|3[0-1])(T([01][0-9]|2[0-3])(:[0-5][0-9](:([0-5][0-9]|60))?)?(\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?)?)?)?")))
//               .noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcConformsTo(ExecutionContext context, List<FhirBase> focus, ExpressionNode expr)
//       throws FHIRException {
//     if (hostServices == null) {
//       throw makeException(expr, I18nConstants.FHIRPATH_HO_HOST_SERVICES, "conformsTo");
//     }
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else {
//       String url = convertToString(execute(context, focus, expr.getParameters().get(0), true));
//       result.add(new BooleanType(hostServices.conformsToProfile(this, context.appInfo, focus.get(0), url)).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsTime(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof TimeType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType((convertToString(focus.get(0)).matches(
//           "(T)?([01][0-9]|2[0-3])(:[0-5][0-9](:([0-5][0-9]|60))?)?(\\.[0-9]+)?(Z|(\\+|-)((0[0-9]|1[0-3]):[0-5][0-9]|14:00))?")))
//               .noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsString(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (!(focus.get(0) instanceof DateTimeType) && !(focus.get(0) instanceof TimeType)) {
//       result.add(new BooleanType(true).noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcIsQuantity(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof IntegerType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof DecimalType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof Quantity) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof BooleanType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       Quantity q = parseQuantityString(focus.get(0).primitiveValue());
//       result.add(new BooleanType(q != null).noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    Quantity parseQuantityString(String s) {
//     if (s == null) {
//       return null;
//     }
//     s = s.trim();
//     if (s.contains(" ")) {
//       String v = s.substring(0, s.indexOf(" ")).trim();
//       s = s.substring(s.indexOf(" ")).trim();
//       if (!Utilities.isDecimal(v, false)) {
//         return null;
//       }
//       if (s.startsWith("'") && s.endsWith("'")) {
//         return Quantity.fromUcum(v, s.substring(1, s.length() - 1));
//       }
//       if (s.equals("year") || s.equals("years")) {
//         return Quantity.fromUcum(v, "a");
//       } else if (s.equals("month") || s.equals("months")) {
//         return Quantity.fromUcum(v, "mo_s");
//       } else if (s.equals("week") || s.equals("weeks")) {
//         return Quantity.fromUcum(v, "wk");
//       } else if (s.equals("day") || s.equals("days")) {
//         return Quantity.fromUcum(v, "d");
//       } else if (s.equals("hour") || s.equals("hours")) {
//         return Quantity.fromUcum(v, "h");
//       } else if (s.equals("minute") || s.equals("minutes")) {
//         return Quantity.fromUcum(v, "min");
//       } else if (s.equals("second") || s.equals("seconds")) {
//         return Quantity.fromUcum(v, "s");
//       } else if (s.equals("millisecond") || s.equals("milliseconds")) {
//         return Quantity.fromUcum(v, "ms");
//       } else {
//         return null;
//       }
//     } else {
//       if (Utilities.isDecimal(s, true)) {
//         returnQuantity().setValue(new BigDecimal(s)).setSystem("http://unitsofmeasure.org").setCode("1");
//       } else {
//         return null;
//       }
//     }
//   }

//    List<FhirBase> funcIsDecimal(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() != 1) {
//       result.add(new BooleanType(false).noExtensions());
//     } else if (focus.get(0) instanceof IntegerType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof BooleanType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof DecimalType) {
//       result.add(new BooleanType(true).noExtensions());
//     } else if (focus.get(0) instanceof StringType) {
//       result.add(new BooleanType(Utilities.isDecimal(convertToString(focus.get(0)), true)).noExtensions());
//     } else {
//       result.add(new BooleanType(false).noExtensions());
//     }
//     return result;
//   }

//    List<FhirBase> funcCount(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(new IntegerType(focus.size()).noExtensions());
//     return result;
//   }

//    List<FhirBase> funcSkip(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> n1 = execute(context, focus, exp.getParameters().get(0), true);
//     int i1 = Integer.parseInt(n1.get(0).primitiveValue());

//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (int i = i1; i < focus.size(); i++) {
//       result.add(focus.get(i));
//     }
//     return result;
//   }

//    List<FhirBase> funcTail(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     for (int i = 1; i < focus.size(); i++) {
//       result.add(focus.get(i));
//     }
//     return result;
//   }

//    List<FhirBase> funcLast(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() > 0) {
//       result.add(focus.get(focus.size() - 1));
//     }
//     return result;
//   }

//    List<FhirBase> funcFirst(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     if (focus.size() > 0) {
//       result.add(focus.get(0));
//     }
//     return result;
//   }

//    List<FhirBase> funcWhere(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> pc =ArrayList<FhirBase>();
//     for (FhirBase item : focus) {
//       pc.clear();
//       pc.add(item);
//       Equality v = asBool(execute(changeThis(context, item), pc, exp.getParameters().get(0), true), exp);
//       if (v == Equality.True) {
//         result.add(item);
//       }
//     }
//     return result;
//   }

//    List<FhirBase> funcSelect(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     List<FhirBase> pc =ArrayList<FhirBase>();
//     int i = 0;
//     for (FhirBase item : focus) {
//       pc.clear();
//       pc.add(item);
//       result.addAll(execute(changeThis(context, item).setIndex(i), pc, exp.getParameters().get(0), true));
//       i++;
//     }
//     return result;
//   }

//    List<FhirBase> funcItem(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     String s = convertToString(execute(context, focus, exp.getParameters().get(0), true));
//     if (Utilities.isInteger(s) && Integer.parseInt(s) < focus.size()) {
//       result.add(focus.get(Integer.parseInt(s)));
//     }
//     return result;
//   }

//    List<FhirBase> funcEmpty(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp) {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     result.add(new BooleanType(ElementUtil.isEmpty(focus)).noExtensions());
//     return result;
//   }

//    List<FhirBase> funcNot(ExecutionContext context, List<FhirBase> focus, ExpressionNode exp)
//       throws PathEngineException {
//     List<FhirBase> result =ArrayList<FhirBase>();
//     Equality v = asBool(focus, exp);
//     if (v != Equality.Null) {
//       result.add(new BooleanType(v != Equality.True));
//     }
//     return result;
//   }

//    class ElementDefinitionMatch {
//      ElementDefinition definition;
//      String fixedType;

//      ElementDefinitionMatch(ElementDefinition definition, String fixedType) {
//       super();
//       this.definition = definition;
//       this.fixedType = fixedType;
//     }

//      ElementDefinition getDefinition() {
//       return definition;
//     }

//      String getFixedType() {
//       return fixedType;
//     }

//   }

//    void getChildTypesByName(String type, String name, TypeDetails result, ExpressionNode expr)
//       throws PathEngineException, DefinitionException {
//     if (Utilities.noString(type)) {
//       throw makeException(expr, I18nConstants.FHIRPATH_NO_TYPE, "", "getChildTypesByName");
//     }
//     if (type.equals("http://hl7.org/fhir/StructureDefinition/xhtml")) {
//       return;
//     }
//     if (type.startsWith(Constants.NS_SYSTEM_TYPE)) {
//       return;
//     }

//     if (type.equals(TypeDetails.FP_SimpleTypeInfo)) {
//       getSimpleTypeChildTypesByName(name, result);
//     } else if (type.equals(TypeDetails.FP_ClassInfo)) {
//       getClassInfoChildTypesByName(name, result);
//     } else {
//       String url = null;
//       if (type.contains("#")) {
//         url = type.substring(0, type.indexOf("#"));
//       } else {
//         url = type;
//       }
//       String tail = "";
//       StructureDefinition sd = worker.fetchResource(StructureDefinition.class, url);
//       if (sd == null) {
//         throw makeException(expr, I18nConstants.FHIRPATH_NO_TYPE, url, "getChildTypesByName");
//       }
//       List<StructureDefinition> sdl =ArrayList<StructureDefinition>();
//       ElementDefinitionMatch m = null;
//       if (type.contains("#"))
//         m = getElementDefinition(sd, type.substring(type.indexOf("#") + 1), false, expr);
//       if (m != null && hasDataType(m.definition)) {
//         if (m.fixedType != null) {
//           StructureDefinition dt = worker.fetchResource(StructureDefinition.class,
//               ProfileUtilities.sdNs(m.fixedType, worker.getOverrideVersionNs()));
//           if (dt == null) {
//             throw makeException(expr, I18nConstants.FHIRPATH_NO_TYPE,
//                 ProfileUtilities.sdNs(m.fixedType, worker.getOverrideVersionNs()), "getChildTypesByName");
//           }
//           sdl.add(dt);
//         } else
//           for (TypeRefComponent t : m.definition.getType()) {
//             StructureDefinition dt = worker.fetchResource(StructureDefinition.class,
//                 ProfileUtilities.sdNs(t.getCode(), worker.getOverrideVersionNs()));
//             if (dt == null) {
//               throw makeException(expr, I18nConstants.FHIRPATH_NO_TYPE,
//                   ProfileUtilities.sdNs(t.getCode(), worker.getOverrideVersionNs()), "getChildTypesByName");
//             }
//             addTypeAndDescendents(sdl, dt, worker.allStructures());
//             // also add any descendant types
//           }
//       } else {
//         addTypeAndDescendents(sdl, sd, worker.allStructures());
//         if (type.contains("#")) {
//           tail = type.substring(type.indexOf("#") + 1);
//           tail = tail.substring(tail.indexOf("."));
//         }
//       }

//       for (StructureDefinition sdi : sdl) {
//         String path = sdi.getSnapshot().getElement().get(0).getPath() + tail + ".";
//         if (name.equals("**")) {
//           assert (result.getCollectionStatus() == CollectionStatus.UNORDERED);
//           for (ElementDefinition ed : sdi.getSnapshot().getElement()) {
//             if (ed.getPath().startsWith(path))
//               for (TypeRefComponent t : ed.getType()) {
//                 if (t.hasCode() && t.getCodeElement().hasValue()) {
//                   String tn = null;
//                   if (t.getCode().equals("Element") || t.getCode().equals("BackboneElement")) {
//                     tn = sdi.getType() + "#" + ed.getPath();
//                   } else {
//                     tn = t.getCode();
//                   }
//                   if (t.getCode().equals("Resource")) {
//                     for (String rn : worker.getResourceNames()) {
//                       if (!result.hasType(worker, rn)) {
//                         getChildTypesByName(result.addType(rn), "**", result, expr);
//                       }
//                     }
//                   } else if (!result.hasType(worker, tn)) {
//                     getChildTypesByName(result.addType(tn), "**", result, expr);
//                   }
//                 }
//               }
//           }
//         } else if (name.equals("*")) {
//           assert (result.getCollectionStatus() == CollectionStatus.UNORDERED);
//           for (ElementDefinition ed : sdi.getSnapshot().getElement()) {
//             if (ed.getPath().startsWith(path) && !ed.getPath().substring(path.length()).contains("."))
//               for (TypeRefComponent t : ed.getType()) {
//                 if (Utilities.noString(t.getCode())) { // Element.id or Extension.url
//                   result.addType("System.string");
//                 } else if (t.getCode().equals("Element") || t.getCode().equals("BackboneElement")) {
//                   result.addType(sdi.getType() + "#" + ed.getPath());
//                 } else if (t.getCode().equals("Resource")) {
//                   result.addTypes(worker.getResourceNames());
//                 } else {
//                   result.addType(t.getCode());
//                 }
//               }
//           }
//         } else {
//           path = sdi.getSnapshot().getElement().get(0).getPath() + tail + "." + name;

//           ElementDefinitionMatch ed = getElementDefinition(sdi, path, isAllowPolymorphicNames(), expr);
//           if (ed != null) {
//             if (!Utilities.noString(ed.getFixedType()))
//               result.addType(ed.getFixedType());
//             else {
//               for (TypeRefComponent t : ed.getDefinition().getType()) {
//                 if (Utilities.noString(t.getCode())) {
//                   if (Utilities.existsInList(ed.getDefinition().getId(), "Element.id", "Extension.url")
//                       || Utilities.existsInList(ed.getDefinition().getFhirBase().getPath(), "Resource.id", "Element.id",
//                           "Extension.url")) {
//                     result.addType(TypeDetails.FP_NS, "string");
//                   }
//                   break; // throwPathEngineException("Illegal reference to primitive value attribute
//                          // @ "+path);
//                 }

//                 ProfiledType pt = null;
//                 if (t.getCode().equals("Element") || t.getCode().equals("BackboneElement")) {
//                   pt =ProfiledType(sdi.getUrl() + "#" + path);
//                 } else if (t.getCode().equals("Resource")) {
//                   result.addTypes(worker.getResourceNames());
//                 } else {
//                   pt =ProfiledType(t.getCode());
//                 }
//                 if (pt != null) {
//                   if (t.hasProfile()) {
//                     pt.addProfiles(t.getProfile());
//                   }
//                   if (ed.getDefinition().hasBinding()) {
//                     pt.addBinding(ed.getDefinition().getBinding());
//                   }
//                   result.addType(pt);
//                 }
//               }
//             }
//           }
//         }
//       }
//     }
//   }

//    void addTypeAndDescendents(List<StructureDefinition> sdl, StructureDefinition dt,
//       List<StructureDefinition> types) {
//     sdl.add(dt);
//     for (StructureDefinition sd : types) {
//       if (sd.hasFhirBaseDefinition() && sd.getFhirBaseDefinition().equals(dt.getUrl())
//           && sd.getDerivation() == TypeDerivationRule.SPECIALIZATION) {
//         addTypeAndDescendents(sdl, sd, types);
//       }
//     }
//   }

//    void getClassInfoChildTypesByName(String name, TypeDetails result) {
//     if (name.equals("namespace")) {
//       result.addType(TypeDetails.FP_String);
//     }
//     if (name.equals("name")) {
//       result.addType(TypeDetails.FP_String);
//     }
//   }

//    void getSimpleTypeChildTypesByName(String name, TypeDetails result) {
//     if (name.equals("namespace")) {
//       result.addType(TypeDetails.FP_String);
//     }
//     if (name.equals("name")) {
//       result.addType(TypeDetails.FP_String);
//     }
//   }

//    ElementDefinitionMatch getElementDefinition(StructureDefinition sd, String path, bool allowTypedName,
//       ExpressionNode expr) {
//     for (ElementDefinition ed : sd.getSnapshot().getElement()) {
//       if (ed.getPath().equals(path)) {
//         if (ed.hasContentReference()) {
//           return getElementDefinitionById(sd, ed.getContentReference());
//         } else {
//           returnElementDefinitionMatch(ed, null);
//         }
//       }
//       if (ed.getPath().endsWith("[x]") && path.startsWith(ed.getPath().substring(0, ed.getPath().length() - 3))
//           && path.length() == ed.getPath().length() - 3) {
//         returnElementDefinitionMatch(ed, null);
//       }
//       if (allowTypedName && ed.getPath().endsWith("[x]")
//           && path.startsWith(ed.getPath().substring(0, ed.getPath().length() - 3))
//           && path.length() > ed.getPath().length() - 3) {
//         String s = Utilities.uncapitalize(path.substring(ed.getPath().length() - 3));
//         if (primitiveTypes.contains(s)) {
//           returnElementDefinitionMatch(ed, s);
//         } else {
//           returnElementDefinitionMatch(ed, path.substring(ed.getPath().length() - 3));
//         }
//       }
//       if (ed.getPath().contains(".") && path.startsWith(ed.getPath() + ".") && (ed.getType().size() > 0)
//           && !isAbstractType(ed.getType())) {
//         // now we walk into the type.
//         if (ed.getType().size() > 1) { // if there's more than one type, the test above would fail this
//           throwError("Internal typing issue....");
//         }
//         StructureDefinition nsd = worker.fetchResource(StructureDefinition.class,
//             ProfileUtilities.sdNs(ed.getType().get(0).getCode(), worker.getOverrideVersionNs()));
//         if (nsd == null) {
//           throw makeException(expr, I18nConstants.FHIRPATH_NO_TYPE, ed.getType().get(0).getCode(),
//               "getElementDefinition");
//         }
//         return getElementDefinition(nsd, nsd.getId() + path.substring(ed.getPath().length()), allowTypedName, expr);
//       }
//       if (ed.hasContentReference() && path.startsWith(ed.getPath() + ".")) {
//         ElementDefinitionMatch m = getElementDefinitionById(sd, ed.getContentReference());
//         return getElementDefinition(sd, m.definition.getPath() + path.substring(ed.getPath().length()), allowTypedName,
//             expr);
//       }
//     }
//     return null;
//   }

//    bool isAbstractType(List<TypeRefComponent> list) {
//     return list.size() != 1 ? true
//         : Utilities.existsInList(list.get(0).getCode(), "Element", "BackboneElement", "Resource", "DomainResource");
//   }

//    bool hasType(ElementDefinition ed, String s) {
//     for (TypeRefComponent t : ed.getType()) {
//       if (s.equalsIgnoreCase(t.getCode())) {
//         return true;
//       }
//     }
//     return false;
//   }

//    bool hasDataType(ElementDefinition ed) {
//     return ed.hasType() && !(ed.getType().get(0).getCode().equals("Element")
//         || ed.getType().get(0).getCode().equals("BackboneElement"));
//   }

//    ElementDefinitionMatch getElementDefinitionById(StructureDefinition sd, String ref) {
//     for (ElementDefinition ed : sd.getSnapshot().getElement()) {
//       if (ref.equals("#" + ed.getId())) {
//         returnElementDefinitionMatch(ed, null);
//       }
//     }
//     return null;
//   }

//    bool hasLog() {
//     return log != null && log.length() > 0;
//   }

//    String takeLog() {
//     if (!hasLog()) {
//       return "";
//     }
//     String s = log.toString();
//     log =StringBuffer();
//     return s;
//   }

//   /**
//    * given an element definition in a profile, what element contains the
//    * differentiating fixed for the element, given the differentiating expresssion.
//    * The expression is only allowed to use a subset of FHIRPath
//    * 
//    * @param profile
//    * @param element
//    * @return
//    * @throws PathEngineException
//    * @throws DefinitionException
//    */
//    TypedElementDefinition evaluateDefinition(ExpressionNode expr, StructureDefinition profile,
//       TypedElementDefinition element, StructureDefinition source, bool dontWalkIntoReferences)
//       throws DefinitionException {
//     StructureDefinition sd = profile;
//     TypedElementDefinition focus = null;
//     bool okToNotResolve = false;

//     if (expr.getKind() == Kind.Name) {
//       if (element.getElement().hasSlicing()) {
//         ElementDefinition slice = pickMandatorySlice(sd, element.getElement());
//         if (slice == null) {
//           throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_NAME_ALREADY_SLICED,
//               element.getElement().getId());
//         }
//         element =TypedElementDefinition(slice);
//       }

//       if (expr.getName().equals("$this")) {
//         focus = element;
//       } else {
//         List<ElementDefinition> childDefinitions;
//         childDefinitions = profileUtilities.getChildMap(sd, element.getElement());
//         // if that's empty, get the children of the type
//         if (childDefinitions.isEmpty()) {

//           sd = fetchStructureByType(element, expr);
//           if (sd == null) {
//             throw makeException(expr, I18nConstants.FHIRPATH_RESOLVE_DISCRIMINATOR_CANT_FIND,
//                 element.getElement().getType().get(0).getProfile(), element.getElement().getId());
//           }
//           childDefinitions = profileUtilities.getChildMap(sd, sd.getSnapshot().getElementFirstRep());
//         }
//         for (ElementDefinition t : childDefinitions) {
//           if (tailMatches(t, expr.getName()) && !t.hasSlicing()) { // GG: slicing is a problem here. This is for an
//                                                                    // exetnsion with a fixed value (type slicing)
//             focus =TypedElementDefinition(t);
//             break;
//           }
//         }
//       }
//     } else if (expr.getKind() == Kind.Function) {
//       if ("resolve".equals(expr.getName())) {
//         if (element.getTypes().size() == 0) {
//           throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_RESOLVE_NO_TYPE, element.getElement().getId());
//         }
//         if (element.getTypes().size() > 1) {
//           throw makeExceptionPlural(element.getTypes().size(), expr,
//               I18nConstants.FHIRPATH_DISCRIMINATOR_RESOLVE_MULTIPLE_TYPES, element.getElement().getId());
//         }
//         if (!element.getTypes().get(0).hasTarget()) {
//           throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_RESOLVE_NOT_REFERENCE,
//               element.getElement().getId(), element.getElement().getType().get(0).getCode() + ")");
//         }
//         if (element.getTypes().get(0).getTargetProfile().size() > 1) {
//           throw makeExceptionPlural(element.getTypes().get(0).getTargetProfile().size(), expr,
//               I18nConstants.FHIRPATH_RESOLVE_DISCRIMINATOR_NO_TARGET, element.getElement().getId());
//         }
//         sd = worker.fetchResource(StructureDefinition.class,
//             element.getTypes().get(0).getTargetProfile().get(0).getValue());
//         if (sd == null) {
//           throw makeException(expr, I18nConstants.FHIRPATH_RESOLVE_DISCRIMINATOR_CANT_FIND,
//               element.getTypes().get(0).getTargetProfile(), element.getElement().getId());
//         }
//         focus =TypedElementDefinition(sd.getSnapshot().getElementFirstRep());
//       } else if ("extension".equals(expr.getName())) {
//         String targetUrl = expr.getParameters().get(0).getConstant().primitiveValue();
//         List<ElementDefinition> childDefinitions = profileUtilities.getChildMap(sd, element.getElement());
//         for (ElementDefinition t : childDefinitions) {
//           if (t.getPath().endsWith(".extension") && t.hasSliceName()) {
//             StructureDefinition exsd = (t.getType() == null || t.getType().isEmpty()
//                 || t.getType().get(0).getProfile().isEmpty()) ? null
//                     : worker.fetchResource(StructureDefinition.class,
//                         t.getType().get(0).getProfile().get(0).getValue());
//             while (exsd != null
//                 && !exsd.getFhirBaseDefinition().equals("http://hl7.org/fhir/StructureDefinition/Extension")) {
//               exsd = worker.fetchResource(StructureDefinition.class, exsd.getFhirBaseDefinition());
//             }
//             if (exsd != null && exsd.getUrl().equals(targetUrl)) {
//               if (profileUtilities.getChildMap(sd, t).isEmpty()) {
//                 sd = exsd;
//               }
//               focus =TypedElementDefinition(t);
//               break;
//             }
//           }
//         }
//         if (focus == null) {
//           throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_CANT_FIND_EXTENSION, expr.toString(),
//               targetUrl, element.getElement().getId(), sd.getUrl());
//         }
//       } else if ("ofType".equals(expr.getName())) {
//         if (!element.getElement().hasType()) {
//           throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_TYPE_NONE, element.getElement().getId());
//         }
//         List<String> atn =ArrayList<>();
//         for (TypeRefComponent tr : element.getTypes()) {
//           if (!tr.hasCode()) {
//             throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_NO_CODE, element.getElement().getId());
//           }
//           atn.add(tr.getCode());
//         }
//         String stn = expr.getParameters().get(0).getName();
//         okToNotResolve = true;
//         if ((atn.contains(stn))) {
//           if (element.getTypes().size() > 1) {
//             focus =TypedElementDefinition(element.getElement(), stn);
//           } else {
//             focus = element;
//           }
//         }
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_BAD_NAME, expr.getName());
//       }
//     } else if (expr.getKind() == Kind.Group) {
//       throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_BAD_SYNTAX_GROUP, expr.toString());
//     } else if (expr.getKind() == Kind.Constant) {
//       throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_BAD_SYNTAX_CONST);
//     }

//     if (focus == null) {
//       if (okToNotResolve) {
//         return null;
//       } else {
//         throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_CANT_FIND, expr.toString(), source.getUrl(),
//             element.getElement().getId(), profile.getUrl());
//       }
//     } else {
//       // gdg 26-02-2022. If we're walking towards a resolve() and we're on a
//       // reference, and we try to walk into the reference
//       // then we don't do that. .resolve() is allowed on the Reference.reference, but
//       // the target of the reference will be defined
//       // on the Reference, not the reference.reference.
//       ExpressionNode next = expr.getInner();
//       if (dontWalkIntoReferences && focus.hasType("Reference") && next != null && next.getKind() == Kind.Name
//           && next.getName().equals("reference")) {
//         next = next.getInner();
//       }
//       if (next == null) {
//         return focus;
//       } else {
//         return evaluateDefinition(next, sd, focus, profile, dontWalkIntoReferences);
//       }
//     }
//   }

//    ElementDefinition pickMandatorySlice(StructureDefinition sd, ElementDefinition element)
//       throws DefinitionException {
//     List<ElementDefinition> list = profileUtilities.getSliceList(sd, element);
//     for (ElementDefinition ed : list) {
//       if (ed.getMin() > 0) {
//         return ed;
//       }
//     }
//     return null;
//   }

//    StructureDefinition fetchStructureByType(TypedElementDefinition ed, ExpressionNode expr)
//       throws DefinitionException {
//     if (ed.getTypes().size() == 0) {
//       throw makeException(expr, I18nConstants.FHIRPATH_DISCRIMINATOR_NOTYPE, ed.getElement().getId());
//     }
//     if (ed.getTypes().size() > 1) {
//       throw makeExceptionPlural(ed.getTypes().size(), expr, I18nConstants.FHIRPATH_DISCRIMINATOR_MULTIPLE_TYPES,
//           ed.getElement().getId());
//     }
//     if (ed.getTypes().get(0).getProfile().size() > 1) {
//       throw makeExceptionPlural(ed.getTypes().get(0).getProfile().size(), expr,
//           I18nConstants.FHIRPATH_DISCRIMINATOR_MULTIPLE_PROFILES, ed.getElement().getId());
//     }
//     if (ed.getTypes().get(0).hasProfile()) {
//       return worker.fetchResource(StructureDefinition.class, ed.getTypes().get(0).getProfile().get(0).getValue());
//     } else {
//       return worker.fetchResource(StructureDefinition.class,
//           ProfileUtilities.sdNs(ed.getTypes().get(0).getCode(), worker.getOverrideVersionNs()));
//     }
//   }

//    bool tailMatches(ElementDefinition t, String d) {
//     String tail = tailDot(t.getPath());
//     if (d.contains("[")) {
//       return tail.startsWith(d.substring(0, d.indexOf('[')));
//     } else if (tail.equals(d)) {
//       return true;
//     } else if (t.getType().size() == 1 && t.getType().get(0).getCode() != null && t.getPath() != null
//         && t.getPath().toUpperCase().endsWith(t.getType().get(0).getCode().toUpperCase())) {
//       return tail.startsWith(d);
//     } else if (t.getPath().endsWith("[x]") && tail.startsWith(d)) {
//       return true;
//     }
//     return false;
//   }

//    String tailDot(String path) {
//     return path.substring(path.lastIndexOf(".") + 1);
//   }

//    Equality asBool(List<FhirBase> items, ExpressionNode expr) {
//     if (items.size() == 0) {
//       return Equality.Null;
//     } else if (items.size() == 1 && items.get(0).isBooleanPrimitive()) {
//       return asBool(items.get(0), true);
//     } else if (items.size() == 1) {
//       return Equality.True;
//     } else {
//       throw makeException(expr, I18nConstants.FHIRPATH_UNABLE_BOOLEAN, convertToString(items));
//     }
//   }

//    Equality asBoolFromInt(String s) {
//     try {
//       int i = Integer.parseInt(s);
//       switch (i) {
//       case 0:
//         return Equality.False;
//       case 1:
//         return Equality.True;
//       default:
//         return Equality.Null;
//       }
//     } catch (Exception e) {
//       return Equality.Null;
//     }
//   }

//    Equality asBoolFromDec(String s) {
//     try {
//       BigDecimal d =BigDecimal(s);
//       if (d.compareTo(BigDecimal.ZERO) == 0) {
//         return Equality.False;
//       } else if (d.compareTo(BigDecimal.ONE) == 0) {
//         return Equality.True;
//       } else {
//         return Equality.Null;
//       }
//     } catch (Exception e) {
//       return Equality.Null;
//     }
//   }

//    Equality asBool(FhirBase item, bool narrow) {
//     if (item instanceof BooleanType) {
//       return boolToTriState(((BooleanType) item).booleanValue());
//     } else if (item.isBooleanPrimitive()) {
//       if (Utilities.existsInList(item.primitiveValue(), "true")) {
//         return Equality.True;
//       } else if (Utilities.existsInList(item.primitiveValue(), "false")) {
//         return Equality.False;
//       } else {
//         return Equality.Null;
//       }
//     } else if (narrow) {
//       return Equality.False;
//     } else if (item instanceof IntegerType
//         || Utilities.existsInList(item.fhirType(), "integer", "positiveint", "unsignedInt")) {
//       return asBoolFromInt(item.primitiveValue());
//     } else if (item instanceof DecimalType || Utilities.existsInList(item.fhirType(), "decimal")) {
//       return asBoolFromDec(item.primitiveValue());
//     } else if (Utilities.existsInList(item.fhirType(), FHIR_TYPES_STRING)) {
//       if (Utilities.existsInList(item.primitiveValue(), "true", "t", "yes", "y")) {
//         return Equality.True;
//       } else if (Utilities.existsInList(item.primitiveValue(), "false", "f", "no", "n")) {
//         return Equality.False;
//       } else if (Utilities.isInteger(item.primitiveValue())) {
//         return asBoolFromInt(item.primitiveValue());
//       } else if (Utilities.isDecimal(item.primitiveValue(), true)) {
//         return asBoolFromDec(item.primitiveValue());
//       } else {
//         return Equality.Null;
//       }
//     }
//     return Equality.Null;
//   }

//    Equality boolToTriState(bool b) {
//     return b ? Equality.True : Equality.False;
//   }

//    ValidationOptions getTerminologyServiceOptions() {
//     return terminologyServiceOptions;
//   }

//    IWorkerContext getWorker() {
//     return worker;
//   }

   bool isAllowPolymorphicNames() {
    return allowPolymorphicNames;
  }

//    void setAllowPolymorphicNames(bool allowPolymorphicNames) {
//     this.allowPolymorphicNames = allowPolymorphicNames;
//   }

//    bool isLiquidMode() {
//     return liquidMode;
//   }

//    void setLiquidMode(bool liquidMode) {
//     this.liquidMode = liquidMode;
//   }

//    ProfileUtilities getProfileUtilities() {
//     return profileUtilities;
//   }

//    bool isAllowDoubleQuotes() {
//     return allowDoubleQuotes;
//   }
//    void setAllowDoubleQuotes(bool allowDoubleQuotes) {
//     this.allowDoubleQuotes = allowDoubleQuotes;    
//   }
}


class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  final int offset;
  final ExpressionNode node;
}

class ExecutionContext {
  ExecutionContext(
    this.appInfo,
    this.focusResource,
    this.rootResource,
    this.context,
    this.thisItem,
  );

  final Object? appInfo;
  final FhirBase? focusResource;
  final FhirBase? rootResource;
  final FhirBase? context;
  final FhirBase? thisItem;
  List<FhirBase>? total;
  int index = 0;
  Map<String, List<FhirBase>>? definedVariables;

  FhirBase? getFocusResource() => focusResource;

  FhirBase? getRootResource() => rootResource;

  FhirBase? getThisItem() => thisItem;

  List<FhirBase>? getTotal() => total;

  void next() {
    index++;
  }

  FhirInteger getIndex() => FhirInteger(index);

  bool hasDefinedVariable(String name) =>
      definedVariables != null && definedVariables!.containsKey(name);

  List<FhirBase>? getDefinedVariable(String name) =>
      definedVariables == null ? makeNull() : definedVariables![name];

  void setDefinedVariable(String name, List<FhirBase> value) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
          worker.formatMessage(I18nConstants.FHIRPATH_REDEFINE_VARIABLE, name),
          I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
    }

    definedVariables ??= <String, List<FhirBase>>{};

    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
          worker.formatMessage(I18nConstants.FHIRPATH_REDEFINE_VARIABLE, name),
          I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
    }

    definedVariables![name] = value;
  }
}

class ExecutionTypeContext {
  ExecutionTypeContext(
    this.appInfo,
    this.resource,
    this.context,
    this.thisItem,
  );

  final Object? appInfo;
  final String resource;
  final TypeDetails context;
  final TypeDetails thisItem;
  TypeDetails? total;
  Map<String, TypeDetails>? definedVariables;

  String getResource() => resource;

  TypeDetails getThisItem() => thisItem;

  bool hasDefinedVariable(String name) =>
      definedVariables != null && definedVariables!.containsKey(name);

  TypeDetails? getDefinedVariable(String name) =>
      definedVariables == null ? null : definedVariables![name];

  void setDefinedVariable(String name, TypeDetails value) {
    if (isSystemVariable(name)) {
      throw PathEngineException("Redefine of variable \$name",
          I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
    }

    definedVariables ??= <String, TypeDetails>{};

    if (definedVariables!.containsKey(name)) {
      throw PathEngineException("Redefine of variable \$name",
          I18nConstants.FHIRPATH_REDEFINE_VARIABLE);
    }

    definedVariables![name] = value;
  }
}

class ElementDefinitionMatch {
  final ElementDefinition definition;
  final String fixedType;

  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition getDefinition() => definition;

  String getFixedType() => fixedType;
}

   enum Equality {
    Null, True, False
  }

  // if the fhir path expressions are allowed to use constants beyond those
  // defined in the specification
  // the application can implement them by providing a constant resolver
   abstract class IEvaluationContext {
    
    /**
     * A constant reference - e.g. a reference to a name that must be resolved in
     * context. The % will be removed from the constant name before this is invoked.
     * Variables created with defineVariable will not be processed by resolveConstant (or resolveConstantType)
     * 
     * This will also be called if the host invokes the FluentPath engine with a
     * context of null
     * 
     * @param appContext    - content passed into the fluent path engine
     * @param name          - name reference to resolve
     * @param beforeContext - whether this is being called before the name is
     *                      resolved locally, or not
     * @return the value of the reference (or null, if it's not valid, though can
     *         throw an exception if desired)
     */
     List<FhirBase> resolveConstant(FHIRPathEngine engine, Object appContext, String name, bool beforeContext, bool explicitConstant);

     TypeDetails resolveConstantType(FHIRPathEngine engine, Object appContext, String name, bool explicitConstant);

    /**
     * when the .log() function is called
     * 
     * @param argument
     * @param focus
     * @return
     */
     bool log(String argument, List<FhirBase> focus);

    // extensibility for functions
    /**
     * 
     * @param functionName
     * @return null if the function is not known
     */
     FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName);

    /**
     * Check the function parameters, and throw an error if they are incorrect, or
     * return the type for the function
     * 
     * @param functionName
     * @param parameters
     * @return
     */
     TypeDetails checkFunction(FHIRPathEngine engine, Object appContext, String functionName, TypeDetails focus, List<TypeDetails> parameters);

    /**
     * @param appContext
     * @param functionName
     * @param parameters
     * @return
     */
     List<FhirBase> executeFunction(FHIRPathEngine engine, Object appContext, List<FhirBase> focus, String functionName,
        List<List<FhirBase>> parameters);

    /**
     * Implementation of resolve() function. Passed a string, return matching
     * resource, if one is known - else null
     * 
     * @appContext - passed in by the host to the FHIRPathEngine
     * @param url the reference (Reference.reference or the value of the canonical
     * @return
     * @throws FHIRException
     */
     FhirBase resolveReference(FHIRPathEngine engine, Object appContext, String url, FhirBase refContext) ;

     bool conformsToProfile(FHIRPathEngine engine, Object appContext, FhirBase item, String url) ;

    /*
     * return the value set referenced by the url, which has been used in memberOf()
     */
     ValueSet resolveValueSet(FHIRPathEngine engine, Object appContext, String url);
  }

class ProfileUtilities{
  ProfileUtilities(this.worker, this.context, this.definitions);

  final IWorkerContext? worker;
  final IWorkerContext? context;
  final IWorkerContext? definitions;
}
