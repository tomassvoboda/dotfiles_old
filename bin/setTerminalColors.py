#!/usr/bin/env python
import sys
from os.path import expanduser
HOME = expanduser("~")

#make list from lines in file passed as argument
with open(sys.argv[1]) as fileInput:
  fileLines = fileInput.readlines()

# create new file
output = open(HOME+'/.config/terminal_colors', 'w+')
# write the name and author in comments
output.write(fileLines[0])
output.write(fileLines[1])
output.write('\n')
# write special colors
output.write('! special\n')
output.write('urxvt.foreground:   '+fileLines[3])
output.write('urxvt.background:   '+fileLines[4])
output.write('urxvt.borderColor:  '+fileLines[4])
output.write('urxvt.cursorColor:  '+fileLines[3])
# write rest of the colors
output.write('\n')
output.write('! black\n')
output.write('urxvt.color0:       '+fileLines[6])
output.write('urxvt.color8:       '+fileLines[14])

output.write('\n')
output.write('! red\n')
output.write('urxvt.color1:       '+fileLines[7])
output.write('urxvt.color9:       '+fileLines[15])

output.write('\n')
output.write('! green\n')
output.write('urxvt.color2:       '+fileLines[8])
output.write('urxvt.color10:      '+fileLines[16])

output.write('\n')
output.write('! yellow\n')
output.write('urxvt.color3:       '+fileLines[9])
output.write('urxvt.color11:      '+fileLines[17])

output.write('\n')
output.write('! blue\n')
output.write('urxvt.color4:       '+fileLines[10])
output.write('urxvt.color12:      '+fileLines[18])

output.write('\n')
output.write('! magenta\n')
output.write('urxvt.color5:       '+fileLines[11])
output.write('urxvt.color13:      '+fileLines[19])

output.write('\n')
output.write('! cyan\n')
output.write('urxvt.color6:       '+fileLines[12])
output.write('urxvt.color14:      '+fileLines[20])

output.write('\n')
output.write('! white\n')
output.write('urxvt.color7:       '+fileLines[13])
output.write('urxvt.color15:      '+fileLines[21])

