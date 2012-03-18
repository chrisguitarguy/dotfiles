#! /usr/bin/env python
# -*- coding: utf-8 -*-

import glob
import os

DIR = os.path.abspath(os.path.dirname(__file__))

def find_linkables():
   links = glob.glob(os.path.join(DIR,  '*.link'))
   dirs = [os.path.join(DIR, i) for i in os.listdir(DIR) 
            if os.path.isdir(i) and not i.startswith('.')]
   return dirs + links


def handle_result(r, src, dest):
    if 0 == r:
        print("Linked {} to {}".format(src, dest))
    else:
        print("Problem linking {} to {}".format(src, dest))


def main():
    linkables = find_linkables()
    for l in linkables:
        name = l.replace(DIR, '').strip('/').split('.')[0]
        src = os.path.join(DIR, l)
        result = os.system('ln -s ' + src + ' ~/.' + name)
        handle_result(result, src, '~/.'+name)

if __name__ == '__main__':
    main()
