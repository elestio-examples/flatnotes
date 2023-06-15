#!/usr/bin/env bash

sed -i "s~FROM --platform=\$BUILDPLATFORM python:3.11-slim-bullseye AS build~FROM python:3.11-slim-bullseye AS build~g" ./Dockerfile

docker build . --tag elestio4test/flatnotes:latest

sed -i "s~FROM python:3.11-slim-bullseye AS build~FROM --platform=\$BUILDPLATFORM python:3.11-slim-bullseye AS build~g" ./Dockerfile