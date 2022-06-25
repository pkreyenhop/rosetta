/* "fib.c" algol68g 2.8.5 */

#include <algol68g/a68g-config.h>
#include <algol68g/a68g.h>

#define _CODE_(n) PROP_T n (NODE_T * p) {\
  PROP_T self;

#define _EDOC_(n, q) UNIT (&self) = n;\
  SOURCE (&self) = q;\
  (void) p;\
  return (self);}

#define DIV_INT(i, j) ((double) (i) / (double) (j))
#define _N_(n) (node_register[n])
#define _S_(z) (STATUS (z))
#define _V_(z) (VALUE (z))

/* fib.a68: 3: n < 2 */
_CODE_ (_formula_82)
  A68_INT * n_85;
  GET_FRAME (n_85, A68_INT, 5, 0);
  PUSH_PRIMITIVE (p, (_V_ (n_85) < 2), A68_BOOL);
_EDOC_ (_formula_82, _N_ (82))

/* fib.a68: 3: 1 */
_CODE_ (_denotation_98)
  PUSH_PRIMITIVE (p, 1, A68_INT);
_EDOC_ (_denotation_98, _N_ (98))

/* fib.a68: 3: n - 1 */
_CODE_ (_formula_116)
  A68_INT * n_119;
  GET_FRAME (n_119, A68_INT, 5, 0);
  PUSH_PRIMITIVE (p, (_V_ (n_119) - 1), A68_INT);
_EDOC_ (_formula_116, _N_ (116))

/* fib.a68: 3: n - 2 */
_CODE_ (_formula_137)
  A68_INT * n_140;
  GET_FRAME (n_140, A68_INT, 5, 0);
  PUSH_PRIMITIVE (p, (_V_ (n_140) - 2), A68_INT);
_EDOC_ (_formula_137, _N_ (137))

/* fib.a68: 6: 42 */
_CODE_ (_denotation_193)
  PUSH_PRIMITIVE (p, 42, A68_INT);
_EDOC_ (_denotation_193, _N_ (193))

/* prelude: 0: BEGIN PROC fib = (INT n) INT: BEGIN (n < 2 | 1 | fib(n ... */
_CODE_ (_closed_41)
  ADDR_T _pop_41;
  _pop_41 = stack_pointer;
  OPEN_STATIC_FRAME (_N_ (43));
  FRAME_CLEAR (80);
  global_pointer = frame_pointer;
  initialise_frame (_N_ (43));
  EXECUTE_UNIT_TRACE (_N_ (150)); /* print(("fib(42) = ", fib(42), newline)) */
  CLOSE_FRAME;
_EDOC_ (_closed_41, _N_ (41))

