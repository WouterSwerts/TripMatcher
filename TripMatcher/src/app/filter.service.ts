import { Injectable } from '@angular/core';
import { Data } from '@angular/router';

import { DatabaseService } from './database.service';

import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class FilterService {

  constructor(public database: DatabaseService, public router: Router) { }

  country = "";
  category= "";
  apiTrip: any;
  apiSuggestions: any;

  target: any;

  filterCountry(navCountry: any){
    this.country = navCountry;
    this.filterMe(this.country);
    this.target = document.getElementById("trips");
    this.target.scrollIntoView({behavior: "smooth"});
  };

  filterMe(country: any) {

    this.database.getTripsCountry(country).subscribe((data) => {
      this.apiTrip = data;
    })

  }

  showAllTrips() {
    this.database.getTrips().subscribe((data) => {
      this.apiTrip = data;
    })
  }

  filterCategory(categoryName: any) {
    this.category = categoryName;
    this.filterOnCategory(this.category);
    this.target = document.getElementById("trips");
    this.target.scrollIntoView({behavior: "smooth"});
    
  }

  filterOnCategory(categoryName: any) {
    this.database.filterCategory(categoryName).subscribe((data) => {
      this.apiTrip = data
    })
  }

filterSuggestionsUser(userID: any) {
  this.database.getSuggestionsTripsUser(userID).subscribe((data) => {
    this.apiSuggestions = data
  })
}


}
