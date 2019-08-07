function [  ] = Collision(index, time_faster, main_course, sub_course1, sub_course2, sub_course3, sub_course4, sub_course5 )

if index ==0
    index=1:length(main_course(1,:));
end

j=0;
for i=index
    time_factor = 0.0005;
	hFig = figure(1);
	set(hFig,'units','normalized','outerposition',[0 0 1 1]);
	particle1_px = main_course(1,i);
	particle1_py = main_course(2,i);
	particle1_pz = main_course(3,i);

    if index(1) ==1
%         particle2_px = main_course(1,length(main_course(1,:))-i+1);
%         particle2_py = main_course(2,length(main_course(2,:))-i+1);
%         particle2_z = main_course(3,length(main_course(3,:))-i+1);
    else
        particle2_px = main_course(1,index(1)-j*3);
        particle2_py = main_course(2,index(1)-j*3);
        particle2_z =  main_course(3,index(1)-j*3);
    end

    

	plot3( sub_course1(1,:), sub_course1(2,:), sub_course1(3,:)); hold on;
	plot3( sub_course2(1,:), sub_course2(2,:), sub_course2(3,:)); hold on;
	plot3( sub_course3(1,:), sub_course3(2,:), sub_course3(3,:)); hold on;
	plot3( sub_course4(1,:), sub_course4(2,:), sub_course4(3,:)); hold on;
	plot3( sub_course5(1,:), sub_course5(2,:), sub_course5(3,:)); hold on;
	
	
	plot3( main_course(1,:), main_course(2,:), main_course(3,:), particle1_px, particle1_py, particle1_pz,'.-', 'MarkerSize',20);
    hold on;
    plot3( main_course(1,:), main_course(2,:), main_course(3,:), particle2_px, particle2_py, particle2_z,'.-', 'MarkerSize',20);
    hold off;
 	pause(0.08 - time_factor *j - time_faster);
 	pause(0.01);
    j=j+1;
end



end

