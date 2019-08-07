[coords_LHC, h_LHC] = ellipse3D(26700, 26700, 0, 0, 0);
[coords_SPS, h_SPS] = ellipse3D(6900, 6900, 19800/sqrt(2), -19800/sqrt(2),  0);

plot( coords_LHC(1,:), coords_LHC(2,:)); grid on; hold on
plot( coords_SPS(1,:), coords_SPS(2,:)); hold on

[coords_PS, h_PS] = ellipse3D(628, 628,  32523 , -30743 , 0);
plot( coords_PS(1,:), coords_PS(2,:)); hold on

[coords_PSB, h_PSB] = ellipse3D(628, 628, 22983 , -29693 , 0);
plot( coords_PSB(1,:), coords_PSB(2,:)); hold on

[coords_LHC, h_LHC] = ellipse3D(26700, 26700, 0, 0, 0);
%[coords_SPS, h_SPS] = ellipse3D(6900, 6900, 0, 0, 0);
%[coords_LHC, h_LHC] = ellipse3D(26700, 26700, coords_SPS(1,end), 0, 0);



plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:)); hold on;
plot3( coords_SPS(1,:), coords_SPS(2,:), coords_SPS(3,:));
plot3( coords_PS(1,:), coords_PS(2,:), coords_PS(3,:));

xlabel({'x'}); ylabel({'y'}); zlabel({'z'});

for i=1:length( coords_SPS(1,:))
	px_SPS = coords_SPS(1,i);
	py_SPS = coords_SPS(2,i);
	pz_SPS = coords_SPS(3,i);
	
	px_SPS_opposite = coords_SPS(1,length(coords_SPS(1,:))-i+1);
	py_SPS_opposite = coords_SPS(2,length(coords_SPS(2,:))-i+1);
	pz_SPS_opposite = coords_SPS(3,length(coords_SPS(3,:))-i+1);
	
	plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:)); hold on;
	plot3( coords_SPS(1,:), coords_SPS(2,:), coords_SPS(3,:), px_SPS, py_SPS, pz_SPS,'.-', 'MarkerSize',20);
	hold off;
	
	
	pause(0.001);
end

find(coords_LHC(1,:)==26700/sqrt(2))
find(coords_LHC(1,:)==coords_SPS(1,:))
intersect(coords_LHC(1,:), coords_SPS(1,:))

start_index =  knnsearch(coords_LHC(2,:)', coords_SPS(2,end))
index = [start_index : length(coords_LHC), 1:start_index-1]

knnsearch(coords_LHC(2,:)', coords_SPS(2,:))

diff=coords_LHC(1,:)- coords_SPS(1,:)
min_d=min(abs(diff))
find(diff==min_d)  %113

diff=coords_LHC(2,:)- coords_SPS(2,:)
min_d=min(abs(diff))
find(diff==min_d)  %188

% 188 38 113
knnsearch(coords_LHC(1,:)', 26700/sqrt(2)) %38
knnsearch(coords_LHC(2,:)', -26700/sqrt(2)) %188
knnsearch(coords_SPS(1,:)', 26700/sqrt(2)) %38
knnsearch(coords_SPS(2,:)', -26700/sqrt(2)) %188

coords_LHC(1,188)-coords_SPS(1,1)
scatter( coords_LHC(1,38), coords_LHC(2,38)); hold on;
scatter( coords_SPS(1,1), coords_SPS(2,1) );

scatter3( coords_SPS(1,38), coords_SPS(2,38), coords_SPS(3,38) ); hold on
scatter3( coords_LHC(1,38), coords_LHC(2,38), coords_LHC(3,38) );

scatter3( coords_LHC(1,113), coords_LHC(2,113), coords_LHC(3,113) ); hold on;
scatter3( coords_SPS(1,113), coords_SPS(2,113), coords_SPS(3,113) );
scatter3( coords_LHC(1,188), coords_LHC(2,188), coords_LHC(3,188) ); hold on;
scatter3( coords_SPS(1,188), coords_SPS(2,188), coords_SPS(3,188) );

dist = sqrt((coords_LHC(1,:)- coords_SPS(1,:)).^2 + (coords_LHC(2,:)- coords_SPS(2,:)).^2)

min(coords_LHC(1,1:38)-26700/sqrt(2))
min(coords_LHC(1,270:300)-26700/sqrt(2))
min(coords_LHC(2,:)-26700/sqrt(2))



plot( coords_LHC(1,:), coords_LHC(2,:)); grid on; hold on
plot( coords_SPS(1,:), coords_SPS(2,:)); hold on
scatter( coords_LHC(1,262), coords_LHC(2,262));
scatter( coords_LHC(1,263), coords_LHC(2,263));

scatter( coords_SPS(1,263), coords_SPS(2,263));

index=[262:300, 1:262]

for i=index
	px_LHC = coords_LHC(1,i);
	py_LHC = coords_LHC(2,i);
	pz_LHC = coords_LHC(3,i);
	
	px_LHC_opposite = coords_LHC(1,length(coords_LHC(1,:))-i+1);
	py_LHC_opposite = coords_LHC(2,length(coords_LHC(2,:))-i+1);
	pz_LHC_opposite = coords_LHC(3,length(coords_LHC(3,:))-i+1);
	
	plot3( coords_SPS(1,:), coords_SPS(2,:), coords_SPS(3,:));
	hold on;
	plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:), px_LHC, py_LHC, pz_LHC,'.-', 'MarkerSize',20);
	%hold on;
	%plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:), px_LHC_opposite, py_LHC_opposite, pz_LHC_opposite,'.-', 'MarkerSize',20);
	hold off;

	%axis off;
	pause(0.001);
end


circular_collider(26700, 26700, 0, 0, 0);
plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:)); hold on;
circular_collider(6900, 6900, 19800/sqrt(2), 19800/sqrt(2),  0);