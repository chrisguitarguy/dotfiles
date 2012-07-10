#! /usr/bin/env python
# -*- coding: utf-8 -*-

import glob
import os
import sys

DIR = os.path.abspath(os.path.dirname(__file__))
HOME = os.path.expanduser('~')


def find_linkables():
    """
    Look for all files ending with `.link` in the same directory as this file.
    Also finds all the subdirectories of this file. Returns a list of tuples
    (destination, linkname) of everything that should be symlinked.
    """
    links = glob.glob(os.path.join(DIR,  '*.link'))
    dirs = [os.path.join(DIR, i) for i in os.listdir(DIR) 
            if os.path.isdir(i) and not i.startswith('.')]
    rv = []
    for i in dirs + links:
        name = os.path.basename(i).split('.')[0]
        rv.append((i, os.path.join(HOME, '.'+name),))
    return rv


def maybe_delete(loc):
    """
    Deletes `loc` if it's a symlink
    """
    rv = False
    if os.path.islink(loc):
        try:
            os.remove(loc)
        except OSError:
            print('Could not remove %s' % loc)
        else:
            print('Removed %s' % loc)
            rv = True
    return rv


def make_links(linkables):
    """
    Take a list of tuples (source, name), and create symlink
    """
    for dest, name in linkables:
        maybe_delete(name)
        try:
            os.symlink(dest, name)
        except OSError:
            print('Could not symlink %s to %s' % (dest, name))
        else:
            print('Symlinked %s to %s' % (dest, name))


def make_vimtemp():
    d = os.path.join(HOME, '.vimtemp.d')
    if not os.path.exists(d):
        os.mkdir(d)


def main():
    """
    Main entry point for this script.
    """
    if 'nt' == os.name:
        print('This does not work on windows')
        sys.exit(1)
    try:
        action = sys.argv[1]
    except IndexError:
        action = 'install'
    linkables = find_linkables()
    if 'remove' == action:
        for src, name in linkables:
            maybe_delete(name)
    else:
        make_links(linkables)
    make_vimtemp()
    sys.exit(0)


if __name__ == '__main__':
    main()
