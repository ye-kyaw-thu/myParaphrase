#!/bin/bash
# for removing "\u200b" and "\u200d" characters
# written by Ye Kyaw Thu, Visiting Professor, LST, NECTEC

sed -i -e "s/$(echo -ne '\u200b')//g; s/$(echo -ne '\u200d')//g;" $1;
