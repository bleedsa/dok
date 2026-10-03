/
* DOK: C DOCUMETATION GENERATOR IN K
\

/ setup & util
src:"/**a*/void a();/*q*//**b*//*c*//**d*/int b();"
idxs:{((!#x)+)'&(#x)(x~)':y} / indexes of delim d in x

/ destruct src
opn:{r@&(~"**"~)'x@{1_|(1+*x),x}'|'r:idxs["/*";x]}
doc:idxs["/**"];cls:idxs["*/"]
ds:doc src;os:opn src;cs:cls src / opens, closes indexes
cm:.[{[ds;os;cs]+(ds;cs@&(3=#)'q@<q:ds,os)}
     (ds;os;cs)
     {`0:$[>[#x;#y]
           "unclosed comment"
           "extra comment terminator"];
      `exit@1}]

/ basic parse
inners:(*m){i+!(*y)-i:3+*x}'*|m:+cm
outers:({1_x+!y-x}.)'(f'(f:{(*|x;*y)}.)'2':cm),,|#[src],*|*|cs
split:src@+(inners;outers)
