import { Injectable } from '@angular/core';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class TopersonalpageService {

  constructor(public router: Router) { }

  displayHomePage = true;
  displayPersonalPage = false;

  toPersonalPage() {
    this.router.navigate(['personalPage'])
    this.displayHomePage = false;
    this.displayPersonalPage = true;
  }


  
}
