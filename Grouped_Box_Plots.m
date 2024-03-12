clc; clear all; close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Scores_1a = randi([1 100],1,100);
Scores_2a = randi([1 100],1,100);
Scores_3a = randi([1 100],1,100);
Scores_4a = randi([1 100],1,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Scores_1b = randi([1 100],1,100);
Scores_2b = randi([1 100],1,100);
Scores_3b = randi([1 100],1,100);
Scores_4b = randi([1 100],1,100);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Scores_1a = Scores_1a';
Scores_2a = Scores_2a';
Scores_3a = Scores_3a';
Scores_4a = Scores_4a';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Scores_1b = Scores_1b';
Scores_2b = Scores_2b';
Scores_3b = Scores_3b';
Scores_4b = Scores_4b';
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
g1 = repmat(1:2,size(Scores_1a,1),1);
g2 = repmat(1:2,size(Scores_2a,1),1);
g3 = repmat(1:2,size(Scores_3a,1),1);
g4 = repmat(1:2,size(Scores_4a,1),1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t1 = [Scores_1a Scores_1b];
t2 = [Scores_2a Scores_2b];
t3 = [Scores_3a Scores_3b];
t4 = [Scores_4a Scores_4b];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clr1 = repmat(1,size(t1));
clr2 = repmat(2,size(t2));
clr3 = repmat(3,size(t3));
clr4 = repmat(4,size(t4));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = [g1;g2;g3;g4];
y = [t1;t2;t3;t4];
c = [clr1;clr2;clr3;clr4];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = x(:);
y = y(:);
c = c(:);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = x*1.5;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
myboxchart = boxchart(x(:),y(:), ...
    'GroupByColor',c(:), ...
    'BoxWidth',0.95, ...
    'JitterOutliers', 'on', ...
    'Notch','on', ...
    'MarkerStyle', '+', ...
    'WhiskerLineColor','#000000', ...
    'LineWidth', 1.25, ...
    'MarkerColor','#000000');

myboxchart(1).BoxFaceAlpha = 0.8;
myboxchart(2).BoxFaceAlpha = 0.6;
myboxchart(3).BoxFaceAlpha = 0.4;
myboxchart(4).BoxFaceAlpha = 0.2;

hold on
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Current_Figure = gca;
set(Current_Figure,'FontSize',30)
Current_Figure.XLim = [0.75 3.75];
Current_Figure.XTick = [1.5 3];
Current_Figure.XTickLabel = ["Group A"; "Group B"];
Current_Figure.TickLength = [0 1];
Current_Figure.YLim = [0 105];
Current_Figure.YLabel.String = 'Scores';
mytitle = 'Grouped Box Plot: Group A and B Scores';
Current_Figure.Title.String = mytitle;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t1 = [Scores_1a Scores_1b];
t2 = [Scores_2a Scores_2b];
t3 = [Scores_3a Scores_3b];
t4 = [Scores_4a Scores_4b];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

legend("Score 1", "Score 2", "Score 3", "Score 4", ...
    'location','bestoutside');
hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%