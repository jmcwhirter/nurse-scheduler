Overview:
I'm going to use OptaPlanner to create a scheduling program for nurses.

TODO: Need to switch to a webserver base image (nginx?) and add the WAR to it.
https://docs.optaplanner.org/7.4.1.Final/optaplanner-docs/html_single/index.html#getTheReleaseZipAndRunTheExamples

History:
* Created a Dockerfile to pull the latest zip on top of Alpine.
* The examples won't run on a machine without a video card (uses Swing). doh.
