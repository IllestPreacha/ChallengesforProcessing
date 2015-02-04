void setup() {
  thread("printingtriplestars");
  thread("randomcharacters");
  size(255*3, 255*2);
}

void draw() {
  delay(50);
  background(mouseX/3, mouseY/2, random(255));

  char numbersign = '#';
  char slash = '/';
  char plus = '+';
  char minus = '-';
  int counter = 0;
  
  //using the normal window as a coordinate system to ditacte what character will be printing and adding tabs to control spacing
  if (mouseX > 510)
  {
    print("\t", numbersign);
  }
  if (mouseX > 255)
  {
    print("\t", plus);
  }
  if (mouseY < 255)
  {
    print("\t", minus);
  }
  if (mouseY < 385)
  {
    print("\t", slash);
  } 
  if (mouseX < mouseY)
  {
    print("\t", "\t");
  } else
  {
    print("\t", "\t", "\t");
  }
} 

//prints the triple stars
void printingtriplestars() {
  println("***");
  delay(50);
  print("\t");
  printingtriplestars();
}

//uses the modulo sign so it can keep going through the array even when has pass
void randomcharacters()
{
  char rotational [] = {
    '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '/', '*'
  };
  int counter = 0;
  for (int i=0; i < 1000; i++) {
    print("\b" + rotational[counter]);
    delay(50);
    counter =  ++counter % rotational.length;
  }
}
