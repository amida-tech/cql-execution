should = require 'should'
setup = require '../../setup'
data = require './data'
{ Interval } = require '../../../lib/datatypes/interval'

describe 'ExpressionDef', ->
  @beforeEach ->
    setup @, data
    @def = @lib.expressions.Foo

  it 'should have a name', ->
    @def.name.should.equal 'Foo'

  it 'should have the correct context', ->
    @def.context.should.equal 'Patient'

  it 'should execute to its value', ->
    @def.exec(@ctx).should.equal 'Bar'

describe 'ExpressionRef', ->
  @beforeEach ->
    setup @, data

  it 'should have a name', ->
    @foo.name.should.equal 'Life'

  it 'should execute to expression value', ->
    @foo.exec(@ctx).should.equal 42

describe 'FunctionDefinitions', ->
  @beforeEach ->
    setup @, data

  it 'should be able to define and use a simple function' , ->
    e = @testValue.exec(@ctx)
    e.should.equal 3

describe.only 'FunctionOverloads', ->
  @beforeEach ->
    setup @, data

  it 'should be able to distinguish functions by number of arguments using literals' , ->
    @oneArgLiteral.exec(@ctx).should.equal 'one arg makes 1'
    @twoArgsLiteral.exec(@ctx).should.equal 'two args makes 3'
    @threeArgsLiteral.exec(@ctx).should.equal 'three args makes 6'

  it 'should be able to distinguish functions by number of arguments using expressions' , ->
    @oneArgExpression.exec(@ctx).should.equal 'one arg makes 7'
    @twoArgsExpression.exec(@ctx).should.equal 'two args makes 14'
    @threeArgsExpression.exec(@ctx).should.equal 'three args makes 21'

  it 'should be able to distinguish functions by number of arguments using functions' , ->
    @oneArgFunction.exec(@ctx).should.equal 'one arg makes 5'
    @twoArgsFunction.exec(@ctx).should.equal 'two args makes 15'
    @threeArgsFunction.exec(@ctx).should.equal 'three args makes 30'

  it 'should be able to distinguish functions by argument types using literals' , ->
    @integerTimesTwoLiteral.exec(@ctx).should.equal 72
    @stringTimesTwoLiteral.exec(@ctx).should.equal 'Well, Well'
    @intervalTimesTwoLiteral.exec(@ctx).should.eql new Interval(8,10)

  it 'should be able to distinguish functions by argument types using expressions' , ->
    @integerTimesTwoExpression.exec(@ctx).should.equal 14
    @stringTimesTwoExpression.exec(@ctx).should.equal 'FooBar, FooBar'
    @intervalTimesTwoExpression.exec(@ctx).should.eql new Interval(2,20)

  it 'should be able to distinguish functions by argument types using functions' , ->
    @integerTimesTwoFunction.exec(@ctx).should.equal 60
    @stringTimesTwoFunction.exec(@ctx).should.equal 'Hello Bob, Hello Bob'
    @intervalTimesTwoFunction.exec(@ctx).should.eql new Interval(0,120)