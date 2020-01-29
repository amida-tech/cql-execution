###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### Equal
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 = 4
define AEqB_Int: 5 = 5
define ALtB_Int: 5 = 6
define EqTuples: Tuple{a: 1, b: Tuple{c: 1}} = Tuple{a: 1, b: Tuple{c: 1}}
define UneqTuples: Tuple{a: 1, b: Tuple{c: 1}} = Tuple{a: 1, b: Tuple{c: -1}}
define TupleA: Tuple{ Foo: null }
define TupleB: Tuple{ Bar: null }
define TupleDifferentKeys: TupleA = TupleB
define EqTuplesWithNullFields: Tuple{a: 'Hello', b: null} = Tuple{a: 'Hello', b: null}
define UneqTuplesWithNullFields: Tuple{a: 'Hello', b: null} = Tuple{a: 'Goodbye', b: null}
define UncertTuplesWithNullFieldOnOne: Tuple{a: 'Hello', b: null} = Tuple{a: 'Hello', b: 'null'}
define UncertTuplesWithDiffNullFields: Tuple{a: 'Hello', b: null} = Tuple{a: 'Hello', c: null}
define EqDateTimes: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) = DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0)
define UneqDateTimes: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) = DateTime(2000, 3, 15, 13, 30, 25, 201, +1.0)
define EqDateTimesTZ: DateTime(2000, 3, 15, 23, 30, 25, 200, +1.0) = DateTime(2000, 3, 16, 2, 30, 25, 200, +4.0)
define UneqDateTimesTZ: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) = DateTime(2000, 3, 15, 13, 30, 25, 200, +2.0)
define EqDateTimesOnlyDate: DateTime(2000, 3, 15) = DateTime(2000, 3, 15)
define UneqDateTimesOnlyDate: DateTime(2000, 3, 14) = DateTime(2000, 3, 15)
define PossiblyEqDateTimesOnlyDateOnOne: DateTime(2000, 3, 13) = DateTime(2000, 3, 13, 13, 43, 32)
define UneqDateTimesOnlyDateOnOne: DateTime(2000, 4, 13, 12, 43, 32) = DateTime(2000, 3, 13)
define PossiblyEqualDateTimes: DateTime(2000, 3, 15) = DateTime(2000)
define ImpossiblyEqualDateTimes: DateTime(2000, 3, 15) = DateTime(2000, 4)
define DateAndDateTimeNull: Date(2000, 3, 13) = DateTime(2000, 3, 13)
define DateAndDateTimeNotEqual: Date(2000, 3, 13) = DateTime(2000, 3, 12)
define DateAndDateTimeUncertainFalse: Date(2000, 3, 13) = DateTime(2000, 3, 13, 2, 4, 23)
define DateTimeAndDateNull: DateTime(2000, 3, 13) = Date(2000, 3, 13)
define DateTimeAndDateNotEqual: DateTime(2000, 3, 12) = Date(2000, 3, 13)
define DateTimeAndDateUncertainFalse: DateTime(2000, 3, 13, 2, 4, 23) = Date(2000, 3, 13)
define AGtB_Quantity: 5 'm' = 4 'm'
define AEqB_Quantity: 5 'm' = 5 'm'
define ALtB_Quantity: 5 'm' = 6 'm'
define AGtB_Quantity_diff: 5 'm' = 5 'cm'
define AEqB_Quantity_diff: 5 'm' = 500 'cm'
define ALtB_Quantity_diff: 5 'm' = 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' = 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' = 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' = 40 'm'
define EqRatios: 10 'mg' : 2 'dL' = 15 'mg' : 3 'dL'
define UneqRatios: 10 'mg' : 2 'dL' = 15 'mg' : 4 'dL'
###

###
Translation Error(s):
[11:28, 11:42] Could not resolve call to operator Equal with signature (tuple{Foo:System.Any},tuple{Bar:System.Any}).
[15:40, 15:94] Could not resolve call to operator Equal with signature (tuple{a:System.String,b:System.Any},tuple{a:System.String,c:System.Any}).
###
module.exports['Equal'] = {
   "library" : {
      "annotation" : [ {
         "startLine" : 11,
         "startChar" : 28,
         "endLine" : 11,
         "endChar" : 42,
         "message" : "Could not resolve call to operator Equal with signature (tuple{Foo:System.Any},tuple{Bar:System.Any}).",
         "errorType" : "semantic",
         "errorSeverity" : "error",
         "type" : "CqlToElmError"
      }, {
         "startLine" : 15,
         "startChar" : 40,
         "endLine" : 15,
         "endChar" : 94,
         "message" : "Could not resolve call to operator Equal with signature (tuple{a:System.String,b:System.Any},tuple{a:System.String,c:System.Any}).",
         "errorType" : "semantic",
         "errorSeverity" : "error",
         "type" : "CqlToElmError"
      } ],
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ","="," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ","="," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ","="," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define ","EqTuples",": " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "r" : "17",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "14",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "16",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "15",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "21",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "18",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "20",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "19",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "17",
                  "type" : "Tuple",
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
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "14",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "16",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "15",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                              "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                              "value" : "1",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  } ]
               }, {
                  "localId" : "21",
                  "type" : "Tuple",
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
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "18",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "20",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "19",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                              "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                              "value" : "1",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","UneqTuples",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "24",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "26",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "25",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "28",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "31",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "value" : [ "c",": " ]
                                 }, {
                                    "r" : "30",
                                    "s" : [ {
                                       "r" : "29",
                                       "value" : [ "-","1" ]
                                    } ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "27",
                  "type" : "Tuple",
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
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "24",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "26",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "25",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                              "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                              "value" : "1",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  } ]
               }, {
                  "localId" : "32",
                  "type" : "Tuple",
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
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "28",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "31",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "30",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                              "type" : "Negate",
                              "operand" : {
                                 "localId" : "29",
                                 "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "value" : "1",
                                 "type" : "Literal"
                              }
                           }
                        } ]
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "37",
            "name" : "TupleA",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","TupleA",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "value" : [ "Tuple{ " ]
                     }, {
                        "s" : [ {
                           "r" : "35",
                           "value" : [ "Foo",": ","null" ]
                        } ]
                     }, {
                        "value" : [ " }" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Foo",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "expression" : {
               "localId" : "36",
               "type" : "Tuple",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Foo",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               },
               "element" : [ {
                  "name" : "Foo",
                  "value" : {
                     "localId" : "35",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "40",
            "name" : "TupleB",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "40",
                  "s" : [ {
                     "value" : [ "define ","TupleB",": " ]
                  }, {
                     "r" : "39",
                     "s" : [ {
                        "value" : [ "Tuple{ " ]
                     }, {
                        "s" : [ {
                           "r" : "38",
                           "value" : [ "Bar",": ","null" ]
                        } ]
                     }, {
                        "value" : [ " }" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Bar",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "expression" : {
               "localId" : "39",
               "type" : "Tuple",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Bar",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               },
               "element" : [ {
                  "name" : "Bar",
                  "value" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "44",
            "name" : "TupleDifferentKeys",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "44",
                  "s" : [ {
                     "value" : [ "define ","TupleDifferentKeys",": " ]
                  }, {
                     "r" : "43",
                     "s" : [ {
                        "r" : "41",
                        "s" : [ {
                           "value" : [ "TupleA" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "TupleB" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "43",
               "type" : "Null"
            }
         }, {
            "localId" : "52",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqTuplesWithNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "52",
                  "s" : [ {
                     "value" : [ "define ","EqTuplesWithNullFields",": " ]
                  }, {
                     "r" : "51",
                     "s" : [ {
                        "r" : "47",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "45",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "46",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "50",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "48",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "49",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "51",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "47",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "45",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Hello",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "46",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }, {
                  "localId" : "50",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "48",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Hello",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "49",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "60",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqTuplesWithNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "60",
                  "s" : [ {
                     "value" : [ "define ","UneqTuplesWithNullFields",": " ]
                  }, {
                     "r" : "59",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "53",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "54",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "58",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "56",
                              "s" : [ {
                                 "value" : [ "'Goodbye'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "57",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "59",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "55",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "53",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Hello",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "54",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }, {
                  "localId" : "58",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "56",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Goodbye",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "57",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "68",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UncertTuplesWithNullFieldOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "68",
                  "s" : [ {
                     "value" : [ "define ","UncertTuplesWithNullFieldOnOne",": " ]
                  }, {
                     "r" : "67",
                     "s" : [ {
                        "r" : "63",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "61",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "62",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "66",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "64",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "65",
                              "s" : [ {
                                 "value" : [ "'null'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "67",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "63",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "61",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Hello",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "62",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }, {
                  "localId" : "66",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "64",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "Hello",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "65",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "null",
                        "type" : "Literal"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "76",
            "name" : "UncertTuplesWithDiffNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "76",
                  "s" : [ {
                     "value" : [ "define ","UncertTuplesWithDiffNullFields",": " ]
                  }, {
                     "r" : "75",
                     "s" : [ {
                        "r" : "71",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "69",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "70",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "74",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "72",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "73",
                              "value" : [ "c",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "75",
               "type" : "Null"
            }
         }, {
            "localId" : "96",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "96",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimes",": " ]
                  }, {
                     "r" : "95",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "77",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "84",
                           "s" : [ {
                              "r" : "84",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "94",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "93",
                           "s" : [ {
                              "r" : "93",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "95",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "77",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "78",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "79",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "80",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "81",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "94",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "86",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "87",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "88",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "89",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "90",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "91",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "116",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "116",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimes",": " ]
                  }, {
                     "r" : "115",
                     "s" : [ {
                        "r" : "105",
                        "s" : [ {
                           "r" : "97",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "104",
                           "s" : [ {
                              "r" : "104",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "114",
                        "s" : [ {
                           "r" : "106",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","201",", " ]
                        }, {
                           "r" : "113",
                           "s" : [ {
                              "r" : "113",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "115",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "105",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "97",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "98",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "99",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "100",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "101",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "114",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "106",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "107",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "108",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "109",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "110",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "111",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "201",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "136",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimesTZ",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "136",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimesTZ",": " ]
                  }, {
                     "r" : "135",
                     "s" : [ {
                        "r" : "125",
                        "s" : [ {
                           "r" : "117",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","23",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "124",
                           "s" : [ {
                              "r" : "124",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "134",
                        "s" : [ {
                           "r" : "126",
                           "value" : [ "DateTime","(","2000",", ","3",", ","16",", ","2",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "133",
                           "s" : [ {
                              "r" : "133",
                              "value" : [ "+","4.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "135",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "117",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "119",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "120",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "121",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "134",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "126",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "127",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "128",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "129",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "130",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "131",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "132",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "4.0",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "156",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesTZ",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "156",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesTZ",": " ]
                  }, {
                     "r" : "155",
                     "s" : [ {
                        "r" : "145",
                        "s" : [ {
                           "r" : "137",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "144",
                           "s" : [ {
                              "r" : "144",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "154",
                        "s" : [ {
                           "r" : "146",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "153",
                           "s" : [ {
                              "r" : "153",
                              "value" : [ "+","2.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "155",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "145",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "137",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "138",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "139",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "140",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "141",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "143",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "1.0",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "154",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "146",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "147",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "148",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "149",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "30",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "151",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  },
                  "millisecond" : {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "200",
                     "type" : "Literal"
                  },
                  "timezoneOffset" : {
                     "localId" : "153",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                     "value" : "2.0",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "166",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimesOnlyDate",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "166",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimesOnlyDate",": " ]
                  }, {
                     "r" : "165",
                     "s" : [ {
                        "r" : "160",
                        "s" : [ {
                           "r" : "157",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "164",
                        "s" : [ {
                           "r" : "161",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "165",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "160",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "157",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "158",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "159",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "164",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "161",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "162",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "163",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "176",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesOnlyDate",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "176",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesOnlyDate",": " ]
                  }, {
                     "r" : "175",
                     "s" : [ {
                        "r" : "170",
                        "s" : [ {
                           "r" : "167",
                           "value" : [ "DateTime","(","2000",", ","3",", ","14",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "174",
                        "s" : [ {
                           "r" : "171",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "175",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "170",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "167",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "168",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "169",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "14",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "174",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "171",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "172",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "173",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "189",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "PossiblyEqDateTimesOnlyDateOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "189",
                  "s" : [ {
                     "value" : [ "define ","PossiblyEqDateTimesOnlyDateOnOne",": " ]
                  }, {
                     "r" : "188",
                     "s" : [ {
                        "r" : "180",
                        "s" : [ {
                           "r" : "177",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "187",
                        "s" : [ {
                           "r" : "181",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","13",", ","43",", ","32",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "188",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "180",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "177",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "178",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "179",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "187",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "181",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "182",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "183",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "184",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "185",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "43",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "186",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "32",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "202",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesOnlyDateOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "202",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesOnlyDateOnOne",": " ]
                  }, {
                     "r" : "201",
                     "s" : [ {
                        "r" : "196",
                        "s" : [ {
                           "r" : "190",
                           "value" : [ "DateTime","(","2000",", ","4",", ","13",", ","12",", ","43",", ","32",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "200",
                        "s" : [ {
                           "r" : "197",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "201",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "196",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "190",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "191",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "192",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "193",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "194",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "43",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "195",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "32",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "200",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "197",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "198",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "199",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "210",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "PossiblyEqualDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "210",
                  "s" : [ {
                     "value" : [ "define ","PossiblyEqualDateTimes",": " ]
                  }, {
                     "r" : "209",
                     "s" : [ {
                        "r" : "206",
                        "s" : [ {
                           "r" : "203",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "208",
                        "s" : [ {
                           "r" : "207",
                           "value" : [ "DateTime","(","2000",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "209",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "206",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "203",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "204",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "205",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "208",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "207",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "219",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpossiblyEqualDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "219",
                  "s" : [ {
                     "value" : [ "define ","ImpossiblyEqualDateTimes",": " ]
                  }, {
                     "r" : "218",
                     "s" : [ {
                        "r" : "214",
                        "s" : [ {
                           "r" : "211",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "217",
                        "s" : [ {
                           "r" : "215",
                           "value" : [ "DateTime","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "218",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "214",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "211",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "212",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "213",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "217",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "215",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "216",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "229",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "229",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeNull",": " ]
                  }, {
                     "r" : "228",
                     "s" : [ {
                        "r" : "223",
                        "s" : [ {
                           "r" : "220",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "227",
                        "s" : [ {
                           "r" : "224",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "228",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "223",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "220",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "221",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "222",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               }, {
                  "localId" : "227",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "224",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "225",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "226",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "239",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeNotEqual",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "239",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeNotEqual",": " ]
                  }, {
                     "r" : "238",
                     "s" : [ {
                        "r" : "233",
                        "s" : [ {
                           "r" : "230",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "237",
                        "s" : [ {
                           "r" : "234",
                           "value" : [ "DateTime","(","2000",", ","3",", ","12",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "238",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "233",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "230",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "231",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "232",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               }, {
                  "localId" : "237",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "234",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "235",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "236",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "252",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeUncertainFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "252",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeUncertainFalse",": " ]
                  }, {
                     "r" : "251",
                     "s" : [ {
                        "r" : "243",
                        "s" : [ {
                           "r" : "240",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "250",
                        "s" : [ {
                           "r" : "244",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","2",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "251",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "243",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "240",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "241",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "242",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               }, {
                  "localId" : "250",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "244",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "245",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "246",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "247",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "248",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "249",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "262",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "262",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateNull",": " ]
                  }, {
                     "r" : "261",
                     "s" : [ {
                        "r" : "256",
                        "s" : [ {
                           "r" : "253",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "260",
                        "s" : [ {
                           "r" : "257",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "261",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "256",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "253",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "254",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "255",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  }
               }, {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "260",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "257",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "258",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "259",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "272",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateNotEqual",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "272",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateNotEqual",": " ]
                  }, {
                     "r" : "271",
                     "s" : [ {
                        "r" : "266",
                        "s" : [ {
                           "r" : "263",
                           "value" : [ "DateTime","(","2000",", ","3",", ","12",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "270",
                        "s" : [ {
                           "r" : "267",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "271",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "266",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "263",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "264",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "265",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  }
               }, {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "270",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "267",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "268",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "269",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "285",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateUncertainFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "285",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateUncertainFalse",": " ]
                  }, {
                     "r" : "284",
                     "s" : [ {
                        "r" : "279",
                        "s" : [ {
                           "r" : "273",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","2",", ","4",", ","23",")" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "283",
                        "s" : [ {
                           "r" : "280",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "284",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "279",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                  "type" : "DateTime",
                  "year" : {
                     "localId" : "273",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "274",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "275",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "13",
                     "type" : "Literal"
                  },
                  "hour" : {
                     "localId" : "276",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "minute" : {
                     "localId" : "277",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "second" : {
                     "localId" : "278",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               }, {
                  "type" : "ToDateTime",
                  "operand" : {
                     "localId" : "283",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "Date",
                     "year" : {
                        "localId" : "280",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "281",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "282",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "289",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "289",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "288",
                     "s" : [ {
                        "r" : "286",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "287",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "288",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "286",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "287",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "293",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "293",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "292",
                     "s" : [ {
                        "r" : "290",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "291",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "292",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "290",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "291",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "297",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "297",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "296",
                     "s" : [ {
                        "r" : "294",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "295",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "296",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "294",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "295",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 6,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "301",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "301",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "300",
                     "s" : [ {
                        "r" : "298",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "299",
                        "s" : [ {
                           "value" : [ "5 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "300",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "298",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "299",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "305",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "305",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "304",
                     "s" : [ {
                        "r" : "302",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "303",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "304",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "302",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "303",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 500,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "309",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "309",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "308",
                     "s" : [ {
                        "r" : "306",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "307",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "308",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "306",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "307",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "km",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "313",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "313",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "312",
                     "s" : [ {
                        "r" : "310",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "311",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "312",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "310",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "311",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "317",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "317",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "316",
                     "s" : [ {
                        "r" : "314",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "315",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "316",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "314",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "315",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "321",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "321",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "320",
                     "s" : [ {
                        "r" : "318",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "319",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "320",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "318",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "319",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 40,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "329",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqRatios",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "329",
                  "s" : [ {
                     "value" : [ "define ","EqRatios",": " ]
                  }, {
                     "r" : "328",
                     "s" : [ {
                        "r" : "324",
                        "s" : [ {
                           "r" : "322",
                           "s" : [ {
                              "value" : [ "10 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "323",
                           "s" : [ {
                              "value" : [ "2 ","'dL'" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "327",
                        "s" : [ {
                           "r" : "325",
                           "s" : [ {
                              "value" : [ "15 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "326",
                           "s" : [ {
                              "value" : [ "3 ","'dL'" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "328",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "324",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "322",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "323",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "dL"
                  }
               }, {
                  "localId" : "327",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "325",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 15,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "326",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "dL"
                  }
               } ]
            }
         }, {
            "localId" : "337",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqRatios",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "337",
                  "s" : [ {
                     "value" : [ "define ","UneqRatios",": " ]
                  }, {
                     "r" : "336",
                     "s" : [ {
                        "r" : "332",
                        "s" : [ {
                           "r" : "330",
                           "s" : [ {
                              "value" : [ "10 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "331",
                           "s" : [ {
                              "value" : [ "2 ","'dL'" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ " ","="," " ]
                     }, {
                        "r" : "335",
                        "s" : [ {
                           "r" : "333",
                           "s" : [ {
                              "value" : [ "15 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "334",
                           "s" : [ {
                              "value" : [ "4 ","'dL'" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "336",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "332",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "330",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "331",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "dL"
                  }
               }, {
                  "localId" : "335",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "333",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 15,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "334",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "dL"
                  }
               } ]
            }
         } ]
      }
   }
}

### NotEqual
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 != 4
define AEqB_Int: 5 != 5
define ALtB_Int: 5 != 6
define EqTuples: Tuple{a: 1, b: Tuple{c: 1}} != Tuple{a: 1, b: Tuple{c: 1}}
define UneqTuples: Tuple{a: 1, b: Tuple{c: 1}} != Tuple{a: 1, b: Tuple{c: -1}}
define EqTuplesWithNullFields: Tuple{a: 'Hello', b: null} != Tuple{a: 'Hello', b: null}
define UneqTuplesWithNullFields: Tuple{a: 'Hello', b: null} != Tuple{a: 'Goodbye', b: null}
define UncertTuplesWithNullFieldOnOne: Tuple{a: 'Hello', b: null} != Tuple{a: 'Hello', b: 'null'}
define UncertTuplesWithDiffNullFields: Tuple{a: 'Hello', b: null} != Tuple{a: 'Hello', c: null}
define EqDateTimes: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) != DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0)
define UneqDateTimes: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) != DateTime(2000, 3, 15, 13, 30, 25, 201, +1.0)
define EqDateTimesTZ: DateTime(2000, 3, 15, 23, 30, 25, 200, +1.0) != DateTime(2000, 3, 16, 2, 30, 25, 200, +4.0)
define UneqDateTimesTZ: DateTime(2000, 3, 15, 13, 30, 25, 200, +1.0) != DateTime(2000, 3, 15, 13, 30, 25, 200, +2.0)
define EqDateTimesOnlyDate: DateTime(2000, 3, 15) != DateTime(2000, 3, 15)
define UneqDateTimesOnlyDate: DateTime(2000, 3, 14) != DateTime(2000, 3, 15)
define PossiblyEqDateTimesOnlyDateOnOne: DateTime(2000, 3, 13) != DateTime(2000, 3, 13, 13, 43, 32)
define UneqDateTimesOnlyDateOnOne: DateTime(2000, 4, 13, 12, 43, 32) != DateTime(2000, 3, 13)
define PossiblyEqualDateTimes: DateTime(2000, 3, 15) != DateTime(2000)
define ImpossiblyEqualDateTimes: DateTime(2000, 3, 15) != DateTime(2000, 4)
define DateAndDateTimeNull: Date(2000, 3, 13) != DateTime(2000, 3, 13)
define DateAndDateTimeNotEqual: Date(2000, 3, 13) != DateTime(2000, 3, 12)
define DateAndDateTimeUncertainTrue: Date(2000, 3, 13) != DateTime(2000, 3, 13, 2, 4, 23)
define DateTimeAndDateNull: DateTime(2000, 3, 13) != Date(2000, 3, 13)
define DateTimeAndDateNotEqual: DateTime(2000, 3, 12) != Date(2000, 3, 13)
define DateTimeAndDateUncertainTrue: DateTime(2000, 3, 13, 2, 4, 23) != Date(2000, 3, 13)
define AGtB_Quantity: 5 'm' != 4 'm'
define AEqB_Quantity: 5 'm' != 5 'm'
define ALtB_Quantity: 5 'm' != 6 'm'
define AGtB_Quantity_diff: 5 'm' != 5 'cm'
define AEqB_Quantity_diff: 5 'm' != 500 'cm'
define ALtB_Quantity_diff: 5 'm' != 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' != 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' != 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' != 40 'm'
###

###
Translation Error(s):
[12:40, 12:95] Could not resolve call to operator Equal with signature (tuple{a:System.String,b:System.Any},tuple{a:System.String,c:System.Any}).
###
module.exports['NotEqual'] = {
   "library" : {
      "annotation" : [ {
         "startLine" : 12,
         "startChar" : 40,
         "endLine" : 12,
         "endChar" : 95,
         "message" : "Could not resolve call to operator Equal with signature (tuple{a:System.String,b:System.Any},tuple{a:System.String,c:System.Any}).",
         "errorType" : "semantic",
         "errorSeverity" : "error",
         "type" : "CqlToElmError"
      } ],
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ","!="," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ","!="," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ","!="," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "10",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }, {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "6",
                     "type" : "Literal"
                  } ]
               }
            }
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define ","EqTuples",": " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "r" : "17",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "14",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "16",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "15",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "21",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "18",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "20",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "19",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "17",
                     "type" : "Tuple",
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
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "14",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "16",
                           "type" : "Tuple",
                           "resultTypeSpecifier" : {
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           },
                           "element" : [ {
                              "name" : "c",
                              "value" : {
                                 "localId" : "15",
                                 "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "value" : "1",
                                 "type" : "Literal"
                              }
                           } ]
                        }
                     } ]
                  }, {
                     "localId" : "21",
                     "type" : "Tuple",
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
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "18",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "20",
                           "type" : "Tuple",
                           "resultTypeSpecifier" : {
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           },
                           "element" : [ {
                              "name" : "c",
                              "value" : {
                                 "localId" : "19",
                                 "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "value" : "1",
                                 "type" : "Literal"
                              }
                           } ]
                        }
                     } ]
                  } ]
               }
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","UneqTuples",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "24",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "26",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "25",
                                    "value" : [ "c",": ","1" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "28",
                              "value" : [ "a",": ","1" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "31",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "value" : [ "c",": " ]
                                 }, {
                                    "r" : "30",
                                    "s" : [ {
                                       "r" : "29",
                                       "value" : [ "-","1" ]
                                    } ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "27",
                     "type" : "Tuple",
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
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "24",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "26",
                           "type" : "Tuple",
                           "resultTypeSpecifier" : {
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           },
                           "element" : [ {
                              "name" : "c",
                              "value" : {
                                 "localId" : "25",
                                 "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "value" : "1",
                                 "type" : "Literal"
                              }
                           } ]
                        }
                     } ]
                  }, {
                     "localId" : "32",
                     "type" : "Tuple",
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
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "28",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "1",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "31",
                           "type" : "Tuple",
                           "resultTypeSpecifier" : {
                              "type" : "TupleTypeSpecifier",
                              "element" : [ {
                                 "name" : "c",
                                 "type" : {
                                    "name" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "type" : "NamedTypeSpecifier"
                                 }
                              } ]
                           },
                           "element" : [ {
                              "name" : "c",
                              "value" : {
                                 "localId" : "30",
                                 "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                 "type" : "Negate",
                                 "operand" : {
                                    "localId" : "29",
                                    "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                                    "value" : "1",
                                    "type" : "Literal"
                                 }
                              }
                           } ]
                        }
                     } ]
                  } ]
               }
            }
         }, {
            "localId" : "42",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqTuplesWithNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "42",
                  "s" : [ {
                     "value" : [ "define ","EqTuplesWithNullFields",": " ]
                  }, {
                     "r" : "41",
                     "s" : [ {
                        "r" : "37",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "35",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "36",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "40",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "38",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "39",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "41",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "37",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "35",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Hello",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "36",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }
                     } ]
                  }, {
                     "localId" : "40",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "38",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Hello",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "39",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }
                     } ]
                  } ]
               }
            }
         }, {
            "localId" : "50",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqTuplesWithNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "50",
                  "s" : [ {
                     "value" : [ "define ","UneqTuplesWithNullFields",": " ]
                  }, {
                     "r" : "49",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "43",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "44",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "48",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "46",
                              "s" : [ {
                                 "value" : [ "'Goodbye'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "47",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "49",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "45",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "43",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Hello",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "44",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }
                     } ]
                  }, {
                     "localId" : "48",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "46",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Goodbye",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "47",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }
                     } ]
                  } ]
               }
            }
         }, {
            "localId" : "58",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UncertTuplesWithNullFieldOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "58",
                  "s" : [ {
                     "value" : [ "define ","UncertTuplesWithNullFieldOnOne",": " ]
                  }, {
                     "r" : "57",
                     "s" : [ {
                        "r" : "53",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "51",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "52",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "56",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "54",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "55",
                              "s" : [ {
                                 "value" : [ "'null'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "57",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "53",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "51",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Hello",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "52",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        }
                     } ]
                  }, {
                     "localId" : "56",
                     "type" : "Tuple",
                     "resultTypeSpecifier" : {
                        "type" : "TupleTypeSpecifier",
                        "element" : [ {
                           "name" : "a",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        }, {
                           "name" : "b",
                           "type" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        } ]
                     },
                     "element" : [ {
                        "name" : "a",
                        "value" : {
                           "localId" : "54",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "Hello",
                           "type" : "Literal"
                        }
                     }, {
                        "name" : "b",
                        "value" : {
                           "localId" : "55",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "null",
                           "type" : "Literal"
                        }
                     } ]
                  } ]
               }
            }
         }, {
            "localId" : "66",
            "name" : "UncertTuplesWithDiffNullFields",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "66",
                  "s" : [ {
                     "value" : [ "define ","UncertTuplesWithDiffNullFields",": " ]
                  }, {
                     "r" : "65",
                     "s" : [ {
                        "r" : "61",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "59",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "60",
                              "value" : [ "b",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "64",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "62",
                              "s" : [ {
                                 "value" : [ "'Hello'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "r" : "63",
                              "value" : [ "c",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "65",
               "type" : "Null"
            }
         }, {
            "localId" : "86",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "86",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimes",": " ]
                  }, {
                     "r" : "85",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "67",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "74",
                           "s" : [ {
                              "r" : "74",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "84",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "83",
                           "s" : [ {
                              "r" : "83",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "85",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "75",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "67",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "68",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "69",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "70",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "71",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "72",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "73",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "74",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "76",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "77",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "78",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "79",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "80",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "81",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "82",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "83",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "106",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "106",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimes",": " ]
                  }, {
                     "r" : "105",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "87",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "94",
                           "s" : [ {
                              "r" : "94",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "104",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","201",", " ]
                        }, {
                           "r" : "103",
                           "s" : [ {
                              "r" : "103",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "105",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "95",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "87",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "88",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "89",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "90",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "91",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "92",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "93",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "94",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "96",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "97",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "98",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "99",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "100",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "101",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "102",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "201",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "103",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "126",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimesTZ",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "126",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimesTZ",": " ]
                  }, {
                     "r" : "125",
                     "s" : [ {
                        "r" : "115",
                        "s" : [ {
                           "r" : "107",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","23",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "114",
                           "s" : [ {
                              "r" : "114",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "124",
                        "s" : [ {
                           "r" : "116",
                           "value" : [ "DateTime","(","2000",", ","3",", ","16",", ","2",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "123",
                           "s" : [ {
                              "r" : "123",
                              "value" : [ "+","4.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "125",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "115",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "107",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "108",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "109",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "110",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "23",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "111",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "112",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "113",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "114",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "116",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "117",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "118",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "16",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "119",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "120",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "121",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "122",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "123",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "4.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "146",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesTZ",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "146",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesTZ",": " ]
                  }, {
                     "r" : "145",
                     "s" : [ {
                        "r" : "135",
                        "s" : [ {
                           "r" : "127",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "134",
                           "s" : [ {
                              "r" : "134",
                              "value" : [ "+","1.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "144",
                        "s" : [ {
                           "r" : "136",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",", ","13",", ","30",", ","25",", ","200",", " ]
                        }, {
                           "r" : "143",
                           "s" : [ {
                              "r" : "143",
                              "value" : [ "+","2.0" ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "145",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "135",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "127",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "128",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "129",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "130",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "131",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "132",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "133",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "134",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "1.0",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "136",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "137",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "138",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "139",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "140",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "30",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "141",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "25",
                        "type" : "Literal"
                     },
                     "millisecond" : {
                        "localId" : "142",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "200",
                        "type" : "Literal"
                     },
                     "timezoneOffset" : {
                        "localId" : "143",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Decimal",
                        "value" : "2.0",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "156",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqDateTimesOnlyDate",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "156",
                  "s" : [ {
                     "value" : [ "define ","EqDateTimesOnlyDate",": " ]
                  }, {
                     "r" : "155",
                     "s" : [ {
                        "r" : "150",
                        "s" : [ {
                           "r" : "147",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "154",
                        "s" : [ {
                           "r" : "151",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "155",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "147",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "148",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "149",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "154",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "151",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "152",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "153",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "166",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesOnlyDate",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "166",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesOnlyDate",": " ]
                  }, {
                     "r" : "165",
                     "s" : [ {
                        "r" : "160",
                        "s" : [ {
                           "r" : "157",
                           "value" : [ "DateTime","(","2000",", ","3",", ","14",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "164",
                        "s" : [ {
                           "r" : "161",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "165",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "160",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "157",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "158",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "159",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "14",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "164",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "161",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "162",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "163",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "179",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "PossiblyEqDateTimesOnlyDateOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "179",
                  "s" : [ {
                     "value" : [ "define ","PossiblyEqDateTimesOnlyDateOnOne",": " ]
                  }, {
                     "r" : "178",
                     "s" : [ {
                        "r" : "170",
                        "s" : [ {
                           "r" : "167",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "177",
                        "s" : [ {
                           "r" : "171",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","13",", ","43",", ","32",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "178",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "170",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "167",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "168",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "169",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "177",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "171",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "172",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "173",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "174",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "175",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "43",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "176",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "32",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "192",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqDateTimesOnlyDateOnOne",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "192",
                  "s" : [ {
                     "value" : [ "define ","UneqDateTimesOnlyDateOnOne",": " ]
                  }, {
                     "r" : "191",
                     "s" : [ {
                        "r" : "186",
                        "s" : [ {
                           "r" : "180",
                           "value" : [ "DateTime","(","2000",", ","4",", ","13",", ","12",", ","43",", ","32",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "190",
                        "s" : [ {
                           "r" : "187",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "191",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "186",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "180",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "181",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "182",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "183",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "184",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "43",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "185",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "32",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "190",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "187",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "188",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "189",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "200",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "PossiblyEqualDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "200",
                  "s" : [ {
                     "value" : [ "define ","PossiblyEqualDateTimes",": " ]
                  }, {
                     "r" : "199",
                     "s" : [ {
                        "r" : "196",
                        "s" : [ {
                           "r" : "193",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "198",
                        "s" : [ {
                           "r" : "197",
                           "value" : [ "DateTime","(","2000",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "199",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "196",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "193",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "194",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "195",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "198",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "197",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "209",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpossiblyEqualDateTimes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "209",
                  "s" : [ {
                     "value" : [ "define ","ImpossiblyEqualDateTimes",": " ]
                  }, {
                     "r" : "208",
                     "s" : [ {
                        "r" : "204",
                        "s" : [ {
                           "r" : "201",
                           "value" : [ "DateTime","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "207",
                        "s" : [ {
                           "r" : "205",
                           "value" : [ "DateTime","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "208",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "204",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "201",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "202",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "203",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "15",
                        "type" : "Literal"
                     }
                  }, {
                     "localId" : "207",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "205",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "206",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "219",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "219",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeNull",": " ]
                  }, {
                     "r" : "218",
                     "s" : [ {
                        "r" : "213",
                        "s" : [ {
                           "r" : "210",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "217",
                        "s" : [ {
                           "r" : "214",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "218",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "213",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "210",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "211",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "212",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  }, {
                     "localId" : "217",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "214",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "215",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "216",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "229",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeNotEqual",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "229",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeNotEqual",": " ]
                  }, {
                     "r" : "228",
                     "s" : [ {
                        "r" : "223",
                        "s" : [ {
                           "r" : "220",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "227",
                        "s" : [ {
                           "r" : "224",
                           "value" : [ "DateTime","(","2000",", ","3",", ","12",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "228",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "223",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "220",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "221",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "222",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  }, {
                     "localId" : "227",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "224",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "225",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "226",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "242",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateAndDateTimeUncertainTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "242",
                  "s" : [ {
                     "value" : [ "define ","DateAndDateTimeUncertainTrue",": " ]
                  }, {
                     "r" : "241",
                     "s" : [ {
                        "r" : "233",
                        "s" : [ {
                           "r" : "230",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "240",
                        "s" : [ {
                           "r" : "234",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","2",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "241",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "233",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "230",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "231",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "232",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  }, {
                     "localId" : "240",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "234",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "235",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "236",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "237",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "238",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "239",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "23",
                        "type" : "Literal"
                     }
                  } ]
               }
            }
         }, {
            "localId" : "252",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "252",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateNull",": " ]
                  }, {
                     "r" : "251",
                     "s" : [ {
                        "r" : "246",
                        "s" : [ {
                           "r" : "243",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "250",
                        "s" : [ {
                           "r" : "247",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "251",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "246",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "243",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "244",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "245",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "250",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "247",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "248",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "249",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  } ]
               }
            }
         }, {
            "localId" : "262",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateNotEqual",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "262",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateNotEqual",": " ]
                  }, {
                     "r" : "261",
                     "s" : [ {
                        "r" : "256",
                        "s" : [ {
                           "r" : "253",
                           "value" : [ "DateTime","(","2000",", ","3",", ","12",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "260",
                        "s" : [ {
                           "r" : "257",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "261",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "256",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "253",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "254",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "255",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "12",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "260",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "257",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "258",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "259",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  } ]
               }
            }
         }, {
            "localId" : "275",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DateTimeAndDateUncertainTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "275",
                  "s" : [ {
                     "value" : [ "define ","DateTimeAndDateUncertainTrue",": " ]
                  }, {
                     "r" : "274",
                     "s" : [ {
                        "r" : "269",
                        "s" : [ {
                           "r" : "263",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","2",", ","4",", ","23",")" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "273",
                        "s" : [ {
                           "r" : "270",
                           "value" : [ "Date","(","2000",", ","3",", ","13",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "274",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "269",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "263",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "264",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "265",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "266",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "267",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "268",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "23",
                        "type" : "Literal"
                     }
                  }, {
                     "type" : "ToDateTime",
                     "operand" : {
                        "localId" : "273",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "type" : "Date",
                        "year" : {
                           "localId" : "270",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "2000",
                           "type" : "Literal"
                        },
                        "month" : {
                           "localId" : "271",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "3",
                           "type" : "Literal"
                        },
                        "day" : {
                           "localId" : "272",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                           "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                           "value" : "13",
                           "type" : "Literal"
                        }
                     }
                  } ]
               }
            }
         }, {
            "localId" : "279",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "279",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "278",
                     "s" : [ {
                        "r" : "276",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "277",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "278",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "276",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "277",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "283",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "283",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "282",
                     "s" : [ {
                        "r" : "280",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "281",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "282",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "280",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "281",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "287",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "287",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "286",
                     "s" : [ {
                        "r" : "284",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "285",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "286",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "284",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "285",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 6,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "291",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "291",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "290",
                     "s" : [ {
                        "r" : "288",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "289",
                        "s" : [ {
                           "value" : [ "5 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "290",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "288",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "289",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "cm",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "295",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "295",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "294",
                     "s" : [ {
                        "r" : "292",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "293",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "294",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "292",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "293",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 500,
                     "unit" : "cm",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "299",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "299",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "298",
                     "s" : [ {
                        "r" : "296",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "297",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "298",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "296",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  }, {
                     "localId" : "297",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "km",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "303",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "303",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "302",
                     "s" : [ {
                        "r" : "300",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "301",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "302",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "300",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "Cel",
                     "type" : "Quantity"
                  }, {
                     "localId" : "301",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "307",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "307",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "306",
                     "s" : [ {
                        "r" : "304",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "305",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "306",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "304",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "Cel",
                     "type" : "Quantity"
                  }, {
                     "localId" : "305",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         }, {
            "localId" : "311",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "311",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "310",
                     "s" : [ {
                        "r" : "308",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","!="," " ]
                     }, {
                        "r" : "309",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "310",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "Equal",
                  "operand" : [ {
                     "localId" : "308",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 5,
                     "unit" : "Cel",
                     "type" : "Quantity"
                  }, {
                     "localId" : "309",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 40,
                     "unit" : "m",
                     "type" : "Quantity"
                  } ]
               }
            }
         } ]
      }
   }
}

### Equivalent
library TestSnippet version '1'
using QUICK
codesystem "LOINC": 'http://loinc.org'
code "Tobacco smoking status code": '72166-2' from "LOINC" display 'Tobacco smoking status code'
code "Tobacco smoking status code clone": '72166-2' from "LOINC" display 'Tobacco smoking status code clone'
code "Total Score [AUDIT-C] code": '75626-2' from "LOINC" display 'Total Score [Audit-C] code'
concept "Tobacco smoking status": { "Tobacco smoking status code" } display 'Tobacco smoking status'
concept "Tobacco smoking status clone": { "Tobacco smoking status code clone" } display 'Tobacco smoking status'
concept "Total Score [AUDIT-C]": { "Total Score [AUDIT-C] code" } display 'Total Score [Audit-C]'
context Patient

define ANull_BDefined: null ~ 4
define ADefined_BNull: 5 ~ null
define ANull_BNull: (null as String) ~ (null as String)
define ADefined_BDefined: 3 ~ 3
define CaseInsensitiveStrings: 'FOO' ~ 'foo'
define EqRatios: 10 'mg' : 2 'dL' ~ 15 'mg' : 3 'dL'
define UneqRatios: 10 'mg' : 2 'dL' ~ 15 'mg' : 4 'dL'
define UneqRatioTypes: 10 'mg' : 2 'dL' ~ DateTime(2000, 3, 13, 2, 4, 23)

// define EmptyTuples: { : } ~ { : } // TODO: We don't seem to support this format
define SameTuples: Tuple{a: 'a', b: 'b'} ~ Tuple{a: 'a', b: 'b'}
define SameTuplesNull: Tuple{a: null} ~ Tuple{a : null}
define DifferentTuples: Tuple{a: 'a', b: 'b'} ~ Tuple{a: 'x', b: 'b'}
define SameNestedTuples: Tuple{a: 'a', b: Tuple{c: 'c'}} ~ Tuple{a: 'a', b: Tuple{c: 'c'}}
define SameNestedTuplesNull: Tuple{a: 'a', b: Tuple{c: null}} ~ Tuple{a: 'a', b: Tuple{c: null}}

define EmptyLists: { } ~ { }
define DifferentTypesLists: {'1', '2', '3'} ~ {1, 2, 3}
define DifferentLengthLists: {'a'} ~ {'a', 'a'}
define DifferentOrderLists: {'a', 'b'} ~ {'b', 'a'}
define SameLists: {'a', 'b', 'c'} ~ {'a', 'b', 'c'}
define SameListsNull: {null, null, null} ~ {null, null, null}
define SameNestedLists: {{'a','d'}, {'b', 'c'}} ~ {{'a','d'}, {'b', 'c'}}
define SameNestedListsNull: {null, {null, null}} ~ {null, {null, null}}

define EmptyInterval: Interval(null, null) ~ Interval(null, null)
define IntervalDifferentPointTypes:  Interval[1, 5] ~ Interval['1', '5']
define IntervalDifferentStarts: Interval[1,3] ~ Interval[2,3]
define IntervalDifferentEndings: Interval[1,3] ~ Interval[1,4]
define SameIntervals: Interval[1,3] ~ Interval[1,3]

define TupleAndList: {a: '1'} ~ {'1'}
define ListAndTuple: {'1'} ~ {a: '1'}
define TupleAndNullList: {a: '1'} ~ {null}
define NullListAndTuple: {null} ~ {a: '1'}

define SameCodeAndCode: "Tobacco smoking status code" ~ "Tobacco smoking status code clone"
define SameCodeAndConcept: "Tobacco smoking status code clone" ~ "Tobacco smoking status"
define SameConceptAndCode: "Tobacco smoking status" ~ "Tobacco smoking status code clone"
define SameConceptAndConcept: "Tobacco smoking status" ~ "Tobacco smoking status clone"
define DiffCodeAndCode: "Tobacco smoking status code" ~ "Total Score [AUDIT-C] code"
define DiffCodeAndConcept: "Tobacco smoking status code clone" ~ "Total Score [AUDIT-C]"
define DiffConceptAndCode: "Tobacco smoking status" ~ "Total Score [AUDIT-C] code"
define DiffConceptAndConcept: "Tobacco smoking status" ~ "Total Score [AUDIT-C]"
###

module.exports['Equivalent'] = {
   "library" : {
      "annotation" : [ {
         "startLine" : 45,
         "startChar" : 37,
         "endLine" : 45,
         "endChar" : 42,
         "message" : "List-valued expression was demoted to a singleton.",
         "errorType" : "semantic",
         "errorSeverity" : "warning",
         "type" : "CqlToElmError"
      }, {
         "startLine" : 46,
         "startChar" : 26,
         "endLine" : 46,
         "endChar" : 31,
         "message" : "List-valued expression was demoted to a singleton.",
         "errorType" : "semantic",
         "errorSeverity" : "warning",
         "type" : "CqlToElmError"
      } ],
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
      "codeSystems" : {
         "def" : [ {
            "localId" : "2",
            "name" : "LOINC",
            "id" : "http://loinc.org",
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
      "codes" : {
         "def" : [ {
            "localId" : "4",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "Tobacco smoking status code",
            "id" : "72166-2",
            "display" : "Tobacco smoking status code",
            "accessLevel" : "Public",
            "codeSystem" : {
               "localId" : "3",
               "name" : "LOINC",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Code",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         }, {
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "Tobacco smoking status code clone",
            "id" : "72166-2",
            "display" : "Tobacco smoking status code clone",
            "accessLevel" : "Public",
            "codeSystem" : {
               "localId" : "5",
               "name" : "LOINC",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Code",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
            "name" : "Total Score [AUDIT-C] code",
            "id" : "75626-2",
            "display" : "Total Score [Audit-C] code",
            "accessLevel" : "Public",
            "codeSystem" : {
               "localId" : "7",
               "name" : "LOINC",
               "resultTypeSpecifier" : {
                  "type" : "ListTypeSpecifier",
                  "elementType" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Code",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         } ]
      },
      "concepts" : {
         "def" : [ {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "Tobacco smoking status",
            "display" : "Tobacco smoking status",
            "accessLevel" : "Public",
            "code" : [ {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "Tobacco smoking status code"
            } ]
         }, {
            "localId" : "12",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "Tobacco smoking status clone",
            "display" : "Tobacco smoking status",
            "accessLevel" : "Public",
            "code" : [ {
               "localId" : "11",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "Tobacco smoking status code clone"
            } ]
         }, {
            "localId" : "14",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
            "name" : "Total Score [AUDIT-C]",
            "display" : "Total Score [Audit-C]",
            "accessLevel" : "Public",
            "code" : [ {
               "localId" : "13",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
               "name" : "Total Score [AUDIT-C] code"
            } ]
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
            "localId" : "18",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ANull_BDefined",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "18",
                  "s" : [ {
                     "value" : [ "define ","ANull_BDefined",": " ]
                  }, {
                     "r" : "17",
                     "s" : [ {
                        "r" : "15",
                        "value" : [ "null"," ","~"," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "17",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "As",
                  "operand" : {
                     "localId" : "15",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "22",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ADefined_BNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "22",
                  "s" : [ {
                     "value" : [ "define ","ADefined_BNull",": " ]
                  }, {
                     "r" : "21",
                     "s" : [ {
                        "r" : "19",
                        "value" : [ "5"," ","~"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "21",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "type" : "As",
                  "operand" : {
                     "localId" : "20",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "30",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ANull_BNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "30",
                  "s" : [ {
                     "value" : [ "define ","ANull_BNull",": " ]
                  }, {
                     "r" : "29",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "25",
                           "s" : [ {
                              "r" : "23",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "24",
                              "s" : [ {
                                 "value" : [ "String" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "28",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "28",
                           "s" : [ {
                              "r" : "26",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "27",
                              "s" : [ {
                                 "value" : [ "String" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "29",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "localId" : "28",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "name" : "{urn:hl7-org:elm-types:r1}String",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ADefined_BDefined",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","ADefined_BDefined",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "31",
                        "value" : [ "3"," ","~"," ","3" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               }, {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "38",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "CaseInsensitiveStrings",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "38",
                  "s" : [ {
                     "value" : [ "define ","CaseInsensitiveStrings",": " ]
                  }, {
                     "r" : "37",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "'FOO'" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "36",
                        "s" : [ {
                           "value" : [ "'foo'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "37",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "FOO",
                  "type" : "Literal"
               }, {
                  "localId" : "36",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                  "valueType" : "{urn:hl7-org:elm-types:r1}String",
                  "value" : "foo",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "46",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqRatios",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "46",
                  "s" : [ {
                     "value" : [ "define ","EqRatios",": " ]
                  }, {
                     "r" : "45",
                     "s" : [ {
                        "r" : "41",
                        "s" : [ {
                           "r" : "39",
                           "s" : [ {
                              "value" : [ "10 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "40",
                           "s" : [ {
                              "value" : [ "2 ","'dL'" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "44",
                        "s" : [ {
                           "r" : "42",
                           "s" : [ {
                              "value" : [ "15 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "43",
                           "s" : [ {
                              "value" : [ "3 ","'dL'" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "45",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "41",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "39",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "40",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "dL"
                  }
               }, {
                  "localId" : "44",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 15,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 3,
                     "unit" : "dL"
                  }
               } ]
            }
         }, {
            "localId" : "54",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqRatios",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "54",
                  "s" : [ {
                     "value" : [ "define ","UneqRatios",": " ]
                  }, {
                     "r" : "53",
                     "s" : [ {
                        "r" : "49",
                        "s" : [ {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "10 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "2 ","'dL'" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "52",
                        "s" : [ {
                           "r" : "50",
                           "s" : [ {
                              "value" : [ "15 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "51",
                           "s" : [ {
                              "value" : [ "4 ","'dL'" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "53",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 10,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "dL"
                  }
               }, {
                  "localId" : "52",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                  "type" : "Ratio",
                  "numerator" : {
                     "localId" : "50",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 15,
                     "unit" : "mg"
                  },
                  "denominator" : {
                     "localId" : "51",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 4,
                     "unit" : "dL"
                  }
               } ]
            }
         }, {
            "localId" : "66",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "UneqRatioTypes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "66",
                  "s" : [ {
                     "value" : [ "define ","UneqRatioTypes",": " ]
                  }, {
                     "r" : "65",
                     "s" : [ {
                        "r" : "57",
                        "s" : [ {
                           "r" : "55",
                           "s" : [ {
                              "value" : [ "10 ","'mg'" ]
                           } ]
                        }, {
                           "value" : [ " : " ]
                        }, {
                           "r" : "56",
                           "s" : [ {
                              "value" : [ "2 ","'dL'" ]
                           } ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "64",
                        "s" : [ {
                           "r" : "58",
                           "value" : [ "DateTime","(","2000",", ","3",", ","13",", ","2",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "65",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "ToList",
                  "operand" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Ratio",
                     "type" : "Ratio",
                     "numerator" : {
                        "localId" : "55",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "value" : 10,
                        "unit" : "mg"
                     },
                     "denominator" : {
                        "localId" : "56",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                        "value" : 2,
                        "unit" : "dL"
                     }
                  }
               }, {
                  "type" : "ToList",
                  "operand" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}DateTime",
                     "type" : "DateTime",
                     "year" : {
                        "localId" : "58",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2000",
                        "type" : "Literal"
                     },
                     "month" : {
                        "localId" : "59",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "3",
                        "type" : "Literal"
                     },
                     "day" : {
                        "localId" : "60",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "13",
                        "type" : "Literal"
                     },
                     "hour" : {
                        "localId" : "61",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "2",
                        "type" : "Literal"
                     },
                     "minute" : {
                        "localId" : "62",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "4",
                        "type" : "Literal"
                     },
                     "second" : {
                        "localId" : "63",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                        "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                        "value" : "23",
                        "type" : "Literal"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "74",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "74",
                  "s" : [ {
                     "value" : [ "define ","SameTuples",": " ]
                  }, {
                     "r" : "73",
                     "s" : [ {
                        "r" : "69",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "67",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "68",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "72",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "70",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "71",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "73",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "69",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "67",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "68",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }
                  } ]
               }, {
                  "localId" : "72",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "70",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "71",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "80",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameTuplesNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "80",
                  "s" : [ {
                     "value" : [ "define ","SameTuplesNull",": " ]
                  }, {
                     "r" : "79",
                     "s" : [ {
                        "r" : "76",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "75",
                              "value" : [ "a",": ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "78",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "r" : "77",
                              "value" : [ "a"," : ","null" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "79",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "76",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "75",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               }, {
                  "localId" : "78",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "77",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "88",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DifferentTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "88",
                  "s" : [ {
                     "value" : [ "define ","DifferentTuples",": " ]
                  }, {
                     "r" : "87",
                     "s" : [ {
                        "r" : "83",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "81",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "82",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "86",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "84",
                              "s" : [ {
                                 "value" : [ "'x'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "85",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "87",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "83",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "81",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "82",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }
                  } ]
               }, {
                  "localId" : "86",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "84",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "x",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "85",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "98",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameNestedTuples",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "98",
                  "s" : [ {
                     "value" : [ "define ","SameNestedTuples",": " ]
                  }, {
                     "r" : "97",
                     "s" : [ {
                        "r" : "92",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "89",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "91",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "value" : [ "c",": " ]
                                 }, {
                                    "r" : "90",
                                    "s" : [ {
                                       "value" : [ "'c'" ]
                                    } ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "96",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "93",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "95",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "value" : [ "c",": " ]
                                 }, {
                                    "r" : "94",
                                    "s" : [ {
                                       "value" : [ "'c'" ]
                                    } ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "97",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "92",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "89",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "91",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "90",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                              "valueType" : "{urn:hl7-org:elm-types:r1}String",
                              "value" : "c",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  } ]
               }, {
                  "localId" : "96",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "93",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "95",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "94",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                              "valueType" : "{urn:hl7-org:elm-types:r1}String",
                              "value" : "c",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "108",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameNestedTuplesNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "108",
                  "s" : [ {
                     "value" : [ "define ","SameNestedTuplesNull",": " ]
                  }, {
                     "r" : "107",
                     "s" : [ {
                        "r" : "102",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "99",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "101",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "100",
                                    "value" : [ "c",": ","null" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "106",
                        "s" : [ {
                           "value" : [ "Tuple{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "103",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "s" : [ {
                              "value" : [ "b",": " ]
                           }, {
                              "r" : "105",
                              "s" : [ {
                                 "value" : [ "Tuple{" ]
                              }, {
                                 "s" : [ {
                                    "r" : "104",
                                    "value" : [ "c",": ","null" ]
                                 } ]
                              }, {
                                 "value" : [ "}" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "107",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "102",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Any",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "99",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "101",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Any",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "100",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        } ]
                     }
                  } ]
               }, {
                  "localId" : "106",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }, {
                        "name" : "b",
                        "type" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Any",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "103",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }
                  }, {
                     "name" : "b",
                     "value" : {
                        "localId" : "105",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "c",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}Any",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "c",
                           "value" : {
                              "localId" : "104",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "Null"
                           }
                        } ]
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "112",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EmptyLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "112",
                  "s" : [ {
                     "value" : [ "define ","EmptyLists",": " ]
                  }, {
                     "r" : "111",
                     "s" : [ {
                        "r" : "109",
                        "value" : [ "{ }"," ","~"," ","{ }" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "111",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "109",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               }, {
                  "localId" : "110",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "122",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DifferentTypesLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "122",
                  "s" : [ {
                     "value" : [ "define ","DifferentTypesLists",": " ]
                  }, {
                     "r" : "121",
                     "s" : [ {
                        "r" : "116",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "113",
                           "s" : [ {
                              "value" : [ "'1'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "114",
                           "s" : [ {
                              "value" : [ "'2'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "115",
                           "s" : [ {
                              "value" : [ "'3'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "120",
                        "s" : [ {
                           "r" : "117",
                           "value" : [ "{","1",", ","2",", ","3","}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "121",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "116",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "115",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "3",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "120",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "117",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  }, {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }, {
                     "localId" : "119",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "129",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DifferentLengthLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "129",
                  "s" : [ {
                     "value" : [ "define ","DifferentLengthLists",": " ]
                  }, {
                     "r" : "128",
                     "s" : [ {
                        "r" : "124",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "123",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "127",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "125",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "126",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "128",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "124",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "127",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "125",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  }, {
                     "localId" : "126",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "137",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DifferentOrderLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "137",
                  "s" : [ {
                     "value" : [ "define ","DifferentOrderLists",": " ]
                  }, {
                     "r" : "136",
                     "s" : [ {
                        "r" : "132",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "130",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "131",
                           "s" : [ {
                              "value" : [ "'b'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "135",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "133",
                           "s" : [ {
                              "value" : [ "'b'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "134",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "136",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "132",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "130",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  }, {
                     "localId" : "131",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "b",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "135",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "b",
                     "type" : "Literal"
                  }, {
                     "localId" : "134",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "147",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "147",
                  "s" : [ {
                     "value" : [ "define ","SameLists",": " ]
                  }, {
                     "r" : "146",
                     "s" : [ {
                        "r" : "141",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "138",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "139",
                           "s" : [ {
                              "value" : [ "'b'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "140",
                           "s" : [ {
                              "value" : [ "'c'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "145",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "142",
                           "s" : [ {
                              "value" : [ "'a'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "143",
                           "s" : [ {
                              "value" : [ "'b'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "144",
                           "s" : [ {
                              "value" : [ "'c'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "146",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "141",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "138",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  }, {
                     "localId" : "139",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "b",
                     "type" : "Literal"
                  }, {
                     "localId" : "140",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "c",
                     "type" : "Literal"
                  } ]
               }, {
                  "localId" : "145",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "a",
                     "type" : "Literal"
                  }, {
                     "localId" : "143",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "b",
                     "type" : "Literal"
                  }, {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "c",
                     "type" : "Literal"
                  } ]
               } ]
            }
         }, {
            "localId" : "157",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameListsNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "157",
                  "s" : [ {
                     "value" : [ "define ","SameListsNull",": " ]
                  }, {
                     "r" : "156",
                     "s" : [ {
                        "r" : "151",
                        "s" : [ {
                           "r" : "148",
                           "value" : [ "{","null",", ","null",", ","null","}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "155",
                        "s" : [ {
                           "r" : "152",
                           "value" : [ "{","null",", ","null",", ","null","}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "156",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "151",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "148",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }, {
                     "localId" : "149",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }, {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  } ]
               }, {
                  "localId" : "155",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "element" : [ {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }, {
                     "localId" : "153",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }, {
                     "localId" : "154",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  } ]
               } ]
            }
         }, {
            "localId" : "173",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameNestedLists",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "173",
                  "s" : [ {
                     "value" : [ "define ","SameNestedLists",": " ]
                  }, {
                     "r" : "172",
                     "s" : [ {
                        "r" : "164",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "160",
                           "s" : [ {
                              "value" : [ "{" ]
                           }, {
                              "r" : "158",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           }, {
                              "value" : [ "," ]
                           }, {
                              "r" : "159",
                              "s" : [ {
                                 "value" : [ "'d'" ]
                              } ]
                           }, {
                              "value" : [ "}" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "163",
                           "s" : [ {
                              "value" : [ "{" ]
                           }, {
                              "r" : "161",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           }, {
                              "value" : [ ", " ]
                           }, {
                              "r" : "162",
                              "s" : [ {
                                 "value" : [ "'c'" ]
                              } ]
                           }, {
                              "value" : [ "}" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "171",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "167",
                           "s" : [ {
                              "value" : [ "{" ]
                           }, {
                              "r" : "165",
                              "s" : [ {
                                 "value" : [ "'a'" ]
                              } ]
                           }, {
                              "value" : [ "," ]
                           }, {
                              "r" : "166",
                              "s" : [ {
                                 "value" : [ "'d'" ]
                              } ]
                           }, {
                              "value" : [ "}" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "170",
                           "s" : [ {
                              "value" : [ "{" ]
                           }, {
                              "r" : "168",
                              "s" : [ {
                                 "value" : [ "'b'" ]
                              } ]
                           }, {
                              "value" : [ ", " ]
                           }, {
                              "r" : "169",
                              "s" : [ {
                                 "value" : [ "'c'" ]
                              } ]
                           }, {
                              "value" : [ "}" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "172",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "164",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  },
                  "element" : [ {
                     "localId" : "160",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "158",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }, {
                        "localId" : "159",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "d",
                        "type" : "Literal"
                     } ]
                  }, {
                     "localId" : "163",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "161",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }, {
                        "localId" : "162",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "c",
                        "type" : "Literal"
                     } ]
                  } ]
               }, {
                  "localId" : "171",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  },
                  "element" : [ {
                     "localId" : "167",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "165",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "a",
                        "type" : "Literal"
                     }, {
                        "localId" : "166",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "d",
                        "type" : "Literal"
                     } ]
                  }, {
                     "localId" : "170",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "168",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "b",
                        "type" : "Literal"
                     }, {
                        "localId" : "169",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "c",
                        "type" : "Literal"
                     } ]
                  } ]
               } ]
            }
         }, {
            "localId" : "185",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameNestedListsNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "185",
                  "s" : [ {
                     "value" : [ "define ","SameNestedListsNull",": " ]
                  }, {
                     "r" : "184",
                     "s" : [ {
                        "r" : "178",
                        "s" : [ {
                           "r" : "174",
                           "value" : [ "{","null",", " ]
                        }, {
                           "r" : "177",
                           "s" : [ {
                              "r" : "175",
                              "value" : [ "{","null",", ","null","}" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "183",
                        "s" : [ {
                           "r" : "179",
                           "value" : [ "{","null",", " ]
                        }, {
                           "r" : "182",
                           "s" : [ {
                              "r" : "180",
                              "value" : [ "{","null",", ","null","}" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "184",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "178",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  },
                  "element" : [ {
                     "type" : "As",
                     "operand" : {
                        "localId" : "174",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  }, {
                     "localId" : "177",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "175",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }, {
                        "localId" : "176",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     } ]
                  } ]
               }, {
                  "localId" : "183",
                  "type" : "List",
                  "resultTypeSpecifier" : {
                     "type" : "ListTypeSpecifier",
                     "elementType" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  },
                  "element" : [ {
                     "type" : "As",
                     "operand" : {
                        "localId" : "179",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     },
                     "asTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     }
                  }, {
                     "localId" : "182",
                     "type" : "List",
                     "resultTypeSpecifier" : {
                        "type" : "ListTypeSpecifier",
                        "elementType" : {
                           "name" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "NamedTypeSpecifier"
                        }
                     },
                     "element" : [ {
                        "localId" : "180",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     }, {
                        "localId" : "181",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "Null"
                     } ]
                  } ]
               } ]
            }
         }, {
            "localId" : "193",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EmptyInterval",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "193",
                  "s" : [ {
                     "value" : [ "define ","EmptyInterval",": " ]
                  }, {
                     "r" : "192",
                     "s" : [ {
                        "r" : "188",
                        "s" : [ {
                           "r" : "186",
                           "value" : [ "Interval(","null",", ","null",")" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "191",
                        "s" : [ {
                           "r" : "189",
                           "value" : [ "Interval(","null",", ","null",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "192",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "188",
                  "lowClosed" : false,
                  "highClosed" : false,
                  "type" : "Interval",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "low" : {
                     "localId" : "186",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "high" : {
                     "localId" : "187",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "191",
                  "lowClosed" : false,
                  "highClosed" : false,
                  "type" : "Interval",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Any",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "low" : {
                     "localId" : "189",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "high" : {
                     "localId" : "190",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "201",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "IntervalDifferentPointTypes",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "201",
                  "s" : [ {
                     "value" : [ "define ","IntervalDifferentPointTypes",":  " ]
                  }, {
                     "r" : "200",
                     "s" : [ {
                        "r" : "196",
                        "s" : [ {
                           "r" : "194",
                           "value" : [ "Interval[","1",", ","5","]" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "199",
                        "s" : [ {
                           "value" : [ "Interval[" ]
                        }, {
                           "r" : "197",
                           "s" : [ {
                              "value" : [ "'1'" ]
                           } ]
                        }, {
                           "value" : [ ", " ]
                        }, {
                           "r" : "198",
                           "s" : [ {
                              "value" : [ "'5'" ]
                           } ]
                        }, {
                           "value" : [ "]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "200",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "196",
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
                     "localId" : "194",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "195",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "5",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "199",
                  "lowClosed" : true,
                  "highClosed" : true,
                  "type" : "Interval",
                  "resultTypeSpecifier" : {
                     "type" : "IntervalTypeSpecifier",
                     "pointType" : {
                        "name" : "{urn:hl7-org:elm-types:r1}String",
                        "type" : "NamedTypeSpecifier"
                     }
                  },
                  "low" : {
                     "localId" : "197",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "198",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                     "valueType" : "{urn:hl7-org:elm-types:r1}String",
                     "value" : "5",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "209",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "IntervalDifferentStarts",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "209",
                  "s" : [ {
                     "value" : [ "define ","IntervalDifferentStarts",": " ]
                  }, {
                     "r" : "208",
                     "s" : [ {
                        "r" : "204",
                        "s" : [ {
                           "r" : "202",
                           "value" : [ "Interval[","1",",","3","]" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "207",
                        "s" : [ {
                           "r" : "205",
                           "value" : [ "Interval[","2",",","3","]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "208",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "204",
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
                     "localId" : "202",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "203",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "207",
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
                     "localId" : "205",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "206",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "217",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "IntervalDifferentEndings",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "217",
                  "s" : [ {
                     "value" : [ "define ","IntervalDifferentEndings",": " ]
                  }, {
                     "r" : "216",
                     "s" : [ {
                        "r" : "212",
                        "s" : [ {
                           "r" : "210",
                           "value" : [ "Interval[","1",",","3","]" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "215",
                        "s" : [ {
                           "r" : "213",
                           "value" : [ "Interval[","1",",","4","]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "216",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "212",
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
                     "localId" : "210",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "211",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "215",
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
                     "localId" : "213",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "214",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "225",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameIntervals",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "225",
                  "s" : [ {
                     "value" : [ "define ","SameIntervals",": " ]
                  }, {
                     "r" : "224",
                     "s" : [ {
                        "r" : "220",
                        "s" : [ {
                           "r" : "218",
                           "value" : [ "Interval[","1",",","3","]" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "223",
                        "s" : [ {
                           "r" : "221",
                           "value" : [ "Interval[","1",",","3","]" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "224",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "220",
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
                     "localId" : "218",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "219",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "223",
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
                     "localId" : "221",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1",
                     "type" : "Literal"
                  },
                  "high" : {
                     "localId" : "222",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "231",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TupleAndList",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "231",
                  "s" : [ {
                     "value" : [ "define ","TupleAndList",": " ]
                  }, {
                     "r" : "230",
                     "s" : [ {
                        "r" : "227",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "226",
                              "s" : [ {
                                 "value" : [ "'1'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "229",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "228",
                           "s" : [ {
                              "value" : [ "'1'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "230",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "ToList",
                  "operand" : {
                     "type" : "ToList",
                     "operand" : {
                        "localId" : "227",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "a",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "a",
                           "value" : {
                              "localId" : "226",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                              "valueType" : "{urn:hl7-org:elm-types:r1}String",
                              "value" : "1",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  }
               }, {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "229",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "228",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "1",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToList",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               } ]
            }
         }, {
            "localId" : "237",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ListAndTuple",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "237",
                  "s" : [ {
                     "value" : [ "define ","ListAndTuple",": " ]
                  }, {
                     "r" : "236",
                     "s" : [ {
                        "r" : "233",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "r" : "232",
                           "s" : [ {
                              "value" : [ "'1'" ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "235",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "234",
                              "s" : [ {
                                 "value" : [ "'1'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "236",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "Query",
                  "source" : [ {
                     "alias" : "X",
                     "expression" : {
                        "localId" : "233",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}String",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "232",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                           "valueType" : "{urn:hl7-org:elm-types:r1}String",
                           "value" : "1",
                           "type" : "Literal"
                        } ]
                     }
                  } ],
                  "return" : {
                     "distinct" : false,
                     "expression" : {
                        "type" : "ToList",
                        "operand" : {
                           "name" : "X",
                           "type" : "AliasRef"
                        }
                     }
                  }
               }, {
                  "type" : "ToList",
                  "operand" : {
                     "type" : "ToList",
                     "operand" : {
                        "localId" : "235",
                        "type" : "Tuple",
                        "resultTypeSpecifier" : {
                           "type" : "TupleTypeSpecifier",
                           "element" : [ {
                              "name" : "a",
                              "type" : {
                                 "name" : "{urn:hl7-org:elm-types:r1}String",
                                 "type" : "NamedTypeSpecifier"
                              }
                           } ]
                        },
                        "element" : [ {
                           "name" : "a",
                           "value" : {
                              "localId" : "234",
                              "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                              "valueType" : "{urn:hl7-org:elm-types:r1}String",
                              "value" : "1",
                              "type" : "Literal"
                           }
                        } ]
                     }
                  }
               } ]
            }
         }, {
            "localId" : "243",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TupleAndNullList",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "243",
                  "s" : [ {
                     "value" : [ "define ","TupleAndNullList",": " ]
                  }, {
                     "r" : "242",
                     "s" : [ {
                        "r" : "239",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "238",
                              "s" : [ {
                                 "value" : [ "'1'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "241",
                        "s" : [ {
                           "r" : "240",
                           "value" : [ "{","null","}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "242",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "239",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "238",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  } ]
               }, {
                  "type" : "As",
                  "operand" : {
                     "type" : "SingletonFrom",
                     "operand" : {
                        "localId" : "241",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "240",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        } ]
                     }
                  },
                  "asTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  }
               } ]
            }
         }, {
            "localId" : "249",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullListAndTuple",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "249",
                  "s" : [ {
                     "value" : [ "define ","NullListAndTuple",": " ]
                  }, {
                     "r" : "248",
                     "s" : [ {
                        "r" : "245",
                        "s" : [ {
                           "r" : "244",
                           "value" : [ "{","null","}" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "247",
                        "s" : [ {
                           "value" : [ "{" ]
                        }, {
                           "s" : [ {
                              "value" : [ "a",": " ]
                           }, {
                              "r" : "246",
                              "s" : [ {
                                 "value" : [ "'1'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ "}" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "248",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "As",
                  "operand" : {
                     "type" : "SingletonFrom",
                     "operand" : {
                        "localId" : "245",
                        "type" : "List",
                        "resultTypeSpecifier" : {
                           "type" : "ListTypeSpecifier",
                           "elementType" : {
                              "name" : "{urn:hl7-org:elm-types:r1}Any",
                              "type" : "NamedTypeSpecifier"
                           }
                        },
                        "element" : [ {
                           "localId" : "244",
                           "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                           "type" : "Null"
                        } ]
                     }
                  },
                  "asTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  }
               }, {
                  "localId" : "247",
                  "type" : "Tuple",
                  "resultTypeSpecifier" : {
                     "type" : "TupleTypeSpecifier",
                     "element" : [ {
                        "name" : "a",
                        "type" : {
                           "name" : "{urn:hl7-org:elm-types:r1}String",
                           "type" : "NamedTypeSpecifier"
                        }
                     } ]
                  },
                  "element" : [ {
                     "name" : "a",
                     "value" : {
                        "localId" : "246",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}String",
                        "valueType" : "{urn:hl7-org:elm-types:r1}String",
                        "value" : "1",
                        "type" : "Literal"
                     }
                  } ]
               } ]
            }
         }, {
            "localId" : "253",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameCodeAndCode",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "253",
                  "s" : [ {
                     "value" : [ "define ","SameCodeAndCode",": " ]
                  }, {
                     "r" : "252",
                     "s" : [ {
                        "r" : "250",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "251",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code clone\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "252",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "250",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                  "name" : "Tobacco smoking status code",
                  "type" : "CodeRef"
               }, {
                  "localId" : "251",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                  "name" : "Tobacco smoking status code clone",
                  "type" : "CodeRef"
               } ]
            }
         }, {
            "localId" : "257",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameCodeAndConcept",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "257",
                  "s" : [ {
                     "value" : [ "define ","SameCodeAndConcept",": " ]
                  }, {
                     "r" : "256",
                     "s" : [ {
                        "r" : "254",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code clone\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "255",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "256",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "ToConcept",
                  "operand" : {
                     "localId" : "254",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                     "name" : "Tobacco smoking status code clone",
                     "type" : "CodeRef"
                  }
               }, {
                  "localId" : "255",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status",
                  "type" : "ConceptRef"
               } ]
            }
         }, {
            "localId" : "261",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameConceptAndCode",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "261",
                  "s" : [ {
                     "value" : [ "define ","SameConceptAndCode",": " ]
                  }, {
                     "r" : "260",
                     "s" : [ {
                        "r" : "258",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "259",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code clone\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "260",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "258",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status",
                  "type" : "ConceptRef"
               }, {
                  "type" : "ToConcept",
                  "operand" : {
                     "localId" : "259",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                     "name" : "Tobacco smoking status code clone",
                     "type" : "CodeRef"
                  }
               } ]
            }
         }, {
            "localId" : "265",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameConceptAndConcept",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "265",
                  "s" : [ {
                     "value" : [ "define ","SameConceptAndConcept",": " ]
                  }, {
                     "r" : "264",
                     "s" : [ {
                        "r" : "262",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "263",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status clone\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "264",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "262",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status",
                  "type" : "ConceptRef"
               }, {
                  "localId" : "263",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status clone",
                  "type" : "ConceptRef"
               } ]
            }
         }, {
            "localId" : "269",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DiffCodeAndCode",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "269",
                  "s" : [ {
                     "value" : [ "define ","DiffCodeAndCode",": " ]
                  }, {
                     "r" : "268",
                     "s" : [ {
                        "r" : "266",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "267",
                        "s" : [ {
                           "value" : [ "\"Total Score [AUDIT-C] code\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "268",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "266",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                  "name" : "Tobacco smoking status code",
                  "type" : "CodeRef"
               }, {
                  "localId" : "267",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                  "name" : "Total Score [AUDIT-C] code",
                  "type" : "CodeRef"
               } ]
            }
         }, {
            "localId" : "273",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DiffCodeAndConcept",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "273",
                  "s" : [ {
                     "value" : [ "define ","DiffCodeAndConcept",": " ]
                  }, {
                     "r" : "272",
                     "s" : [ {
                        "r" : "270",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status code clone\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "271",
                        "s" : [ {
                           "value" : [ "\"Total Score [AUDIT-C]\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "272",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "type" : "ToConcept",
                  "operand" : {
                     "localId" : "270",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                     "name" : "Tobacco smoking status code clone",
                     "type" : "CodeRef"
                  }
               }, {
                  "localId" : "271",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Total Score [AUDIT-C]",
                  "type" : "ConceptRef"
               } ]
            }
         }, {
            "localId" : "277",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DiffConceptAndCode",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "277",
                  "s" : [ {
                     "value" : [ "define ","DiffConceptAndCode",": " ]
                  }, {
                     "r" : "276",
                     "s" : [ {
                        "r" : "274",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "275",
                        "s" : [ {
                           "value" : [ "\"Total Score [AUDIT-C] code\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "276",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "274",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status",
                  "type" : "ConceptRef"
               }, {
                  "type" : "ToConcept",
                  "operand" : {
                     "localId" : "275",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Code",
                     "name" : "Total Score [AUDIT-C] code",
                     "type" : "CodeRef"
                  }
               } ]
            }
         }, {
            "localId" : "281",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DiffConceptAndConcept",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "281",
                  "s" : [ {
                     "value" : [ "define ","DiffConceptAndConcept",": " ]
                  }, {
                     "r" : "280",
                     "s" : [ {
                        "r" : "278",
                        "s" : [ {
                           "value" : [ "\"Tobacco smoking status\"" ]
                        } ]
                     }, {
                        "value" : [ " ","~"," " ]
                     }, {
                        "r" : "279",
                        "s" : [ {
                           "value" : [ "\"Total Score [AUDIT-C]\"" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "280",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equivalent",
               "operand" : [ {
                  "localId" : "278",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Tobacco smoking status",
                  "type" : "ConceptRef"
               }, {
                  "localId" : "279",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Concept",
                  "name" : "Total Score [AUDIT-C]",
                  "type" : "ConceptRef"
               } ]
            }
         } ]
      }
   }
}

### Less
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 < 4
define AEqB_Int: 5 < 5
define ALtB_Int: 5 < 6
define AGtB_Quantity: 5 'm' < 4 'm'
define AEqB_Quantity: 5 'm' < 5 'm'
define ALtB_Quantity: 5 'm' < 6 'm'
define AGtB_Quantity_diff: 5 'm' < 5 'cm'
define AEqB_Quantity_diff: 5 'm' < 500 'cm'
define ALtB_Quantity_diff: 5 'm' < 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' < 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' < 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' < 40 'm'
###

module.exports['Less'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ","<"," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ","<"," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ","<"," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "23",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 6,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "5 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "27",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 500,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "34",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "km",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "38",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "38",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "45",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "45",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "44",
                     "s" : [ {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "43",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "44",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "42",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "43",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "49",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "49",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "48",
                     "s" : [ {
                        "r" : "46",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<"," " ]
                     }, {
                        "r" : "47",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "48",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "46",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "47",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 40,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         } ]
      }
   }
}

### LessOrEqual
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 <= 4
define AEqB_Int: 5 <= 5
define ALtB_Int: 5 <= 6
define AGtB_Quantity: 5 'm' <= 4 'm'
define AEqB_Quantity: 5 'm' <= 5 'm'
define ALtB_Quantity: 5 'm' <= 6 'm'
define AGtB_Quantity_diff: 5 'm' <= 4 'm'
define AEqB_Quantity_diff: 5 'm' <= 500 'cm'
define ALtB_Quantity_diff: 5 'm' <= 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' <= 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' <= 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' <= 40 'm'
###

module.exports['LessOrEqual'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ","<="," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ","<="," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ","<="," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "23",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 6,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "27",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 500,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "34",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "km",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "38",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "38",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "45",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "45",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "44",
                     "s" : [ {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "43",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "44",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "42",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "43",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "49",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "49",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "48",
                     "s" : [ {
                        "r" : "46",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ","<="," " ]
                     }, {
                        "r" : "47",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "48",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "46",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "47",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 40,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         } ]
      }
   }
}

### Greater
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 > 4
define AEqB_Int: 5 > 5
define ALtB_Int: 5 > 6
define AGtB_Quantity: 5 'm' > 4 'm'
define AEqB_Quantity: 5 'm' > 5 'm'
define ALtB_Quantity: 5 'm' > 6 'm'
define AGtB_Quantity_diff: 5 'm' > 5 'cm'
define AEqB_Quantity_diff: 5 'm' > 500 'cm'
define ALtB_Quantity_diff: 5 'm' > 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' > 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' > 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' > 40 'm'
###

module.exports['Greater'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ",">"," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ",">"," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ",">"," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "23",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 6,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "5 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "27",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 500,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "34",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "km",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "38",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "38",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "45",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "45",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "44",
                     "s" : [ {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "43",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "44",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "42",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "43",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "49",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "49",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "48",
                     "s" : [ {
                        "r" : "46",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "47",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "48",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "46",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "47",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 40,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         } ]
      }
   }
}

### GreaterOrEqual
library TestSnippet version '1'
using QUICK
context Patient
define AGtB_Int: 5 >= 4
define AEqB_Int: 5 >= 5
define ALtB_Int: 5 >= 6
define AGtB_Quantity: 5 'm' >= 4 'm'
define AEqB_Quantity: 5 'm' >= 5 'm'
define ALtB_Quantity: 5 'm' >= 6 'm'
define AGtB_Quantity_diff: 5 'm' >= 5 'cm'
define AEqB_Quantity_diff: 5 'm' >= 500 'cm'
define ALtB_Quantity_diff: 5 'm' >= 5 'km'
define AGtB_Quantity_incompatible: 5 'Cel' >= 4 'm'
define AEqB_Quantity_incompatible: 5 'Cel' >= 5 'm'
define ALtB_Quantity_incompatible: 5 'Cel' >= 40 'm'
define DivideUcum_incompatible: (100 '[nmi_i]' / 2 'h') > 49 'mg/[lb_av]'
define DivideUcum: (100 'mg' / 2 '[lb_av]') > 49 'mg/[lb_av]'
###

module.exports['GreaterOrEqual'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Int",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "5"," ",">="," ","4" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "4",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Int",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "5"," ",">="," ","5" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Int",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Int",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "5"," ",">="," ","6" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "5",
                  "type" : "Literal"
               }, {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "6 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "23",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 6,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_diff",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "5 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "27",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_diff",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "500 ","'cm'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 500,
                  "unit" : "cm",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_diff",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_diff",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "5 ","'km'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "34",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "km",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AGtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","AGtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "38",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "value" : [ "4 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "38",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 4,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "45",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "AEqB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "45",
                  "s" : [ {
                     "value" : [ "define ","AEqB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "44",
                     "s" : [ {
                        "r" : "42",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "43",
                        "s" : [ {
                           "value" : [ "5 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "44",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "42",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "43",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "49",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ALtB_Quantity_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "49",
                  "s" : [ {
                     "value" : [ "define ","ALtB_Quantity_incompatible",": " ]
                  }, {
                     "r" : "48",
                     "s" : [ {
                        "r" : "46",
                        "s" : [ {
                           "value" : [ "5 ","'Cel'" ]
                        } ]
                     }, {
                        "value" : [ " ",">="," " ]
                     }, {
                        "r" : "47",
                        "s" : [ {
                           "value" : [ "40 ","'m'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "48",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "46",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 5,
                  "unit" : "Cel",
                  "type" : "Quantity"
               }, {
                  "localId" : "47",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 40,
                  "unit" : "m",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "55",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DivideUcum_incompatible",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "55",
                  "s" : [ {
                     "value" : [ "define ","DivideUcum_incompatible",": " ]
                  }, {
                     "r" : "54",
                     "s" : [ {
                        "r" : "52",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "52",
                           "s" : [ {
                              "r" : "50",
                              "s" : [ {
                                 "value" : [ "100 ","'[nmi_i]'" ]
                              } ]
                           }, {
                              "value" : [ " / " ]
                           }, {
                              "r" : "51",
                              "s" : [ {
                                 "value" : [ "2 ","'h'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "53",
                        "s" : [ {
                           "value" : [ "49 ","'mg/[lb_av]'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "54",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "52",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "type" : "Divide",
                  "operand" : [ {
                     "localId" : "50",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 100,
                     "unit" : "[nmi_i]",
                     "type" : "Quantity"
                  }, {
                     "localId" : "51",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "h",
                     "type" : "Quantity"
                  } ]
               }, {
                  "localId" : "53",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 49,
                  "unit" : "mg/[lb_av]",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DivideUcum",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","DivideUcum",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "58",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "58",
                           "s" : [ {
                              "r" : "56",
                              "s" : [ {
                                 "value" : [ "100 ","'mg'" ]
                              } ]
                           }, {
                              "value" : [ " / " ]
                           }, {
                              "r" : "57",
                              "s" : [ {
                                 "value" : [ "2 ","'[lb_av]'" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "value" : [ " ",">"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "value" : [ "49 ","'mg/[lb_av]'" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "58",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "type" : "Divide",
                  "operand" : [ {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 100,
                     "unit" : "mg",
                     "type" : "Quantity"
                  }, {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                     "value" : 2,
                     "unit" : "[lb_av]",
                     "type" : "Quantity"
                  } ]
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 49,
                  "unit" : "mg/[lb_av]",
                  "type" : "Quantity"
               } ]
            }
         } ]
      }
   }
}

