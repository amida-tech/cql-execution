// @Test: ExpressionDef
context Patient
define Foo: 'Bar'

// @Test: ExpressionRef
define Life: 42
define Foo: Life

// @Test: FunctionDefinitions
define function "foo bar"(a Integer, b Integer) :
  a + b

define testValue: "foo bar" (1,2)

// @Test: FunctionOverloads
define ExpReturnsIntegerSeven: 10 - 3
define ExpReturnsStringFooBar: 'Foo' + 'Bar'
define ExpReturnsIntervalOneToTen: Interval[1, 10]
define function FnReturnsIntegerTimes5(a System.Integer) :
  a * 5
define function FnReturnsStringHello(a System.String) :
  'Hello ' + a
define function FnReturnsIntervalZeroTo(a System.Integer) :
  Interval[0, a]

define function NumArgs(a System.Integer) :
  'one arg makes ' + ToString(a)
define function NumArgs(a System.Integer, b System.Integer) :
  'two args makes ' + ToString(a + b)
define function NumArgs(a System.Integer, b System.Integer, c System.Integer) :
  'three args makes ' + ToString(a + b + c)

define OneArgLiteral: NumArgs(1)
define TwoArgsLiteral: NumArgs(1, 2)
define ThreeArgsLiteral: NumArgs(1, 2, 3)
define OneArgExpression: NumArgs(ExpReturnsIntegerSeven)
define TwoArgsExpression: NumArgs(ExpReturnsIntegerSeven, ExpReturnsIntegerSeven)
define ThreeArgsExpression: NumArgs(ExpReturnsIntegerSeven, ExpReturnsIntegerSeven, ExpReturnsIntegerSeven)
define OneArgFunction: NumArgs(FnReturnsIntegerTimes5(1))
define TwoArgsFunction: NumArgs(FnReturnsIntegerTimes5(1), FnReturnsIntegerTimes5(2))
define ThreeArgsFunction: NumArgs(FnReturnsIntegerTimes5(1), FnReturnsIntegerTimes5(2), FnReturnsIntegerTimes5(3))

define function ArgTypeTimesTwo(a System.Integer) :
  a * 2
define function ArgTypeTimesTwo(a System.String) :
  a + ', ' + a
define function ArgTypeTimesTwo(a Interval<System.Integer>) :
  Interval[a.low * 2, a.high * 2]

define IntegerTimesTwoLiteral: ArgTypeTimesTwo(36)
define StringTimesTwoLiteral: ArgTypeTimesTwo('Well')
define IntervalTimesTwoLiteral: ArgTypeTimesTwo(Interval[4, 5])
define IntegerTimesTwoExpression: ArgTypeTimesTwo(ExpReturnsIntegerSeven)
define StringTimesTwoExpression: ArgTypeTimesTwo(ExpReturnsStringFooBar)
define IntervalTimesTwoExpression: ArgTypeTimesTwo(ExpReturnsIntervalOneToTen)
define IntegerTimesTwoFunction: ArgTypeTimesTwo(FnReturnsIntegerTimes5(6))
define StringTimesTwoFunction: ArgTypeTimesTwo(FnReturnsStringHello('Bob'))
define IntervalTimesTwoFunction: ArgTypeTimesTwo(FnReturnsIntervalZeroTo(60))

