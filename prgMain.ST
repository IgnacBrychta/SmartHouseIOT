PROGRAM prgMain
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  PRNG();
  modTemp := seed;
  modTemp := modTemp MOD 2;
  PRNG();
  random := seed < 0;
  HandleLights();

  HandleDayNightCycle();
  IF canCallTemperatureChange THEN
  END_IF;
  insideTemperatureText := DINT_TO_STRING(insideTemperature) + ' °C';
  outsideTemperatureText := DINT_TO_STRING(outsideTemperature) + ' °C';

  CASE switchCase OF
    0:
      IF timePLC >= timeDelayed THEN
        HandleTemperature();
        switchCase := 1;

        IF alarmTimerOFFsec > 0 THEN
          alarmTimerOFFsec := alarmTimerOFFsec - 1;
        ELSE
          canOpenOutsideDoors := FALSE;
        END_IF;

        
        
      END_IF;
    1: 
      timeDelayed := timePLC + 1;
      switchCase := 0;
     
      IF alarmON THEN
        IF alarmBlink THEN
          alarmBlink := FALSE;
        ELSE
          alarmBlink := TRUE;
        END_IF;
      ELSE
        alarmBlink := FALSE;
      END_IF;
  END_CASE;
  
  HandleSecurity();
END_PROGRAM

