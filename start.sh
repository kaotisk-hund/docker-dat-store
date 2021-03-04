#!/bin/sh
docker run --name dat-store -v {$PWD}/storage/dat:/dat -v {$PWD}/storage/dat-config:/dat-config dat-store:latest
