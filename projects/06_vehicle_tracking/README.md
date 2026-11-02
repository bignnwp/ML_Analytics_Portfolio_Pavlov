# Vehicle Tracking & Traffic Flow Analysis

[English](README.md) | [Русский](README.ru.md)

**Project type:** Computer Vision / Video Analytics  
**Technologies:** Python, YOLOv8, ByteTrack, OpenCV, NumPy, Matplotlib

## Overview

A computer-vision pipeline for analysing traffic in recorded footage from a city surveillance camera. The system detects vehicles, tracks individual objects across frames and derives simple traffic-flow visualizations.

**Input video:** [Camera footage from Irkutsk](https://disk.yandex.ru/i/hjHdsy6pXZMcYA)

## Capabilities

- Multi-object tracking with persistent IDs using ByteTrack.
- Counting vehicles when they cross a configured line.
- Visualizing object trajectories.
- Generating a traffic-density heatmap.
- Changing the visual state/colour of tracked objects after line crossing.
- Organizing processing logic into object-oriented components.

## Architecture

| Component | Responsibility |
|---|---|
| `DetectedObject` | Stores an object's bounding box, centre, colour and trajectory |
| `TrafficAnalytics` | Handles tracking-related analytics and line-crossing counts |
| `HeatMapGenerator` | Accumulates object positions and creates a heatmap |
| `VideoProcessor` | Coordinates video reading, detection and result generation |

## Expected outputs

The project description identifies the following generated artifacts:

- `oop_output.mp4` — processed video with bounding boxes, trajectories and a counter.
- `heatmap_overlay.jpg` — traffic-density heatmap overlaid on a video frame.

These output files are described by the project but are not included in the current portfolio archive.

## Code and input

- [Open the implementation in Google Colab](https://colab.research.google.com/drive/1RSpXRFbK59RMsZOWblsOnoqfbBILgCQP)
- [Open the source video](https://disk.yandex.ru/i/hjHdsy6pXZMcYA)

The current portfolio folder contains this project description; the notebook is hosted externally in Colab.

## Repository structure

```text
06_vehicle_tracking/
├── README.md
└── README.ru.md
```

## What this project demonstrates

- Object detection and multi-object tracking.
- A video-processing workflow from input footage to analytics outputs.
- Object-oriented separation of detection, tracking analytics and visualization.
- Working with real-world video, where lighting, occlusion and camera perspective can affect detection quality.
