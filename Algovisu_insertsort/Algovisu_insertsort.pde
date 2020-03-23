int[] values;
int i = 1;
int j = 0;
int cle;

void setup() {
  size(1000, 500);
  values = new int[100];
  for (int i = 0; i < values.length; i++) {
    values[i] = int(random(height));
  }
  println(values[0], values[1], values[2], values[3], values[4]);
  cle = values[i];
}

//void insertsort(int arr[]) { 
//        int n = arr.length; 
//        for (int i = 1; i < n; i++) { 
//            int key = arr[i]; 
//            int j = i - 1; 
  
//            /* Move elements of arr[0..i-1], that are 
//               greater than key, to one position ahead 
//               of their current position */
//            while (j >= 0 && arr[j] > key) { 
//                arr[j + 1] = arr[j]; 
//                j = j - 1; 
//            } 
//            arr[j + 1] = key; 
//        } 
//}

void test() {
  if (i < values.length) {x²
    if (j < 0 || values[j] <= cle) {
      values[j + 1] = cle;
      i++;
      if (i == 100) {
        println("end");
        noLoop();
        i--;
      }
      cle = values[i];
      j = i - 1;
    }
    values[j + 1] = values[j];
    j--;
  }
}
void drawrect() {
    int abs = 0;
    for (int i = 0; i < values.length; i++) {
      stroke(0);
      rect(abs, height - values[i], 10, values[i], 5, 5, 0, 0);
      abs+=10;
    }
}

void draw() {
  background(255, 204, 0);
  test();
  drawrect();
}
