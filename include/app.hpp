#include<string>

class App {
public:
    explicit App(char* name) : m_name(name) {};
    std::size_t length();
    
private:    
    char* m_name;
};
