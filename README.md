# Optimization with parallelism of 3d fluid simulation code

This project simulates fluid dynamics using Jos Stam's stable fluid solver in 3D, incorporating dynamic events such as adding density sources and applying forces at specified timesteps. The events are generated using a Python script and read by the C++ simulation. 

This project was done in the SEARCH cluster of the University of Minho!

In the Table presents the execution time measurements for the original, sequential, CUDA, and OpenMP versions, obtained using the K-Best Heuristic with K=5 and 15 measurements to ensure replicability.

|             Name        |       T (s)    |
|-------------------------|----------------|
| Original (3dfluid-main) |   2137 ± 0.5   |
| Sequential (WA1)        |   428.7 ± 0.3  |
| OpenMP (WA2)            |   58.3 ± 0.2   |
| CUDA (WA3)              |   17.4 ± 0.1   |


## Phase 1

In the first analysis we focus on simple single core/threaded optimizations with a 3D grid size of internal cells of 42, starting by profiling our application to see the critical areas in performance and then identifying performance inefficiencies including code analysis and performance metrics such as CPI (Cycles Per Instruction), cache miss rates, etc. then applying optimization techniques to enhance computational efficiency while preserving output precision.

## Phase 2

After that we started to improve the parallelism with multithreading and multiple cores using OpenMP, following the same approach: identifying bottlenecks, restructuring the algorithm, and using OpenMP constructs. Additionally, we doubled the 3D grid size of internal cells to 82, increasing the problem size by eight times.

## Phase 3

Finally, we raised the level of parallelism even further by programming the program to run on a GPU (NVIDIA Kepler K20), always following the same methodology. The 3D grid size of internal cells has been increased to 168 in each dimension, which means we have once again increased the size of the problem by 8 times

## Estrutura do Projeto

```plaintext
/Optimization-with-parallelism-of-3d-fluid-simulation-code
  ├── 3dfluid-main  # This is the original version of the code
  ├── WA1           # This is the 1st phase corresponding to sequential optimizations
  ├── WA2           # This is the 2nd phase corresponding to OpenMP (Multithreading optimizations)
  ├── WA3           # This is the 3rd phase corresponding to CUDA (GPU implementation)
```

