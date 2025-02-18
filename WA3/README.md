## Phase 3 - CUDA (GPU implementation)

Finally in the last phase, we raised the level of parallelism even further by programming the program to run on a GPU (NVIDIA Kepler K20), always following the same methodology. The 3D grid size of internal cells has been increased to 168 in each dimension, which means we have once again increased the size of the problem by 8 times

## Structure

```plaintext
/WA2
    ├── 3dfluid      #Code
    └── report.pdf   #Report
```
