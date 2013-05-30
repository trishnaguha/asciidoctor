module Asciidoctor
module HTML5
  # Internal: Generate the default stylesheet for CodeRay
  #
  # returns the default CodeRay stylesheet as a String
  def self.default_coderay_stylesheet
    ::Asciidoctor::Helpers.require_library 'coderay'
    ::CodeRay::Encoders[:html]::CSS.new(:default).stylesheet
  end

  # Internal: Generate the default stylesheet for Asciidoctor
  #
  # returns the default Asciidoctor stylesheet as a String
  def self.default_asciidoctor_stylesheet
    <<'DEFAULT_ASCIIDOCTOR_STYLESHEET'
/* Asciidoctor default stylesheet | MIT License | http://asciidoctor.org */
article, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary { display: block; }
audio, canvas, video { display: inline-block; }
audio:not([controls]) { display: none; height: 0; }
[hidden] { display: none; }
html { font-family: sans-serif; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }
body { margin: 0; }
a:focus { outline: thin dotted; }
a:active, a:hover { outline: 0; }
h1 { font-size: 2em; margin: 0.67em 0; }
abbr[title] { border-bottom: 1px dotted; }
b, strong { font-weight: bold; }
dfn { font-style: italic; }
hr { -moz-box-sizing: content-box; box-sizing: content-box; height: 0; }
mark { background: #ff0; color: #000; }
code, tt, kbd, pre, samp { font-family: monospace, serif; font-size: 1em; }
pre { white-space: pre-wrap; }
q { quotes: "\201C" "\201D" "\2018" "\2019"; }
small { font-size: 80%; }
sub, sup { font-size: 75%; line-height: 0; position: relative; vertical-align: baseline; }
sup { top: -0.5em; }
sub { bottom: -0.25em; }
img { border: 0; }
svg:not(:root) { overflow: hidden; }
figure { margin: 0; }
fieldset { border: 1px solid #c0c0c0; margin: 0 2px; padding: 0.35em 0.625em 0.75em; }
legend { border: 0; padding: 0; }
button, input, select, textarea { font-family: inherit; font-size: 100%; margin: 0; }
button, input { line-height: normal; }
button, select { text-transform: none; }
button, html input[type="button"], input[type="reset"], input[type="submit"] { -webkit-appearance: button; cursor: pointer; }
button[disabled], html input[disabled] { cursor: default; }
input[type="checkbox"], input[type="radio"] { box-sizing: border-box; padding: 0; }
input[type="search"] { -webkit-appearance: textfield; -moz-box-sizing: content-box; -webkit-box-sizing: content-box; box-sizing: content-box; }
input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration { -webkit-appearance: none; }
button::-moz-focus-inner, input::-moz-focus-inner { border: 0; padding: 0; }
textarea { overflow: auto; vertical-align: top; }
table { border-collapse: collapse; border-spacing: 0; }
*, *:before, *:after { -moz-box-sizing: border-box; -webkit-box-sizing: border-box; box-sizing: border-box; }
html, body { font-size: 100%; }
body { background: white; color: #222222; padding: 0; margin: 0; font-family: "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif; font-weight: normal; font-style: normal; line-height: 1; position: relative; }
a:focus { outline: none; }
img, object, embed { max-width: 100%; height: auto; }
object, embed { height: 100%; }
img { -ms-interpolation-mode: bicubic; }
#map_canvas img, #map_canvas embed, #map_canvas object, .map_canvas img, .map_canvas embed, .map_canvas object { max-width: none !important; }
.left { float: left !important; }
.right { float: right !important; }
.text-left { text-align: left !important; }
.text-right { text-align: right !important; }
.text-center { text-align: center !important; }
.text-justify { text-align: justify !important; }
.hide { display: none; }
.antialiased, body { -webkit-font-smoothing: antialiased; }
img { display: inline-block; }
textarea { height: auto; min-height: 50px; }
select { width: 100%; }
p.lead, .paragraph.lead > p, #preamble > .sectionbody > .paragraph:first-of-type p { font-size: 1.21875em; line-height: 1.6; }
.subheader, .admonitionblock td.content > .title, .exampleblock > .title, .imageblock > .title, .listingblock > .title, .literalblock > .title, .openblock > .title, .paragraph > .title, .quoteblock > .title, .sidebarblock > .title, .tableblock > .title, .verseblock > .title, .ulist > .title, .olist > .title, .dlist > .title, .qlist > .title, .tableblock > caption { line-height: 1.4; color: #7a2518; font-weight: 300; margin-top: 0.2em; margin-bottom: 0.5em; }
div, dl, dt, dd, ul, ol, li, h1, h2, h3, #toctitle, .sidebarblock > .content > .title, h4, h5, h6, pre, form, p, blockquote, th, td { margin: 0; padding: 0; direction: ltr; }
a { color: #005498; text-decoration: underline; line-height: inherit; }
a:hover, a:focus { color: #00467f; }
a img { border: none; }
p { font-family: inherit; font-weight: normal; font-size: 1em; line-height: 1.6; margin-bottom: 1.25em; text-rendering: optimizeLegibility; }
p aside { font-size: 0.875em; line-height: 1.35; font-style: italic; }
h1, h2, h3, #toctitle, .sidebarblock > .content > .title, h4, h5, h6 { font-family: Georgia, "URW Bookman L", Helvetica, Arial, sans-serif; font-weight: normal; font-style: normal; color: #ba3925; text-rendering: optimizeLegibility; margin-top: 1em; margin-bottom: 0.5em; line-height: 1.2125em; }
h1 small, h2 small, h3 small, #toctitle small, .sidebarblock > .content > .title small, h4 small, h5 small, h6 small { font-size: 60%; color: #e99b8f; line-height: 0; }
h1 { font-size: 2.125em; }
h2 { font-size: 1.6875em; }
h3, #toctitle, .sidebarblock > .content > .title { font-size: 1.375em; }
h4 { font-size: 1.125em; }
h5 { font-size: 1.125em; }
h6 { font-size: 1em; }
hr { border: solid #dddddd; border-width: 1px 0 0; clear: both; margin: 1.25em 0 1.1875em; height: 0; }
em, i { font-style: italic; line-height: inherit; }
strong, b { font-weight: bold; line-height: inherit; }
small { font-size: 60%; line-height: inherit; }
code, tt { font-family: Consolas, "Liberation Mono", Courier, monospace; font-weight: normal; color: #6d180b; }
ul, ol, dl { font-size: 1em; line-height: 1.6; margin-bottom: 1.25em; list-style-position: outside; font-family: inherit; }
ul li ul, ul li ol { margin-left: 1.5em; margin-bottom: 0; font-size: 1em; }
ul.square li ul, ul.circle li ul, ul.disc li ul { list-style: inherit; }
ul.square { list-style-type: square; }
ul.circle { list-style-type: circle; }
ul.disc { list-style-type: disc; }
ul.no-bullet { list-style: none; }
ol li ul, ol li ol { margin-left: 1.5em; margin-bottom: 0; }
dl dt { margin-bottom: 0.3125em; font-weight: bold; }
dl dd { margin-bottom: 1.25em; }
abbr, acronym { text-transform: uppercase; font-size: 90%; color: #222222; border-bottom: 1px dotted #dddddd; cursor: help; }
abbr { text-transform: none; }
blockquote { margin: 0 0 1.25em; padding: 0.5625em 1.25em 0 1.1875em; border-left: 1px solid #dddddd; }
blockquote cite { display: block; font-size: inherit; color: #555555; }
blockquote cite:before { content: "\2014 \0020"; }
blockquote cite a, blockquote cite a:visited { color: #555555; }
blockquote, blockquote p { line-height: 1.6; color: #6f6f6f; }
.vcard { display: inline-block; margin: 0 0 1.25em 0; border: 1px solid #dddddd; padding: 0.625em 0.75em; }
.vcard li { margin: 0; display: block; }
.vcard .fn { font-weight: bold; font-size: 0.9375em; }
.vevent .summary { font-weight: bold; }
.vevent abbr { cursor: default; text-decoration: none; font-weight: bold; border: none; padding: 0 0.0625em; }
@media only screen and (min-width: 48em) { h1, h2, h3, #toctitle, .sidebarblock > .content > .title, h4, h5, h6 { line-height: 1.4; }
  h1 { font-size: 2.75em; }
  h2 { font-size: 2.3125em; }
  h3, #toctitle, .sidebarblock > .content > .title { font-size: 1.6875em; }
  h4 { font-size: 1.4375em; } }
.print-only { display: none !important; }
@media print { * { background: transparent !important; color: #000 !important; box-shadow: none !important; text-shadow: none !important; }
  a, a:visited { text-decoration: underline; }
  a[href]:after { content: " (" attr(href) ")"; }
  abbr[title]:after { content: " (" attr(title) ")"; }
  .ir a:after, a[href^="javascript:"]:after, a[href^="#"]:after { content: ""; }
  pre, blockquote { border: 1px solid #999; page-break-inside: avoid; }
  thead { display: table-header-group; }
  tr, img { page-break-inside: avoid; }
  img { max-width: 100% !important; }
  @page { margin: 0.5cm; }
  p, h2, h3, #toctitle, .sidebarblock > .content > .title { orphans: 3; widows: 3; }
  h2, h3, #toctitle, .sidebarblock > .content > .title { page-break-after: avoid; }
  .hide-on-print { display: none !important; }
  .print-only { display: block !important; }
  .hide-for-print { display: none !important; }
  .show-for-print { display: inherit !important; } }
table { background: white; margin-bottom: 1.25em; border: solid 1px #dddddd; }
table thead, table tfoot { background: whitesmoke; font-weight: bold; }
table thead tr th, table thead tr td, table tfoot tr th, table tfoot tr td { padding: 0.5em 0.625em 0.625em; font-size: inherit; color: #222222; text-align: left; }
table tr th, table tr td { padding: 0.5625em 0.625em; font-size: inherit; color: #222222; }
table tr.even, table tr.alt, table tr:nth-of-type(even) { background: #f9f9f9; }
table thead tr th, table tfoot tr th, table tbody tr td, table tr td, table tfoot tr td { display: table-cell; line-height: 1.6; }
pre > code, pre > tt { color: #222222; }
tt { font-size: 0.9375em; padding: 1px 3px 0; white-space: nowrap; background-color: #f2f2f2; border: 1px solid #cccccc; -webkit-border-radius: 4px; border-radius: 4px; text-shadow: none; }
kbd.keyseq { color: #555555; }
kbd:not(.keyseq) { display: inline-block; color: #222222; font-size: 0.75em; line-height: 1.4; background-color: #F7F7F7; border: 1px solid #ccc; -webkit-border-radius: 3px; border-radius: 3px; -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, 0.2), 0 0 0 2px white inset; box-shadow: 0 1px 0 rgba(0, 0, 0, 0.2), 0 0 0 2px white inset; margin: -0.15em 0.15em 0 0.15em; padding: 0.2em 0.6em 0.2em 0.5em; vertical-align: middle; white-space: nowrap; }
kbd kbd:first-child { margin-left: 0; }
kbd kbd:last-child { margin-right: 0; }
.menuseq, .menu { color: #090909; }
p a > tt { text-decoration: underline; }
p a > tt:hover { color: #561309; }
#header, #content, #footnotes, #footer { width: 100%; margin-left: auto; margin-right: auto; margin-top: 0; margin-bottom: 0; max-width: 62.5em; *zoom: 1; position: relative; padding-left: 0.9375em; padding-right: 0.9375em; }
#header:before, #header:after, #content:before, #content:after, #footnotes:before, #footnotes:after, #footer:before, #footer:after { content: " "; display: table; }
#header:after, #content:after, #footnotes:after, #footer:after { clear: both; }
#header { margin-bottom: 2.5em; }
#header > h1 { color: black; font-weight: normal; border-bottom: 1px solid #dddddd; margin-bottom: -28px; padding-bottom: 32px; }
#header span { color: #6f6f6f; }
#header #revnumber { text-transform: capitalize; }
#header br { display: none; }
#header br + span { padding-left: 3px; }
#header br + span:before { content: "\2013 \0020"; }
#toc { border-bottom: 3px double #ebebeb; padding-bottom: 1.25em; }
#toc > ol { margin-left: 0.25em; }
#toc ol.sectlevel0 > li > a { font-style: italic; }
#toc ol.sectlevel0 ol.sectlevel1 { margin-left: 0; margin-top: 0.5em; margin-bottom: 0.5em; }
#toc ol { list-style-type: none; }
#toctitle { color: #7a2518; }
@media only screen and (min-width: 80em) { body.toc2 { padding-left: 20em; }
  #toc.toc2 { position: fixed; width: 20em; left: 0; top: 0; border-right: 1px solid #ebebeb; border-bottom: 0; z-index: 1000; padding: 1em; height: 100%; overflow: auto; }
  #toc.toc2 #toctitle { margin-top: 0; }
  #toc.toc2 > ol { font-size: .95em; }
  #toc.toc2 ol ol { margin-left: 0; padding-left: 1em; }
  #toc.toc2 ol.sectlevel0 ol.sectlevel1 { padding-left: 0; margin-top: 0.5em; margin-bottom: 0.5em; } }
#footer { max-width: 100%; background-color: #222222; padding: 1.25em; }
#footer-text { color: #dddddd; line-height: 1.44; }
.sect1 { border-bottom: 3px double #ebebeb; padding-bottom: 1.25em; }
.sect1:last-of-type { border-bottom: 0; }
#content h1 > a.anchor, h2 > a.anchor, h3 > a.anchor, #toctitle > a.anchor, .sidebarblock > .content > .title > a.anchor, h4 > a.anchor, h5 > a.anchor, h6 > a.anchor { position: absolute; width: 1em; margin-left: -1em; display: block; text-decoration: none; visibility: hidden; text-align: center; font-weight: normal; }
#content h1 > a.anchor:before, h2 > a.anchor:before, h3 > a.anchor:before, #toctitle > a.anchor:before, .sidebarblock > .content > .title > a.anchor:before, h4 > a.anchor:before, h5 > a.anchor:before, h6 > a.anchor:before { content: '\00A7'; font-size: .85em; vertical-align: text-top; display: block; margin-top: 0.05em; }
#content h1:hover > a.anchor, #content h1 > a.anchor:hover, h2:hover > a.anchor, h2 > a.anchor:hover, h3:hover > a.anchor, #toctitle:hover > a.anchor, .sidebarblock > .content > .title:hover > a.anchor, h3 > a.anchor:hover, #toctitle > a.anchor:hover, .sidebarblock > .content > .title > a.anchor:hover, h4:hover > a.anchor, h4 > a.anchor:hover, h5:hover > a.anchor, h5 > a.anchor:hover, h6:hover > a.anchor, h6 > a.anchor:hover { visibility: visible; }
#content h1 > a.link, h2 > a.link, h3 > a.link, #toctitle > a.link, .sidebarblock > .content > .title > a.link, h4 > a.link, h5 > a.link, h6 > a.link { color: #ba3925; text-decoration: none; }
#content h1 > a.link:hover, h2 > a.link:hover, h3 > a.link:hover, #toctitle > a.link:hover, .sidebarblock > .content > .title > a.link:hover, h4 > a.link:hover, h5 > a.link:hover, h6 > a.link:hover { color: #a53221; }
.admonitionblock td.content > .title, .exampleblock > .title, .imageblock > .title, .listingblock > .title, .literalblock > .title, .openblock > .title, .paragraph > .title, .quoteblock > .title, .sidebarblock > .title, .tableblock > .title, .verseblock > .title, .ulist > .title, .olist > .title, .dlist > .title, .qlist > .title { text-align: left; font-weight: bold; }
.tableblock > caption { text-align: left; font-weight: bold; white-space: nowrap; overflow: visible; max-width: 0; }
table.tableblock #preamble > .sectionbody > .paragraph:first-of-type p { font-size: inherit; }
.admonitionblock > table { border: 0; background: none; width: 100%; }
.admonitionblock > table td.icon { text-align: center; width: 80px; }
.admonitionblock > table td.icon img { max-width: none; }
.admonitionblock > table td.icon .title { font-weight: bold; text-transform: uppercase; }
.admonitionblock > table td.content { padding-left: 1.125em; padding-right: 1.25em; border-left: 1px solid #dddddd; color: #6f6f6f; }
.admonitionblock > table td.content > .paragraph:last-child > p { margin-bottom: 0; }
.exampleblock > .content { border-style: solid; border-width: 1px; border-color: #e6e6e6; margin-bottom: 1.25em; padding: 1.25em; background: white; -webkit-border-radius: 4px; border-radius: 4px; }
.exampleblock > .content h1, .exampleblock > .content h2, .exampleblock > .content h3, .exampleblock > .content #toctitle, .sidebarblock.exampleblock > .content > .title, .exampleblock > .content h4, .exampleblock > .content h5, .exampleblock > .content h6, .exampleblock > .content p { color: #333333; }
.exampleblock > .content > :first-child { margin-top: 0; }
.exampleblock > .content > :last-child { margin-bottom: 0; }
.exampleblock > .content h1, .exampleblock > .content h2, .exampleblock > .content h3, .exampleblock > .content #toctitle, .sidebarblock.exampleblock > .content > .title, .exampleblock > .content h4, .exampleblock > .content h5, .exampleblock > .content h6 { line-height: 1; margin-bottom: 0.625em; }
.exampleblock > .content h1.subheader, .exampleblock > .content h2.subheader, .exampleblock > .content h3.subheader, .exampleblock > .content .subheader#toctitle, .sidebarblock.exampleblock > .content > .subheader.title, .exampleblock > .content h4.subheader, .exampleblock > .content h5.subheader, .exampleblock > .content h6.subheader { line-height: 1.4; }
.exampleblock > .content > :last-child > :last-child, .exampleblock > .content .olist > ol > li:last-child > :last-child, .exampleblock > .content .ulist > ul > li:last-child > :last-child { margin-bottom: 0; }
.exampleblock.result > .content { -webkit-box-shadow: 0 1px 8px #d9d9d9; box-shadow: 0 1px 8px #d9d9d9; }
.imageblock { margin-bottom: 1.25em; }
.sidebarblock { border-style: solid; border-width: 1px; border-color: #d9d9d9; margin-bottom: 1.25em; padding: 1.25em; background: #f2f2f2; -webkit-border-radius: 4px; border-radius: 4px; }
.sidebarblock h1, .sidebarblock h2, .sidebarblock h3, .sidebarblock #toctitle, .sidebarblock > .content > .title, .sidebarblock h4, .sidebarblock h5, .sidebarblock h6, .sidebarblock p { color: #333333; }
.sidebarblock > :first-child { margin-top: 0; }
.sidebarblock > :last-child { margin-bottom: 0; }
.sidebarblock h1, .sidebarblock h2, .sidebarblock h3, .sidebarblock #toctitle, .sidebarblock > .content > .title, .sidebarblock h4, .sidebarblock h5, .sidebarblock h6 { line-height: 1; margin-bottom: 0.625em; }
.sidebarblock h1.subheader, .sidebarblock h2.subheader, .sidebarblock h3.subheader, .sidebarblock .subheader#toctitle, .sidebarblock > .content > .subheader.title, .sidebarblock h4.subheader, .sidebarblock h5.subheader, .sidebarblock h6.subheader { line-height: 1.4; }
.sidebarblock > .content > .title { color: #7a2518; margin-top: 0; line-height: 1.6; }
.sidebarblock > .content > .paragraph:last-child p { margin-bottom: 0; }
.literalblock, .listingblock { margin-bottom: 1.25em; }
.literalblock > .content > pre, .listingblock > .content > pre { background: none; color: inherit; font-family: Consolas, "Liberation Mono", Courier, monospace; border-width: 1px 0; border-style: dotted; border-color: #bfbfbf; -webkit-border-radius: 4px; border-radius: 4px; padding: 0.75em 0.75em 0.5em 0.75em; white-space: pre; overflow-x: auto; line-height: 1.6; }
.literalblock > .content > pre > code, .literalblock > .content > pre > tt, .listingblock > .content > pre > code, .listingblock > .content > pre > tt { color: inherit; font-family: Consolas, "Liberation Mono", Courier, monospace; padding: 0; background: none; font-weight: normal; }
@media only screen { .literalblock > .content > pre, .listingblock > .content > pre { font-size: 0.8em; } }
@media only screen and (min-width: 48em) { .literalblock > .content > pre, .listingblock > .content > pre { font-size: 0.9em; } }
@media only screen and (min-width: 80em) { .literalblock > .content > pre, .listingblock > .content > pre { font-size: 1em; } }
.listingblock:hover .xml:before { content: "xml"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .html:before { content: "html"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .ruby:before { content: "ruby"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .asciidoc:before { content: "asciidoc"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .java:before { content: "java"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .javascript:before { content: "javascript"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .css:before { content: "css"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.listingblock:hover .scss:before { content: "scss"; text-transform: uppercase; float: right; font-size: 0.9em; color: #999; }
.quoteblock { margin: 0 0 1.25em; padding: 0.5625em 1.25em 0 1.1875em; border-left: 1px solid #dddddd; }
.quoteblock blockquote { margin: 0 0 1.25em 0; padding: 0; border: 0; }
.quoteblock blockquote > .paragraph:last-child p { margin-bottom: 0; }
.quoteblock .attribution { padding-bottom: 0.5625em; font-size: inherit; color: #555555; }
.quoteblock .attribution br { display: none; }
.quoteblock .attribution cite { display: block; margin-bottom: 0.625em; }
table thead th, table tfoot th { font-weight: bold; }
table.tableblock.grid-all { border-collapse: separate; border-spacing: 1px; -webkit-border-radius: 4px; border-radius: 4px; border-top: 1px solid #dddddd; border-bottom: 1px solid #dddddd; }
table.tableblock.frame-topbot, table.tableblock.frame-none { border-left: 0; border-right: 0; }
table.tableblock.frame-sides, table.tableblock.frame-none { border-top: 0; border-bottom: 0; }
table.tableblock td .paragraph:last-child p, table.tableblock td > p:last-child { margin-bottom: 0; }
th.tableblock.halign-left, td.tableblock.halign-left { text-align: left; }
th.tableblock.halign-right, td.tableblock.halign-right { text-align: right; }
th.tableblock.halign-center, td.tableblock.halign-center { text-align: center; }
th.tableblock.halign-top, td.tableblock.halign-top { vertical-align: top; }
th.tableblock.halign-bottom, td.tableblock.halign-bottom { vertical-align: bottom; }
th.tableblock.halign-middle, td.tableblock.halign-middle { vertical-align: middle; }
p.tableblock.header { color: #222222; font-weight: bold; }
td > div.verse { white-space: pre; }
ul { margin-left: 1.75em; }
ol { margin-left: 1.875em; }
dl dd { margin-left: 1.125em; }
dl dd:last-child, dl dd:last-child > :last-child { margin-bottom: 0; }
.unstyled dl dt { font-weight: normal; font-style: normal; }
ol > li p, ul > li p, ul dd, ol dd { margin-bottom: 0.625em; }
ol.arabic { list-style-type: decimal; }
ol.loweralpha { list-style-type: lower-alpha; }
ol.upperalpha { list-style-type: upper-alpha; }
ol.lowerroman { list-style-type: lower-roman; }
ol.upperroman { list-style-type: upper-roman; }
.hdlist > table, .colist > table { border: 0; background: none; }
.hdlist > table > tbody > tr, .colist > table > tbody > tr { background: none; }
.literalblock + .colist, .listingblock + .colist { margin-top: -0.5em; }
.colist > table tr > td:first-of-type { padding: 0 .8em; line-height: 1; }
.colist > table tr > td:last-of-type { padding: 0.25em 0; }
td.hdlist1 { vertical-align: top; padding-right: .8em; }
.qanda > ol > li > p:first-child { color: #00467f; }
span.footnote, span.footnoteref { vertical-align: super; font-size: 0.875em; }
span.footnote a, span.footnoteref a { text-decoration: none; }
#footnotes { padding: 0.75em 0.375em; margin-bottom: 1.25em; border-top: 1px solid #dddddd; }
#footnotes hr { display: none; }
#footnotes .footnote { line-height: 1.3; font-size: 0.875em; margin-left: 1.2em; text-indent: -1.2em; margin-bottom: .2em; }
#footnotes .footnote a { font-weight: bold; text-decoration: none; }
#footnotes .footnote:last-of-type { margin-bottom: 0; }
.gist .file-data > table { border: none; background: #fff; width: 100%; margin-bottom: 0; }
.gist .file-data > table td.line-data { width: 99%; }
div.unbreakable { page-break-inside: avoid; }
span.big { font-size: larger; }
span.small { font-size: smaller; }
span.underline { text-decoration: underline; }
span.overline { text-decoration: overline; }
span.line-through { text-decoration: line-through; }
span.aqua { color: #00bfbf; }
span.aqua-background { background-color: #00fafa; }
span.black { color: black; }
span.black-background { background-color: black; }
span.blue { color: #0000bf; }
span.blue-background { background-color: #0000fa; }
span.fuchsia { color: #bf00bf; }
span.fuchsia-background { background-color: #fa00fa; }
span.gray { color: #606060; }
span.gray-background { background-color: #7d7d7d; }
span.green { color: #006000; }
span.green-background { background-color: #007d00; }
span.lime { color: #00bf00; }
span.lime-background { background-color: #00fa00; }
span.maroon { color: #600000; }
span.maroon-background { background-color: #7d0000; }
span.navy { color: #000060; }
span.navy-background { background-color: #00007d; }
span.olive { color: #606000; }
span.olive-background { background-color: #7d7d00; }
span.purple { color: #600060; }
span.purple-background { background-color: #7d007d; }
span.red { color: #bf0000; }
span.red-background { background-color: #fa0000; }
span.silver { color: #909090; }
span.silver-background { background-color: #bcbcbc; }
span.teal { color: #006060; }
span.teal-background { background-color: #007d7d; }
span.white { color: #bfbfbf; }
span.white-background { background-color: #fafafa; }
span.yellow { color: #bfbf00; }
span.yellow-background { background-color: #fafa00; }
.admonitionblock td.icon [class^="icon-"]:before { font-size: 2.5em; text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5); cursor: default; }
.admonitionblock td.icon .icon-note:before { content: "\f05a"; color: #005498; color: #003f72; }
.admonitionblock td.icon .icon-tip:before { content: "\f0eb"; text-shadow: 1px 1px 2px rgba(155, 155, 0, 0.8); color: #111; }
.admonitionblock td.icon .icon-warning:before { content: "\f071"; color: #bf6900; }
.admonitionblock td.icon .icon-caution:before { content: "\f06d"; color: #bf3400; }
.admonitionblock td.icon .icon-important:before { content: "\f06a"; color: #bf0000; }
.conum { display: inline-block; color: white !important; background-color: #222222; -webkit-border-radius: 100px; border-radius: 100px; text-align: center; width: 20px; height: 20px; font-size: 12px; font-weight: bold; line-height: 20px; font-family: Arial, sans-serif; font-style: normal; position: relative; top: -2px; letter-spacing: -1px; }
.conum * { color: white !important; }
.conum:empty { display: none; }
pre .comment .conum { left: -20px; }
.literalblock > .content > pre, .listingblock > .content > pre { -webkit-border-radius: 0; border-radius: 0; }
DEFAULT_ASCIIDOCTOR_STYLESHEET
  end
end
end
