#!/bin/sh
podman run --name dat-store -d --restart always -v $PWD/storage/dat:/dat -v $PWD/storage/dat-config:/dat-config dat-store:latest
