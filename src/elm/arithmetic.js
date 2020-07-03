const { Expression } = require('./expression');
const { build } = require('./builder');
const MathUtil = require('../util/math');
const Quantity = require('./quantity');

class Add extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => {
        if (x.isQuantity || x.isDateTime) {
          return Quantity.doAddition(x,y);
        } else {
          return x + y;
        }
      });
    }
  }
}

class Subtract extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => {
        if (x.isQuantity || x.isDateTime) {
          return Quantity.doSubtraction(x,y);
        } else {
          return x - y;
        }
      });
    }
  }
}

class Multiply extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => {
        if (x.isQuantity || y.isQuantity) {
          return Quantity.doMultiplication(x,y);
        } else {
          return x * y;
        }
      });
    }
  }
}

class Divide extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => {
        if (x.isQuantity) {
          return Quantity.doDivision(x,y);
        } else {
          return x / y;
        }
      });
    }
  }
}

class TruncatedDivide extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return Math.floor( args.reduce((x,y) => x / y));
    }
  }
}

class Modulo extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => x % y);
    }
  }
}

class Ceiling extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : Math.ceil(arg);
  }
}

class Floor extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : Math.floor(arg);
  }
}

class Truncate extends Floor {}

class Abs extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    if (arg == null) {
      return null;
    } else if (arg.isQuantity) {
      return Quantity.createQuantity(Math.abs(arg.value), arg.unit);
    } else {
      return Math.abs(arg);
    }
  }
}

class Negate extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    if (arg == null) {
      return null;
    } else if (arg.isQuantity) {
      return Quantity.createQuantity(arg.value * -1, arg.unit);
    } else {
      return arg * -1;
    }
  }
}

class Round extends  Expression {
  constructor(json) {
    super(json);
    this.precision = build(json.precision);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    if (arg == null) {
      return null;
    } else {
      const dec = (this.precision != null) ? this.precision.execute(ctx) : 0;
      return Math.round(arg * Math.pow(10, dec)) / Math.pow(10, dec);
    }
  }
}

class Ln extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : Math.log(arg);
  }
}

class Exp extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : Math.exp(arg);
  }
}

class Log extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => Math.log(x) / Math.log(y));
    }
  }
}

class Power extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.execArgs(ctx);
    if (args == null || args.some(x => x == null)) {
      return null;
    } else {
      return args.reduce((x,y) => Math.pow(x , y));
    }
  }
}

class MinValue extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : MinValue.MIN_VALUES[arg];
  }
}

MinValue.MIN_VALUES = {
  'Integer' :  MathUtil.MIN_INT_VALUE,
  'Real' :     MathUtil.MIN_FLOAT_VALUE,
  'DateTime' : MathUtil.MIN_DATE_VALUE
};


class MaxValue extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : MaxValue.MAX_VALUES[arg];
  }
}

MaxValue.MAX_VALUES = {
  'Integer' :  MathUtil.MAX_INT_VALUE,
  'Real' :     MathUtil.MAX_FLOAT_VALUE,
  'DateTime' : MathUtil.MAX_DATE_VALUE
};

class Successor extends Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : MathUtil.successor(arg);
  }
}

class Predecessor extends  Expression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.execArgs(ctx);
    return arg == null ? null : MathUtil.predecessor(arg);
  }
}

module.exports = { Abs, Add, Ceiling, Divide, Exp, Floor, Ln, Log, MaxValue, MinValue, Modulo, Multiply, Negate, Power,
  Predecessor, Round, Subtract, Successor, Truncate, TruncatedDivide };
