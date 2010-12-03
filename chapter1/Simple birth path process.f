REAL*8 N(50), T(50),Y,B,XX
PRINT *, 'SEED (POSITIVE NUMBER < M)'
READ *, XX
T(1)=0.0
N(1)=1.0
B=1.0
Y=RAND(XX)
DO I=1,49
    Y=RAND(XX)
    T(I+1)=-DLOG(Y)/(B*N(I))+T(I)
    N(I+1)=N(I)+1
    PRINT *, 'T', T(I+1), 'N', N(I+1)
ENDDO
STOP
END
C SUBROUTINE for the uniform random number on [0,1]
FUNCTION RAND(XX)
REAL*8 XX,A,M,D
A=16807.0
M=2147483647.0
ID=A*XX/M
D=ID
XX=A*XX-D*M
RAND=XX/M
RETURN
END
