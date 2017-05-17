
close all hidden;
clear;

[p_x,p_y,v_x,v_y,coursetype]=ChahalSandeep_court2; 
T=0.1;      %/variable T
a=9.8;      %acceleration
endval=0;      %variable
state=[p_x;v_x; p_y;v_y]; %assigning position and velocities of x and v to state column matrix
flag_y=0;               %variable flag
timecounter=0;          %variable to count time

if (coursetype==1)
close all hidden;
clear;

[p_x,p_y,v_x,v_y,coursetype]=ChahalSandeep_court2; 
T=0.01;      %/variable T
a=9.8;      %acceleration
endval=0;      %variable
state=[p_x;v_x; p_y;v_y]; %assigning position and velocities of x and v to state column matrix
flag_y=0;               %variable flag
timecounter=0;          %variable to count time

if (coursetype==1)
    while(endval==0)                %condition
    timecounter=timecounter+T;      %increasing timeounter by T for each iteration
    if (state(3)>=0) ||(flag_y==1)      %if condition
    state1 = state;
    state=state+[0 1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T+([0; 0; 0; -1].*a.*T);
    %af
    state(2)= state(2)-(state(2)*0.05*T);
    state(4)= state(4)-(state(4)*0.05*T);
    flag_y=0;
    end
    if state(3)<0  
        state(4)=-state1(4)*.5; %damping factor(decreases here by 0.7)
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
end
if (coursetype==2)
    while(endval==0)                %condition
    timecounter=timecounter+T;      %increasing timeounter by T for each iteration
    if (state(3)>=0) ||(flag_y==1)      %if condition
        state1 =state;
    state=state+[0 1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T-[0; 0; 0; 1].*a.*T;
    %airfiction
    state(2)= state(2)-(state(2)*0.05*T);
    state(4)= state(4)-(state(4)*0.05*T);
    flag_y=0;
    end
    if state(3)<0     
        state(4)=-state1(4)*0.6; %change in the velcoity(decreases here by 0.7)
        flag_y=1;
    end
    if state(1)>=10
        state(2)= state(2)*0.6;
        state(4)= state(4)*0.6;
        while(state(1)> 0)
            state=state+[0 -1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T-[0; 0; 0; 1].*a.*T;
            state(2)= state(2)-(state(2)*0.05*T);
            state(4)= state(4)-(state(4)*0.05*T);
             if state(3)<0     
            state(4)=-state(4)*0.6; %change in the velcoity(decreases here by 0.7)
             end
            if state(2)<=0  %if x stops
            endval=1;
            end
             if endval==0        %prints positions of x and y on the frame 
                line(state(1),state(3),'Marker','o','MarkerSize',3,'MarkerEdgeColor','g');
                hold on; 
                M=getframe;
             end            
        end
       if state(1)<=0
           state(2)= state(2)*0.6;
           state(4)= state(4)*0.6;
       end
    end 
    
   if state(2)<=0
        endval=1;
    end
    if endval==0        %prints positions of x and y on the frame 
     line(state(1),state(3),'Marker','o','MarkerSize',3,'MarkerEdgeColor','r');
     hold on; 

          M=getframe;
    end
    
    end
end


    while(endval==0)                %condition
    timecounter=timecounter+T;      %increasing timeounter by T for each iteration
    if (state(3)>=0) ||(flag_y==1)      %if condition
    state1 = state;
    state=state+[0 1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T+([0; 0; 0; -1].*a.*T);
    %af
    state(2)= state(2)-(state(2)*0.05);
    state(4)= state(4)-(state(4)*0.05);
    flag_y=0;
    end
    if state(3)<0  
        state(4)=-state1(4)*0.3; %damping factor(decreases here by 0.7)
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
end
if (coursetype==2)
    while(endval==0)                %condition
    timecounter=timecounter+T;      %increasing timeounter by T for each iteration
    if (state(3)>=0) ||(flag_y==1)      %if condition
        state1 =state;
    state=state+[0 1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T-[0; 0; 0; 1].*a.*T;
    %airfiction
    state(2)= state(2)-(state(2)*0.05);
    state(4)= state(4)-(state(4)*0.05);
    flag_y=0;
    end
    if state(3)<0     
        state(4)=-state1(4)*0.7; %change in the velcoity(decreases here by 0.7)
        flag_y=1;
    end
    if state(1)>=10
        state(2)= state(2)*0.7;
        state(4)= state(4)*0.7;
        while(state(1)> 0)
            state=state+[0 -1 0 0; 0 0 0 0; 0 0 0 1; 0 0 0 0]*state.*T-[0; 0; 0; 1].*a.*T;
            state(2)= state(2)-(state(2)*0.05);
            state(4)= state(4)-(state(4)*0.05);
             if state(3)<0     
            state(4)=-state(4)*0.7; %change in the velcoity(decreases here by 0.7)
             end
            if state(2)<=0  %if x stops
            endval=1;
            end
             if endval==0        %prints positions of x and y on the frame 
                line(state(1),state(3),'Marker','o','MarkerSize',3,'MarkerEdgeColor','g');
                hold on; 
                M=getframe;
             end            
        end
       if state(1)<=0
           state(2)= state(2)*0.7;
           state(4)= state(4)*0.7;
       end
    end 
    
   if state(2)<=0
        endval=1;
    end
    if endval==0        %prints positions of x and y on the frame 
     line(state(1),state(3),'Marker','o','MarkerSize',3,'MarkerEdgeColor','r');
     hold on; 

          M=getframe;
    end
    
    end
end

