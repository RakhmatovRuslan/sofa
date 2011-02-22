# File generated by kdevelop's qmake manager. 
# ------------------------------------------- 
# Subdir relative project main directory: ./modules/sofa/simulation/common
# Target is a library:  sofasimulation$$LIBSUFFIX

HEADERS += common.h \
           Node.h \
           AnimateBeginEvent.h \
           AnimateEndEvent.h \
           AnimateVisitor.h \   
           BehaviorUpdatePositionVisitor.h \
           CactusStackStorage.h \  
           ClassSystem.h \  
           CleanupVisitor.h \
           CollisionBeginEvent.h \
           ColourPickingVisitor.h \
           CollisionEndEvent.h \
           CollisionVisitor.h \  
           Colors.h \
           DeleteVisitor.h \
           DeactivatedNodeVisitor.h \
           ExportGnuplotVisitor.h \
           ExportOBJVisitor.h \
           FindByTypeVisitor.h \
           InitVisitor.h \  
           InstrumentVisitor.h \
           LocalStorage.h \
           MasterSolverImpl.h \
           MechanicalComputeEnergyVisitor.h \
	   MechanicalMatrixVisitor.h \
	       MechanicalOperations.h \
           MechanicalVPrintVisitor.h \
           MechanicalVisitor.h \
           MutationListener.h \
           ParallelVisitorScheduler.h \
           PauseEvent.h \
           PipelineImpl.h \
           PositionEvent.h\
           PrintVisitor.h \
           PropagateEventVisitor.h \
           ResetVisitor.h \
           Simulation.h \
           SolveVisitor.h \
           StateChangeVisitor.h \
           TopologyChangeVisitor.h \
           TransformationVisitor.h \
           UpdateContextVisitor.h \
           UpdateMappingEndEvent.h \
           UpdateMappingVisitor.h \
		   VectorOperations.h \
           VelocityThresholdVisitor.h \
           Visitor.h \
		   VisitorExecuteFunc.h \
           VisitorScheduler.h \
           VisualVisitor.h \
           WriteStateVisitor.h \
           XMLPrintVisitor.h \
           xml/BaseElement.h \
           xml/Element.h \
           xml/Element.inl \
           xml/initXml.h \
           xml/NodeElement.h \
           xml/ObjectElement.h \
           xml/AttributeElement.h \
           xml/DataElement.h \
           xml/XML.h 

SOURCES += Node.cpp \
           AnimateBeginEvent.cpp \
           AnimateEndEvent.cpp \
           AnimateVisitor.cpp \
           BehaviorUpdatePositionVisitor.cpp \
           CactusStackStorage.cpp \
           CleanupVisitor.cpp \
           CollisionVisitor.cpp \
           ColourPickingVisitor.cpp \
           DeleteVisitor.cpp \
           DeactivatedNodeVisitor.cpp \
           ExportGnuplotVisitor.cpp \
           ExportOBJVisitor.cpp \
           InitVisitor.cpp \   
           InstrumentVisitor.cpp \
           MasterSolverImpl.cpp \
           MechanicalComputeEnergyVisitor.cpp \
		   MechanicalOperations.cpp \
	   MechanicalMatrixVisitor.cpp \
           MechanicalVPrintVisitor.cpp \
           MechanicalVisitor.cpp \   
           MutationListener.cpp \ 
           ParallelVisitorScheduler.cpp \
           PauseEvent.cpp \
           PipelineImpl.cpp \
           PositionEvent.cpp\
           PrintVisitor.cpp \
           PropagateEventVisitor.cpp \
           ResetVisitor.cpp \
           Simulation.cpp \  
           SolveVisitor.cpp \
           TopologyChangeVisitor.cpp \
           StateChangeVisitor.cpp \   
           TransformationVisitor.cpp \
           UpdateContextVisitor.cpp \
           UpdateMappingEndEvent.cpp \
           UpdateMappingVisitor.cpp \
		   VectorOperations.cpp \
           VelocityThresholdVisitor.cpp \
           Visitor.cpp \
           VisitorScheduler.cpp \
           VisualVisitor.cpp \
           WriteStateVisitor.cpp \
           XMLPrintVisitor.cpp \
           xml/BaseElement.cpp \
           xml/initXml.cpp \
           xml/NodeElement.cpp \
           xml/ObjectElement.cpp \
           xml/AttributeElement.cpp \
           xml/DataElement.cpp \
           xml/XML.cpp 


SOFA_DIR =../../../..
TEMPLATE = lib
TARGET = sofasimulation
include($${SOFA_DIR}/sofa.cfg)
contains(DEFINES,SOFA_SMP){
HEADERS +=  \
           ChangeListener.h \
           ParallelMechanicalVisitor.h 

SOURCES +=  \
           ChangeListener.cpp \
           ParallelMechanicalVisitor.cpp 
}

CONFIG += $$CONFIGLIBRARIES

!contains(CONFIGSTATIC, static) {
	CONFIG -= staticlib
CONFIG += dll
}

DEFINES += SOFA_BUILD_SIMULATION_COMMON

LIBS += $$SOFA_FRAMEWORK_LIBS
LIBS += $$SOFA_EXT_LIBS

# Make sure there are no cross-dependencies
INCLUDEPATH -= $$SOFA_DIR/applications
