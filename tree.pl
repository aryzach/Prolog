
switch(leaf(A),leaf(A)).

switch(tree(A,B),tree(BS,AS)):- switch(A,AS), switch(B,BS).



