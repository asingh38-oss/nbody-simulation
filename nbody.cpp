#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>
#include <random>
#include <chrono>

// 3D Vector class - keeps track of x, y, x positions

class Vector3D
{
public:
    double x, y, z;

    Vector3D() : x(0), y(0), z(0) {}
    Vector3D(doublex_, doubley_, doublez_) : x(x_), y(y_), z(z_) {}

    // Basic vector math
    Vector3D operator+(const Vector3D &other) const
    {
        return Vector3D(x + other.x, y + other.y, z + other.z);
    }
    Vector3D operator-(const Vector3D &other) const
    {
        return Vector3D(x - other.x, y - other.y, z - other.z);
    }

    Vector3D operator*(double s) const
    {
        return Vector3D(x * s, y * s, z * s);
    }

    Vector3D operator/(double s) const
    {
        return Vector3D(x / s, y / s, z / s);
    }
    // add to existing vector
    void operator+=(const Vector3D &other)
    {
        x += other.x;
        y += other.y;
        z += other.z;
    }
    // get vector length
    double length() const
    {
        return sqrt(x * x + y * y + z * z);
    }
    // make vector length = 1
    Vector3D normalized() const
    {
        double len = length();
        if (len > 0)
            return *this / len;
        return Vector3D(0, 0, 0);
    }
};

// Particle structure - stores all info about one particle
struct Particle
{
    double mass;
    Vector3D position;
    Vector3D velocity;
    Vector3D force;

    Particle(double m, Vector3D pos, Vector3D vel)
        : mass(m), position(pos), velocity(vel) {}
};

// Main class
class nBodySim
{
private:
    std::vector<Particle> particles;
    double G;         // Gravity constant
    double softening; // Small number to avoid divide by zero
    double dt;        // Time step

public:
    nBodySim(double time_step = 1.0) : dt(time_step)
    {
        G = 6.67430e-11;  // Standard gravity const.
        softening = 1e-4; // small numb for stability
    }
    // add particle to simulation
    void addParticle(double mass, Vector3D pos, Vector3D vel)
    {
        
    }
}