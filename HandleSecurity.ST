FUNCTION HandleSecurity : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  IF NOT enteredPassKey = passKeyDefaultValue THEN
    IF enteredPassKey = MASTER_PASSKEY THEN
      canOpenOutsideDoors := TRUE;
      alarmON := FALSE;
      alarmTimerOFFsec := defaultAlarmTimerOFFsec;
    ELSE
      alarmON := TRUE;
      canOpenOutsideDoors := FALSE;
    END_IF;
    enteredPassKey := passKeyDefaultValue;
  END_IF;

  IF NOT enteredPassKeyINT = enteredPassKeyINTdefaultValue THEN
    IF INT_TO_STRING(enteredPassKeyINT) = MASTER_PASSKEY THEN
      canOpenOutsideDoors := TRUE;
      alarmON := FALSE;
      alarmTimerOFFsec := defaultAlarmTimerOFFsec;
    ELSE
      alarmON := TRUE;
      canOpenOutsideDoors := FALSE;
    END_IF;
    enteredPassKey := passKeyDefaultValue;
    enteredPassKeyINT := 0;
  END_IF;
  
  IF canOpenOutsideDoors THEN
    garageGate := garageGateSwitch;
    garageDoor := garageDoorSwitch;
    patioDoor  := patioDoorSwitch;
    hallDoor   := frontDoorSwitch;
  ELSE
    garageGate := FALSE;
    garageDoor := FALSE;
    patioDoor  := FALSE;
    hallDoor   := FALSE;

    garageGateSwitch := FALSE;
    garageDoorSwitch := FALSE;
    patioDoorSwitch  := FALSE;
    frontDoorSwitch  := FALSE;
  END_IF;
  
END_FUNCTION

