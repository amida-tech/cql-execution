###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### Date
library TestSnippet version '1'
using QUICK
context Patient
define Year: Date(2012)
define Month: Date(2012, 2)
define Day: Date(2012, 2, 15)
###

module.exports['Date'] = {
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
            "localId" : "4",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "Year",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "4",
                  "s" : [ {
                     "value" : [ "define ","Year",": " ]
                  }, {
                     "r" : "3",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2012",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2012",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "8",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "Month",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "8",
                  "s" : [ {
                     "value" : [ "define ","Month",": " ]
                  }, {
                     "r" : "7",
                     "s" : [ {
                        "r" : "5",
                        "value" : [ "Date","(","2012",", ","2",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "7",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2012",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "Day",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","Day",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "9",
                        "value" : [ "Date","(","2012",", ","2",", ","15",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2012",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "15",
                  "type" : "Literal"
               }
            }
         } ]
      }
   }
}

### DateComponentFrom
library TestSnippet version '1'
using QUICK
context Patient
define IdesOfMarch: Date(2000, 3, 15)
define Year: year from IdesOfMarch
define Month: month from IdesOfMarch
define Day: day from IdesOfMarch
define ImpreciseIdesOfMarch: Date(2000, 3)
define ImpreciseComponentTuple: Tuple {
  Year: year from ImpreciseIdesOfMarch,
  Month: month from ImpreciseIdesOfMarch,
  Day: day from ImpreciseIdesOfMarch
}
define NullDate: year from (null as Date)
###

module.exports['DateComponentFrom'] = {
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
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "IdesOfMarch",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "6",
                  "s" : [ {
                     "value" : [ "define ","IdesOfMarch",": " ]
                  }, {
                     "r" : "5",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "5",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2000",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "15",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Year",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","Year",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "value" : [ "year from " ]
                     }, {
                        "r" : "7",
                        "s" : [ {
                           "value" : [ "IdesOfMarch" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DateTimeComponentFrom",
               "operand" : {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "IdesOfMarch",
                  "type" : "ExpressionRef"
               }
            }
         }, {
            "localId" : "12",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Month",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "12",
                  "s" : [ {
                     "value" : [ "define ","Month",": " ]
                  }, {
                     "r" : "11",
                     "s" : [ {
                        "value" : [ "month from " ]
                     }, {
                        "r" : "10",
                        "s" : [ {
                           "value" : [ "IdesOfMarch" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "11",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Month",
               "type" : "DateTimeComponentFrom",
               "operand" : {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "IdesOfMarch",
                  "type" : "ExpressionRef"
               }
            }
         }, {
            "localId" : "15",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "Day",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "15",
                  "s" : [ {
                     "value" : [ "define ","Day",": " ]
                  }, {
                     "r" : "14",
                     "s" : [ {
                        "value" : [ "day from " ]
                     }, {
                        "r" : "13",
                        "s" : [ {
                           "value" : [ "IdesOfMarch" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "14",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Day",
               "type" : "DateTimeComponentFrom",
               "operand" : {
                  "localId" : "13",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "IdesOfMarch",
                  "type" : "ExpressionRef"
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "ImpreciseIdesOfMarch",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseIdesOfMarch",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "r" : "16",
                        "value" : [ "Date","(","2000",", ","3",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2000",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "17",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "3",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "27",
            "name" : "ImpreciseComponentTuple",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "27",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseComponentTuple",": " ]
                  }, {
                     "r" : "26",
                     "s" : [ {
                        "value" : [ "Tuple {\n  " ]
                     }, {
                        "s" : [ {
                           "value" : [ "Year",": " ]
                        }, {
                           "r" : "21",
                           "s" : [ {
                              "value" : [ "year from " ]
                           }, {
                              "r" : "20",
                              "s" : [ {
                                 "value" : [ "ImpreciseIdesOfMarch" ]
                              } ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ",\n  " ]
                     }, {
                        "s" : [ {
                           "value" : [ "Month",": " ]
                        }, {
                           "r" : "23",
                           "s" : [ {
                              "value" : [ "month from " ]
                           }, {
                              "r" : "22",
                              "s" : [ {
                                 "value" : [ "ImpreciseIdesOfMarch" ]
                              } ]
                           } ]
                        } ]
                     }, {
                        "value" : [ ",\n  " ]
                     }, {
                        "s" : [ {
                           "value" : [ "Day",": " ]
                        }, {
                           "r" : "25",
                           "s" : [ {
                              "value" : [ "day from " ]
                           }, {
                              "r" : "24",
                              "s" : [ {
                                 "value" : [ "ImpreciseIdesOfMarch" ]
                              } ]
                           } ]
                        } ]
                     }, {
                        "value" : [ "\n}" ]
                     } ]
                  } ]
               }
            } ],
            "resultTypeSpecifier" : {
               "type" : "TupleTypeSpecifier",
               "element" : [ {
                  "name" : "Year",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "Month",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "name" : "Day",
                  "type" : {
                     "name" : "{urn:hl7-org:elm-types:r1}Integer",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            },
            "expression" : {
               "localId" : "26",
               "type" : "Tuple",
               "resultTypeSpecifier" : {
                  "type" : "TupleTypeSpecifier",
                  "element" : [ {
                     "name" : "Year",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "Month",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  }, {
                     "name" : "Day",
                     "type" : {
                        "name" : "{urn:hl7-org:elm-types:r1}Integer",
                        "type" : "NamedTypeSpecifier"
                     }
                  } ]
               },
               "element" : [ {
                  "name" : "Year",
                  "value" : {
                     "localId" : "21",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "precision" : "Year",
                     "type" : "DateTimeComponentFrom",
                     "operand" : {
                        "localId" : "20",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "name" : "ImpreciseIdesOfMarch",
                        "type" : "ExpressionRef"
                     }
                  }
               }, {
                  "name" : "Month",
                  "value" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "precision" : "Month",
                     "type" : "DateTimeComponentFrom",
                     "operand" : {
                        "localId" : "22",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "name" : "ImpreciseIdesOfMarch",
                        "type" : "ExpressionRef"
                     }
                  }
               }, {
                  "name" : "Day",
                  "value" : {
                     "localId" : "25",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "precision" : "Day",
                     "type" : "DateTimeComponentFrom",
                     "operand" : {
                        "localId" : "24",
                        "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                        "name" : "ImpreciseIdesOfMarch",
                        "type" : "ExpressionRef"
                     }
                  }
               } ]
            }
         }, {
            "localId" : "32",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "NullDate",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "32",
                  "s" : [ {
                     "value" : [ "define ","NullDate",": " ]
                  }, {
                     "r" : "31",
                     "s" : [ {
                        "value" : [ "year from " ]
                     }, {
                        "r" : "30",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "r" : "28",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "29",
                              "s" : [ {
                                 "value" : [ "Date" ]
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
               "localId" : "31",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DateTimeComponentFrom",
               "operand" : {
                  "localId" : "30",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }
            }
         } ]
      }
   }
}

### SameAs
library TestSnippet version '1'
using QUICK
context Patient
define SameYear: Date(2000, 3, 15) same year as Date(2000, 11, 23)
define NotSameYear: Date(2000, 3, 15) same year as Date(2001, 11, 23)
define SameMonth: Date(2000, 3, 15) same month as Date(2000, 3, 23)
define NotSameMonth: Date(2000, 3, 15) same month as Date(2000, 4, 23)
define SameMonthWrongYear: Date(2000, 3, 15) same month as Date(2001, 3, 23)
define SameDay: Date(2000, 3, 15) same day as Date(2000, 3, 15)
define NotSameDay: Date(2000, 3, 15) same day as Date(2000, 3, 23)
define SameDayWrongMonth: Date(2000, 3, 15) same day as Date(2000, 4, 15)
define Same: Date(2000, 3, 15) same as Date(2000, 3, 15)
define NotSame: Date(2000, 3, 16) same as Date(2000, 3, 15)
define NullLeft: null same as Date(2000, 3, 15)
define NullRight: Date(2000, 3, 15) same as (null as Date)
define NullBoth: (null as Date) same as null
###

module.exports['SameAs'] = {
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
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","SameYear",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "10",
                        "value" : [ " ","same year as"," " ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "6",
                           "value" : [ "Date","(","2000",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotSameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","NotSameYear",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ","same year as"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "r" : "16",
                           "value" : [ "Date","(","2001",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","SameMonth",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "r" : "22",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "30",
                        "value" : [ " ","same month as"," " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotSameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","NotSameMonth",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "r" : "32",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "40",
                        "value" : [ " ","same month as"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "36",
                           "value" : [ "Date","(","2000",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonthWrongYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","SameMonthWrongYear",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "r" : "42",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","same month as"," " ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "r" : "46",
                           "value" : [ "Date","(","2001",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","SameDay",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "60",
                        "value" : [ " ","same day as"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "r" : "56",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotSameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","NotSameDay",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "r" : "65",
                        "s" : [ {
                           "r" : "62",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "70",
                        "value" : [ " ","same day as"," " ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "66",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "69",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "81",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDayWrongMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "81",
                  "s" : [ {
                     "value" : [ "define ","SameDayWrongMonth",": " ]
                  }, {
                     "r" : "80",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","same day as"," " ]
                     }, {
                        "r" : "79",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "Date","(","2000",", ","4",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "80",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "78",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "91",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Same",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "91",
                  "s" : [ {
                     "value" : [ "define ","Same",": " ]
                  }, {
                     "r" : "90",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "82",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "90",
                        "value" : [ " ","same as"," " ]
                     }, {
                        "r" : "89",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "90",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "89",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "101",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotSame",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "101",
                  "s" : [ {
                     "value" : [ "define ","NotSame",": " ]
                  }, {
                     "r" : "100",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     }, {
                        "r" : "100",
                        "value" : [ " ","same as"," " ]
                     }, {
                        "r" : "99",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "100",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "108",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullLeft",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "108",
                  "s" : [ {
                     "value" : [ "define ","NullLeft",": " ]
                  }, {
                     "r" : "107",
                     "s" : [ {
                        "r" : "102",
                        "value" : [ "null"," ","same as"," " ]
                     }, {
                        "r" : "106",
                        "s" : [ {
                           "r" : "103",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "107",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameAs",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "106",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "105",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "117",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullRight",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "117",
                  "s" : [ {
                     "value" : [ "define ","NullRight",": " ]
                  }, {
                     "r" : "116",
                     "s" : [ {
                        "r" : "112",
                        "s" : [ {
                           "r" : "109",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "116",
                        "value" : [ " ","same as"," " ]
                     }, {
                        "r" : "115",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "115",
                           "s" : [ {
                              "r" : "113",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "114",
                              "s" : [ {
                                 "value" : [ "Date" ]
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
               "localId" : "116",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "112",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "109",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "110",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "111",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               } ]
            }
         }, {
            "localId" : "123",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullBoth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "123",
                  "s" : [ {
                     "value" : [ "define ","NullBoth",": " ]
                  }, {
                     "r" : "122",
                     "s" : [ {
                        "r" : "120",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "120",
                           "s" : [ {
                              "r" : "118",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "119",
                              "s" : [ {
                                 "value" : [ "Date" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "r" : "122",
                        "value" : [ " ","same as"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "122",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameAs",
               "operand" : [ {
                  "localId" : "120",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "118",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "119",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "121",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         } ]
      }
   }
}

### SameOrAfter
library TestSnippet version '1'
using QUICK
context Patient
define SameYear: Date(2000, 3, 15) same year or after Date(2000, 11, 23)
define YearAfter: Date(2000, 3, 15) same year or after Date(1999, 11, 23)
define YearBefore: Date(2000, 3, 15) same year or after Date(2001, 11, 23)
define SameMonth: Date(2000, 3, 15) same month or after Date(2000, 3, 23)
define MonthAfter: Date(2000, 3, 15) same month or after Date(2000, 2, 23)
define MonthBefore: Date(2000, 3, 15) same month or after Date(2000, 4, 23)
define SameDay: Date(2000, 3, 15) same day or after Date(2000, 3, 15)
define DayAfter: Date(2000, 3, 15) same day or after Date(2000, 3, 14)
define DayBefore: Date(2000, 3, 15) same day or after Date(2000, 3, 16)
define Same: Date(2000, 3, 15) same or after Date(2000, 3, 15)
define After: Date(2000, 3, 15) same or after Date(2000, 3, 15)
define Before: Date(2000, 3, 14) same or after Date(2000, 3, 15)
define SameDayMonthBefore: Date(2000, 3, 15) same day or after Date(2000, 4, 15)
define DayAfterMonthBefore: Date(2000, 3, 15) same day or after Date(2000, 4, 14)
define DayBeforeMonthAfter: Date(2000, 3, 15) same day or after Date(2000, 2, 16)
define ImpreciseDay: Date(2000, 3, 15) same day or after Date(2000, 3)
define ImpreciseDayMonthAfter: Date(2000, 3, 15) same day or after Date(2000, 2)
define ImpreciseDayMonthBefore: Date(2000, 3, 15) same day or after Date(2000, 4)
define NullLeft: null same or after Date(2000, 3, 15)
define NullRight: Date(2000, 3, 15) same or after null
define NullBoth: (null as Date) same or after null
###

module.exports['SameOrAfter'] = {
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
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","SameYear",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "10",
                        "value" : [ " ","same year or after"," " ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "6",
                           "value" : [ "Date","(","2000",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","YearAfter",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ","same year or after"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "r" : "16",
                           "value" : [ "Date","(","1999",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1999",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","YearBefore",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "r" : "22",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "30",
                        "value" : [ " ","same year or after"," " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "Date","(","2001",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","SameMonth",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "r" : "32",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "40",
                        "value" : [ " ","same month or after"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "36",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","MonthAfter",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "r" : "42",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","same month or after"," " ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "r" : "46",
                           "value" : [ "Date","(","2000",", ","2",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","MonthBefore",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "60",
                        "value" : [ " ","same month or after"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "r" : "56",
                           "value" : [ "Date","(","2000",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","SameDay",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "r" : "65",
                        "s" : [ {
                           "r" : "62",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "70",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "66",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "69",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "81",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "81",
                  "s" : [ {
                     "value" : [ "define ","DayAfter",": " ]
                  }, {
                     "r" : "80",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "79",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "80",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "91",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "91",
                  "s" : [ {
                     "value" : [ "define ","DayBefore",": " ]
                  }, {
                     "r" : "90",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "82",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "90",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "89",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "90",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "89",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "101",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Same",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "101",
                  "s" : [ {
                     "value" : [ "define ","Same",": " ]
                  }, {
                     "r" : "100",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "100",
                        "value" : [ " ","same or after"," " ]
                     }, {
                        "r" : "99",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "100",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "111",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "After",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "111",
                  "s" : [ {
                     "value" : [ "define ","After",": " ]
                  }, {
                     "r" : "110",
                     "s" : [ {
                        "r" : "105",
                        "s" : [ {
                           "r" : "102",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "110",
                        "value" : [ " ","same or after"," " ]
                     }, {
                        "r" : "109",
                        "s" : [ {
                           "r" : "106",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "110",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "105",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "109",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "121",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Before",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "121",
                  "s" : [ {
                     "value" : [ "define ","Before",": " ]
                  }, {
                     "r" : "120",
                     "s" : [ {
                        "r" : "115",
                        "s" : [ {
                           "r" : "112",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     }, {
                        "r" : "120",
                        "value" : [ " ","same or after"," " ]
                     }, {
                        "r" : "119",
                        "s" : [ {
                           "r" : "116",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "120",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "14",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "119",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "131",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "131",
                  "s" : [ {
                     "value" : [ "define ","SameDayMonthBefore",": " ]
                  }, {
                     "r" : "130",
                     "s" : [ {
                        "r" : "125",
                        "s" : [ {
                           "r" : "122",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "130",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "129",
                        "s" : [ {
                           "r" : "126",
                           "value" : [ "Date","(","2000",", ","4",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "130",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "129",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "128",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "141",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfterMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "141",
                  "s" : [ {
                     "value" : [ "define ","DayAfterMonthBefore",": " ]
                  }, {
                     "r" : "140",
                     "s" : [ {
                        "r" : "135",
                        "s" : [ {
                           "r" : "132",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "140",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "139",
                        "s" : [ {
                           "r" : "136",
                           "value" : [ "Date","(","2000",", ","4",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "140",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "135",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "132",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "134",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "139",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "138",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "151",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBeforeMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "151",
                  "s" : [ {
                     "value" : [ "define ","DayBeforeMonthAfter",": " ]
                  }, {
                     "r" : "150",
                     "s" : [ {
                        "r" : "145",
                        "s" : [ {
                           "r" : "142",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "150",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "149",
                        "s" : [ {
                           "r" : "146",
                           "value" : [ "Date","(","2000",", ","2",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "150",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "145",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "143",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "149",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "148",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "160",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "160",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDay",": " ]
                  }, {
                     "r" : "159",
                     "s" : [ {
                        "r" : "155",
                        "s" : [ {
                           "r" : "152",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "159",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "158",
                        "s" : [ {
                           "r" : "156",
                           "value" : [ "Date","(","2000",", ","3",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "159",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "155",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "153",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "154",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "158",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "156",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "157",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "169",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "169",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthAfter",": " ]
                  }, {
                     "r" : "168",
                     "s" : [ {
                        "r" : "164",
                        "s" : [ {
                           "r" : "161",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "168",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "167",
                        "s" : [ {
                           "r" : "165",
                           "value" : [ "Date","(","2000",", ","2",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "168",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "164",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
               }, {
                  "localId" : "167",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "165",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "166",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "178",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "178",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthBefore",": " ]
                  }, {
                     "r" : "177",
                     "s" : [ {
                        "r" : "173",
                        "s" : [ {
                           "r" : "170",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "177",
                        "value" : [ " ","same day or after"," " ]
                     }, {
                        "r" : "176",
                        "s" : [ {
                           "r" : "174",
                           "value" : [ "Date","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "177",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "173",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "170",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "171",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "172",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "176",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "174",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "175",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "185",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullLeft",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "185",
                  "s" : [ {
                     "value" : [ "define ","NullLeft",": " ]
                  }, {
                     "r" : "184",
                     "s" : [ {
                        "r" : "179",
                        "value" : [ "null"," ","same or after"," " ]
                     }, {
                        "r" : "183",
                        "s" : [ {
                           "r" : "180",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "184",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "179",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "183",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "182",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "192",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullRight",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "192",
                  "s" : [ {
                     "value" : [ "define ","NullRight",": " ]
                  }, {
                     "r" : "191",
                     "s" : [ {
                        "r" : "189",
                        "s" : [ {
                           "r" : "186",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "191",
                        "value" : [ " ","same or after"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "191",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "189",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "186",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "187",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "188",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "190",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "198",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullBoth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "198",
                  "s" : [ {
                     "value" : [ "define ","NullBoth",": " ]
                  }, {
                     "r" : "197",
                     "s" : [ {
                        "r" : "195",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "195",
                           "s" : [ {
                              "r" : "193",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "194",
                              "s" : [ {
                                 "value" : [ "Date" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "r" : "197",
                        "value" : [ " ","same or after"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "197",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrAfter",
               "operand" : [ {
                  "localId" : "195",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "193",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "194",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "196",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         } ]
      }
   }
}

### SameOrBefore
library TestSnippet version '1'
using QUICK
context Patient
define SameYear: Date(2000, 3, 15) same year or before Date(2000, 11, 23)
define YearAfter: Date(2000, 3, 15) same year or before Date(1999, 11, 23)
define YearBefore: Date(2000, 3, 15) same year or before Date(2001, 11, 23)
define SameMonth: Date(2000, 3, 15) same month or before Date(2000, 3, 23)
define MonthAfter: Date(2000, 3, 15) same month or before Date(2000, 2, 23)
define MonthBefore: Date(2000, 3, 15) same month or before Date(2000, 4, 23)
define SameDay: Date(2000, 3, 15) same day or before Date(2000, 3, 15)
define DayAfter: Date(2000, 3, 15) same day or before Date(2000, 3, 14)
define DayBefore: Date(2000, 3, 15) same day or before Date(2000, 3, 16)
define Same: Date(2000, 3, 15) same or before Date(2000, 3, 15)
define After: Date(2000, 3, 16) same or before Date(2000, 3, 15)
define Before: Date(2000, 3, 15) same or before Date(2000, 3, 15)
define SameDayMonthBefore: Date(2000, 3, 15) same day or before Date(2000, 4, 15)
define DayAfterMonthBefore: Date(2000, 3, 15) same day or before Date(2000, 4, 14)
define DayBeforeMonthAfter: Date(2000, 3, 15) same day or before Date(2000, 2, 16)
define ImpreciseDay: Date(2000, 3, 15) same day or before Date(2000, 3)
define ImpreciseDayMonthAfter: Date(2000, 3, 15) same day or before Date(2000, 2)
define ImpreciseDayMonthBefore: Date(2000, 3, 15) same day or before Date(2000, 4)
define NullLeft: null same or before Date(2000, 3, 15)
define NullRight: Date(2000, 3, 15) same or before null
define NullBoth: (null as Date) same or before null
###

module.exports['SameOrBefore'] = {
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
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","SameYear",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "10",
                        "value" : [ " ","same year or before"," " ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "6",
                           "value" : [ "Date","(","2000",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","YearAfter",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ","same year or before"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "r" : "16",
                           "value" : [ "Date","(","1999",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1999",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","YearBefore",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "r" : "22",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "30",
                        "value" : [ " ","same year or before"," " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "Date","(","2001",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","SameMonth",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "r" : "32",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "40",
                        "value" : [ " ","same month or before"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "36",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","MonthAfter",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "r" : "42",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","same month or before"," " ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "r" : "46",
                           "value" : [ "Date","(","2000",", ","2",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","MonthBefore",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "60",
                        "value" : [ " ","same month or before"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "r" : "56",
                           "value" : [ "Date","(","2000",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","SameDay",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "r" : "65",
                        "s" : [ {
                           "r" : "62",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "70",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "66",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "69",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "81",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "81",
                  "s" : [ {
                     "value" : [ "define ","DayAfter",": " ]
                  }, {
                     "r" : "80",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "79",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "80",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "91",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "91",
                  "s" : [ {
                     "value" : [ "define ","DayBefore",": " ]
                  }, {
                     "r" : "90",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "82",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "90",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "89",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "90",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "89",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "101",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Same",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "101",
                  "s" : [ {
                     "value" : [ "define ","Same",": " ]
                  }, {
                     "r" : "100",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "100",
                        "value" : [ " ","same or before"," " ]
                     }, {
                        "r" : "99",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "100",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "111",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "After",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "111",
                  "s" : [ {
                     "value" : [ "define ","After",": " ]
                  }, {
                     "r" : "110",
                     "s" : [ {
                        "r" : "105",
                        "s" : [ {
                           "r" : "102",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     }, {
                        "r" : "110",
                        "value" : [ " ","same or before"," " ]
                     }, {
                        "r" : "109",
                        "s" : [ {
                           "r" : "106",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "110",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "105",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "109",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "121",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Before",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "121",
                  "s" : [ {
                     "value" : [ "define ","Before",": " ]
                  }, {
                     "r" : "120",
                     "s" : [ {
                        "r" : "115",
                        "s" : [ {
                           "r" : "112",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "120",
                        "value" : [ " ","same or before"," " ]
                     }, {
                        "r" : "119",
                        "s" : [ {
                           "r" : "116",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "120",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "119",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "131",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "131",
                  "s" : [ {
                     "value" : [ "define ","SameDayMonthBefore",": " ]
                  }, {
                     "r" : "130",
                     "s" : [ {
                        "r" : "125",
                        "s" : [ {
                           "r" : "122",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "130",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "129",
                        "s" : [ {
                           "r" : "126",
                           "value" : [ "Date","(","2000",", ","4",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "130",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "129",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "128",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "141",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfterMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "141",
                  "s" : [ {
                     "value" : [ "define ","DayAfterMonthBefore",": " ]
                  }, {
                     "r" : "140",
                     "s" : [ {
                        "r" : "135",
                        "s" : [ {
                           "r" : "132",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "140",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "139",
                        "s" : [ {
                           "r" : "136",
                           "value" : [ "Date","(","2000",", ","4",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "140",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "135",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "132",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "134",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "139",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "138",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "151",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBeforeMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "151",
                  "s" : [ {
                     "value" : [ "define ","DayBeforeMonthAfter",": " ]
                  }, {
                     "r" : "150",
                     "s" : [ {
                        "r" : "145",
                        "s" : [ {
                           "r" : "142",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "150",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "149",
                        "s" : [ {
                           "r" : "146",
                           "value" : [ "Date","(","2000",", ","2",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "150",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "145",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "143",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "149",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "148",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "160",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "160",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDay",": " ]
                  }, {
                     "r" : "159",
                     "s" : [ {
                        "r" : "155",
                        "s" : [ {
                           "r" : "152",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "159",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "158",
                        "s" : [ {
                           "r" : "156",
                           "value" : [ "Date","(","2000",", ","3",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "159",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "155",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "153",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "154",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "158",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "156",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "157",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "169",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "169",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthAfter",": " ]
                  }, {
                     "r" : "168",
                     "s" : [ {
                        "r" : "164",
                        "s" : [ {
                           "r" : "161",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "168",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "167",
                        "s" : [ {
                           "r" : "165",
                           "value" : [ "Date","(","2000",", ","2",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "168",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "164",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
               }, {
                  "localId" : "167",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "165",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "166",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "178",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "178",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthBefore",": " ]
                  }, {
                     "r" : "177",
                     "s" : [ {
                        "r" : "173",
                        "s" : [ {
                           "r" : "170",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "177",
                        "value" : [ " ","same day or before"," " ]
                     }, {
                        "r" : "176",
                        "s" : [ {
                           "r" : "174",
                           "value" : [ "Date","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "177",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "173",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "170",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "171",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "172",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "176",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "174",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "175",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "185",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullLeft",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "185",
                  "s" : [ {
                     "value" : [ "define ","NullLeft",": " ]
                  }, {
                     "r" : "184",
                     "s" : [ {
                        "r" : "179",
                        "value" : [ "null"," ","same or before"," " ]
                     }, {
                        "r" : "183",
                        "s" : [ {
                           "r" : "180",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "184",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "179",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "183",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "182",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "192",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullRight",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "192",
                  "s" : [ {
                     "value" : [ "define ","NullRight",": " ]
                  }, {
                     "r" : "191",
                     "s" : [ {
                        "r" : "189",
                        "s" : [ {
                           "r" : "186",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "191",
                        "value" : [ " ","same or before"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "191",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "189",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "186",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "187",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "188",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "190",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "198",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullBoth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "198",
                  "s" : [ {
                     "value" : [ "define ","NullBoth",": " ]
                  }, {
                     "r" : "197",
                     "s" : [ {
                        "r" : "195",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "195",
                           "s" : [ {
                              "r" : "193",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "194",
                              "s" : [ {
                                 "value" : [ "Date" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "r" : "197",
                        "value" : [ " ","same or before"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "197",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "SameOrBefore",
               "operand" : [ {
                  "localId" : "195",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "193",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "194",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "196",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         } ]
      }
   }
}

### After
library TestSnippet version '1'
using QUICK
context Patient
define SameYear: Date(2000, 12, 15) after year of Date(2000, 11, 23)
define YearAfter: Date(2000, 12, 15) after year of Date(1999, 11, 23)
define YearBefore: Date(2000, 12, 15) after year of Date(2001, 11, 23)
define SameMonth: Date(2000, 3, 25) after month of Date(2000, 3, 23)
define MonthAfter: Date(2000, 3, 25) after month of Date(2000, 2, 23)
define MonthBefore: Date(2000, 3, 25) after month of Date(2000, 4, 23)
define SameDay: Date(2000, 3, 15) after day of Date(2000, 3, 15)
define DayAfter: Date(2000, 3, 15) after day of Date(2000, 3, 14)
define DayBefore: Date(2000, 3, 15) after day of Date(2000, 3, 16)
define Same: Date(2000, 3, 15) after Date(2000, 3, 15)
define After: Date(2000, 3, 16) after Date(2000, 3, 15)
define Before: Date(2000, 3, 15) after Date(2000, 3, 15)
define ImpreciseDay: Date(2000, 3, 15) after day of Date(2000, 3)
define ImpreciseDayMonthAfter: Date(2000, 3, 15) after day of Date(2000, 2)
define ImpreciseDayMonthBefore: Date(2000, 3, 15) after day of Date(2000, 4)
define NullLeft: null after Date(2000, 3, 15)
define NullRight: Date(2000, 3, 15) after null
define NullBoth: (null as Date) after null
###

module.exports['After'] = {
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
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","SameYear",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "Date","(","2000",", ","12",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "10",
                        "value" : [ " ","after year of"," " ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "6",
                           "value" : [ "Date","(","2000",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "After",
               "operand" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","YearAfter",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "Date","(","2000",", ","12",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ","after year of"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "r" : "16",
                           "value" : [ "Date","(","1999",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "After",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1999",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","YearBefore",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "r" : "22",
                           "value" : [ "Date","(","2000",", ","12",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "30",
                        "value" : [ " ","after year of"," " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "Date","(","2001",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "After",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "12",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","SameMonth",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "r" : "32",
                           "value" : [ "Date","(","2000",", ","3",", ","25",")" ]
                        } ]
                     }, {
                        "r" : "40",
                        "value" : [ " ","after month of"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "36",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "After",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","MonthAfter",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "r" : "42",
                           "value" : [ "Date","(","2000",", ","3",", ","25",")" ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","after month of"," " ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "r" : "46",
                           "value" : [ "Date","(","2000",", ","2",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "After",
               "operand" : [ {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","MonthBefore",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "Date","(","2000",", ","3",", ","25",")" ]
                        } ]
                     }, {
                        "r" : "60",
                        "value" : [ " ","after month of"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "r" : "56",
                           "value" : [ "Date","(","2000",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "After",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "25",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","SameDay",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "r" : "65",
                        "s" : [ {
                           "r" : "62",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "70",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "66",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "69",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "81",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "81",
                  "s" : [ {
                     "value" : [ "define ","DayAfter",": " ]
                  }, {
                     "r" : "80",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "79",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "80",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "91",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "91",
                  "s" : [ {
                     "value" : [ "define ","DayBefore",": " ]
                  }, {
                     "r" : "90",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "82",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "90",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "89",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "90",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "89",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "101",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Same",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "101",
                  "s" : [ {
                     "value" : [ "define ","Same",": " ]
                  }, {
                     "r" : "100",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "100",
                        "value" : [ " ","after"," " ]
                     }, {
                        "r" : "99",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "100",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "111",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "After",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "111",
                  "s" : [ {
                     "value" : [ "define ","After",": " ]
                  }, {
                     "r" : "110",
                     "s" : [ {
                        "r" : "105",
                        "s" : [ {
                           "r" : "102",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     }, {
                        "r" : "110",
                        "value" : [ " ","after"," " ]
                     }, {
                        "r" : "109",
                        "s" : [ {
                           "r" : "106",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "110",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "localId" : "105",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "16",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "109",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "121",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Before",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "121",
                  "s" : [ {
                     "value" : [ "define ","Before",": " ]
                  }, {
                     "r" : "120",
                     "s" : [ {
                        "r" : "115",
                        "s" : [ {
                           "r" : "112",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "120",
                        "value" : [ " ","after"," " ]
                     }, {
                        "r" : "119",
                        "s" : [ {
                           "r" : "116",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "120",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "119",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "130",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "130",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDay",": " ]
                  }, {
                     "r" : "129",
                     "s" : [ {
                        "r" : "125",
                        "s" : [ {
                           "r" : "122",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "129",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "128",
                        "s" : [ {
                           "r" : "126",
                           "value" : [ "Date","(","2000",", ","3",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "129",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "128",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "139",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "139",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthAfter",": " ]
                  }, {
                     "r" : "138",
                     "s" : [ {
                        "r" : "134",
                        "s" : [ {
                           "r" : "131",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "138",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "137",
                        "s" : [ {
                           "r" : "135",
                           "value" : [ "Date","(","2000",", ","2",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "138",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "134",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "131",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "132",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "137",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "135",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "136",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "148",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "148",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthBefore",": " ]
                  }, {
                     "r" : "147",
                     "s" : [ {
                        "r" : "143",
                        "s" : [ {
                           "r" : "140",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "147",
                        "value" : [ " ","after day of"," " ]
                     }, {
                        "r" : "146",
                        "s" : [ {
                           "r" : "144",
                           "value" : [ "Date","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "147",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "After",
               "operand" : [ {
                  "localId" : "143",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "140",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "141",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "146",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "145",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "155",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullLeft",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "155",
                  "s" : [ {
                     "value" : [ "define ","NullLeft",": " ]
                  }, {
                     "r" : "154",
                     "s" : [ {
                        "r" : "149",
                        "value" : [ "null"," ","after"," " ]
                     }, {
                        "r" : "153",
                        "s" : [ {
                           "r" : "150",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "154",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "149",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "153",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "151",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "162",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullRight",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "162",
                  "s" : [ {
                     "value" : [ "define ","NullRight",": " ]
                  }, {
                     "r" : "161",
                     "s" : [ {
                        "r" : "159",
                        "s" : [ {
                           "r" : "156",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "161",
                        "value" : [ " ","after"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "161",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "localId" : "159",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "156",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "157",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "158",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "160",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "168",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullBoth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "168",
                  "s" : [ {
                     "value" : [ "define ","NullBoth",": " ]
                  }, {
                     "r" : "167",
                     "s" : [ {
                        "r" : "165",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "165",
                           "s" : [ {
                              "r" : "163",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "164",
                              "s" : [ {
                                 "value" : [ "Date" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "r" : "167",
                        "value" : [ " ","after"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "167",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "After",
               "operand" : [ {
                  "localId" : "165",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "163",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "164",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "166",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         } ]
      }
   }
}

### Before
library TestSnippet version '1'
using QUICK
context Patient
define SameYear: Date(2000, 10, 15) before year of Date(2000, 11, 23)
define YearAfter: Date(2000, 10, 15) before year of Date(1999, 11, 23)
define YearBefore: Date(2000, 10, 15) before year of Date(2001, 11, 23)
define SameMonth: Date(2000, 3, 22) before month of Date(2000, 3, 23)
define MonthAfter: Date(2000, 3, 22) before month of Date(2000, 2, 23)
define MonthBefore: Date(2000, 3, 22) before month of Date(2000, 4, 23)
define SameDay: Date(2000, 3, 15) before day of Date(2000, 3, 15)
define DayAfter: Date(2000, 3, 15) before day of Date(2000, 3, 14)
define DayBefore: Date(2000, 3, 15) before day of Date(2000, 3, 16)
define Same: Date(2000, 3, 15) before Date(2000, 3, 15)
define After: Date(2000, 3, 15) before Date(2000, 3, 15)
define Before: Date(2000, 3, 14) before Date(2000, 3, 15)
define ImpreciseDay: Date(2000, 3, 15) before day of Date(2000, 3)
define ImpreciseDayMonthAfter: Date(2000, 3, 15) before day of Date(2000, 2)
define ImpreciseDayMonthBefore: Date(2000, 3, 15) before day of Date(2000, 4)
define NullLeft: null before Date(2000, 3, 15)
define NullRight: Date(2000, 3, 15) before null
define NullBoth: (null as Date) before null
###

module.exports['Before'] = {
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
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameYear",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","SameYear",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "5",
                        "s" : [ {
                           "r" : "2",
                           "value" : [ "Date","(","2000",", ","10",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "10",
                        "value" : [ " ","before year of"," " ]
                     }, {
                        "r" : "9",
                        "s" : [ {
                           "r" : "6",
                           "value" : [ "Date","(","2000",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "2",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "3",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "10",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "4",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "6",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "7",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","YearAfter",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "r" : "12",
                           "value" : [ "Date","(","2000",", ","10",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ","before year of"," " ]
                     }, {
                        "r" : "19",
                        "s" : [ {
                           "r" : "16",
                           "value" : [ "Date","(","1999",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "13",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "10",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "14",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "16",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "1999",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "YearBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","YearBefore",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "r" : "22",
                           "value" : [ "Date","(","2000",", ","10",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "30",
                        "value" : [ " ","before year of"," " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "r" : "26",
                           "value" : [ "Date","(","2001",", ","11",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Year",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "22",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "10",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2001",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "11",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "28",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "41",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameMonth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "41",
                  "s" : [ {
                     "value" : [ "define ","SameMonth",": " ]
                  }, {
                     "r" : "40",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "r" : "32",
                           "value" : [ "Date","(","2000",", ","3",", ","22",")" ]
                        } ]
                     }, {
                        "r" : "40",
                        "value" : [ " ","before month of"," " ]
                     }, {
                        "r" : "39",
                        "s" : [ {
                           "r" : "36",
                           "value" : [ "Date","(","2000",", ","3",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "40",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "32",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "33",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "22",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "39",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "37",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "38",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "51",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "51",
                  "s" : [ {
                     "value" : [ "define ","MonthAfter",": " ]
                  }, {
                     "r" : "50",
                     "s" : [ {
                        "r" : "45",
                        "s" : [ {
                           "r" : "42",
                           "value" : [ "Date","(","2000",", ","3",", ","22",")" ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","before month of"," " ]
                     }, {
                        "r" : "49",
                        "s" : [ {
                           "r" : "46",
                           "value" : [ "Date","(","2000",", ","2",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "50",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "43",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "44",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "22",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "46",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "61",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "MonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "61",
                  "s" : [ {
                     "value" : [ "define ","MonthBefore",": " ]
                  }, {
                     "r" : "60",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "r" : "52",
                           "value" : [ "Date","(","2000",", ","3",", ","22",")" ]
                        } ]
                     }, {
                        "r" : "60",
                        "value" : [ " ","before month of"," " ]
                     }, {
                        "r" : "59",
                        "s" : [ {
                           "r" : "56",
                           "value" : [ "Date","(","2000",", ","4",", ","23",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "60",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Month",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "52",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "22",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "59",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "56",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "57",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "58",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "23",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "71",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "SameDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "71",
                  "s" : [ {
                     "value" : [ "define ","SameDay",": " ]
                  }, {
                     "r" : "70",
                     "s" : [ {
                        "r" : "65",
                        "s" : [ {
                           "r" : "62",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "70",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "69",
                        "s" : [ {
                           "r" : "66",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "70",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "65",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "62",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "63",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "64",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "69",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "67",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "68",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "81",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "81",
                  "s" : [ {
                     "value" : [ "define ","DayAfter",": " ]
                  }, {
                     "r" : "80",
                     "s" : [ {
                        "r" : "75",
                        "s" : [ {
                           "r" : "72",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "79",
                        "s" : [ {
                           "r" : "76",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "80",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "75",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "73",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "74",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "14",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "91",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "DayBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "91",
                  "s" : [ {
                     "value" : [ "define ","DayBefore",": " ]
                  }, {
                     "r" : "90",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "r" : "82",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "90",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "89",
                        "s" : [ {
                           "r" : "86",
                           "value" : [ "Date","(","2000",", ","3",", ","16",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "90",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "82",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "89",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "16",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "101",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Same",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "101",
                  "s" : [ {
                     "value" : [ "define ","Same",": " ]
                  }, {
                     "r" : "100",
                     "s" : [ {
                        "r" : "95",
                        "s" : [ {
                           "r" : "92",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "100",
                        "value" : [ " ","before"," " ]
                     }, {
                        "r" : "99",
                        "s" : [ {
                           "r" : "96",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "100",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "95",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "92",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "93",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "94",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "99",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "111",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "After",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "111",
                  "s" : [ {
                     "value" : [ "define ","After",": " ]
                  }, {
                     "r" : "110",
                     "s" : [ {
                        "r" : "105",
                        "s" : [ {
                           "r" : "102",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "110",
                        "value" : [ " ","before"," " ]
                     }, {
                        "r" : "109",
                        "s" : [ {
                           "r" : "106",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "110",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "105",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "104",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "109",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "121",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "Before",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "121",
                  "s" : [ {
                     "value" : [ "define ","Before",": " ]
                  }, {
                     "r" : "120",
                     "s" : [ {
                        "r" : "115",
                        "s" : [ {
                           "r" : "112",
                           "value" : [ "Date","(","2000",", ","3",", ","14",")" ]
                        } ]
                     }, {
                        "r" : "120",
                        "value" : [ " ","before"," " ]
                     }, {
                        "r" : "119",
                        "s" : [ {
                           "r" : "116",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "120",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "115",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "112",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "113",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "14",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "119",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "130",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDay",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "130",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDay",": " ]
                  }, {
                     "r" : "129",
                     "s" : [ {
                        "r" : "125",
                        "s" : [ {
                           "r" : "122",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "129",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "128",
                        "s" : [ {
                           "r" : "126",
                           "value" : [ "Date","(","2000",", ","3",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "129",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "125",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "122",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "123",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "124",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "128",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
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
                  }
               } ]
            }
         }, {
            "localId" : "139",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "139",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthAfter",": " ]
                  }, {
                     "r" : "138",
                     "s" : [ {
                        "r" : "134",
                        "s" : [ {
                           "r" : "131",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "138",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "137",
                        "s" : [ {
                           "r" : "135",
                           "value" : [ "Date","(","2000",", ","2",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "138",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "134",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "131",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "132",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "133",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "137",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "135",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "136",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "148",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "ImpreciseDayMonthBefore",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "148",
                  "s" : [ {
                     "value" : [ "define ","ImpreciseDayMonthBefore",": " ]
                  }, {
                     "r" : "147",
                     "s" : [ {
                        "r" : "143",
                        "s" : [ {
                           "r" : "140",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "147",
                        "value" : [ " ","before day of"," " ]
                     }, {
                        "r" : "146",
                        "s" : [ {
                           "r" : "144",
                           "value" : [ "Date","(","2000",", ","4",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "147",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "precision" : "Day",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "143",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "140",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "141",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "142",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "localId" : "146",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "144",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "145",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "4",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "155",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullLeft",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "155",
                  "s" : [ {
                     "value" : [ "define ","NullLeft",": " ]
                  }, {
                     "r" : "154",
                     "s" : [ {
                        "r" : "149",
                        "value" : [ "null"," ","before"," " ]
                     }, {
                        "r" : "153",
                        "s" : [ {
                           "r" : "150",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "154",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "149",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "153",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "150",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "151",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "152",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               } ]
            }
         }, {
            "localId" : "162",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullRight",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "162",
                  "s" : [ {
                     "value" : [ "define ","NullRight",": " ]
                  }, {
                     "r" : "161",
                     "s" : [ {
                        "r" : "159",
                        "s" : [ {
                           "r" : "156",
                           "value" : [ "Date","(","2000",", ","3",", ","15",")" ]
                        } ]
                     }, {
                        "r" : "161",
                        "value" : [ " ","before"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "161",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "159",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "Date",
                  "year" : {
                     "localId" : "156",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "2000",
                     "type" : "Literal"
                  },
                  "month" : {
                     "localId" : "157",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "3",
                     "type" : "Literal"
                  },
                  "day" : {
                     "localId" : "158",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                     "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                     "value" : "15",
                     "type" : "Literal"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "160",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "168",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullBoth",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "168",
                  "s" : [ {
                     "value" : [ "define ","NullBoth",": " ]
                  }, {
                     "r" : "167",
                     "s" : [ {
                        "r" : "165",
                        "s" : [ {
                           "value" : [ "(" ]
                        }, {
                           "r" : "165",
                           "s" : [ {
                              "r" : "163",
                              "value" : [ "null"," as " ]
                           }, {
                              "r" : "164",
                              "s" : [ {
                                 "value" : [ "Date" ]
                              } ]
                           } ]
                        }, {
                           "value" : [ ")" ]
                        } ]
                     }, {
                        "r" : "167",
                        "value" : [ " ","before"," ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "167",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Before",
               "operand" : [ {
                  "localId" : "165",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "strict" : false,
                  "type" : "As",
                  "operand" : {
                     "localId" : "163",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  },
                  "asTypeSpecifier" : {
                     "localId" : "164",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "{urn:hl7-org:elm-types:r1}Date",
                     "type" : "NamedTypeSpecifier"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Date",
                  "type" : "As",
                  "operand" : {
                     "localId" : "166",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         } ]
      }
   }
}

### DifferenceBetween
library TestSnippet version '1'
using QUICK
context Patient
define NewYear2013: Date(2013, 1, 1)
define NewYear2014: Date(2014, 1, 1)
define January2014: Date(2014, 1)
define YearsBetween: difference in years between NewYear2013 and NewYear2014
define MonthsBetween: difference in months between NewYear2013 and NewYear2014
define WeeksBetween: difference in weeks between NewYear2013 and NewYear2014
define DaysBetween: difference in days between NewYear2013 and NewYear2014
define YearsBetweenUncertainty: difference in years between NewYear2014 and January2014
define MonthsBetweenUncertainty: difference in months between NewYear2014 and January2014
define WeeksBetweenUncertainty: difference in weeks between NewYear2014 and January2014
define DaysBetweenUncertainty: difference in days between NewYear2014 and January2014
###

module.exports['DifferenceBetween'] = {
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
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "NewYear2013",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "6",
                  "s" : [ {
                     "value" : [ "define ","NewYear2013",": " ]
                  }, {
                     "r" : "5",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2013",", ","1",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "5",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2013",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "NewYear2014",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","NewYear2014",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "7",
                        "value" : [ "Date","(","2014",", ","1",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2014",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "8",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "15",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "January2014",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "15",
                  "s" : [ {
                     "value" : [ "define ","January2014",": " ]
                  }, {
                     "r" : "14",
                     "s" : [ {
                        "r" : "12",
                        "value" : [ "Date","(","2014",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "14",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "12",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2014",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "13",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "YearsBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","YearsBetween",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "value" : [ "difference in years between " ]
                     }, {
                        "r" : "16",
                        "s" : [ {
                           "value" : [ "NewYear2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "17",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "17",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "MonthsBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define ","MonthsBetween",": " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "value" : [ "difference in months between " ]
                     }, {
                        "r" : "20",
                        "s" : [ {
                           "value" : [ "NewYear2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "21",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Month",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "20",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "21",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "27",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "WeeksBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "27",
                  "s" : [ {
                     "value" : [ "define ","WeeksBetween",": " ]
                  }, {
                     "r" : "26",
                     "s" : [ {
                        "value" : [ "difference in weeks between " ]
                     }, {
                        "r" : "24",
                        "s" : [ {
                           "value" : [ "NewYear2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "25",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "26",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Week",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "24",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "DaysBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","DaysBetween",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "value" : [ "difference in days between " ]
                     }, {
                        "r" : "28",
                        "s" : [ {
                           "value" : [ "NewYear2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Day",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "28",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "35",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "YearsBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "35",
                  "s" : [ {
                     "value" : [ "define ","YearsBetweenUncertainty",": " ]
                  }, {
                     "r" : "34",
                     "s" : [ {
                        "value" : [ "difference in years between " ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "33",
                        "s" : [ {
                           "value" : [ "January2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "34",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "33",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "39",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "MonthsBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "39",
                  "s" : [ {
                     "value" : [ "define ","MonthsBetweenUncertainty",": " ]
                  }, {
                     "r" : "38",
                     "s" : [ {
                        "value" : [ "difference in months between " ]
                     }, {
                        "r" : "36",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "37",
                        "s" : [ {
                           "value" : [ "January2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "38",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Month",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "36",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "37",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "43",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "WeeksBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "43",
                  "s" : [ {
                     "value" : [ "define ","WeeksBetweenUncertainty",": " ]
                  }, {
                     "r" : "42",
                     "s" : [ {
                        "value" : [ "difference in weeks between " ]
                     }, {
                        "r" : "40",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "41",
                        "s" : [ {
                           "value" : [ "January2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "42",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Week",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "40",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "41",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2014",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "47",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "DaysBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "47",
                  "s" : [ {
                     "value" : [ "define ","DaysBetweenUncertainty",": " ]
                  }, {
                     "r" : "46",
                     "s" : [ {
                        "value" : [ "difference in days between " ]
                     }, {
                        "r" : "44",
                        "s" : [ {
                           "value" : [ "NewYear2014" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "45",
                        "s" : [ {
                           "value" : [ "January2014" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "46",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Day",
               "type" : "DifferenceBetween",
               "operand" : [ {
                  "localId" : "44",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "NewYear2014",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2014",
                  "type" : "ExpressionRef"
               } ]
            }
         } ]
      }
   }
}

### DifferenceBetween Comparisons
library TestSnippet version '1'
using QUICK
context Patient
define NewYear2014: Date(2014, 1, 1)
define February2014: Date(2014, 2)
define GreaterThan25DaysAfter: difference in days between NewYear2014 and February2014 > 25
define GreaterThan40DaysAfter: difference in days between NewYear2014 and February2014 > 40
define GreaterThan80DaysAfter: difference in days between NewYear2014 and February2014 > 80
define GreaterOrEqualTo25DaysAfter: difference in days between NewYear2014 and February2014 >= 25
define GreaterOrEqualTo40DaysAfter: difference in days between NewYear2014 and February2014 >= 40
define GreaterOrEqualTo80DaysAfter: difference in days between NewYear2014 and February2014 >= 80
define EqualTo25DaysAfter: difference in days between NewYear2014 and February2014 = 25
define EqualTo40DaysAfter: difference in days between NewYear2014 and February2014 = 40
define EqualTo80DaysAfter: difference in days between NewYear2014 and February2014 = 80
define LessOrEqualTo25DaysAfter: difference in days between NewYear2014 and February2014 <= 25
define LessOrEqualTo40DaysAfter: difference in days between NewYear2014 and February2014 <= 40
define LessOrEqualTo80DaysAfter: difference in days between NewYear2014 and February2014 <= 80
define LessThan25DaysAfter: difference in days between NewYear2014 and February2014 < 25
define LessThan40DaysAfter: difference in days between NewYear2014 and February2014 < 40
define LessThan80DaysAfter: difference in days between NewYear2014 and February2014 < 80
define TwentyFiveDaysLessThanDaysBetween: 25 < difference in days between NewYear2014 and February2014
define FortyDaysEqualToDaysBetween: 40 = difference in days between NewYear2014 and February2014
define TwentyFiveDaysGreaterThanDaysBetween: 25 > difference in days between NewYear2014 and February2014
###

module.exports['DifferenceBetween Comparisons'] = {
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
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "NewYear2014",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "6",
                  "s" : [ {
                     "value" : [ "define ","NewYear2014",": " ]
                  }, {
                     "r" : "5",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2014",", ","1",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "5",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2014",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "February2014",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","February2014",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "r" : "7",
                        "value" : [ "Date","(","2014",", ","2",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2014",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "8",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "16",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterThan25DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "16",
                  "s" : [ {
                     "value" : [ "define ","GreaterThan25DaysAfter",": " ]
                  }, {
                     "r" : "15",
                     "s" : [ {
                        "r" : "13",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "11",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "12",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "14",
                        "value" : [ " ",">"," ","25" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "15",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "13",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "12",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "22",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterThan40DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "22",
                  "s" : [ {
                     "value" : [ "define ","GreaterThan40DaysAfter",": " ]
                  }, {
                     "r" : "21",
                     "s" : [ {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "17",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "18",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "20",
                        "value" : [ " ",">"," ","40" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "21",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "17",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "18",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "20",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "28",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterThan80DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "28",
                  "s" : [ {
                     "value" : [ "define ","GreaterThan80DaysAfter",": " ]
                  }, {
                     "r" : "27",
                     "s" : [ {
                        "r" : "25",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "23",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "24",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "26",
                        "value" : [ " ",">"," ","80" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "27",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "24",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "26",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "80",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterOrEqualTo25DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","GreaterOrEqualTo25DaysAfter",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "29",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "30",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "32",
                        "value" : [ " ",">="," ","25" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "29",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "40",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterOrEqualTo40DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "40",
                  "s" : [ {
                     "value" : [ "define ","GreaterOrEqualTo40DaysAfter",": " ]
                  }, {
                     "r" : "39",
                     "s" : [ {
                        "r" : "37",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "35",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "36",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "38",
                        "value" : [ " ",">="," ","40" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "39",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "37",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "35",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "36",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "38",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "46",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "GreaterOrEqualTo80DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "46",
                  "s" : [ {
                     "value" : [ "define ","GreaterOrEqualTo80DaysAfter",": " ]
                  }, {
                     "r" : "45",
                     "s" : [ {
                        "r" : "43",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "41",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "42",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "44",
                        "value" : [ " ",">="," ","80" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "45",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "GreaterOrEqual",
               "operand" : [ {
                  "localId" : "43",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "41",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "42",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "44",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "80",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "52",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqualTo25DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "52",
                  "s" : [ {
                     "value" : [ "define ","EqualTo25DaysAfter",": " ]
                  }, {
                     "r" : "51",
                     "s" : [ {
                        "r" : "49",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "47",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "48",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "50",
                        "value" : [ " ","="," ","25" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "51",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "49",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "47",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "48",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "50",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "58",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqualTo40DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "58",
                  "s" : [ {
                     "value" : [ "define ","EqualTo40DaysAfter",": " ]
                  }, {
                     "r" : "57",
                     "s" : [ {
                        "r" : "55",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "53",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "54",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "56",
                        "value" : [ " ","="," ","40" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "57",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "55",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "53",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "54",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "56",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "64",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "EqualTo80DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "64",
                  "s" : [ {
                     "value" : [ "define ","EqualTo80DaysAfter",": " ]
                  }, {
                     "r" : "63",
                     "s" : [ {
                        "r" : "61",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "59",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "60",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "62",
                        "value" : [ " ","="," ","80" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "63",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "61",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "59",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "60",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "62",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "80",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "70",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessOrEqualTo25DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "70",
                  "s" : [ {
                     "value" : [ "define ","LessOrEqualTo25DaysAfter",": " ]
                  }, {
                     "r" : "69",
                     "s" : [ {
                        "r" : "67",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "65",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "66",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "68",
                        "value" : [ " ","<="," ","25" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "69",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "67",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "65",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "66",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "68",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "76",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessOrEqualTo40DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "76",
                  "s" : [ {
                     "value" : [ "define ","LessOrEqualTo40DaysAfter",": " ]
                  }, {
                     "r" : "75",
                     "s" : [ {
                        "r" : "73",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "71",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "72",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "74",
                        "value" : [ " ","<="," ","40" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "75",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "73",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "71",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "72",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "74",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "82",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessOrEqualTo80DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "82",
                  "s" : [ {
                     "value" : [ "define ","LessOrEqualTo80DaysAfter",": " ]
                  }, {
                     "r" : "81",
                     "s" : [ {
                        "r" : "79",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "77",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "78",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "80",
                        "value" : [ " ","<="," ","80" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "81",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "LessOrEqual",
               "operand" : [ {
                  "localId" : "79",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "77",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "78",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "80",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "80",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "88",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessThan25DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "88",
                  "s" : [ {
                     "value" : [ "define ","LessThan25DaysAfter",": " ]
                  }, {
                     "r" : "87",
                     "s" : [ {
                        "r" : "85",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "83",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "84",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "86",
                        "value" : [ " ","<"," ","25" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "87",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "85",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "83",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "84",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "86",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "94",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessThan40DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "94",
                  "s" : [ {
                     "value" : [ "define ","LessThan40DaysAfter",": " ]
                  }, {
                     "r" : "93",
                     "s" : [ {
                        "r" : "91",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "89",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "90",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "92",
                        "value" : [ " ","<"," ","40" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "93",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "91",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "89",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "90",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "92",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "100",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "LessThan80DaysAfter",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "100",
                  "s" : [ {
                     "value" : [ "define ","LessThan80DaysAfter",": " ]
                  }, {
                     "r" : "99",
                     "s" : [ {
                        "r" : "97",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "95",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "96",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     }, {
                        "r" : "98",
                        "value" : [ " ","<"," ","80" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "99",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "97",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "95",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "96",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               }, {
                  "localId" : "98",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "80",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "106",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TwentyFiveDaysLessThanDaysBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "106",
                  "s" : [ {
                     "value" : [ "define ","TwentyFiveDaysLessThanDaysBetween",": " ]
                  }, {
                     "r" : "105",
                     "s" : [ {
                        "r" : "101",
                        "value" : [ "25"," ","<"," " ]
                     }, {
                        "r" : "104",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "102",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "103",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "105",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Less",
               "operand" : [ {
                  "localId" : "101",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               }, {
                  "localId" : "104",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "102",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "103",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               } ]
            }
         }, {
            "localId" : "112",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FortyDaysEqualToDaysBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "112",
                  "s" : [ {
                     "value" : [ "define ","FortyDaysEqualToDaysBetween",": " ]
                  }, {
                     "r" : "111",
                     "s" : [ {
                        "r" : "107",
                        "value" : [ "40"," ","="," " ]
                     }, {
                        "r" : "110",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "108",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "109",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "111",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Equal",
               "operand" : [ {
                  "localId" : "107",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "40",
                  "type" : "Literal"
               }, {
                  "localId" : "110",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "108",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "109",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               } ]
            }
         }, {
            "localId" : "118",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TwentyFiveDaysGreaterThanDaysBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "118",
                  "s" : [ {
                     "value" : [ "define ","TwentyFiveDaysGreaterThanDaysBetween",": " ]
                  }, {
                     "r" : "117",
                     "s" : [ {
                        "r" : "113",
                        "value" : [ "25"," ",">"," " ]
                     }, {
                        "r" : "116",
                        "s" : [ {
                           "value" : [ "difference in days between " ]
                        }, {
                           "r" : "114",
                           "s" : [ {
                              "value" : [ "NewYear2014" ]
                           } ]
                        }, {
                           "value" : [ " and " ]
                        }, {
                           "r" : "115",
                           "s" : [ {
                              "value" : [ "February2014" ]
                           } ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "117",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Greater",
               "operand" : [ {
                  "localId" : "113",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "25",
                  "type" : "Literal"
               }, {
                  "localId" : "116",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "precision" : "Day",
                  "type" : "DifferenceBetween",
                  "operand" : [ {
                     "localId" : "114",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "NewYear2014",
                     "type" : "ExpressionRef"
                  }, {
                     "localId" : "115",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                     "name" : "February2014",
                     "type" : "ExpressionRef"
                  } ]
               } ]
            }
         } ]
      }
   }
}

### DurationBetween
library TestSnippet version '1'
using QUICK
context Patient
define DecTen2013: Date(2013, 12, 10)
define JanOne2015: Date(2015, 1, 1)
define January2015: Date(2015, 1)
define YearsBetween: years between DecTen2013 and JanOne2015
define MonthsBetween: months between DecTen2013 and JanOne2015
define WeeksBetween: weeks between DecTen2013 and JanOne2015
define DaysBetween: days between DecTen2013 and JanOne2015
define YearsBetweenUncertainty: years between JanOne2015 and January2015
define MonthsBetweenUncertainty: months between JanOne2015 and January2015
define WeeksBetweenUncertainty: weeks between JanOne2015 and January2015
define DaysBetweenUncertainty: days between JanOne2015 and January2015
###

module.exports['DurationBetween'] = {
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
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "DecTen2013",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "6",
                  "s" : [ {
                     "value" : [ "define ","DecTen2013",": " ]
                  }, {
                     "r" : "5",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2013",", ","12",", ","10",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "5",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2013",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "12",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "10",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "11",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "JanOne2015",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "11",
                  "s" : [ {
                     "value" : [ "define ","JanOne2015",": " ]
                  }, {
                     "r" : "10",
                     "s" : [ {
                        "r" : "7",
                        "value" : [ "Date","(","2015",", ","1",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "10",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2015",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "8",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "9",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "15",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "January2015",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "15",
                  "s" : [ {
                     "value" : [ "define ","January2015",": " ]
                  }, {
                     "r" : "14",
                     "s" : [ {
                        "r" : "12",
                        "value" : [ "Date","(","2015",", ","1",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "14",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "12",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2015",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "13",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "1",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "19",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "YearsBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "19",
                  "s" : [ {
                     "value" : [ "define ","YearsBetween",": " ]
                  }, {
                     "r" : "18",
                     "s" : [ {
                        "value" : [ "years between " ]
                     }, {
                        "r" : "16",
                        "s" : [ {
                           "value" : [ "DecTen2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "17",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "18",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "DecTen2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "17",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "23",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "MonthsBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "23",
                  "s" : [ {
                     "value" : [ "define ","MonthsBetween",": " ]
                  }, {
                     "r" : "22",
                     "s" : [ {
                        "value" : [ "months between " ]
                     }, {
                        "r" : "20",
                        "s" : [ {
                           "value" : [ "DecTen2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "21",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "22",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Month",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "20",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "DecTen2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "21",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "27",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "WeeksBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "27",
                  "s" : [ {
                     "value" : [ "define ","WeeksBetween",": " ]
                  }, {
                     "r" : "26",
                     "s" : [ {
                        "value" : [ "weeks between " ]
                     }, {
                        "r" : "24",
                        "s" : [ {
                           "value" : [ "DecTen2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "25",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "26",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Week",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "24",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "DecTen2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "25",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "31",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "DaysBetween",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "31",
                  "s" : [ {
                     "value" : [ "define ","DaysBetween",": " ]
                  }, {
                     "r" : "30",
                     "s" : [ {
                        "value" : [ "days between " ]
                     }, {
                        "r" : "28",
                        "s" : [ {
                           "value" : [ "DecTen2013" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "29",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "30",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Day",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "28",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "DecTen2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "29",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "35",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "YearsBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "35",
                  "s" : [ {
                     "value" : [ "define ","YearsBetweenUncertainty",": " ]
                  }, {
                     "r" : "34",
                     "s" : [ {
                        "value" : [ "years between " ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "33",
                        "s" : [ {
                           "value" : [ "January2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "34",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Year",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "33",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "39",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "MonthsBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "39",
                  "s" : [ {
                     "value" : [ "define ","MonthsBetweenUncertainty",": " ]
                  }, {
                     "r" : "38",
                     "s" : [ {
                        "value" : [ "months between " ]
                     }, {
                        "r" : "36",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "37",
                        "s" : [ {
                           "value" : [ "January2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "38",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Month",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "36",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "37",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "43",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "WeeksBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "43",
                  "s" : [ {
                     "value" : [ "define ","WeeksBetweenUncertainty",": " ]
                  }, {
                     "r" : "42",
                     "s" : [ {
                        "value" : [ "weeks between " ]
                     }, {
                        "r" : "40",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "41",
                        "s" : [ {
                           "value" : [ "January2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "42",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Week",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "40",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "41",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2015",
                  "type" : "ExpressionRef"
               } ]
            }
         }, {
            "localId" : "47",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
            "name" : "DaysBetweenUncertainty",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "47",
                  "s" : [ {
                     "value" : [ "define ","DaysBetweenUncertainty",": " ]
                  }, {
                     "r" : "46",
                     "s" : [ {
                        "value" : [ "days between " ]
                     }, {
                        "r" : "44",
                        "s" : [ {
                           "value" : [ "JanOne2015" ]
                        } ]
                     }, {
                        "value" : [ " and " ]
                     }, {
                        "r" : "45",
                        "s" : [ {
                           "value" : [ "January2015" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "46",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
               "precision" : "Day",
               "type" : "DurationBetween",
               "operand" : [ {
                  "localId" : "44",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "JanOne2015",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "45",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "January2015",
                  "type" : "ExpressionRef"
               } ]
            }
         } ]
      }
   }
}

### DateMath
library TestSnippet version '1'
using QUICK
context Patient
define June15th2013: Date(2013, 6, 15)
define PlusThreeYears: June15th2013 + 3 years
define MinusThreeYears: June15th2013 - 3 years
define PlusEightMonths: June15th2013 + 8 months
define MinusEightMonths: June15th2013 - 8 months
define PlusThreeWeeks: June15th2013 + 3 weeks
define MinusThreeWeeks: June15th2013 - 3 weeks
define PlusTwentyDays: June15th2013 + 20 days
define MinusTwentyDays: June15th2013 - 20 days
###

module.exports['DateMath'] = {
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
            "localId" : "6",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "June15th2013",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "6",
                  "s" : [ {
                     "value" : [ "define ","June15th2013",": " ]
                  }, {
                     "r" : "5",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "Date","(","2013",", ","6",", ","15",")" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "5",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Date",
               "year" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "2013",
                  "type" : "Literal"
               },
               "month" : {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "6",
                  "type" : "Literal"
               },
               "day" : {
                  "localId" : "4",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Integer",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Integer",
                  "value" : "15",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "PlusThreeYears",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","PlusThreeYears",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "r" : "7",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " + " ]
                     }, {
                        "r" : "8",
                        "s" : [ {
                           "value" : [ "3 ","years" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Add",
               "operand" : [ {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "8",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 3,
                  "unit" : "years",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "14",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "MinusThreeYears",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "14",
                  "s" : [ {
                     "value" : [ "define ","MinusThreeYears",": " ]
                  }, {
                     "r" : "13",
                     "s" : [ {
                        "r" : "11",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " - " ]
                     }, {
                        "r" : "12",
                        "s" : [ {
                           "value" : [ "3 ","years" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "13",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Subtract",
               "operand" : [ {
                  "localId" : "11",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "12",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 3,
                  "unit" : "years",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "18",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "PlusEightMonths",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "18",
                  "s" : [ {
                     "value" : [ "define ","PlusEightMonths",": " ]
                  }, {
                     "r" : "17",
                     "s" : [ {
                        "r" : "15",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " + " ]
                     }, {
                        "r" : "16",
                        "s" : [ {
                           "value" : [ "8 ","months" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "17",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Add",
               "operand" : [ {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "16",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 8,
                  "unit" : "months",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "22",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "MinusEightMonths",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "22",
                  "s" : [ {
                     "value" : [ "define ","MinusEightMonths",": " ]
                  }, {
                     "r" : "21",
                     "s" : [ {
                        "r" : "19",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " - " ]
                     }, {
                        "r" : "20",
                        "s" : [ {
                           "value" : [ "8 ","months" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "21",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Subtract",
               "operand" : [ {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "20",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 8,
                  "unit" : "months",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "26",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "PlusThreeWeeks",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "26",
                  "s" : [ {
                     "value" : [ "define ","PlusThreeWeeks",": " ]
                  }, {
                     "r" : "25",
                     "s" : [ {
                        "r" : "23",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " + " ]
                     }, {
                        "r" : "24",
                        "s" : [ {
                           "value" : [ "3 ","weeks" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "25",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Add",
               "operand" : [ {
                  "localId" : "23",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "24",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 3,
                  "unit" : "weeks",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "30",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "MinusThreeWeeks",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "30",
                  "s" : [ {
                     "value" : [ "define ","MinusThreeWeeks",": " ]
                  }, {
                     "r" : "29",
                     "s" : [ {
                        "r" : "27",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " - " ]
                     }, {
                        "r" : "28",
                        "s" : [ {
                           "value" : [ "3 ","weeks" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "29",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Subtract",
               "operand" : [ {
                  "localId" : "27",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "28",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 3,
                  "unit" : "weeks",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "34",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "PlusTwentyDays",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "34",
                  "s" : [ {
                     "value" : [ "define ","PlusTwentyDays",": " ]
                  }, {
                     "r" : "33",
                     "s" : [ {
                        "r" : "31",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " + " ]
                     }, {
                        "r" : "32",
                        "s" : [ {
                           "value" : [ "20 ","days" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "33",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Add",
               "operand" : [ {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "32",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 20,
                  "unit" : "days",
                  "type" : "Quantity"
               } ]
            }
         }, {
            "localId" : "38",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
            "name" : "MinusTwentyDays",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "38",
                  "s" : [ {
                     "value" : [ "define ","MinusTwentyDays",": " ]
                  }, {
                     "r" : "37",
                     "s" : [ {
                        "r" : "35",
                        "s" : [ {
                           "value" : [ "June15th2013" ]
                        } ]
                     }, {
                        "value" : [ " - " ]
                     }, {
                        "r" : "36",
                        "s" : [ {
                           "value" : [ "20 ","days" ]
                        } ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "37",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
               "type" : "Subtract",
               "operand" : [ {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Date",
                  "name" : "June15th2013",
                  "type" : "ExpressionRef"
               }, {
                  "localId" : "36",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Quantity",
                  "value" : 20,
                  "unit" : "days",
                  "type" : "Quantity"
               } ]
            }
         } ]
      }
   }
}

