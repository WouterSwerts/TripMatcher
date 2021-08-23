import { Component, OnInit } from '@angular/core';

import { FilterService } from '../filter.service';

import { DatabaseService } from '../database.service';
import { Data } from '@angular/router';

@Component({
  selector: 'app-suggestions',
  templateUrl: './suggestions.component.html',
  styleUrls: ['./suggestions.component.css']
})
export class SuggestionsComponent implements OnInit {

  constructor(public filter: FilterService, public database: DatabaseService) { }

  apiSuggestions: any;

  userID = sessionStorage.getItem('userID');

  SuggestionsTripsUser: any;

  ngOnInit(): void {

    this.filter.filterSuggestionsUser(this.userID);

    this.database.getSelectedTagsInterests(this.userID).subscribe((data) => {
      this.SuggestionsTripsUser = data
      })

    

  }

  deleteInDB(tagName: any) {
    this.database.deleteItem(tagName).subscribe(result=> console.log(result));
  }



}
