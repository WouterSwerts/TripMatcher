import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class TopersonalpageService {

  constructor(public router: Router) { }

  test() {
    console.log("gelukt");
    this.router.navigate(['personalPage'])
  }
}
