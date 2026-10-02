/ setup & util
src:"/**h*/void a();/**what*/int b();"
idxs:{[d;x]((!#d)+)'&*'1_{0<#*|x}{[d;x](q;i):x;(d~#[d]#i;1_i)}[d]\(0N;x)} / indexes of delim d

/ destruct src
opn:idxs["/**"];cls:idxs["*/"] / find opens, closes
os: opn src;    cs: cls src    / opens, closes indexes

inners:os{i+!(*y)-i:3+*x}'cs
`0:`k src inners
