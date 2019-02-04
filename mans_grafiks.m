function createfigure(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 04-Feb-2019 15:19:30

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create plot
plot(X1,Y1,'MarkerFaceColor',[1 1 0],'Marker','^','LineStyle','--',...
    'Color',[0.850980401039124 0.325490206480026 0.0980392172932625]);

box(axes1,'on');