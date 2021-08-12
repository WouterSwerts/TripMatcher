import { analyzeAndValidateNgModules, isNgTemplate } from '@angular/compiler';
import { Component, OnInit } from '@angular/core';

import { DatabaseService } from '../database.service';

import { FilterService } from '../filter.service';

@Component({
  selector: 'app-trips',
  templateUrl: './trips.component.html',
  styleUrls: ['./trips.component.css']
})
export class TripsComponent implements OnInit {

  apiTrip: any;
  apiTags: any;


  constructor(public database: DatabaseService, public filter: FilterService) { }


  ngOnInit(): void {

    this.filter.showAllTrips();
    
  }


}
