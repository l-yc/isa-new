#!/bin/bash

hugo

# We don't want the favicon right now
pushd public
rm favicon*
rm android-chrome*
rm apple-touch*
popd

#ISA=/mit/isa
ISA=/afs/athena.mit.edu/activity/i/isa
rm -rf $ISA/web_scripts/staging/
cp -r public $ISA/web_scripts/staging
