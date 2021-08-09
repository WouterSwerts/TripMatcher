import { Component, OnInit } from '@angular/core';
import { OpenOverlayService } from '../open-overlay.service';

@Component({
  selector: 'app-overlay',
  templateUrl: './overlay.component.html',
  styleUrls: ['./overlay.component.css']
})
export class OverlayComponent implements OnInit {

  constructor(public overlayService: OpenOverlayService) { }

  closeOverlay() {
    this.overlayService.overlayDisplay = false;
  }

  ngOnInit(): void {
  }

}
