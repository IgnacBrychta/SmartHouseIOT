FUNCTION HandleLights : BOOL
  VAR_INPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR

  IF masterLightSwitchOFF THEN
    bedroomLight         := FALSE;
    childTopRoomLight    := FALSE;
    garageLight          := FALSE;
    childMiddleRoomLight := FALSE;
    bathroomLight        := FALSE;
    hallLight            := FALSE;
    wcLight              := FALSE;
    kitchenLight         := FALSE;
    patioLight           := FALSE;
    livingRoomLight      := FALSE;
    outsideLight         := FALSE;
    cellarLight          := FALSE;
  ELSIF masterLightSwitchON THEN
    bedroomLight         := TRUE;
    childTopRoomLight    := TRUE;
    garageLight          := TRUE;
    childMiddleRoomLight := TRUE;
    bathroomLight        := TRUE;
    hallLight            := TRUE;
    wcLight              := TRUE;
    kitchenLight         := TRUE;
    patioLight           := TRUE;
    livingRoomLight      := TRUE;
    outsideLight         := TRUE;
    cellarLight          := TRUE; 
  ELSE
    bedroomLight         := bedroomLightSwitch;
    childTopRoomLight    := childTopRoomLightSwitch;
    garageLight          := garageLightSwitch;
    childMiddleRoomLight := childMiddleRoomLightSwitch;
    bathroomLight        := bathroomLightSwitch;
    hallLight            := hallLightSwitch;
    wcLight              := wcLightSwitch;
    kitchenLight         := kitchenLightSwitch;
    patioLight           := patioLightSwitch;
    livingRoomLight      := livingRoomLightSwitch;
    cellarLight          := cellarLightSwitch;
    IF NOT SUN THEN
      outsideLight       := TRUE;
    ELSE
      outsideLight       := outsideLightSwitch;
    END_IF;
  END_IF;
  
END_FUNCTION
