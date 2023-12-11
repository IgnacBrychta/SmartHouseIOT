FUNCTION HandleTemperature : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  seedAbs : DINT := 0;
  END_VAR
  VAR_TEMP
  END_VAR

  seedAbs := ABS(seed);
  IF sun THEN
    outsideTemperature := outsideTemperature + (seedAbs MOD 3);
  ELSE
    outsideTemperature := outsideTemperature - (seedAbs MOD 3);
  END_IF;
  insideTemperature := (insideTemperature + outsideTemperature) / 2;//insideTemperature + ((insideTemperature - outsideTemperature) / 2);

  IF insideTemperature = DESIRED_TEMPERATURE THEN
    heating := FALSE;
    cooling := FALSE;
  ELSIF insideTemperature < DESIRED_TEMPERATURE THEN
    heating := TRUE;
    cooling := FALSE;
    insideTemperature := insideTemperature + 3;
  ELSE
    cooling := TRUE;
    heating := FALSE;
    insideTemperature := insideTemperature - 3;
  END_IF;
  
END_FUNCTION

