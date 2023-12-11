FUNCTION HandleDayNightCycle : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  modTime := timePLC MOD secsInMin;
  IF modTime = 0 AND NOT cycleSwitched THEN
    cycleSwitched := TRUE;
    IF sun THEN
      sun := FALSE;
    ELSE
      sun := TRUE;
    END_IF;
    canCallTemperatureChange := TRUE;
  ELSIF modTime = 0 AND cycleSwitched THEN
    canCallTemperatureChange := FALSE;
  ELSE
    cycleSwitched := false;
    canCallTemperatureChange := FALSE;
  END_IF;
END_FUNCTION

