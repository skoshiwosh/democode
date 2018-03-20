#!/usr/bin/env python
'''
src_wedge
    
@version: 1.0
@date: March 2016
@authors: Suzanne Berger
@contact: info@zanefx.com
'''

HTML_HEAD = [
    '<!doctype html>',
    '<html>',
    '<head>',
    '<meta charset="UTF-8">',
    '<title>Patterns</title>',
    '<style type="text/css">',
    'body {background: #999999;',
    'color: black;',
    'margin-left: 72px;'
    'margin-right: 72px;'
    'margin-top: 36px;}'
    '</style>',
    '</head>',
    '<body>',
    '<table border="1" cellpadding="5" cellspacing="10">',
    '<caption><h1> Patterns </h1></caption>'
]

HTML_IMAGE = [
    '<tr>',
    '<td style="background-color:lightgrey;">',
    '<h3 style="text-align:center;"> $IMGTITLE </h3>',
    '</td>'
    '</tr>',
    '<tr>',
    '<td >',
    '<img src=$IMGFILE width=$WIDTH height=$HEIGHT>',
    '</td>',
    '</tr>',
]

HTML_TAIL = ['</table>', '</body>', '</html>']

