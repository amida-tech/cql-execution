const { Expression } = require('./expression');
const { typeIsArray , allTrue, anyTrue, compact, numerical_sort} = require('../util/util');
const { build } = require('./builder');
const { Exception } = require('../datatypes/exception');
const Quantity = require('./quantity');

const quantitiesOrArg = function(arr) {
  arr = compact(arr);
  // short curcuit empty arrays and return
  if (arr.length === 0) {
    return arr;
  }

  const allQs = arr.every(x => x.isQuantity);
  const someQs = arr.some(x => x.isQuantity);
  if (allQs) {
    const { unit } = arr[0];
    return arr.map(q => q.convertUnits(unit));
  } else if (someQs) {
    throw new Exception('Cannot perform aggregate operations on mixed values of Quantities and non Quantities');
  } else {
    return arr;
  }
};

const quantityOrValue = function(value, arr) {
  // we used the first unit in the list to convert to so that is what
  // we will use as a unit for quantities
  if (arr != null && arr.length > 0 && arr[0].unit != null) {
    return Quantity.createQuantity(value, arr[0].unit);
  } else {
    return value;
  }
};

class AggregateExpression extends Expression {
  constructor(json) {
    super(json);
    this.source = build(json.source);
  }
}

class Count extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      return compact(arg).length;
    }
  }
}

class Sum extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered =  quantitiesOrArg(arg);
      const val = filtered.length === 0 ? null : filtered.reduce((x,y) => x+y);
      return quantityOrValue(val, arg);
    }
  }
}


class Min extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered =  numerical_sort(quantitiesOrArg(arg), 'asc');
      return quantityOrValue(filtered[0],arg);
    }
  }
}

class Max extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered =  numerical_sort(quantitiesOrArg(arg), 'desc');
      return quantityOrValue(filtered[0],arg);
    }
  }
}

class Avg extends  AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered = quantitiesOrArg(arg);
      if (filtered.length === 0) {
        return null;
      }
      const sum = filtered.reduce((x,y) => x+y);
      return quantityOrValue((sum / filtered.length), arg);
    }
  }
}

class Median extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered =  numerical_sort(quantitiesOrArg(arg), 'asc');
      if (filtered.length === 0) {
        return null;
      } else if ((filtered.length % 2) === 1) {
        return quantityOrValue(filtered[(filtered.length - 1) / 2], arg);
      } else {
        const v = (filtered[(filtered.length / 2) - 1] + filtered[(filtered.length / 2)]) / 2;
        return quantityOrValue(v,arg);
      }
    }
  }
}

class Mode extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const arg = this.source.execute(ctx);
    if (typeIsArray(arg)) {
      const filtered = compact(arg);
      const mode = this.mode(filtered);
      return mode.length === 1 ? mode[0] : mode;
    }
  }

  mode(arr) {
    let max = 0;
    const counts = {};
    let results = [];
    for (let elem of arr) {
      if (counts[elem] == null) {
        counts[elem] = 1;
      } else {
        counts[elem] = counts[elem] + 1;
      }
      if (counts[elem] === max && !results.includes(elem)) {
        results.push(elem);
      } else if (counts[elem] > max) {
        results = [elem];
        max = counts[elem];
      }
    }
    return results;
  }
}

class StdDev extends AggregateExpression {

  constructor(json) {
    super(json);
    this.type = 'standard_deviation';
  }

  exec(ctx) {
    const args = this.source.execute(ctx);
    if (typeIsArray(args)) {
      const val = quantitiesOrArg(args);
      if (val.length > 0) {
        return quantityOrValue(this.calculate(val),args);
      } else {
        return null;
      }
    }
  }

  calculate(list) {
    const val = this.stats(list);
    if (val) {
      return val[this.type];
    }
  }

  stats(list) {
    const sum = list.reduce((x,y) => x+y);
    const mean = sum / list.length;
    let sumOfSquares = 0;

    for (let sq of list) {
      sumOfSquares += Math.pow((sq - mean), 2);
    }

    const std_var = (1 / list.length) * sumOfSquares;
    const pop_var = (1 / (list.length-1)) * sumOfSquares;
    const std_dev = Math.sqrt(std_var);
    const pop_dev = Math.sqrt(pop_var);
    return {
      standard_variance:    std_var,
      population_variance:  pop_var,
      standard_deviation:   std_dev,
      population_deviation: pop_dev
    };
  }
}

class PopulationStdDev extends StdDev {
  constructor(json) {
    super(json);
    this.type = 'population_deviation';
  }
}

class Variance extends  StdDev {
  constructor(json) {
    super(json);
    this.type = 'standard_variance';
  }
}

class PopulationVariance extends  StdDev {
  constructor(json) {
    super(json);
    this.type = 'population_variance';
  }
}

class AllTrue extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.source.execute(ctx);
    return allTrue(args);
  }
}

class AnyTrue extends AggregateExpression {
  constructor(json) {
    super(json);
  }

  exec(ctx) {
    const args = this.source.execute(ctx);
    return anyTrue(args);
  }
}

module.exports = { AllTrue, AnyTrue, Avg, Count, Max, Median, Min, Mode, PopulationStdDev, PopulationVariance, StdDev,
  Sum, Variance };