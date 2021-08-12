import { Component, OnInit } from '@angular/core';

import { FilterService } from '../filter.service';

@Component({
  selector: 'app-main-filter',
  templateUrl: './main-filter.component.html',
  styleUrls: ['./main-filter.component.css']
})
export class MainFilterComponent implements OnInit {

  constructor(public filter: FilterService) { }

  Adventure = "Adventure";
  Family = "Family";
  Foodie = "Foodie";
  ArtCulture = "Culture";
  Beaches = "Beach";
  


  ngOnInit(): void {

  }

}
