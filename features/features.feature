Feature: I want to safely retrieve a series of files and/or directories using asynchronously.
and I want to specify a filter function as an argument

  Scenario: return 1 file
  Given all the "files" in tests that end with ".txt"
  Then there should be '1' objects

  Scenario: return 0 files
  Given all the "files" in tests that end with ".zip"
  Then there should be '0' objects

  Scenario: return all folders that start with an alpha
  Given all the "folders" in tests that start with a "alpha"
  Then there should be '6' objects
  
  Scenario: return all folders that start with a number
  And all the "folders" in tests that start with a "number"
  Then there should be '10' objects

  Scenario: return all files that start with a number
  Given all the "files" in tests that start with a "alpha"
  Then there should be '4' objects

  Scenario: return all files that start with a number
  Given all the "files" in tests that start with a "number"
  Then there should be '6' objects
