# Home Automation System
![Mosaic WebMaker Screenshot](https://media.discordapp.net/attachments/1076565079333548184/1200065429650030712/2023-12-13_12_22_02-Mosaic_2023.1.33_-_C__Users_Ignac_Documents_PLC_Winter_PLC.mpr__06_IOT_House.png?ex=65c4d306&is=65b25e06&hm=518fada58134dd5ed47a8d4e9f9a3409ff0bf511751150824eaaa8550a9c174f&=&format=webp&quality=lossless&width=1796&height=988)
#### Day-Night Cycle Management

- **Dynamic Cycle Switching:**
  - The system intelligently toggles between day and night cycles based on the PLC's internal time.
  - Triggers corresponding actions such as changing lights and adjusting temperature settings.

#### Lighting Control

- **Flexible Lighting Management:**
  - Allows control over the state of lights in different rooms.
  - Takes into account master light switches and individual room light switches.
  - Adapts lighting conditions based on the time of day and user preferences.

#### Security Control

- **Passkey Security:**
  - Implements a passkey system for enhanced security.
  - Differentiates between a master passkey and other passkeys.
  - Controls the opening of outside doors based on security conditions.

#### Temperature Regulation

- **Smart Temperature Adjustment:**
  - Dynamically adjusts indoor and outdoor temperatures based on the day-night cycle.
  - Implements heating or cooling systems to maintain a comfortable environment.
  - Ensures energy efficiency by regulating temperature according to desired levels.

#### Pseudo-Random Number Generation

- **Randomness Integration:**
  - Utilizes a Pseudo-Random Number Generator (PRNG) to introduce randomness into system behavior.
  - Enhances the system's adaptability and realism by simulating unpredictable events.

#### Main Program Management

- **Overall System Coordination:**
  - Orchestrates the entire home automation system through a main program (`prgMain`).
  - Manages the flow of the system, including temperature changes, light controls, and security checks.
  - Implements a switch-case structure for handling different states and functionalities.
  - Ensures the effective and coordinated operation of various components.

#### Blinking Alarm System

- **Visual Alert System:**
  - Incorporates a blinking alarm system to visually indicate specific conditions.
  - Enhances user awareness of critical events, such as security alarms.

### Summary

The home automation system aims to provide a seamless and intelligent living environment. It automates lighting, temperature regulation, and security features, taking into account dynamic day-night cycles. The system's adaptability and responsiveness contribute to a more comfortable, secure, and energy-efficient home. The integration of a PRNG adds an element of unpredictability, making the system realistic and versatile. Overall, the project demonstrates the potential of automation in improving the quality of life within a home setting.
