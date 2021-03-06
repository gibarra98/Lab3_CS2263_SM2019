COMPILER = gcc

C_FLAGS = -Wall -Wextra

# TODO: add targets to compile LinkedList.c

Stack: Stack.o
	$(COMPILER) $(C_FLAGS) -o Stack Stack.o

# TODO: add a target for each .input file in the Data directory to run the compiled LinkedList program with the tests in ./Data

Stack.o: Stack.c
	$(COMPILER) $(C_FLAGS) -c Stack.c

# TODO: add a target that can run all the tests above.
##################################################################
# Test Cases
test: test1 test2 test3

##############################
# test1 cases
test1: test1

test1: Stack
	./Stack < Data/test1.input > test1.result
	./TestPassed.sh test1.result Data/test1.expected

##############################
# test2 cases
test2: test2

test2: Stack
	./Stack < Data/test2.input > test2.result
	./TestPassed.sh test2.result Data/test2.expected

##############################
# test3 cases
test3: test3

test3: Stack
	./Stack < Data/test3.input > test3.result
	./TestPassed.sh test3.result Data/test3.expected