function [WWin, WLose, WDraw, R1, O1, C1]= head2head(i,WeightWin,WeightLose,WeightDraw,WeightRank, WeightRate,WeightH2H,data)
    qq =i;
WWin=WeightWin;
WLose=WeightLose;
WDraw=WeightDraw;
R1=WeightRank;
O1= WeightRate;
C1=WeightH2H;
data1=data;
    if data(qq,1)>4
         Weight=(C1/data1(qq,1));
         WWin=WWin+data1(qq,2)*Weight;
         WDraw=WDraw+data1(qq,3)*Weight;
         WLose=WLose+data1(qq,4)*Weight;
     elseif data1(qq,1)==0
         R1=R1+.1;
         O1=O1+.1;
     else 
         O1=O1+.1;
         C1=C1-.1;
         Weight=(C1/data1(qq,1));
         WWin=WWin+data1(qq,2)*Weight;
         WDraw=WDraw+data1(qq,3)*Weight;
         WLose=WLose+data1(qq,4)*Weight;
     end

end

