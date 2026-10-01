/ setup & util
src:"/**h*/void a();/**what*/int b();"
idxs:{[d;x]((!#d)+)'x ss d} / indexes of delim d

/ destruct src
opn:idxs["/**"];cls:idxs["*/"] / find opens, closes
os: opn src;    cs: cls src    / opens, closes indexes

inners:os{i+!(*y)-i:3+*x}'cs
