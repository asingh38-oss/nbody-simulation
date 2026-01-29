#ifndef VECTOR3D_H
#define VECTOR3D_H

#include <cmath>

class Vector3D {
public:
    double x, y, z;
    
    Vector3D() : x(0), y(0), z(0) {}
    Vector3D(double x_, double y_, double z_) : x(x_), y(y_), z(z_) {}
    
    Vector3D operator+(const Vector3D& other) const {
        return Vector3D(x + other.x, y + other.y, z + other.z);
    }
    
    Vector3D operator-(const Vector3D& other) const {
        return Vector3D(x - other.x, y - other.y, z - other.z);
    }
    
    Vector3D operator*(double s) const {
        return Vector3D(x * s, y * s, z * s);
    }
    
    Vector3D operator/(double s) const {
        return Vector3D(x / s, y / s, z / s);
    }
    
    void operator+=(const Vector3D& other) {
        x += other.x; y += other.y; z += other.z;
    }
    
    double length() const {
        return sqrt(x*x + y*y + z*z);
    }
    
    Vector3D normalized() const {
        double len = length();
        if (len > 0) return *this / len;
        return Vector3D(0,0,0);
    }
};

#endif