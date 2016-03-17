# -*- coding: ASCII -*-
from boost cimport intrusive_ptr
from libcpp.string cimport string as libcpp_string 

cdef extern from "../../../../../framework/sofa/core/objectmodel/BaseObjectDescription.h" namespace "sofa::core::objectmodel": 
        cdef cppclass _BaseObjectDescription "sofa::core::objectmodel::BaseObjectDescription":
                _BaseObjectDescription(char* aName, char* aType) except +         
                
                void setAttribute(libcpp_string& attr, char* val)      
                libcpp_string getName()
                
cdef class BaseObjectDescription:       
        cdef _BaseObjectDescription* baseobjectdescriptionptr
