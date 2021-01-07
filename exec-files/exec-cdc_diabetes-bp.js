const cql = require('../src/cql');
const measure = require('../json-elm/cdc_diabetes-bp.json');
const fhirhelpers = require('../json-elm/FHIRHelpers.json');
const codes = require('../src/cql-code-service');
const cqlfhir = require('cql-exec-fhir');
const patients = require('../data/patients/cdc_diabetes-bp-patients');
const codeservice = require('../data/codes/cdc_diabetes-bp-codes');

const includedLibs = {
  FHIRHelpers: fhirhelpers
};
const lib = new cql.Library(measure, new cql.Repository(includedLibs));
const cservice = new codes.CodeService(codeservice);
const parameters = {
  MeasurementPeriod: new cql.Interval(
    cql.DateTime.parse('2018-12-31'),
    cql.DateTime.parse('2019-12-31'),
    true,
    false
  )
};

const executor = new cql.Executor(lib, cservice, parameters);
const patientSource = cqlfhir.PatientSource.FHIRv400();
patientSource.loadBundles(patients);

const result = executor.exec(patientSource);
console.log(result.patientResults); // eslint-disable-line no-console
