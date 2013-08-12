function[]=dymanic()
% Construct dimensions and axis.
[X,Y,Z] = meshgrid(linspace(-3,3,101));
% Classical heart-shape 3-D function.  
F = -X.^2.*Z.^3-(9/80).*Y.^2.*Z.^3+(X.^2+(9/4).*Y.^2+Z.^2-1).^3;
% Change the title here.
hFigure =figure('numbertitle','off','name','Happy 7-7 and in memory of the 124 days','color','white');
sz = get(hFigure, 'Position');
set(hFigure, 'Position', [sz(1)-0.15*sz(3) sz(2) 1.3*sz(3) sz(4)]);
set(hFigure,'color','w', 'menu','none')
hAxes = axes('Parent',hFigure,'NextPlot','add',...
'DataAspectRatio',[1 1 1],...
'XLim',[30 120],'YLim',[35 65],'ZLim',[30 75]);
view([-39 30]);
axis off
hidden on
p = patch(isosurface(F,-0.001));
set(p,'FaceColor','w','EdgeColor','w');
% Construct y-z plane, plot the points in the plane.
for iX = [35 38 41 45 48 51 54 57 61 64 67]
plane = reshape(F(:,iX,:),101,101);
cData = contourc(plane,[0 0]);
xData = iX.*ones(1,cData(2,1));
plot3(hAxes,xData,cData(2,2:end),cData(1,2:end),'rp');
pause(.1), drawnow
end
% Construct x-z plane, plot the points in the plane.
for iY = [41 44 47 51 55 58 61]
plane = reshape(F(iY,:,:),101,101);
cData = contourc(plane,[0 0]);
yData = iY.*ones(1,cData(2,1));
plot3(hAxes,cData(2,2:end),yData,cData(1,2:end),'rd');
pause(.1), drawnow
end
% Construct x-y plane, plot the points in the plane.
for iZ = [36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 69 71]
plane = F(:,:,iZ);
cData = contourc(plane,[0 0]);
startIndex = 1;
if size(cData,2) > (cData(2,1)+1)
startIndex = cData(2,1)+2;
zData = iZ.*ones(1,cData(2,1));
plot3(hAxes,cData(1,2:(startIndex-1)),...
cData(2,2:(startIndex-1)),zData,'rh');
end
zData = iZ.*ones(1,cData(2,startIndex));
plot3(hAxes,cData(1,(startIndex+1):end),...
cData(2,(startIndex+1):end),zData,'r*');
pause(.1), drawnow
end
% Write the text words.
pause(.2)
text(2,50,70,'I', 'fontWeight','bold','FontAngle','italic','fontsize',68)
pause(.5)
text(80,50,43,'Ying', 'fontWeight','bold','FontAngle','italic','fontsize',68)
pause(.5)
text(50,8,30,'Made by Tao', 'fontWeight','bold','FontAngle','oblique','fontsize',16,'color','b')
pause(.3)
text(53,4,25,'---2013.08.14', 'fontWeight','bold','FontAngle','oblique','fontsize',12,'color','b')
pause(.3)
% Making the shining effect, still not enough yet.
line([33 67],[50 50],[52.5 52.5], 'color','w')
line([50 50],[33 67],[52.5 52.5], 'color','w')
pause(.1)
line([33 67],[50 50],[52.5 52.5], 'color','r')
line([50 50],[33 67],[52.5 52.5], 'color','r')
pause(.1)
line([33 67],[50 50],[52.5 52.5], 'color','w')
line([50 50],[33 67],[52.5 52.5], 'color','w')
pause(.1)
line([33 67],[50 50],[52.5 52.5], 'color','r')
line([50 50],[33 67],[52.5 52.5], 'color','r')
pause(.1)
line([33 67],[50 50],[52.5 52.5], 'color','w')
line([50 50],[33 67],[52.5 52.5], 'color','w')
pause(.1)
line([33 67],[50 50],[52.5 52.5], 'color','r')
line([50 50],[33 67],[52.5 52.5], 'color','r')
