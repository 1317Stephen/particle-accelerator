for i=1:length(main_course(1,:))
    time_factor = 0.001;
% 	hFig = figure(1);
% 	set(hFig,'units','normalized','outerposition',[0 0 1 1]);
	particle1_px = main_course(1,i);
	particle1_py = main_course(2,i);
	particle1_pz = main_course(3,i);

    particle2_px = main_course(1,length(main_course(1,:))-i+1);
    particle2_py = main_course(2,length(main_course(2,:))-i+1);
    particle2_z = main_course(3,length(main_course(3,:))-i+1);
    

% 	plot3( sub_course1(1,:), sub_course1(2,:), sub_course1(3,:)); hold on;
% 	plot3( sub_course2(1,:), sub_course2(2,:), sub_course2(3,:)); hold on;
% 	plot3( sub_course3(1,:), sub_course3(2,:), sub_course3(3,:)); hold on;
% 	plot3( sub_course4(1,:), sub_course4(2,:), sub_course4(3,:)); hold on;
% 	plot3( sub_course5(1,:), sub_course5(2,:), sub_course5(3,:)); hold on;
	
	
	plot3( main_course(1,:), main_course(2,:), main_course(3,:), particle1_px, particle1_py, particle1_pz,'.-', 'MarkerSize',20);
    hold on;
    plot3( main_course(1,:), main_course(2,:), main_course(3,:), particle2_px, particle2_py, particle2_z,'.-', 'MarkerSize',20);


    hold off;
	pause(0.06 - time_factor *i);
% 	pause(0.01);
end

Collide_Simulation(coords_PSB, coords_LHC, coords_SPS, coords_TTS2, coords_PS,  coords_iso);