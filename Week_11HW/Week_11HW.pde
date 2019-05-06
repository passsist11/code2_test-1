String current = "Z";

int count = 0;

void setup(){
 size(500, 500);
 println("Generation " + count + ": " + current);
}

void draw(){
}

void mousePressed(){
 String next = "";
 
 for (int i = 0; i < current.length(); i++) {
    char c = current.charAt(i);
   if (c == 'Z'){
   next += "PP";
   }
   else if(c == 'P'){
    next += "LE"; 
   }    
   else if(c == 'E'){
    next += "ET"; 
   }
     else if(c == 'T'){
    next += "TZ"; 
   }
 }
 current = next;
 count++;
 println("Generation " + count + ": " + current);
}
