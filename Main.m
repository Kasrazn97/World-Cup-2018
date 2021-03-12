
Results=zeros(32,301);
 for k=1:300 
  
Random=rand();
 
 for i=1:48
     WeightH2H=.2; 
     WeightRank=.2;
     WeightRate=.4;
     WeightRecentlyMatch=.2;
     WeightWin=0;
     WeightLose=0;
     WeightDraw=0;
     W=0;
     L=0;
     D=0;
    [WeightWin, WeightLose, WeightDraw, WeightRank, WeightRate, WeightH2H]=head2head(i,WeightWin,WeightLose,WeightDraw,WeightRank,WeightRate,WeightH2H,data);
     
    [WeightWin, WeightLose, WeightDraw,W,L, WeightRank, WeightRate, WeightH2H]=Rank(i,WeightWin,WeightLose,WeightDraw,W,L,WeightRank,WeightRate,WeightH2H,data);
     
    [WeightWin, WeightLose, WeightDraw,W,L, WeightRank, WeightRate, WeightH2H]=FifaRating(i,WeightWin,WeightLose,WeightDraw,W,L,WeightRank,WeightRate,WeightH2H,data);
     
    [W,L,D,WeightRecentlyMatch ] = recentlymatch(i,W,L,D,data,WeightRecentlyMatch );        
             
             WeightWin=WeightWin+W;
             WeightLose=WeightLose+L;
             WeightDraw=WeightDraw+D;
             
             if Random<=WeightWin
                 A=3;
                 B=0
             elseif Random>WeightWin && Random<=(WeightDraw+WeightWin)
                 A=1;
                 B=1;
             else 
                 A=0;
                 B=3;
             end
            
          for j=1:32
              if strcmp(string(Games{i,1}),string(Teams{j,1}))==1
                  Results(j,k)=Results(j,k)+A;
              end
              if strcmp(string(Games{i,2}),string(Teams{j,1}))==1
                  Results(j,k)=Results(j,k)+B;
              end
          end
 end
     
 end
 for f=1:32
     sum=0;
 for h=1:300
     sum=sum+Results(f,h);
 end
     Results(f,301)=(sum/300);
 end
 
 Results1=[Teams{:,1},Results(:,301)];
     groupA=sortrows([Teams{1:4,1},Results(1:4,301)],2,'descend');
     groupB=sortrows([Teams{5:8,1},Results(5:8,301)],2,'descend');
     groupC=sortrows([Teams{9:12,1},Results(9:12,301)],2,'descend');
     groupD=sortrows([Teams{13:16,1},Results(13:16,301)],2,'descend');
     groupE=sortrows([Teams{17:20,1},Results(17:20,301)],2,'descend');
     groupF=sortrows([Teams{21:24,1},Results(21:24,301)],2,'descend');
     groupG=sortrows([Teams{25:28,1},Results(25:28,301)],2,'descend');
     groupH=sortrows([Teams{29:32,1},Results(29:32,301)],2,'descend');
