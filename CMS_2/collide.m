for i=1:length(coords_PSB(1,:))
    time_factor = 0.001;
% 	hFig = figure(1);
% 	set(hFig,'units','normalized','outerposition',[0 0 1 1]);
	px_PSB = coords_PSB(1,i);
	py_PSB = coords_PSB(2,i);
	pz_PSB = coords_PSB(3,i);

    px_PSB_opposite = coords_PSB(1,length(coords_PSB(1,:))-i+1);
    py_PSB_opposite = coords_PSB(2,length(coords_PSB(2,:))-i+1);
    pz_PSB_opposite = coords_PSB(3,length(coords_PSB(3,:))-i+1);
    

% 	plot3( coords_LHC(1,:), coords_LHC(2,:), coords_LHC(3,:)); hold on;
% 	plot3( coords_SPS(1,:), coords_SPS(2,:), coords_SPS(3,:)); hold on;
% 	plot3( coords_TTS2(1,:), coords_TTS2(2,:), coords_TTS2(3,:)); hold on;
% 	plot3( coords_PS(1,:), coords_PS(2,:), coords_PS(3,:)); hold on;
% 	plot3( coords_iso(1,:), coords_iso(2,:), coords_iso(3,:)); hold on;
	
	
	plot3( coords_PSB(1,:), coords_PSB(2,:), coords_PSB(3,:), px_PSB, py_PSB, pz_PSB,'.-', 'MarkerSize',20);
    hold on;
    plot3( coords_PSB(1,:), coords_PSB(2,:), coords_PSB(3,:), px_PSB_opposite, py_PSB_opposite, pz_PSB_opposite,'.-', 'MarkerSize',20);


    hold off;
	pause(0.06 - time_factor *i);
% 	pause(0.01);
end

