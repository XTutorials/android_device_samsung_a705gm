:INPUT,FORWARD,OUTPUT
-m frag --fragid 1:42;=;OK
-m frag --fraglen 42;=;OK
-m frag --fragres;=;OK
-m frag --fragfirst;=;OK
-m frag --fragmore;=;OK
-m frag --fraglast;=;OK
-m frag ! --fragid 1 ! --fraglen 42 --fragres --fragfirst;=;OK
-m frag --fragfirst --fragmore;=;OK
-m frag --fragfirst --fraglast;=;OK
-m frag --fraglast --fragmore;;FAIL