#! /usr/bin/env python
# -*- coding: utf-8 -*-

import os

from install import DIR, find_linkables

def main():
    links = find_linkables()
    for l in links:
        name = l.replace(DIR, '').strip('/').split('.')[0]
        os.system('rm ~/.' + name)

if __name__ == '__main__':
    main()
