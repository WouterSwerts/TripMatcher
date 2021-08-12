import { Injectable } from '@angular/core';
import { Data } from '@angular/router';

import { DatabaseService } from './database.service';

@Injectable({
  providedIn: 'root'
})
export class FilterService {

  constructor(public database: DatabaseService) { }

  country = "";
  category= "";
  apiTrip: any;

  filterCountry(navCountry: any){
    this.country = navCountry;
    // console.log(navCountry);

    this.filterMe(this.country);
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
    
  }

  filterOnCategory(categoryName: any) {
    this.database.filterCategory(categoryName).subscribe((data) => {
      this.apiTrip = data
    })
  }


}
