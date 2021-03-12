function [WWin3, WLose3, WDraw3,W2,L2, R3, O3, C3]=FifaRating(i,WeightWin,WeightLose,WeightDraw,W,L,WeightRank, WeightRate,WeightH2H,data)
 
qq3=i;
WWin3=WeightWin;
WLose3=WeightLose;
WDraw3=WeightDraw;
R3=WeightRank;
O3= WeightRate;
C3=WeightH2H;
data3=data;
W2=W;
L2=L;
if abs(data(qq3,12)-data(qq3,16))>=12
         if data3(qq3,12)-data3(qq3,16)>=12
             WWin3=WWin3+O3;
         else
             WLose3=WLose3+O3;
         end
     elseif abs(data3(qq3,12)-data3(qq3,16))>=10 && abs(data3(qq3,12)-data3(qq3,16))<12
         if data3(qq3,12)-data3(qq3,16)>=10
             O3=O3/2
             Weight=(O3/(data3(qq3,12)+data3(qq3,16)));
             W2=W2+Weight*data3(qq3,12);
             L2=L2+Weight*data3(qq3,16);
             WWin3=WWin3+O3;
         else
             O3=O3/2
             Weight=(O3/(data3(qq3,12)+data3(qq3,16)));
             W2=W2+Weight*data3(qq3,12);
             L2=L2+Weight*data3(qq3,16);
             WLose3=WLose3+O3;
         end
     elseif data3(qq3,12)==data3(qq3,16)
             O3=O3/2
             Weight=(O3/(data3(qq3,12)+data3(qq3,16)));
             W2=We+Weight*data3(qq3,12);
             L2=L2+Weight*data3(qq3,16);
             WDraw3=WDraw3+O3;
     else
             Weight=(O3/(data3(qq3,12)+data3(qq3,16)));
             W2=W2+Weight*data3(qq3,12);
             L2=L2+Weight*data3(qq3,16);  
     end
end

