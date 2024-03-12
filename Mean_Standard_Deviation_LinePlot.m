clc; clear all; close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Result1_mean = [	58.36	55.27	52.72	50.75	50.16	49.88	49.74	49.56	];
Result1_std = [	26.36	21.66	19.9	19.93	19.32	18.73	18.43	18.17	];
Result2_mean = [	-183.49	-144.18	-119.82	-104.91	-96.01	-90	-85.81	-82.78	];
Result2_std = [	27.08	23.1	20.61	19.13	18.15	17.21	16.57	16.18	];
Result3_mean = [	1451.4	976.66	687.79	509.44	395.21	319.12	266.62	229.3	];
Result3_std = [	37.35	30.24	26.04	22.46	20.93	20.02	19.51	19.21	];
Result4_mean = [	3143.9	2307.38	1800.83	1489.41	1287.24	1152.34	1059.21	993.17	];
Result4_std = [	491.61	357.61	275.94	228.77	199.7	179.47	165.38	155.29	];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = 1:8;
figure
errorbar(x,Result1_mean,Result1_std, 'LineWidth', 2);
hold on
errorbar(x,Result2_mean,Result2_std, 'LineWidth', 2);
hold on
errorbar(x,Result3_mean,Result3_std, 'LineWidth', 2);
hold on
errorbar(x,Result4_mean,Result4_std, 'LineWidth', 2);
hold on
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Current_Figure = gca;
set(Current_Figure,'FontSize',30)
Current_Figure.XLim = [0.5 8.5];
Current_Figure.XTickLabel = ["Jan"; "Feb"; "Mar"; "Apr"; "May"; "Jun"; "Jul"; "Aug"];
Current_Figure.TickLength = [0 1];
Current_Figure.LineWidth = 1;
Current_Figure.YLabel.String = 'Price ($)';
Current_Figure.XLabel.String = 'Month';
mytitle = 'Stock Price for XYZ Company';
Current_Figure.Title.String = mytitle;
legend("Company A", "Company B", "Company C", "Company D", 'location','best');
hold off