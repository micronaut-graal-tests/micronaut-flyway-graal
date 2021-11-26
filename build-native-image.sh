#!/bin/bash

./gradlew nativeCompile
cp build/native/nativeCompile/flyway-h2 .
