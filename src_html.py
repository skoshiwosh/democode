#!/usr/bin/env python
"""
    Template html with token strings for creating web page with images from input directory
    
    @version: 1.0
    @date: March 2016
    @author: Suzanne Berger
    @contact: zanefx7@gmail.com
"""

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
    '</td>',
    '</tr>',
    '<tr>',
    '<td>',
    '<img src=$IMGFILE width=$WIDTH height=$HEIGHT>',
    '</td>',
    '</tr>',
]

HTML_TAIL = ['</table>', '</body>', '</html>']

