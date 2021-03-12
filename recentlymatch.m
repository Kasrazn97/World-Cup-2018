function [W3,L3,D3,G4 ] = recentlymatch(i,W,L,D,data,WeightRecentlyMatch )

qq4=i;
data4=data;
W3=W;
L3=L;
D3=D;
G4=WeightRecentlyMatch
             Weight=(G4/(data4(qq4,17)+data4(qq4,18)));
             W3=W3+Weight*data4(qq4,17);
             L3=L3+Weight*data4(qq4,18);
             
             D3=((W3+L3)-(abs(W3-L3)))/2;
             W3=W3-(D3/2);
             L3=L3-(D3/2);

end

