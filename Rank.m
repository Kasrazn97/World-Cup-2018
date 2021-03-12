function [WWin2, WLose2, WDraw2,W1,L1, R2, O2, C2]= Rank(i,WeightWin,WeightLose,WeightDraw,W,L,WeightRank, WeightRate,WeightH2H,data)
qq2=i;
WWin2=WeightWin;
WLose2=WeightLose;
WDraw2=WeightDraw;
R2=WeightRank;
O2= WeightRate;
C2=WeightH2H;
data2=data;
W1=W;
L1=L;
 if abs(data(qq2,7)-data(qq2,8))>=500
         if data2(qq2,7)-data2(qq2,8)>=500
             WWin2=WWin2+R2;
         else
             WLose2=WLose2+R2;
         end
     elseif abs(data(qq2,7)-data(qq2,8))>=400 && abs(data(qq2,7)-data(qq2,8))<500
         if data(qq2,7)-data(qq2,8)>=400
             R2=R2/4
             Weight=(R2/(data2(qq2,5)+data2(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data2(qq2,5);
             WWin2=WWin2+3*R2;
         else
             R2=R2/4
             Weight=(R2/(data2(qq2,5)+data2(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data(qq2,5);
             WLose2=WLose2+3*R2;
         end
     elseif abs(data2(qq2,7)-data2(qq2,8))>=300 && abs(data2(qq2,7)-data2(qq2,8))<400
          if data2(qq2,7)-data2(qq2,8)>=400    
             R2=R2/2
             Weight=(R2/(data2(qq2,5)+data(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data2(qq2,5);
             WWin2=WWin2+R2;
          else 
             R2=R2/2
             Weight=(R2/(data2(qq2,5)+data2(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data2(qq2,5);
             WLose2=WLose2+R2;
          end
     elseif abs(data2(qq2,7)-data2(qq2,8))<=10
             R2=R2/2
             Weight=(R2/(data(qq2,5)+data(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data2(qq2,5);
             WeightDraw=WeightDraw+R2;
     else 
             Weight=(R2/(data2(qq2,5)+data2(qq2,6)));
             W1=W1+Weight*data2(qq2,6);
             L1=L1+Weight*data2(qq2,5);
     end
end

