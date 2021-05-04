const { watcher } = require('../../processor');


describe('Tests for processor watching file system', () => {
  it('watcher event test', () => {
    let testwatcher = watcher('data/patients/')
    testwatcher.on('change', function(evt, name) {
      console.log(evt);
      if (evt == 'update') {
        // on create or modify
      }
    
      if (evt == 'remove') {
        // on delete
      }
      });
  });
});