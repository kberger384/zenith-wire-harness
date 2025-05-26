:: filepath: organize_wireviz.bat
@echo off
setlocal enabledelayedexpansion

REM Set base directory
set BASE=wireviz\cables

REM Create subdirectories
for %%D in (avionics sensors autopilot lights antennas misc) do (
    if not exist "%BASE%\%%D" mkdir "%BASE%\%%D"
    if not exist "%BASE%\%%D\README.md" (
        echo # %%D > "%BASE%\%%D\README.md"
        echo. >> "%BASE%\%%D\README.md"
        echo This directory contains %%D cables. >> "%BASE%\%%D\README.md"
    )
)

REM Move and rename files (edit as needed)
move "%BASE%\gdu460.yml"         "%BASE%\avionics\gdu460.yml"
move "%BASE%\gtr200.yml"         "%BASE%\avionics\gtr200.yml"
move "%BASE%\gma245.yml"         "%BASE%\avionics\gma245.yml"
move "%BASE%\gmc507.yml"         "%BASE%\avionics\gmc507.yml"
move "%BASE%\g5efis.yml"         "%BASE%\avionics\g5efis.yml"
move "%BASE%\gnx375.yml"         "%BASE%\avionics\gnx375.yml"
move "%BASE%\gad27.yml"          "%BASE%\autopilot\gad27.yml"
move "%BASE%\gad29.yml"          "%BASE%\autopilot\gad29.yml"
move "%BASE%\gsa28_pitch.yml"    "%BASE%\autopilot\gsa28_pitch.yml"
move "%BASE%\gsa28_roll.yml"     "%BASE%\autopilot\gsa28_roll.yml"
move "%BASE%\gap26.yml"          "%BASE%\sensors\gap26.yml"
move "%BASE%\gsu25c.yml"         "%BASE%\sensors\gsu25c.yml"
move "%BASE%\gmu11.yml"          "%BASE%\sensors\gmu11.yml"
move "%BASE%\rayallen_pos12.yml" "%BASE%\sensors\rayallen_pos12.yml"
move "%BASE%\rayallen_t2_7a.yml" "%BASE%\sensors\rayallen_t2_7a.yml"
move "%BASE%\can_terminators.yml" "%BASE%\misc\can_terminators.yml"
move "%BASE%\landing_light.yml"  "%BASE%\lights\landing_light.yml"
move "%BASE%\taxi_light.yml"     "%BASE%\lights\taxi_light.yml"
move "%BASE%\position_lights.yml" "%BASE%\lights\position_lights.yml"

REM Create missing light files if needed
for %%L in (landing_light.yml taxi_light.yml position_lights.yml) do (
    if not exist "%BASE%\lights\%%L" (
        echo # TODO: Add %%L wiring details > "%BASE%\lights\%%L"
    )
)

REM Create missing antenna files if needed
for %%A in (ga35_antenna.yml xpdr_antenna.yml com_antenna.yml) do (
    if not exist "%BASE%\antennas\%%A" (
        echo # TODO: Add %%A wiring details > "%BASE%\antennas\%%A"
    )
)

echo Organization complete. Please review and update README.md and YAML files as needed.
pause