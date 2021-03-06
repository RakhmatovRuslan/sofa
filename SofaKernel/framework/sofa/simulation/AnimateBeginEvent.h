/******************************************************************************
*       SOFA, Simulation Open-Framework Architecture, development version     *
*                (c) 2006-2016 INRIA, USTL, UJF, CNRS, MGH                    *
*                                                                             *
* This library is free software; you can redistribute it and/or modify it     *
* under the terms of the GNU Lesser General Public License as published by    *
* the Free Software Foundation; either version 2.1 of the License, or (at     *
* your option) any later version.                                             *
*                                                                             *
* This library is distributed in the hope that it will be useful, but WITHOUT *
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       *
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License *
* for more details.                                                           *
*                                                                             *
* You should have received a copy of the GNU Lesser General Public License    *
* along with this library; if not, write to the Free Software Foundation,     *
* Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 USA.          *
*******************************************************************************
*                               SOFA :: Modules                               *
*                                                                             *
* Authors: The SOFA Team and external contributors (see Authors.txt)          *
*                                                                             *
* Contact information: contact@sofa-framework.org                             *
******************************************************************************/
//
// C++ Interface: AnimateBeginEvent
//
// Description:
//
//
// Author: Jeremie Allard, MGH/CIMIT, (C) 2006
//
// Copyright: See COPYING file that comes with this distribution
//
//
#ifndef SOFA_SIMULATION_ANIMATEBEGINEVENT_H
#define SOFA_SIMULATION_ANIMATEBEGINEVENT_H

#include <sofa/core/objectmodel/Event.h>
#include <sofa/simulation/simulationcore.h>

namespace sofa
{

namespace simulation
{

/**
  Event fired by Simulation::animate() before computing a new animation step.
  @author Jeremie Allard
*/
class SOFA_SIMULATION_CORE_API AnimateBeginEvent : public sofa::core::objectmodel::Event
{
public:

    SOFA_EVENT_H( AnimateBeginEvent )

    AnimateBeginEvent( SReal dt );

    ~AnimateBeginEvent();

    SReal getDt() const { return dt; }
    virtual const char* getClassName() const { return "AnimateBeginEvent"; }
protected:
    SReal dt;
};


} // namespace simulation

} // namespace sofa

#endif
