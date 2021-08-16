import { Component, OnInit } from '@angular/core';

import { FilterService } from '../filter.service';

@Component({
  selector: 'app-suggestions',
  templateUrl: './suggestions.component.html',
  styleUrls: ['./suggestions.component.css']
})
export class SuggestionsComponent implements OnInit {

  constructor(public filter: FilterService) { }

  apiSuggestions: any;

  userID = sessionStorage.getItem('userID');

  ngOnInit(): void {

    this.filter.filterSuggestionsUser(this.userID);

  }

}
