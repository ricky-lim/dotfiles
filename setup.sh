#!/usr/bin/env bash
# -*- coding: utf-8 -*-

for f in $(ls -a | egrep "^\.[a-z_]+" | grep -v '.git')
do
	ln -s ${PWD}/$f ${HOME}/$f
done

echo "setup: DONE"
