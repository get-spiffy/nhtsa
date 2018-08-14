# Changelog #

## v0.3.0 August 14 2018 ##

### Features ###

* Added Vehicles endpoint with VIN decoding


## v0.2.1 June 11 2017 ##

### Features ###

* Moved all calls to the nhtsa api to use https instead of http

### Bug Fixes ###

* Safety Seat Inspection Station Locator was using a hardcoded URL, moving it to use the constants used everywhere else in the project.

### Misc ###

* Slightly better to read string handling when building URIs, going with `#{BASE_URI}/#{END_POINT}` over `BASE_URI + END_POINT`
