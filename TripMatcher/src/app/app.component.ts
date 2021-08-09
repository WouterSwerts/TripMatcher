import { Component } from '@angular/core';
import { OpenOverlayService } from './open-overlay.service';
import { OnInit } from '@angular/core';
import { TopersonalpageService } from './topersonalpage.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  implements OnInit {

  title = 'TripMatcher';

  constructor(public openOverlay: OpenOverlayService, public personalPage: TopersonalpageService) {};

  ngOnInit(): void {
    this.openOverlay.overlayDisplay;

    this.personalPage.displayHomePage;
    this.personalPage.displayPersonalPage;

  }

  

}
