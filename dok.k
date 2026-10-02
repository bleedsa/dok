/ setup & util
src:"/**h*/void a();/**what*/int b();"
idxs:{((!#x)+)'&(#x)(x~)':y} / indexes of delim d in x

/ destruct src
opn:idxs["/**"];cls:idxs["*/"] / find opens, closes
os: opn src;    cs: cls src    / opens, closes indexes

inners:os{i+!(*y)-i:3+*x}'cs
`0:`k src inners
