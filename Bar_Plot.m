clear all; close all; clc;

y = randi([1,100],9,1);

error_data = randi([1,100],9,1)/100;

figure,mybar = bar(y,'grouped');
hold on
grid on
% Plot the errorbars
errorbar(y,error_data,'k','linestyle','none');
hold off
Current_Figure = gca;
std_y_axis_max = ceil(max(error_data(:))/2);
y_axis_max = 100+5;
Current_Figure.YLim = [0 y_axis_max];
figure_title = "Random Bar Graph Results";
Current_Figure.Title.String = figure_title;
Current_Figure.YLabel.String = "Score (Group A)";
Current_Figure.XTickLabel = ["Category 1"; "Category 2"; "Category 3"; "Category 4"; "Category 5"; "Category 6"; "Category 7"; "Category 8"; "Category 9";];
Current_Figure.TickLength = [0 1];
legend("Group A",'Location','Best');
% Current_Figure.YTickLabel = {-2; ""; -1; ""; 0; ""; 1; ""; 2};
set(gca,'FontSize',28) 