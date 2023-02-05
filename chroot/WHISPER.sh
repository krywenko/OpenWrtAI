#!/bin/bash

/usr/local/bin/./whisper /tmp/mic.wav  --model tiny --language English  --fp16 False   -o /tmp -f txt
