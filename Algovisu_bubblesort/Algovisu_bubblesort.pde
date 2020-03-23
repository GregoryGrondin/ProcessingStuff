//bubble sort

float[] values;
int i = 0;
int j = 0;

void setup() {
  frameRate(60);
  size(1000, 500);
  values = new float[40];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
  }
  //for (int i = 0; i < values.length; i++) {
  //  for (int j = 0; j < values.length - i - 1; j++) {
  //     float cur = values[j];
  //     float nxt = values[j + 1];
  //     if (cur > nxt) {
  //       swap(values, j, j+1); 
  //     }
  //  }
  //}
}

void swap(float[] arr, int a, int b) {
  float tmp = arr[a];
  arr[a] = arr[b];
  arr[b] = tmp;
}

void drawrect() {
    int abs = 0;
    for (int i = 0; i < values.length; i++) {
      stroke(0);
      rect(abs, height - values[i], 25, values[i], 5, 5, 0, 0);
      abs+=25;
    }
}

void bubblesort() {
  if (i < values.length) {
    j++;
    if (j >= values.length - i - 1) {
      j = 0;
      i = i + 1;
    }
  } else {
    println("the end");
    noLoop();
  }
  float cur = values[j];
  float nxt = values[j + 1];
  if (cur > nxt) {
    swap(values, j, j+1);
  }
}

void draw() {
  background(255, 204, 0);
  if (i == values.length) {
    fill(0, 255, 0);
  }
  bubblesort();
  drawrect();
}
