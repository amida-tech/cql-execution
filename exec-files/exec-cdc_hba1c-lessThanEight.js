const cql = require('../src/cql');
const measure = require('../json-elm/cdc_hba1c-lessThanEight.json');
const codes = require('../src/cql-code-service');
const cqlfhir = require('cql-exec-fhir');
const patients = require('../data/patients/cdc-patients');
const codeservice = require('../data/codes/cdc-codes');

const lib = new cql.Library(measure);
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
console.log(JSON.stringify(result, undefined, 2)); // eslint-disable-line no-console