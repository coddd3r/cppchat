CXX=g++

BINARY=r
CODEDIRS=.
INCDIRS=.

OPT=-O2	
DEPFLAGS = -MP -MD -MMD
CPPFLAGS= -g -c Wall -Wextra $(OPT) $(DEPFLAGS)
INCFLAGS= $(foreach D, $(INCDIRS), -I$(D))

ALL_CPP=$(foreach D, $(CODEDIRS), $(wildcard $(D)/*.cpp))
SRCS=$(foreach D, $(CODEDIRS), $(filter-out $(D)/test.cpp, $(ALL_CPP)))

OBJECTS=$(SRCS: .cpp=.o)


DEPDIR = .deps
DEPFLAGS = -MT $@ -MMD -MP -MF $(DEPFILES)
DEPFILES=$(OBJECTS:.o=.d)

.PHONY:all clean 

all:
	$(BINARY)

$(BINARY): $(OBJECTS)
	$(CXX) -o $@ $^

%.o:%.cpp
	$(CXX) $(CPPFLAGS) $(INCFLAGS) $(DEPFLAGS) -o $@ $<

$(DEPDIR):
	@mkdir -p $(DEPDIR)

debug: 
	CXXFLAGS += -DDEBUG -g
debug: 
	all

include:${DEPFILES} 

clean:
	clear && trash *.o *.d $(BINARY) *.out $(DEPDIR)