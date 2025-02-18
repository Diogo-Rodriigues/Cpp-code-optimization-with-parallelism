## Phase 1 - Sequential optimizations

In the first analysis we focus on simple single core/threaded optimizations with a 3D grid size of internal cells of 42, starting by profiling our application to see the critical areas in performance and then identifying performance inefficiencies including code analysis and performance metrics such as CPI (Cycles Per Instruction), cache miss rates, etc. then applying optimization techniques to enhance computational efficiency while preserving output precision.

## Structure

```plaintext
/WA1
    ├── 3dfluid      #Code
    └── report.pdf   #Report
```
