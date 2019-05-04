// Gif-export by Tim Rodenbröker
// Example: 
// gif(50,1,500);

import gifAnimation.*;

int gifframecount;

String filename;
String timestamp;

GifMaker gifExport;

void gif(int frames, int gifFrameModulo, int _delay) {

  filename = timestamp = year() + nf(month(),2) + nf(day(),2) + "-"  + nf(hour(),2) + nf(minute(),2) + nf(second(),2);
  
  if (frameCount == 1) {
    int delay;
    delay = _delay;
    println("gifAnimation " + Gif.version());
    gifExport = new GifMaker(this, "a.gif");
    gifExport.setRepeat(0);
    gifExport.setDelay(delay);
  }

  if (frameCount % gifFrameModulo == 0) {
    gifExport.addFrame();
    gifframecount++;
  }
  if (frameCount / gifFrameModulo == frames) {
    gifExport.finish();
    println("gif saved");
    exit();
  }
}
