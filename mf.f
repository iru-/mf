variable reg-a
variable reg-b

: a!  reg-a ! ;
: a   reg-a @ ;
: b!  reg-b ! ;
: b   reg-b @ ;

: @b  b @ ;
: !b  b ! ;

: @+   a @  a cell + a! ;
: !+   a !  a cell + a! ;
: c@+  a c@  a 1+ a! ;
: c!+  a c!  a 1+ a! ;

: push  postpone >r ; immediate
: pop   postpone r> ; immediate

: for
  postpone begin postpone dup
  postpone while postpone push ; immediate

: next
  postpone pop    postpone 1-
  postpone repeat postpone drop ; immediate

