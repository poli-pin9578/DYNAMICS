function measure=IRES(real)

    %Author: Pietro Spinelli
    %IRES SENSOR  <https://www.leonardocompany.com/documents/20142/3150104/IRES_NE_Attitude_Control_Sensors_LQ_mm07787_.pdf?t=1538987566453>
    %Hypothesis: Infrared sensor rotation error has same accuracy for all
    %axes
    
    sensor_deviation=(0.05/3)^2;
    
    angle_cross1=random('Normal',0,sensor_deviation); %Rotation error x [deg]
    angle_cross2=random('Normal',0,sensor_deviation); %Rotation error y[deg]
    angle_bore=random('Normal',0,sensor_deviation); %Rotation error z[deg]
     
    
    err_mat=[1 angle_bore -angle_cross1;-angle_bore 1 angle_cross2; angle_cross2 -angle_cross1 1]; %Error matrix
    measure = err_mat*real; %Real star direction gets rotated by error matrix

end