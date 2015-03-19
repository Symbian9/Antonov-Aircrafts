#
# Autostart for AN-12
#
#


setlistener("/controls/autostart", func 

  { if(getprop("/controls/autostart") > 0.5)
      {
        setprop("/tu154/switches/gauge-light", 1);
        setprop("/controls/lighting/nav-lights", 1);
        setprop("/controls/switches/fuel", 1);
        setprop("/consumables/fuel/tank[0]/selected", 1);
        setprop("/consumables/fuel/tank[1]/selected", 1);
        setprop("/consumables/fuel/tank[2]/selected", 1);
        setprop("/consumables/fuel/tank[3]/selected", 1);
        
	interpolate("controls/engines/engine[0]/throttle", 0.1, 17);
	interpolate("controls/engines/engine[1]/throttle", 0.1, 34);
	interpolate("controls/engines/engine[2]/throttle", 0.1, 51);
	interpolate("controls/engines/engine[3]/throttle", 0.1, 68);
	
	interpolate("controls/engines/engine[0]/condition", 1, 1);
	interpolate("controls/engines/engine[1]/condition", 1, 17);
	interpolate("controls/engines/engine[2]/condition", 1, 34);
	interpolate("controls/engines/engine[3]/condition", 1, 51);
	
	interpolate("/engines/engine[0]/running", 1, 1);
	interpolate("/engines/engine[1]/running", 1, 17);
	interpolate("/engines/engine[2]/running", 1, 34);
	interpolate("/engines/engine[3]/running", 1, 51);
      }  
  }
  );
