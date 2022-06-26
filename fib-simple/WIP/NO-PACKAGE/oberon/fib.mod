MODULE fib;
  IMPORT Out;

PROCEDURE Fibr(n: INTEGER): INTEGER;
BEGIN
      IF n < 2 THEN
            RETURN  n
      ELSE
          RETURN Fibr(n-1)+Fibr(n-2)
      END
END Fibr;


BEGIN
  Out.String("fib(42) = ");
  Out.Int(Fibr(42),0);
  Out.Ln;
END fib.
  
