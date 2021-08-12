import { Component, OnInit } from '@angular/core';
import { OpenOverlayService } from '../open-overlay.service';


@Component({
  selector: 'app-hero',
  templateUrl: './hero.component.html',
  styleUrls: ['./hero.component.css']
})
export class HeroComponent implements OnInit {

  constructor(public openOverlay: OpenOverlayService) { }

  ngOnInit(): void {

  }

  openOverlayComponent() {
    this.openOverlay.changeOverlayDisplay();
    this.openOverlay.loginComponent = false;
    this.openOverlay.registerComponent = true;
  }




  

}
