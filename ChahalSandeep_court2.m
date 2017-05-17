function [p_x0,p_y0,v_x0,v_y0,coursetype]=makecourse;
disp('1. No Wall');
disp('2. Two-Side Wall');
coursetype=input('Choose one of the above:');
p_x0=input('Input Ball x location (between 1 and 9)');
p_y0=input('Input Ball y location (between 1 and 9)');
v_x0=input('Input Ball x velocity');
v_y0=input('Input Ball y velocity' );
if(coursetype==1)
    axis([-0.1,10.1,-0.1,10.1]);
    xbad=[-0.1,10.1, 10.1, -0.1];
    ybad=[0,0,-0.1,-0.1 ]; 
    hold on;
    fill(xbad,ybad,'y');
end
 if(coursetype==2)
    axis([-0.1,10.1,-0.1,10.1]);
    xbad=[-0.1,10.1, 10.1, -0.1];
    ybad=[0,0,-0.1,-0.1 ];
    x1=[0,0,-0.1,-0.1];
    y1=[-0.1,10.1, 10.1, -0.1]; 
    x2=[10,10,10.1,10.1];
    y2=[-0.1,10.1, 10.1, -0.1]; 
    hold on;
    fill(xbad,ybad,'y');
    fill(x1,y1,'b');
    fill(x2,y2,'b')
 end
end



