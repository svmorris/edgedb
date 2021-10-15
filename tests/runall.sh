#!/bin/bash
/bin/sh -c "ls -1" | xargs -I{} sh -c "echo running {} && python {}"
