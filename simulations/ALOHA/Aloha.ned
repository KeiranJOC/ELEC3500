//
// This file is part of an OMNeT++/OMNEST simulation example.
//
// Copyright (C) 1992-2008 Andras Varga
//
// This file is distributed WITHOUT ANY WARRANTY. See the file
// `license' for details on this and other legal matters.
//


//
// The Aloha network consists of hosts which talk to the central "server" via
// the Aloha or Slotted Aloha protocol
//
package elec3500.simulations.ALOHA;
import elec3500.ALOHA.Server;
import elec3500.ALOHA.Host;
network Aloha
{
    parameters:
        int numHosts;  // number of hosts
        double txRate @unit(bps);  // transmission rate
        double slotTime @unit(ms);  // zero means no slots (pure Aloha)
        @display("bgi=background/terrain,s");
    submodules:
        server: Server;
        host[numHosts]: Host {
            txRate = txRate;
            slotTime = slotTime;
        }
}

