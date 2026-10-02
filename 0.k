/ setup & util
src:"/**a*/void a();/**b*/int b();/**q*//**wh*/I m();"
idxs:{((!#x)+)'&(#x)(x~)':y} / indexes of delim d in x

/ destruct src
opn:idxs["/**"];cls:idxs["*/"] / find opens, closes
os: opn src;    cs: cls src    / opens, closes indexes
cm:.[{+(x;y)}
     (os;cs)
     {`0:"unclosed doc comment";`exit@1}]

/ basic parse
inners:os{i+!(*y)-i:3+*x}'cs
outers:({1_x+!y-x}.)'(f'(f:{(*|x;*y)}.)'2':cm),,|#[src],*|*|cs
cmap:src@+(inners;outers)
