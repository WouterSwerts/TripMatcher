import { analyzeAndValidateNgModules, isNgTemplate } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';

import { DatabaseService } from '../database.service';

@Component({
  selector: 'app-trips',
  templateUrl: './trips.component.html',
  styleUrls: ['./trips.component.css']
})
export class TripsComponent implements OnInit {

  apiTrip: any;
  apiTags: any;

  // id = this.item;

  filter = "belgium";

  constructor(public database: DatabaseService) { }


  ngOnInit(): void {
    // this.database.getTrips().subscribe((data) => {
    //   this.apiTrip = data;
    // })

    this.database.getTripsCountry(this.filter).subscribe((data) => {
      this.apiTrip = data;
    })

    // this.database.getTags(1).subscribe((data) => {
    //   this.apiTags = data;
    // })

    // console.log("test: " + this.apiTrip.message);
    
  }

  // getTripId(id: number) {
  //   this.database.getTags(id).subscribe((data) => {
  //     this.apiTags = data;
  //   })
  // }

  filterMe() {

    this.filter = "germany";

    this.database.getTripsCountry(this.filter).subscribe((data) => {
      this.apiTrip = data;
    })

  }

  filterIt(country: any) {
    this.database.getTripsCountry(country).subscribe((data) => {
      this.apiTrip = data;
    })
  }



}
