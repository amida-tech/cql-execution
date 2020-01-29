###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### ParameterDef
library TestSnippet version '1'
using QUICK
parameter MeasureYear default 2012
parameter IntParameter Integer
parameter ListParameter List<String>
parameter TupleParameter Tuple{a Integer, b String, c Boolean, d List<Integer>, e Tuple{ f String, g Boolean}}
context Patient
define foo: 'bar'
###

module.exports['ParameterDef'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "MeasureYear",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
               "value" : "2012",
               "type" : "Literal"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "IntParameter",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "8",
            "name" : "ListParameter",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "parameterTypeSpecifier" : {
               "localId" : "7",
               "type" : "ListTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "elementType" : {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            }
         }, {
            "localId" : "25",
            "name" : "TupleParameter",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "a",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "b",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "c",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "d",
                  "type" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }, {
                  "name" : "e",
                  "type" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "f",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "g",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  }
               } ]
            },
            "parameterTypeSpecifier" : {
               "localId" : "24",
               "type" : "TupleTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "a",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "b",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "c",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "d",
                     "type" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  }, {
                     "name" : "e",
                     "type" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "f",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "g",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     }
                  } ]
               },
               "element" : [ {
                  "localId" : "10",
                  "name" : "a",
                  "elementType" : {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "localId" : "12",
                  "name" : "b",
                  "elementType" : {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "localId" : "14",
                  "name" : "c",
                  "elementType" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "localId" : "17",
                  "name" : "d",
                  "elementType" : {
                     "localId" : "16",
                     "type" : "ListTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Integer",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "elementType" : {
                        "localId" : "15",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }, {
                  "localId" : "23",
                  "name" : "e",
                  "elementType" : {
                     "localId" : "22",
                     "type" : "TupleTypeSpecifier",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "f",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "g",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "localId" : "19",
                        "name" : "f",
                        "elementType" : {
                           "localId" : "18",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "localId" : "21",
                        "name" : "g",
                        "elementType" : {
                           "localId" : "20",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                           "name" : "{urn:hl7-org:elm-types:r1}Boolean",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  }
               } ]
            }
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
            "localId" : "27",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "27",
                  "s" : [ {
                     "value" : [ "define ","foo",": " ]
                  }, {
                     "r" : "26",
                     "s" : [ {
                        "value" : [ "'bar'" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "26",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "valueType" : "{urn:hl7-org:elm-types:r1}String",
               "value" : "bar",
               "type" : "Literal"
            }
         } ]
      }
   }
}

### ParameterRef
library TestSnippet version '1'
using QUICK
parameter FooP default 'Bar'
context Patient
define Foo: FooP
###

module.exports['ParameterRef'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "FooP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "valueType" : "{urn:hl7-org:elm-types:r1}String",
               "value" : "Bar",
               "type" : "Literal"
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
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
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### BooleanParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Boolean
parameter FooDP default true
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['BooleanParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "name" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
               "value" : "true",
               "type" : "Literal"
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### DecimalParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Decimal
parameter FooDP default 1.5
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['DecimalParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "name" : "{urn:hl7-org:elm-types:r1}Decimal",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
               "value" : "1.5",
               "type" : "Literal"
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### IntegerParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Integer
parameter FooDP default 2
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['IntegerParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
               "value" : "2",
               "type" : "Literal"
            }
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
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### StringParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP String
parameter FooDP default 'Hello'
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['StringParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "{urn:hl7-org:elm-types:r1}String",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "valueType" : "{urn:hl7-org:elm-types:r1}String",
               "value" : "Hello",
               "type" : "Literal"
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### CodeParameterTypes
library TestSnippet version '1'
using QUICK
codesystem "FOOTESTCS": 'http://footest.org'
parameter FooP Code
parameter FooDP default Code 'FooTest' from "FOOTESTCS" display 'Foo Test'
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['CodeParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "4",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "{urn:hl7-org:elm-types:r1}Code",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "code" : "FooTest",
               "display" : "Foo Test",
               "type" : "Code",
               "system" : {
                  "localId" : "5",
                  "name" : "FOOTESTCS",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Code",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }
            }
         } ]
      },
      "codeSystems" : {
         "def" : [ {
            "localId" : "2",
            "name" : "FOOTESTCS",
            "id" : "http://footest.org",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Code",
                  "type" : "NamedTypeSpecifier"
               }
            }
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
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### ConceptParameterTypes
library TestSnippet version '1'
using QUICK
codesystem "FOOTESTCS": 'http://footest.org'
parameter FooP Concept
parameter FooDP default Concept { Code 'FooTest' from "FOOTESTCS" } display 'Foo Test'
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['ConceptParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "4",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
               "name" : "{urn:hl7-org:elm-types:r1}Concept",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "7",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
               "display" : "Foo Test",
               "type" : "Concept",
               "code" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                  "code" : "FooTest",
                  "system" : {
                     "localId" : "5",
                     "name" : "FOOTESTCS",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Code",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  }
               } ]
            }
         } ]
      },
      "codeSystems" : {
         "def" : [ {
            "localId" : "2",
            "name" : "FOOTESTCS",
            "id" : "http://footest.org",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Code",
                  "type" : "NamedTypeSpecifier"
               }
            }
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
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "12",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "12",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "11",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "11",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### DateTimeParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP DateTime
parameter FooDP default @2012-04-01T12:11:10
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['DateTimeParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "name" : "{urn:hl7-org:elm-types:r1}DateTime",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "type" : "DateTime",
               "year" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2012",
                  "type" : "Literal"
               },
               "month" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               },
               "day" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "hour" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "12",
                  "type" : "Literal"
               },
               "minute" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "11",
                  "type" : "Literal"
               },
               "second" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "10",
                  "type" : "Literal"
               }
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### DateParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Date
parameter FooDP default @2012-04-01
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['DateParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "name" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2012",
                  "type" : "Literal"
               },
               "month" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               },
               "day" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### QuantityParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Quantity
parameter FooDP default 10 'dL'
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['QuantityParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "name" : "{urn:hl7-org:elm-types:r1}Quantity",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "value" : 10,
               "unit" : "dL",
               "type" : "Quantity"
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### TimeParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Time
parameter FooDP default @T12:00:00
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['TimeParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "FooP",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "name" : "{urn:hl7-org:elm-types:r1}Time",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "type" : "Time",
               "hour" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "12",
                  "type" : "Literal"
               },
               "minute" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "0",
                  "type" : "Literal"
               },
               "second" : {
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "0",
                  "type" : "Literal"
               }
            }
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "name" : "FooP",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Time",
               "name" : "FooDP",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### ListParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP List<String>
parameter FooDP default { 'a', 'b', 'c' }
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['ListParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "4",
            "name" : "FooP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "parameterTypeSpecifier" : {
               "localId" : "3",
               "type" : "ListTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "elementType" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            }
         }, {
            "localId" : "9",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "default" : {
               "localId" : "8",
               "type" : "List",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "element" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "a",
                  "type" : "Literal"
               }, {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "b",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "c",
                  "type" : "Literal"
               } ]
            }
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
            "localId" : "11",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "10",
               "name" : "FooP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         }, {
            "localId" : "13",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "ListTypeSpecifier",
               "elementType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}String",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "expression" : {
               "localId" : "12",
               "name" : "FooDP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         } ]
      }
   }
}

### IntervalParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Interval<Integer>
parameter FooDP default Interval[2,6]
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['IntervalParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "4",
            "name" : "FooP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "parameterTypeSpecifier" : {
               "localId" : "3",
               "type" : "IntervalTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "pointType" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            }
         }, {
            "localId" : "8",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "default" : {
               "localId" : "7",
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
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               },
               "high" : {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               }
            }
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
            "localId" : "10",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "value" : [ "FooP" ]
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
               "localId" : "9",
               "name" : "FooP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         }, {
            "localId" : "12",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "12",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "11",
                     "s" : [ {
                        "value" : [ "FooDP" ]
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
               "localId" : "11",
               "name" : "FooDP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         } ]
      }
   }
}

### TupleParameterTypes
library TestSnippet version '1'
using QUICK
parameter FooP Tuple { Hello String, MeaningOfLife Integer }
parameter FooDP default Tuple { Hello: 'Universe', MeaningOfLife: 24 }
context Patient
define Foo: FooP
define Foo2: FooDP
###

module.exports['TupleParameterTypes'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "7",
            "name" : "FooP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Hello",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "MeaningOfLife",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "parameterTypeSpecifier" : {
               "localId" : "6",
               "type" : "TupleTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Hello",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "MeaningOfLife",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               },
               "element" : [ {
                  "localId" : "3",
                  "name" : "Hello",
                  "elementType" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "localId" : "5",
                  "name" : "MeaningOfLife",
                  "elementType" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            }
         }, {
            "localId" : "11",
            "name" : "FooDP",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Hello",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "MeaningOfLife",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "default" : {
               "localId" : "10",
               "type" : "Tuple",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Hello",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "MeaningOfLife",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               },
               "element" : [ {
                  "name" : "Hello",
                  "value" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "Universe",
                     "type" : "Literal"
                  }
               }, {
                  "name" : "MeaningOfLife",
                  "value" : {
                     "localId" : "9",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "24",
                     "type" : "Literal"
                  }
               } ]
            }
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
            "localId" : "13",
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "value" : [ "FooP" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Hello",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "MeaningOfLife",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "expression" : {
               "localId" : "12",
               "name" : "FooP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Hello",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "MeaningOfLife",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "15",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "15",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "14",
                     "s" : [ {
                        "value" : [ "FooDP" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Hello",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "MeaningOfLife",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "expression" : {
               "localId" : "14",
               "name" : "FooDP",
               "type" : "ParameterRef",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Hello",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "MeaningOfLife",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               }
            }
         } ]
      }
   }
}

### DefaultAndNoDefault
library TestSnippet version '1'
using QUICK
parameter FooWithNoDefault Integer
parameter FooWithDefault default 5
context Patient
define Foo: FooWithNoDefault
define Foo2: FooWithDefault
###

module.exports['DefaultAndNoDefault'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "3",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "FooWithNoDefault",
            "accessLevel" : "Public",
            "parameterTypeSpecifier" : {
               "localId" : "2",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "{urn:hl7-org:elm-types:r1}Integer",
               "type" : "NamedTypeSpecifier"
            }
         }, {
            "localId" : "5",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "FooWithDefault",
            "accessLevel" : "Public",
            "default" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
               "value" : "5",
               "type" : "Literal"
            }
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
            "name" : "Foo",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","Foo",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "value" : [ "FooWithNoDefault" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "FooWithNoDefault",
               "type" : "ParameterRef"
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Foo2",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Foo2",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "FooWithDefault" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "name" : "FooWithDefault",
               "type" : "ParameterRef"
            }
         } ]
      }
   }
}

### MeasurementPeriodParameter
library TestSnippet version '1'
using QUICK
parameter "Measurement Period" Interval<DateTime>
context Patient
define MeasurementPeriod: Interval[DateTime(2011, 1, 1), DateTime(2013, 1, 1)] overlaps "Measurement Period"
###

module.exports['MeasurementPeriodParameter'] = {
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
      "parameters" : {
         "def" : [ {
            "localId" : "4",
            "name" : "Measurement Period",
            "accessLevel" : "Public",
            "resultTypeSpecifier" : {
               "type" : "IntervalTypeSpecifier",
               "pointType" : {
                  "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "NamedTypeSpecifier"
               }
            },
            "parameterTypeSpecifier" : {
               "localId" : "3",
               "type" : "IntervalTypeSpecifier",
               "resultTypeSpecifier" : {
                  "type" : "IntervalTypeSpecifier",
                  "pointType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "NamedTypeSpecifier"
                  }
               },
               "pointType" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "NamedTypeSpecifier"
               }
            }
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
            "localId" : "16",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MeasurementPeriod",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "16",
                  "s" : [ {
                     "value" : [ "define ","MeasurementPeriod",": " ]
                  }, {
                     "r" : "15",
                     "s" : [ {
                        "r" : "13",
                        "s" : [ {
                           "value" : [ "Interval[" ]
                        }, {
                           "r" : "8",
                           "s" : [ {
                              "r" : "5",
                              "value" : [ "DateTime","(","2011",", ","1",", ","1",")" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "r" : "9",
                              "value" : [ "DateTime","(","2013",", ","1",", ","1",")" ]
                           } ]
                        }, {
                           "value" : [ "]" ]
                        } ]
                     }, {
                        "r" : "15",
                        "value" : [ " ","overlaps"," " ]
                     }, {
                        "r" : "14",
                        "s" : [ {
                           "value" : [ "\"Measurement Period\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "15",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Overlaps",
               "operand" : [ {
                  "localId" : "13",
                  "lowClosed" : true,
                  "highClosed" : true,
                  "type" : "Interval",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "low" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "5",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2011",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "6",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "7",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  },
                  "high" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "9",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2013",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "10",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "11",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }
               }, {
                  "localId" : "14",
                  "name" : "Measurement Period",
                  "type" : "ParameterRef",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}DateTime",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               } ]
            }
         } ]
      }
   }
}

