import { Component } from '@angular/core';
import { OpenOverlayService } from './open-overlay.service';
import { OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  implements OnInit {

  title = 'TripMatcher';

  constructor(public openOverlay: OpenOverlayService) {};

  ngOnInit(): void {
    this.openOverlay.overlayDisplay;
  }

}
