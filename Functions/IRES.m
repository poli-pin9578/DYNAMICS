function measure=IRES(real)

    %%Author: Pietro Spinelli
    %%Version: 1.0
    %%IRES SENSOR  <https://www.leonardocompany.com/documents/20142/3150104/IRES_NE_Attitude_Control_Sensors_LQ_mm07787_.pdf?t=1538987566453>
    sensor_deviation=(0.05/3)^2;
    measure=random('Normal',real,sensor_deviation);

end