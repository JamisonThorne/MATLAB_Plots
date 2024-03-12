clc; clear all; close all;

data = randi([1,5],9,500);
y_data1 = zeros(9,5);
[iloop_size jloop_size] = size(y_data1);
for i=1:iloop_size
    for j=1:jloop_size
        temp = data(i,:) == j;
        temp_sum = sum(temp(:));
        y_data1(i,j) = temp_sum;
    end
    y_data1(i,:) = y_data1(i,:)/sum(y_data1(i,:));
end

data = []
data(:,1,:) = y_data1;

groupLabels = { 1, 2, 3, 4, 5};     % set labels

plotBarStackGroups(data, groupLabels)

function [] = plotBarStackGroups(stackData, groupLabels)
    NumGroupsPerAxis = size(stackData, 1);
    NumStacksPerGroup = size(stackData, 2);
    % Count off the number of bins
    groupBins = 1:NumGroupsPerAxis;
    MaxGroupWidth = 0.65; % Fraction of 1. If 1, then we have all bars in groups touching
    groupOffset = MaxGroupWidth/NumStacksPerGroup;
    figure
        hold on; 
    for i=1:NumStacksPerGroup
        Y = squeeze(stackData(:,i,:));
        
        % Center the bars:
        
        internalPosCount = i - ((NumStacksPerGroup+1) / 2);
        
        % Offset the group draw positions:
        groupDrawPos = (internalPosCount)* groupOffset + groupBins;
        
        h(i,:) = bar(Y, 'stacked', 'FaceColor', 'flat');
        set(h(i,:),'BarWidth',groupOffset);
        set(h(i,:),'XData',groupDrawPos);

        
        h(i,1).FaceColor = '#ff0000';
        h(i,2).FaceColor = '#FBC2A1'; 
        h(i,3).FaceColor = '#FFFF00';
        h(i,4).FaceColor = '#6FFFFB';
        h(i,5).FaceColor = '#1B00FF';

        x_shift = 0.15;
        if i==1
            text([1:9]-x_shift,zeros(size(Y(:,1)))+1.015,strcat("Reviewer "+int2str(i)),...
                'FontSize',20,'HorizontalAlignment','Left','Color','#000000')
        else
            text([1:9]+x_shift,zeros(size(Y(:,1)))+1.015,strcat("Reviewer "+int2str(i)),...
                'FontSize',20,'HorizontalAlignment','Left','Color','#000000')
        end
    end
    axis([-inf inf -inf inf]);
    title('Monday Night Dinner Reviews at Local Eatery');
    set(gca,'yticklabel',[], 'xticklabel', []) %Remove tick labels
    
    legend(["Hot"; "Warm"; "Mild"; "Cool"; "Cold"],'location','bestoutside','Orientation','Horizontal');
    Current_Figure = gca();
    Current_Figure.XAxis.TickLength = [0 0];
    Current_Figure.YAxis.TickLength = [0 0];
    Current_Figure.XTick = 1:9;
    row1 = {'Dinner Rolls', ...
        'Salad', ...
        'Soup', ...
        'Fondue', ...
        'Fish', ...
        'Steak', ...
        'Mochi', ...
        'Ice Cream', ...
        'Chocolate'};
    Current_Figure.XTickLabel = row1;
    set(Current_Figure,'FontSize',28)
    camroll(270)
end 
