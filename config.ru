#!/usr/bin/env rackup
# encoding: utf-8

# This file can be used to start Tennpipes,
# just execute it from the command line.

require File.expand_path("../config/boot.rb", __FILE__)

run Tennpipes.application
