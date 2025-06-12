#!/bin/bash

git tag -d v0.0.1

git push origin --delete v0.0.1

git tag v0.0.1

git push origin v0.0.1