CPP = g++ -Wall -Ofast -g -fno-omit-frame-pointer -std=c++11 -pg
SRCS = main.cpp fluid_solver.cpp EventManager.cpp

all:
	$(CPP) $(SRCS) -o fluid_sim

clean:
	@echo Cleaning up...
	@rm fluid_sim
	@echo Done.
