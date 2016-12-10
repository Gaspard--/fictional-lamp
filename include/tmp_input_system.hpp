#ifndef TMP_INPUT_SYSTEM
# define TMP_INPUT_SYSTEM

# include <stdio.h>
# include <string>

class FileInput
{
private:
  FILE *file;
public:
  FileInput(char const *);
  ~FileInput();
  std::string toString();
};

#endif // !TMP_INPUT_SYSTEM
