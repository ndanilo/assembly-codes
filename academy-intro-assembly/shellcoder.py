#!python3

import sys
from pwn import *

context(os='linux',arch='amd64',log_level='error')

file=ELF(sys.argv[1])
print(file.section('.text').hex())


