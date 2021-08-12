import { Component, OnInit } from '@angular/core';
import { OpenOverlayService } from '../open-overlay.service';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {

  constructor(public openOverlay: OpenOverlayService) { }

  ngOnInit(): void {
  }

  openOverlayComponent() {
    this.openOverlay.changeOverlayDisplay();
    this.openOverlay.loginComponent = false;
    this.openOverlay.registerComponent = true;
  }

}
