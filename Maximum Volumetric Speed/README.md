# Maximum Volumetric Speed (MVS)
The name of the game when running a print farm is to achieve the **highest part throughput** in the **most cost effective manner** possible. The last thing I want to do is drop another $400+ on a new printer, when it might be an option to speed up the printers that I've already got. Therefore, the name of the game is raising the **Maximum Volumetric Speed** as high as possible. Some slicers have a setting for MVS, which will ensure that your print speeds stay below the mm^3/s value that you specify. Anything that the filament touches on its way to the build plate affects MVS, so let's look at things step by step to reduce MVS bottlenecks.

# Filament
The first consideration is filament. Most are documented in a technical datasheet containing their **Melt Flow Index (MFI)**, which is inversely proportional to viscosity. Higher MFI = higher MVS. MFI is obtained using a standardized procedure, requiring that a 3.2kg plunger push a material at a steady temperature through a small hole. Often, more expensive filaments hold a higher MFI, but this is not always the case. Take eSun's breakdown of their different filament types:
| Material | MFI (g/10min) | Temperature (ºC) | Density (g/cm^3) |
|--|--|--|--|
| PLA | 5 | 190 | 1.25 |
| ABS | 12 | 220 | 1.04 |
| PETG | 6.6 | 230 | 1.23 |
| Wood | 17 | 190 | 0.7 |
Some materials will flow much slower than others, such as PETG. Since cost is a priority for me, I chose to work exclusively with PLA, since it can often be found spooled for less than $20/kg.

| Material | Brand | MFI (g/10min @ 190ºC) | MFI (g/10min @ 210ºC) |  Spooled Cost ($/kg) | Pelletized Cost ($/kg) |
|--|--|--|--|--|--|
| PLA 4043D | NatureWorks | - | 6 | - | - |
| PLA LX175 | Luminy | 3 | 8 | - | $7.50 |
| PLA+ | eSun | 4 | - | $18.99 | - |
| PLA | eSun | 5 | - | $16.99 | - |

The filament's theoretical MVS can be calculated by multiplying the MFI and MVS:
<p align="center"><img src="filamentMVS.svg" alt="MVS=V/t=m/(d*t)=MFI*d" height="40"/></p>
<p align="center"><img src="esunPLAMVS.svg" alt="esunPLAMVS" height="40"/></p>
Given that the test includes a 3.2kg weight, the force applied is ~32N. 
