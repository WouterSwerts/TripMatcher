import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class OpenOverlayService {

  constructor() { }

  overlayDisplay = false;

  loginComponent = false;

  registerComponent = false;

  changeOverlayDisplay() {
    this.overlayDisplay = true;
    return this.overlayDisplay;
  }



}
