class Palla {
  private PVector posizione, velocita;
  private int altPlayer, largPlayer;
  
  public Palla(int direzione) {
    this.largPlayer = 20;
    this.altPlayer  = 100;
    
    
    posizione = new PVector(width/2, height/2);
    
    this.velocita = new PVector(direzione*random(4,5), random(4,5));
  }
  
  
  
  void mover() {
    posizione.add(velocita);
  }
  
 
  void show() {
    fill(2555,255,0);
    stroke(0, 0, 0);
    ellipse(posizione.x, posizione.y, 20,20);
  }
  
  void RimbalzoPlayer(PVector posizionePlayer) {

    float min = posizionePlayer.y - this.altPlayer/2;
    

    float max = posizionePlayer.y + this.altPlayer/2;
    

    if(this.posizione.x < largPlayer && this.posizione.y > min && this.posizione.y < max) {
      this.velocita.x *= -1;
    }
  }
  
  void RimbalzoPlayer2(PVector posizionePlayer) {

    float min = posizionePlayer.y - this.altPlayer/2;

    float max = posizionePlayer.y + this.altPlayer/2;
    
    if(this.posizione.x > width - this.largPlayer && this.posizione.y > min && this.posizione.y < max) {
      this.velocita.x *= -1;
    }
  }
  
  void MuroRimbalzo() {

    if(this.posizione.y > height) {
      this.velocita.y *= -1;
    } else if(this.posizione.y < 0) {
      this.velocita.y *= -1;
    }
  }
  
  PVector getPosizione() {
    return this.posizione;
  }
}
