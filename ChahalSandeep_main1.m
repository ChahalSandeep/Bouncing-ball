
close all hidden;
clear;

[p_x,p_y,v_x,v_y]=ChahalSandeep_court2; 
T=0.1;      %/variable T
a=9.8;      %acceleration
endval=0;      %variable
state=[p_x;v_x; p_y;v_y]; %assigning position and velocities of x and v to state column matrix
flag_y=0;               %variable flag
timecounter=0;          %variable to count time
while(endval==0)                %condition
    timecounter=timecounter+T;      %increasing timeounter by T for each iteration
    if (state(3)>=0) ||(flag_y==1)      %if condition
    state1 = state;
    state=state+[0 1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T+([0; 0; 0; -1].*a.*T);    
    flag_y=0;
    end
    if state(3)<0  
        state(4)=-state1(4)*.8; %damping factor(decreases here by 0.8)
        flag_y=1;
        
    end
    if state(1)>=10
        endval=1;
    end
    if endval==0        %prints positions of x and y on the frame 
     line(state(1),state(3),'Marker','o','MarkerSize',3,'MarkerEdgeColor','r');
     hold on; 

          M=getframe;
    end
    
end