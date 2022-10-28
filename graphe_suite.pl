gr(a,b,2).
gr(a,g,6).
gr(b,e,2).
gr(b,c,7).
gr(g,e,1).
gr(g,h,4).
gr(e,f,2).
gr(f,c,3).
gr(f,h,2).
gr(c,d,3).
gr(h,d,2).

distance(A,B,Dist,Chemin) :- gr(A,B,Dist), Chemin = [A,B].

distance(A,B,Dist,Chemin) :- 
      gr(A,I,Segment1)
    , distance(I,B,Segment2, C), Chemin = [A|C]
    , Dist is Segment1 + Segment2.

routes(A,B,[D,C]) :- distance(A,B,D,C).

optim(A,B,R) :- [routes(A,B,R)|].