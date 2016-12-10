#ifndef DISPLAY_HPP_
# define DISPLAY_HPP_

class Display
{
private:
  Vect<2u, float> dim;
public:
  Display(Vect<2u, float> &dim)
    : dim(dim)
  {
  }

  void render()
  {
  }
}

#endif // !DISPLAY_HPP_
