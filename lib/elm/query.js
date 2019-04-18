// Generated by CoffeeScript 1.12.7
(function() {
  var AliasRef, AliasedQuerySource, ByColumn, ByDirection, ByExpression, Context, Expression, LetClause, MultiSource, Query, QueryLetRef, ReturnClause, Sort, SortClause, UnimplementedExpression, With, Without, allTrue, build, equals, ref, ref1, toDistinctList, typeIsArray,
    extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    hasProp = {}.hasOwnProperty;

  ref = require('./expression'), Expression = ref.Expression, UnimplementedExpression = ref.UnimplementedExpression;

  Context = require('../runtime/context').Context;

  build = require('./builder').build;

  ref1 = require('../util/util'), typeIsArray = ref1.typeIsArray, allTrue = ref1.allTrue;

  equals = require('../util/comparison').equals;

  module.exports.AliasedQuerySource = AliasedQuerySource = (function() {
    function AliasedQuerySource(json) {
      this.alias = json.alias;
      this.expression = build(json.expression);
    }

    return AliasedQuerySource;

  })();

  module.exports.LetClause = LetClause = (function() {
    function LetClause(json) {
      this.identifier = json.identifier;
      this.expression = build(json.expression);
    }

    return LetClause;

  })();

  module.exports.With = With = (function(superClass) {
    extend(With, superClass);

    function With(json) {
      With.__super__.constructor.apply(this, arguments);
      this.alias = json.alias;
      this.expression = build(json.expression);
      this.suchThat = build(json.suchThat);
    }

    With.prototype.exec = function(ctx) {
      var childCtx, rec, records, returns;
      records = this.expression.execute(ctx);
      this.isList = typeIsArray(records);
      records = this.isList ? records : [records];
      returns = (function() {
        var i, len, results;
        results = [];
        for (i = 0, len = records.length; i < len; i++) {
          rec = records[i];
          childCtx = ctx.childContext();
          childCtx.set(this.alias, rec);
          results.push(this.suchThat.execute(childCtx));
        }
        return results;
      }).call(this);
      return returns.some(function(x) {
        return x;
      });
    };

    return With;

  })(Expression);

  module.exports.Without = Without = (function(superClass) {
    extend(Without, superClass);

    function Without(json) {
      Without.__super__.constructor.apply(this, arguments);
    }

    Without.prototype.exec = function(ctx) {
      return !Without.__super__.exec.call(this, ctx);
    };

    return Without;

  })(With);

  module.exports.Sort = Sort = (function(superClass) {
    extend(Sort, superClass);

    function Sort() {
      return Sort.__super__.constructor.apply(this, arguments);
    }

    return Sort;

  })(UnimplementedExpression);

  module.exports.ByDirection = ByDirection = (function(superClass) {
    extend(ByDirection, superClass);

    function ByDirection(json) {
      ByDirection.__super__.constructor.apply(this, arguments);
      this.direction = json.direction;
      this.low_order = this.direction === "asc" ? -1 : 1;
      this.high_order = this.low_order * -1;
    }

    ByDirection.prototype.exec = function(ctx, a, b) {
      if (a === b) {
        return 0;
      } else if (a < b) {
        return this.low_order;
      } else {
        return this.high_order;
      }
    };

    return ByDirection;

  })(Expression);

  module.exports.ByExpression = ByExpression = (function(superClass) {
    extend(ByExpression, superClass);

    function ByExpression(json) {
      ByExpression.__super__.constructor.apply(this, arguments);
      this.expression = build(json.expression);
      this.direction = json.direction;
      this.low_order = this.direction === "asc" ? -1 : 1;
      this.high_order = this.low_order * -1;
    }

    ByExpression.prototype.exec = function(ctx, a, b) {
      var a_val, b_val, sctx;
      sctx = ctx.childContext(a);
      a_val = this.expression.execute(sctx);
      sctx = ctx.childContext(b);
      b_val = this.expression.execute(sctx);
      if (a_val === b_val) {
        return 0;
      } else if (a_val < b_val) {
        return this.low_order;
      } else {
        return this.high_order;
      }
    };

    return ByExpression;

  })(Expression);

  module.exports.ByColumn = ByColumn = (function(superClass) {
    extend(ByColumn, superClass);

    function ByColumn(json) {
      ByColumn.__super__.constructor.apply(this, arguments);
      this.expression = build({
        "name": json.path,
        "type": "IdentifierRef"
      });
    }

    return ByColumn;

  })(ByExpression);

  module.exports.ReturnClause = ReturnClause = ReturnClause = (function() {
    function ReturnClause(json) {
      var ref2;
      this.expression = build(json.expression);
      this.distinct = (ref2 = json.distinct) != null ? ref2 : true;
    }

    return ReturnClause;

  })();

  module.exports.SortClause = SortClause = SortClause = (function() {
    function SortClause(json) {
      this.by = build(json != null ? json.by : void 0);
    }

    SortClause.prototype.sort = function(ctx, values) {
      if (this.by) {
        return values.sort((function(_this) {
          return function(a, b) {
            var i, item, len, order, ref2;
            order = 0;
            ref2 = _this.by;
            for (i = 0, len = ref2.length; i < len; i++) {
              item = ref2[i];
              order = item.exec(ctx, a, b);
              if (order !== 0) {
                break;
              }
            }
            return order;
          };
        })(this));
      }
    };

    return SortClause;

  })();

  toDistinctList = function(xList) {
    var i, inYList, j, len, len1, x, y, yList;
    yList = [];
    for (i = 0, len = xList.length; i < len; i++) {
      x = xList[i];
      inYList = false;
      for (j = 0, len1 = yList.length; j < len1; j++) {
        y = yList[j];
        if (equals(x, y)) {
          inYList = true;
        }
      }
      if (!inYList) {
        yList.push(x);
      }
    }
    return yList;
  };

  module.exports.Query = Query = (function(superClass) {
    extend(Query, superClass);

    function Query(json) {
      var d, s;
      Query.__super__.constructor.apply(this, arguments);
      this.sources = new MultiSource((function() {
        var i, len, ref2, results;
        ref2 = json.source;
        results = [];
        for (i = 0, len = ref2.length; i < len; i++) {
          s = ref2[i];
          results.push(new AliasedQuerySource(s));
        }
        return results;
      })());
      this.letClauses = (function() {
        var i, len, ref2, ref3, results;
        ref3 = (ref2 = json["let"]) != null ? ref2 : [];
        results = [];
        for (i = 0, len = ref3.length; i < len; i++) {
          d = ref3[i];
          results.push(new LetClause(d));
        }
        return results;
      })();
      this.relationship = json.relationship != null ? build(json.relationship) : [];
      this.where = build(json.where);
      this.returnClause = json["return"] != null ? new ReturnClause(json["return"]) : null;
      this.aliases = this.sources.aliases();
      this.sortClause = json.sort != null ? new SortClause(json.sort) : null;
    }

    Query.prototype.exec = function(ctx) {
      var distinct, ref2, returnedValues;
      returnedValues = [];
      this.sources.forEach(ctx, (function(_this) {
        return function(rctx) {
          var child_ctx, def, i, len, passed, ref2, rel, relations, val;
          ref2 = _this.letClauses;
          for (i = 0, len = ref2.length; i < len; i++) {
            def = ref2[i];
            rctx.set(def.identifier, def.expression.execute(rctx));
          }
          relations = (function() {
            var j, len1, ref3, results;
            ref3 = this.relationship;
            results = [];
            for (j = 0, len1 = ref3.length; j < len1; j++) {
              rel = ref3[j];
              child_ctx = rctx.childContext();
              results.push(rel.execute(child_ctx));
            }
            return results;
          }).call(_this);
          passed = allTrue(relations);
          passed = passed && (_this.where ? _this.where.execute(rctx) : passed);
          if (passed) {
            if (_this.returnClause != null) {
              val = _this.returnClause.expression.execute(rctx);
              return returnedValues.push(val);
            } else {
              if (_this.aliases.length === 1) {
                return returnedValues.push(rctx.get(_this.aliases[0]));
              } else {
                return returnedValues.push(rctx.context_values);
              }
            }
          }
        };
      })(this));
      distinct = this.returnClause != null ? this.returnClause.distinct : true;
      if (distinct) {
        returnedValues = toDistinctList(returnedValues);
      }
      if ((ref2 = this.sortClause) != null) {
        ref2.sort(ctx, returnedValues);
      }
      if (this.sources.returnsList()) {
        return returnedValues;
      } else {
        return returnedValues[0];
      }
    };

    return Query;

  })(Expression);

  module.exports.AliasRef = AliasRef = (function(superClass) {
    extend(AliasRef, superClass);

    function AliasRef(json) {
      AliasRef.__super__.constructor.apply(this, arguments);
      this.name = json.name;
    }

    AliasRef.prototype.exec = function(ctx) {
      return ctx != null ? ctx.get(this.name) : void 0;
    };

    return AliasRef;

  })(Expression);

  module.exports.QueryLetRef = QueryLetRef = (function(superClass) {
    extend(QueryLetRef, superClass);

    function QueryLetRef(json) {
      QueryLetRef.__super__.constructor.apply(this, arguments);
    }

    return QueryLetRef;

  })(AliasRef);

  MultiSource = (function() {
    function MultiSource(sources) {
      this.sources = sources;
      this.alias = this.sources[0].alias;
      this.expression = this.sources[0].expression;
      this.isList = true;
      if (this.sources.length > 1) {
        this.rest = new MultiSource(this.sources.slice(1));
      }
    }

    MultiSource.prototype.aliases = function() {
      var a;
      a = [this.alias];
      if (this.rest) {
        a = a.concat(this.rest.aliases());
      }
      return a;
    };

    MultiSource.prototype.returnsList = function() {
      return this.isList || (this.rest && this.rest.returnsList());
    };

    MultiSource.prototype.forEach = function(ctx, func) {
      var i, len, rctx, rec, records, results;
      records = this.expression.execute(ctx);
      this.isList = typeIsArray(records);
      records = this.isList ? records : [records];
      results = [];
      for (i = 0, len = records.length; i < len; i++) {
        rec = records[i];
        rctx = new Context(ctx);
        rctx.set(this.alias, rec);
        if (this.rest) {
          results.push(this.rest.forEach(rctx, func));
        } else {
          results.push(func(rctx));
        }
      }
      return results;
    };

    return MultiSource;

  })();

}).call(this);

//# sourceMappingURL=query.js.map