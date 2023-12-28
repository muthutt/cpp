#include "app.hpp"
#include <cstring>

std::size_t App::length() {
    return strlen(m_name);
}
