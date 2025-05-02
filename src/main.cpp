#include <array>
#include <iostream>

int main()
{
  constexpr int size{1000000};

  std::array<double, size> a{};
  a.fill(1.0);
  std::array<double, size> b{};
  b.fill(2.0);
  std::array<double, size> c{};

  for (int i{0}; i < size; ++i) {
    c[i] = a[i] + b[i];
  }

  std::cout << c[42] << '\n';
}
