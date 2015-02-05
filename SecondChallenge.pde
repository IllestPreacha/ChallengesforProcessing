void setup()
{
  
}

void draw()
{
  char rotational [] = {
    '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '/', '*'
  };
  float ranx = random(9);
  int  randx = round(ranx);
  print("\t", rotational[randx]);
  
}
