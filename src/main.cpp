#include <iostream>
#include <vector>

int main()
{
  const int size{1000000};

  std::vector<double> a(size, 1.0);
  std::vector<double> b(size, 2.0);
  std::vector<double> c(size);

  for (int i{0}; i < N; ++i) {
    c[i] = a[i] + b[i];
  }

  std::cout << c[42] << '\n';
}
