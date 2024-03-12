clear all; close all; clc;

y = randi([1,100],9,2);

error_data = randi([1,100],9,2)/100;

figure,mybar = bar(y,'grouped');
hold on
mybar(1).BaseValue = -2;
mybar(2).BaseValue = -2;
grid on
% Calculate the number of groups and number of bars in each group
[ngroups,nbars] = size(y);
% Get the x coordinate of the bars
x = nan(nbars, ngroups);
for i = 1:nbars
    x(i,:) = mybar(i).XEndPoints;
end
% Plot the errorbars
errorbar(x',y,error_data,'k','linestyle','none');
hold off
Current_Figure = gca;
std_y_axis_max = ceil(max(error_data(:))/2);
y_axis_max = max(y(:))+5;
Current_Figure.YLim = [0 y_axis_max];
figure_title = "Group A vs Group B Random Results";
Current_Figure.Title.String = figure_title;
Current_Figure.YLabel.String = "Score (Group A vs. Group B)";
Current_Figure.XTickLabel = ["Category 1"; "Category 2"; "Category 3"; "Category 4"; "Category 5"; "Category 6"; "Category 7"; "Category 8"; "Category 9";];
Current_Figure.TickLength = [0 1];
legend("Group A", "Group B",'Location','Best');
% Current_Figure.YTickLabel = {-2; ""; -1; ""; 0; ""; 1; ""; 2};
set(gca,'FontSize',28) 