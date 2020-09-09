should = require 'should'
setup = require '../../setup'
data = require './data'

describe 'Tuple', ->
  @beforeEach ->
    setup @, data

  it 'should be able to define a tuple', ->
    e = @tup.exec(@ctx)
    e["a"].should.equal 1
    e["b"].should.equal 2

  it 'should be able to define an empty tuple', ->
    e = @emptyTup.exec(@ctx)
    Object.keys(e).length.should.equal 0
