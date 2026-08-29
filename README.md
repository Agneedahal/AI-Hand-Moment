# AI-Hand-Moment

Real-Time Hand VFX System

# Project Title

Real-Time Hand VFX System -- Neon Hand Tracking & Magic Effects

# Description

Real-Time Hand VFX System is a webcam-based computer vision application
that tracks hand movements in real time and overlays cinematic neon
visual effects.

The project uses MediaPipe Hands to detect hand landmarks and
OpenCV to render the effects directly onto the live camera feed. It
can track up to two hands and creates a futuristic visual experience
with glowing hand skeletons, palm auras, fingertip energy beams,
connection bursts, and a magical circular shield.

The application is designed to run on Windows with Python 3.12 and
includes a batch launcher that automatically checks Python and installs
the required dependencies.

# Main Features

Real-time webcam hand tracking

Detection of up to two hands

Glowing neon hand skeleton

Pulsing aura around the palm

Different neon colors for the tracked hands and fingers

Fingertip-to-fingertip energy beams when two hands are detected

Energy burst effect when corresponding fingertips move close
together

Magic shield effect when one hand is detected with an open-palm
gesture

Rotating geometric shield elements and glowing core

Cinematic darkening and bloom effects

Live HUD showing the current effect states

Keyboard controls for enabling/disabling effects

Automatic webcam detection across camera indexes 0, 1, and 2

1280×720 webcam capture target with 30 FPS

Helpful startup and dependency error messages

# Technologies Used

Python 3.12

OpenCV -- webcam capture, image processing, drawing, blending,
and display

MediaPipe Hands -- real-time hand landmark detection and
tracking

NumPy -- image-array and numerical processing

The source code explicitly checks that the installed MediaPipe package
provides the classic mp.solutions.hands API. It is configured for
MediaPipe 0.10.21.

# Requirements

Windows PC

Python 3.12 64-bit

Working webcam

Internet connection for the first dependency installation

Required Python packages listed in requirements.txt

Required packages:

numpy==1.26.4
opencv-python==4.10.0.84
mediapipe==0.10.21
protobuf>=4.25.3,<5

# Project Files

Hand_VFX_Project/
│
├── Hand_VFX_Working.py
├── requirements.txt
├── Run_Hand_VFX.bat
└── README.md

If your downloaded files contain (2) in their filenames, rename them
to match the names above, because the included batch launcher expects
requirements.txt and Hand_VFX_Working.py.

# How to Run

Method 1 -- Recommended

Install Python 3.12 64-bit.

Put all project files in the same folder.

Make sure the files are named:

Hand_VFX_Working.py

requirements.txt

Run_Hand_VFX.bat

Double-click Run_Hand_VFX.bat.

The launcher checks for Python 3.12.

It installs/checks the required packages.

The Hand VFX application starts automatically.

Allow camera access if Windows asks for permission.

# Method 2 -- PowerShell / Command Prompt

Open a terminal in the project folder and run:

py -3.12 -m pip install -r requirements.txt
py -3.12 Hand_VFX_Working.py

# Controls

Key   Action

A   Toggle palm aura ON/OFF
B   Toggle fingertip beam effect ON/OFF
S   Toggle magic shield ON/OFF
Q   Quit the application

The application also displays the current Aura, Beam, and Shield states
in the on-screen HUD.

How the Effects Work

# Neon Hand Skeleton

MediaPipe provides 21 landmarks for each detected hand. The application
connects these landmarks using glowing multi-layer lines to create a
neon skeleton.

# Palm Aura

When enabled, a pulsing set of glowing rings is rendered around the
calculated palm center.

# Finger Energy Beams

When two hands are detected, corresponding fingertips are connected with
neon energy lines. Each finger uses its own configured color.

# Fingertip Join Effect

When corresponding fingertips from the two tracked hands move close
enough together, the application creates a glowing energy orb and
cross-shaped flare at the connection point.

# Magic Shield

When exactly one hand is detected and the fingers form an open-palm
gesture, a circular magical shield appears around the palm. The shield
contains multiple glowing rings, rotating geometric shapes, radial
lines, arcs, and a pulsing core.

# Configuration

Most visual settings are stored in the Config class inside
Hand_VFX_Working.py.

Examples include:

Glow intensity

Line thickness

Maximum number of hands

Detection confidence

Tracking confidence

Aura enable/disable

Beam enable/disable

Shield enable/disable

Shield radius

Shield rotation speed

Bloom intensity

Pulse speed

Fingertip connection distance

Neon colors

This makes the project easy to customize without changing the main
application structure.

# Troubleshooting

Python 3.12 is not found

Install Python 3.12 64-bit, then run Run_Hand_VFX.bat again.

MediaPipe mp.solutions.hands error

Use the supplied dependency versions:

py -3.12 -m pip install -r requirements.txt

The project is specifically configured for mediapipe==0.10.21.

Camera is not detected

Try these steps:

Close other applications using the webcam.

Check Windows camera permissions.

Make sure the webcam is connected and working.

Run the application again.

The program automatically tries camera indexes 0, 1, and 2.

The application window does not appear

Run the batch file from a terminal so you can see the startup/error
messages:

Run_Hand_VFX.bat

If a dependency error appears, reinstall the requirements.

# Performance Notes

The application requests a target camera resolution of 1280×720 at
30 FPS, although the actual resolution and frame rate depend on the
webcam and system.

For better performance:

Close unnecessary camera/video applications.

Use a good-quality webcam.

Keep the camera feed well lit.

Avoid running many GPU/CPU-heavy applications at the same time.

# Project Goal

The goal of this project is to demonstrate how real-time computer vision
and image processing can be combined to create interactive visual
effects from natural hand movements.

It can be used as a foundation for:

Computer vision demonstrations

Interactive VFX experiments

Gesture-controlled applications

AR-style visual projects

Educational MediaPipe/OpenCV projects

Future gesture-based games and interfaces



Author

Hand VFX Project

A real-time computer vision and visual-effects application built with
Python, OpenCV, MediaPipe, and NumPy.
