###
   WARNING: This is a GENERATED file.  Do not manually edit!

   To generate this file:
       - Edit data.cql to add a CQL Snippet
       - From java dir: ./gradlew :cql-to-elm:generateTestData
###

### And
library TestSnippet version '1'
using QUICK
context Patient
define TT: true and true
define TF: true and false
define TN: true and null
define FF: false and false
define FT: false and true
define FN: false and null
define NN: null and null
define NT: null and true
define NF: null and false
###

module.exports['And'] = {
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
            "name" : "TT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","TT",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "true"," and ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","TF",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "true"," and ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","TN",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "true"," and ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","FF",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "value" : [ "false"," and ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","FT",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "value" : [ "false"," and ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","FN",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "value" : [ "false"," and ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","NN",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "value" : [ "null"," and ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","NT",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "value" : [ "null"," and ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","NF",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "value" : [ "null"," and ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "And",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         } ]
      }
   }
}

### Or
library TestSnippet version '1'
using QUICK
context Patient
define TT: true or true
define TF: true or false
define TN: true or null
define FF: false or false
define FT: false or true
define FN: false or null
define NN: null or null
define NT: null or true
define NF: null or false
###

module.exports['Or'] = {
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
            "name" : "TT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","TT",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "true"," or ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","TF",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "true"," or ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","TN",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "true"," or ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","FF",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "value" : [ "false"," or ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","FT",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "value" : [ "false"," or ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","FN",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "value" : [ "false"," or ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","NN",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "value" : [ "null"," or ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","NT",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "value" : [ "null"," or ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","NF",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "value" : [ "null"," or ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Or",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         } ]
      }
   }
}

### XOr
library TestSnippet version '1'
using QUICK
context Patient
define TT: true xor true
define TF: true xor false
define TN: true xor null
define FF: false xor false
define FT: false xor true
define FN: false xor null
define NN: null xor null
define NT: null xor true
define NF: null xor false
###

module.exports['XOr'] = {
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
            "name" : "TT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "5",
                  "s" : [ {
                     "value" : [ "define ","TT",": " ]
                  }, {
                     "r" : "4",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "true"," xor ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "4",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "3",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "9",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "9",
                  "s" : [ {
                     "value" : [ "define ","TF",": " ]
                  }, {
                     "r" : "8",
                     "s" : [ {
                        "r" : "6",
                        "value" : [ "true"," xor ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "8",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "6",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "localId" : "7",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "13",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "13",
                  "s" : [ {
                     "value" : [ "define ","TN",": " ]
                  }, {
                     "r" : "12",
                     "s" : [ {
                        "r" : "10",
                        "value" : [ "true"," xor ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "12",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "10",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "11",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "17",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "17",
                  "s" : [ {
                     "value" : [ "define ","FF",": " ]
                  }, {
                     "r" : "16",
                     "s" : [ {
                        "r" : "14",
                        "value" : [ "false"," xor ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "16",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "14",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "15",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "21",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "21",
                  "s" : [ {
                     "value" : [ "define ","FT",": " ]
                  }, {
                     "r" : "20",
                     "s" : [ {
                        "r" : "18",
                        "value" : [ "false"," xor ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "20",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "18",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "localId" : "19",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "25",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "25",
                  "s" : [ {
                     "value" : [ "define ","FN",": " ]
                  }, {
                     "r" : "24",
                     "s" : [ {
                        "r" : "22",
                        "value" : [ "false"," xor ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "24",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "localId" : "22",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "23",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "29",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NN",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "29",
                  "s" : [ {
                     "value" : [ "define ","NN",": " ]
                  }, {
                     "r" : "28",
                     "s" : [ {
                        "r" : "26",
                        "value" : [ "null"," xor ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "28",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "26",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "27",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               } ]
            }
         }, {
            "localId" : "33",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NT",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "33",
                  "s" : [ {
                     "value" : [ "define ","NT",": " ]
                  }, {
                     "r" : "32",
                     "s" : [ {
                        "r" : "30",
                        "value" : [ "null"," xor ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "32",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "30",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "31",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               } ]
            }
         }, {
            "localId" : "37",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NF",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "37",
                  "s" : [ {
                     "value" : [ "define ","NF",": " ]
                  }, {
                     "r" : "36",
                     "s" : [ {
                        "r" : "34",
                        "value" : [ "null"," xor ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "36",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Xor",
               "operand" : [ {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "34",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }, {
                  "localId" : "35",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               } ]
            }
         } ]
      }
   }
}

### Not
library TestSnippet version '1'
using QUICK
context Patient
define NotTrue: not true
define NotFalse: not false
define NotNull: not null
###

module.exports['Not'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "4",
                  "s" : [ {
                     "value" : [ "define ","NotTrue",": " ]
                  }, {
                     "r" : "3",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "not ","true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","NotFalse",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "r" : "5",
                        "value" : [ "not ","false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NotNull",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","NotNull",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "r" : "8",
                        "value" : [ "not ","null" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "Not",
               "operand" : {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }
            }
         } ]
      }
   }
}

### IsTrue
library TestSnippet version '1'
using QUICK
context Patient
define TrueIsTrue: true is true
define FalseIsTrue: false is true
define NullIsTrue: null is true
###

module.exports['IsTrue'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TrueIsTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "4",
                  "s" : [ {
                     "value" : [ "define ","TrueIsTrue",": " ]
                  }, {
                     "r" : "3",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "true"," is true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsTrue",
               "operand" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FalseIsTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","FalseIsTrue",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "r" : "5",
                        "value" : [ "false"," is true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsTrue",
               "operand" : {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullIsTrue",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","NullIsTrue",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "r" : "8",
                        "value" : [ "null"," is true" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsTrue",
               "operand" : {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }
            }
         } ]
      }
   }
}

### IsFalse
library TestSnippet version '1'
using QUICK
context Patient
define TrueIsFalse: true is false
define FalseIsFalse: false is false
define NullIsFalse: null is false
###

module.exports['IsFalse'] = {
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
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "TrueIsFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "4",
                  "s" : [ {
                     "value" : [ "define ","TrueIsFalse",": " ]
                  }, {
                     "r" : "3",
                     "s" : [ {
                        "r" : "2",
                        "value" : [ "true"," is false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "3",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsFalse",
               "operand" : {
                  "localId" : "2",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "true",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "7",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "FalseIsFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "7",
                  "s" : [ {
                     "value" : [ "define ","FalseIsFalse",": " ]
                  }, {
                     "r" : "6",
                     "s" : [ {
                        "r" : "5",
                        "value" : [ "false"," is false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "6",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsFalse",
               "operand" : {
                  "localId" : "5",
                  "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "valueType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "value" : "false",
                  "type" : "Literal"
               }
            }
         }, {
            "localId" : "10",
            "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
            "name" : "NullIsFalse",
            "context" : "Patient",
            "accessLevel" : "Public",
            "annotation" : [ {
               "type" : "Annotation",
               "s" : {
                  "r" : "10",
                  "s" : [ {
                     "value" : [ "define ","NullIsFalse",": " ]
                  }, {
                     "r" : "9",
                     "s" : [ {
                        "r" : "8",
                        "value" : [ "null"," is false" ]
                     } ]
                  } ]
               }
            } ],
            "expression" : {
               "localId" : "9",
               "resultTypeName" : "{urn:hl7-org:elm-types:r1}Boolean",
               "type" : "IsFalse",
               "operand" : {
                  "asType" : "{urn:hl7-org:elm-types:r1}Boolean",
                  "type" : "As",
                  "operand" : {
                     "localId" : "8",
                     "resultTypeName" : "{urn:hl7-org:elm-types:r1}Any",
                     "type" : "Null"
                  }
               }
            }
         } ]
      }
   }
}

