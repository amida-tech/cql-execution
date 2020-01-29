###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### ExpressionDef
library TestSnippet version '1'
using QUICK
context Patient
define Foo: 'Bar'
###

module.exports['ExpressionDef'] = {
   "library" : {
      "identifier" : {
         "id" : "TestSnippet",
         "version" : "1"
      },
      "schemaIdentifier" : {
         "id" : "urn:hl7-org:elm",
         "version" : "r1"
      },
      "usings" : {
         "def" : [ {
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "3",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "2",
                     "s" : [ {
                        "value" : [ "'Bar'" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "valueType" : "{urn:hl7-org:elm-types:r1}String",
               "value" : "Bar",
               "type" : "Literal"
            }
         } ]
      }
   }
}

### ExpressionRef
library TestSnippet version '1'
using QUICK
context Patient
define Life: 42
define Foo: Life
###

module.exports['ExpressionRef'] = {
   "library" : {
      "identifier" : {
         "id" : "TestSnippet",
         "version" : "1"
      },
      "schemaIdentifier" : {
         "id" : "urn:hl7-org:elm",
         "version" : "r1"
      },
      "usings" : {
         "def" : [ {
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Life",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "3",
                  "s" : [ {
                     "r" : "2",
                     "value" : [ "define ","Life",": ","42" ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
               "value" : "42",
               "type" : "Literal"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "value" : [ "Life" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "Life",
               "type" : "ExpressionRef"
            }
         } ]
      }
   }
}

### FunctionDefinitions
library TestSnippet version '1'
using QUICK
context Patient
define function "foo bar"(a Integer, b Integer) :
  a + b

define testValue: "foo bar" (1,2)
###

module.exports['FunctionDefinitions'] = {
   "library" : {
      "identifier" : {
         "id" : "TestSnippet",
         "version" : "1"
      },
      "schemaIdentifier" : {
         "id" : "urn:hl7-org:elm",
         "version" : "r1"
      },
      "usings" : {
         "def" : [ {
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "foo bar",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define function ","\"foo bar\"","(","a"," " ]
                  }, {
                     "r" : "2",
                     "s" : [ {
                        "value" : [ "Integer" ]
                     } ]
                  }, {
                     "value" : [ ", ","b"," " ]
                  }, {
                     "r" : "3",
                     "s" : [ {
                        "value" : [ "Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "r" : "6",
                        "s" : [ {
                           "r" : "4",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "5",
                           "s" : [ {
                              "value" : [ "b" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Add",
               "operand" : [ {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "a",
                  "type" : "OperandRef"
               }, {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "b",
                  "type" : "OperandRef"
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            }, {
               "name" : "b",
               "operandTypeSpecifier" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "testValue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","testValue",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "8",
                        "value" : [ "\"foo bar\""," (","1",",","2",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "foo bar",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "8",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               } ]
            }
         } ]
      }
   }
}

### FunctionOverloads
library TestSnippet version '1'
using QUICK
context Patient
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
###

module.exports['FunctionOverloads'] = {
   "library" : {
      "identifier" : {
         "id" : "TestSnippet",
         "version" : "1"
      },
      "schemaIdentifier" : {
         "id" : "urn:hl7-org:elm",
         "version" : "r1"
      },
      "usings" : {
         "def" : [ {
            "localIdentifier" : "System",
            "uri" : "urn:hl7-org:elm-types:r1"
         }, {
            "localId" : "1",
            "localIdentifier" : "QUICK",
            "uri" : "http://hl7.org/fhir"
         } ]
      },
      "statements" : {
         "def" : [ {
            "name" : "Patient",
            "context" : "Patient",
            "expression" : {
               "type" : "SingletonFrom",
               "operand" : {
                  "dataType" : "{http://hl7.org/fhir}Patient",
                  "templateId" : "patient-qicore-qicore-patient",
                  "type" : "Retrieve"
               }
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "ExpReturnsIntegerSeven",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","ExpReturnsIntegerSeven",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "10"," - ","3" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Subtract",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "10",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "ExpReturnsStringFooBar",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","ExpReturnsStringFooBar",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "s" : [ {
                           "value" : [ "'Foo'" ]
                        } ]
                     }, {
                        "value" : [ " + " ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "value" : [ "'Bar'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "Foo",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "Bar",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "name" : "ExpReturnsIntervalOneToTen",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ExpReturnsIntervalOneToTen",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "Interval[","1",", ","10","]" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "12",
               "lowClosed" : true,
               "highClosed" : true,
               "type" : "Interval",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "low" : {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "high" : {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "10",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "18",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "FnReturnsIntegerTimes5",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "18",
                  "s" : [ {
                     "value" : [ "define function ","FnReturnsIntegerTimes5","(","a"," " ]
                  }, {
                     "r" : "14",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "17",
                     "s" : [ {
                        "r" : "17",
                        "s" : [ {
                           "r" : "15",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        }, {
                           "r" : "16",
                           "value" : [ " * ","5" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "17",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Multiply",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "a",
                  "type" : "OperandRef"
               }, {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "FnReturnsStringHello",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define function ","FnReturnsStringHello","(","a"," " ]
                  }, {
                     "r" : "19",
                     "s" : [ {
                        "value" : [ "System",".","String" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "r" : "22",
                        "s" : [ {
                           "r" : "20",
                           "s" : [ {
                              "value" : [ "'Hello '" ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "20",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "Hello ",
                  "type" : "Literal"
               }, {
                  "localId" : "21",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "a",
                  "type" : "OperandRef"
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "28",
            "name" : "FnReturnsIntervalZeroTo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "28",
                  "s" : [ {
                     "value" : [ "define function ","FnReturnsIntervalZeroTo","(","a"," " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "27",
                     "s" : [ {
                        "r" : "27",
                        "s" : [ {
                           "r" : "25",
                           "value" : [ "Interval[","0",", " ]
                        }, {
                           "r" : "26",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        }, {
                           "value" : [ "]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "27",
               "lowClosed" : true,
               "highClosed" : true,
               "type" : "Interval",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "low" : {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "0",
                  "type" : "Literal"
               },
               "high" : {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "a",
                  "type" : "OperandRef"
               }
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "24",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "NumArgs",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define function ","NumArgs","(","a"," " ]
                  }, {
                     "r" : "29",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "33",
                        "s" : [ {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "'one arg makes '" ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "32",
                           "s" : [ {
                              "value" : [ "ToString","(" ]
                           }, {
                              "r" : "31",
                              "s" : [ {
                                 "value" : [ "a" ]
                              } ]
                           }, {
                              "value" : [ ")" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "one arg makes ",
                  "type" : "Literal"
               }, {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "ToString",
                  "operand" : {
                     "localId" : "31",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "name" : "a",
                     "type" : "OperandRef"
                  }
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "43",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "NumArgs",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "43",
                  "s" : [ {
                     "value" : [ "define function ","NumArgs","(","a"," " ]
                  }, {
                     "r" : "35",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ", ","b"," " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "42",
                     "s" : [ {
                        "r" : "42",
                        "s" : [ {
                           "r" : "37",
                           "s" : [ {
                              "value" : [ "'two args makes '" ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "41",
                           "s" : [ {
                              "value" : [ "ToString","(" ]
                           }, {
                              "r" : "40",
                              "s" : [ {
                                 "r" : "38",
                                 "s" : [ {
                                    "value" : [ "a" ]
                                 } ]
                              }, {
                                 "value" : [ " + " ]
                              }, {
                                 "r" : "39",
                                 "s" : [ {
                                    "value" : [ "b" ]
                                 } ]
                              } ]
                           }, {
                              "value" : [ ")" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "42",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "37",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "two args makes ",
                  "type" : "Literal"
               }, {
                  "localId" : "41",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "ToString",
                  "operand" : {
                     "localId" : "40",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "Add",
                     "operand" : [ {
                        "localId" : "38",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "name" : "a",
                        "type" : "OperandRef"
                     }, {
                        "localId" : "39",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "name" : "b",
                        "type" : "OperandRef"
                     } ]
                  }
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            }, {
               "name" : "b",
               "operandTypeSpecifier" : {
                  "localId" : "36",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "55",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "NumArgs",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "55",
                  "s" : [ {
                     "value" : [ "define function ","NumArgs","(","a"," " ]
                  }, {
                     "r" : "44",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ", ","b"," " ]
                  }, {
                     "r" : "45",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ", ","c"," " ]
                  }, {
                     "r" : "46",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "54",
                     "s" : [ {
                        "r" : "54",
                        "s" : [ {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "'three args makes '" ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "53",
                           "s" : [ {
                              "value" : [ "ToString","(" ]
                           }, {
                              "r" : "52",
                              "s" : [ {
                                 "r" : "50",
                                 "s" : [ {
                                    "r" : "48",
                                    "s" : [ {
                                       "value" : [ "a" ]
                                    } ]
                                 }, {
                                    "value" : [ " + " ]
                                 }, {
                                    "r" : "49",
                                    "s" : [ {
                                       "value" : [ "b" ]
                                    } ]
                                 } ]
                              }, {
                                 "value" : [ " + " ]
                              }, {
                                 "r" : "51",
                                 "s" : [ {
                                    "value" : [ "c" ]
                                 } ]
                              } ]
                           }, {
                              "value" : [ ")" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "54",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "47",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "three args makes ",
                  "type" : "Literal"
               }, {
                  "localId" : "53",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "ToString",
                  "operand" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "Add",
                     "operand" : [ {
                        "localId" : "50",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "Add",
                        "operand" : [ {
                           "localId" : "48",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "name" : "a",
                           "type" : "OperandRef"
                        }, {
                           "localId" : "49",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "name" : "b",
                           "type" : "OperandRef"
                        } ]
                     }, {
                        "localId" : "51",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "name" : "c",
                        "type" : "OperandRef"
                     } ]
                  }
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "44",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            }, {
               "name" : "b",
               "operandTypeSpecifier" : {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            }, {
               "name" : "c",
               "operandTypeSpecifier" : {
                  "localId" : "46",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "58",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "OneArgLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "58",
                  "s" : [ {
                     "value" : [ "define ","OneArgLiteral",": " ]
                  }, {
                     "r" : "57",
                     "s" : [ {
                        "r" : "56",
                        "value" : [ "NumArgs","(","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "57",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "56",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "62",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "TwoArgsLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "62",
                  "s" : [ {
                     "value" : [ "define ","TwoArgsLiteral",": " ]
                  }, {
                     "r" : "61",
                     "s" : [ {
                        "r" : "59",
                        "value" : [ "NumArgs","(","1",", ","2",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "61",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }, {
                  "localId" : "60",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "67",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "ThreeArgsLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "67",
                  "s" : [ {
                     "value" : [ "define ","ThreeArgsLiteral",": " ]
                  }, {
                     "r" : "66",
                     "s" : [ {
                        "r" : "63",
                        "value" : [ "NumArgs","(","1",", ","2",", ","3",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "66",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "63",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }, {
                  "localId" : "64",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               }, {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "70",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "OneArgExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "70",
                  "s" : [ {
                     "value" : [ "define ","OneArgExpression",": " ]
                  }, {
                     "r" : "69",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "68",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "69",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "68",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "74",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "TwoArgsExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "74",
                  "s" : [ {
                     "value" : [ "define ","TwoArgsExpression",": " ]
                  }, {
                     "r" : "73",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "71",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "72",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "73",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "71",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "72",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "79",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "ThreeArgsExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "79",
                  "s" : [ {
                     "value" : [ "define ","ThreeArgsExpression",": " ]
                  }, {
                     "r" : "78",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "75",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "76",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "77",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "78",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "76",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "77",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "83",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "OneArgFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "83",
                  "s" : [ {
                     "value" : [ "define ","OneArgFunction",": " ]
                  }, {
                     "r" : "82",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "81",
                        "s" : [ {
                           "r" : "80",
                           "value" : [ "FnReturnsIntegerTimes5","(","1",")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "82",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "81",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "80",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "89",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "TwoArgsFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "89",
                  "s" : [ {
                     "value" : [ "define ","TwoArgsFunction",": " ]
                  }, {
                     "r" : "88",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "85",
                        "s" : [ {
                           "r" : "84",
                           "value" : [ "FnReturnsIntegerTimes5","(","1",")" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "87",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "FnReturnsIntegerTimes5","(","2",")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "88",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "87",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "86",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "97",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "ThreeArgsFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "97",
                  "s" : [ {
                     "value" : [ "define ","ThreeArgsFunction",": " ]
                  }, {
                     "r" : "96",
                     "s" : [ {
                        "value" : [ "NumArgs","(" ]
                     }, {
                        "r" : "91",
                        "s" : [ {
                           "r" : "90",
                           "value" : [ "FnReturnsIntegerTimes5","(","1",")" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "93",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "FnReturnsIntegerTimes5","(","2",")" ]
                        } ]
                     }, {
                        "value" : [ ", " ]
                     }, {
                        "r" : "95",
                        "s" : [ {
                           "r" : "94",
                           "value" : [ "FnReturnsIntegerTimes5","(","3",")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "96",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "NumArgs",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "91",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "90",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "93",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "102",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "ArgTypeTimesTwo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "102",
                  "s" : [ {
                     "value" : [ "define function ","ArgTypeTimesTwo","(","a"," " ]
                  }, {
                     "r" : "98",
                     "s" : [ {
                        "value" : [ "System",".","Integer" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "101",
                     "s" : [ {
                        "r" : "101",
                        "s" : [ {
                           "r" : "99",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        }, {
                           "r" : "100",
                           "value" : [ " * ","2" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "101",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "Multiply",
               "operand" : [ {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "a",
                  "type" : "OperandRef"
               }, {
                  "localId" : "100",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "98",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "109",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "ArgTypeTimesTwo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "109",
                  "s" : [ {
                     "value" : [ "define function ","ArgTypeTimesTwo","(","a"," " ]
                  }, {
                     "r" : "103",
                     "s" : [ {
                        "value" : [ "System",".","String" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "108",
                     "s" : [ {
                        "r" : "108",
                        "s" : [ {
                           "r" : "106",
                           "s" : [ {
                              "r" : "104",
                              "s" : [ {
                                 "value" : [ "a" ]
                              } ]
                           }, {
                              "value" : [ " + " ]
                           }, {
                              "r" : "105",
                              "s" : [ {
                                 "value" : [ "', '" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ " + " ]
                        }, {
                           "r" : "107",
                           "s" : [ {
                              "value" : [ "a" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "108",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "Concatenate",
               "operand" : [ {
                  "localId" : "106",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "Concatenate",
                  "operand" : [ {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "name" : "a",
                     "type" : "OperandRef"
                  }, {
                     "localId" : "105",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : ", ",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "107",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "a",
                  "type" : "OperandRef"
               } ]
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "103",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            } ]
         }, {
            "localId" : "121",
            "name" : "ArgTypeTimesTwo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "type" : "FunctionDef",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "121",
                  "s" : [ {
                     "value" : [ "define function ","ArgTypeTimesTwo","(","a"," " ]
                  }, {
                     "r" : "111",
                     "s" : [ {
                        "value" : [ "Interval<" ]
                     }, {
                        "r" : "110",
                        "s" : [ {
                           "value" : [ "System",".","Integer" ]
                        } ]
                     }, {
                        "value" : [ ">" ]
                     } ]
                  }, {
                     "value" : [ ") :\n  " ]
                  }, {
                     "r" : "120",
                     "s" : [ {
                        "r" : "120",
                        "s" : [ {
                           "value" : [ "Interval[" ]
                        }, {
                           "r" : "115",
                           "s" : [ {
                              "r" : "113",
                              "s" : [ {
                                 "r" : "112",
                                 "s" : [ {
                                    "value" : [ "a" ]
                                 } ]
                              }, {
                                 "value" : [ "." ]
                              }, {
                                 "r" : "113",
                                 "s" : [ {
                                    "value" : [ "low" ]
                                 } ]
                              } ]
                           }, {
                              "r" : "114",
                              "value" : [ " * ","2" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "119",
                           "s" : [ {
                              "r" : "117",
                              "s" : [ {
                                 "r" : "116",
                                 "s" : [ {
                                    "value" : [ "a" ]
                                 } ]
                              }, {
                                 "value" : [ "." ]
                              }, {
                                 "r" : "117",
                                 "s" : [ {
                                    "value" : [ "high" ]
                                 } ]
                              } ]
                           }, {
                              "r" : "118",
                              "value" : [ " * ","2" ]
                           } ]
                        }, {
                           "value" : [ "]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "120",
               "lowClosed" : true,
               "highClosed" : true,
               "type" : "Interval",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "low" : {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "Multiply",
                  "operand" : [ {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "path" : "low",
                     "type" : "Property",
                     "source" : {
                        "localId" : "112",
                        "name" : "a",
                        "type" : "OperandRef",
                        "resultTypeSpecifier" : {
                           "type" : "IntervalTypeSpecifier",
                           "pointType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        }
                     }
                  }, {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               },
               "high" : {
                  "localId" : "119",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "Multiply",
                  "operand" : [ {
                     "localId" : "117",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "path" : "high",
                     "type" : "Property",
                     "source" : {
                        "localId" : "116",
                        "name" : "a",
                        "type" : "OperandRef",
                        "resultTypeSpecifier" : {
                           "type" : "IntervalTypeSpecifier",
                           "pointType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "NamedTypeSpecifier"
                           }
                        }
                     }
                  }, {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  } ]
               }
            },
            "operand" : [ {
               "name" : "a",
               "operandTypeSpecifier" : {
                  "localId" : "111",
                  "type" : "IntervalTypeSpecifier",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "pointType" : {
                     "localId" : "110",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            } ]
         }, {
            "localId" : "124",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntegerTimesTwoLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "124",
                  "s" : [ {
                     "value" : [ "define ","IntegerTimesTwoLiteral",": " ]
                  }, {
                     "r" : "123",
                     "s" : [ {
                        "r" : "122",
                        "value" : [ "ArgTypeTimesTwo","(","36",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "123",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "122",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "36",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "127",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "StringTimesTwoLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "127",
                  "s" : [ {
                     "value" : [ "define ","StringTimesTwoLiteral",": " ]
                  }, {
                     "r" : "126",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "125",
                        "s" : [ {
                           "value" : [ "'Well'" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "126",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "Well",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "132",
            "name" : "IntervalTimesTwoLiteral",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "132",
                  "s" : [ {
                     "value" : [ "define ","IntervalTimesTwoLiteral",": " ]
                  }, {
                     "r" : "131",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "130",
                        "s" : [ {
                           "r" : "128",
                           "value" : [ "Interval[","4",", ","5","]" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "131",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "operand" : [ {
                  "localId" : "130",
                  "lowClosed" : true,
                  "highClosed" : true,
                  "type" : "Interval",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "low" : {
                     "localId" : "128",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "129",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "135",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntegerTimesTwoExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "135",
                  "s" : [ {
                     "value" : [ "define ","IntegerTimesTwoExpression",": " ]
                  }, {
                     "r" : "134",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "133",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntegerSeven" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "134",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "133",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "ExpReturnsIntegerSeven",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "138",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "StringTimesTwoExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "138",
                  "s" : [ {
                     "value" : [ "define ","StringTimesTwoExpression",": " ]
                  }, {
                     "r" : "137",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "136",
                        "s" : [ {
                           "value" : [ "ExpReturnsStringFooBar" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "137",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "136",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "ExpReturnsStringFooBar",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "141",
            "name" : "IntervalTimesTwoExpression",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "141",
                  "s" : [ {
                     "value" : [ "define ","IntervalTimesTwoExpression",": " ]
                  }, {
                     "r" : "140",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "139",
                        "s" : [ {
                           "value" : [ "ExpReturnsIntervalOneToTen" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "140",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "operand" : [ {
                  "localId" : "139",
                  "name" : "ExpReturnsIntervalOneToTen",
                  "type" : "ExpressionRef",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "145",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntegerTimesTwoFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "145",
                  "s" : [ {
                     "value" : [ "define ","IntegerTimesTwoFunction",": " ]
                  }, {
                     "r" : "144",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "143",
                        "s" : [ {
                           "r" : "142",
                           "value" : [ "FnReturnsIntegerTimes5","(","6",")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "144",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "143",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "FnReturnsIntegerTimes5",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "6",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "149",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "StringTimesTwoFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "149",
                  "s" : [ {
                     "value" : [ "define ","StringTimesTwoFunction",": " ]
                  }, {
                     "r" : "148",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "147",
                        "s" : [ {
                           "value" : [ "FnReturnsStringHello","(" ]
                        }, {
                           "r" : "146",
                           "s" : [ {
                              "value" : [ "'Bob'" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "148",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "operand" : [ {
                  "localId" : "147",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "FnReturnsStringHello",
                  "type" : "FunctionRef",
                  "operand" : [ {
                     "localId" : "146",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "Bob",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "153",
            "name" : "IntervalTimesTwoFunction",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "153",
                  "s" : [ {
                     "value" : [ "define ","IntervalTimesTwoFunction",": " ]
                  }, {
                     "r" : "152",
                     "s" : [ {
                        "value" : [ "ArgTypeTimesTwo","(" ]
                     }, {
                        "r" : "151",
                        "s" : [ {
                           "r" : "150",
                           "value" : [ "FnReturnsIntervalZeroTo","(","60",")" ]
                        } ]
                     }, {
                        "value" : [ ")" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "152",
               "name" : "ArgTypeTimesTwo",
               "type" : "FunctionRef",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "operand" : [ {
                  "localId" : "151",
                  "name" : "FnReturnsIntervalZeroTo",
                  "type" : "FunctionRef",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "operand" : [ {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "60",
                     "type" : "Literal"
                  } ]
               } ]
            }
         } ]
      }
   }
}

