#include <basestation.h>

using namespace std;

BaseStation::BaseStation(int id_value, int ipAddress_value) :
        Device(id_value, ipAddress_value)
{
    hp = 0;
}

BaseStation::~BaseStation()
{
    // Do nothing.
}