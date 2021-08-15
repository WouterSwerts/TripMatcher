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

  ngOnInit(): void {

    this.filter.filterSuggestionsUser(3);

  }

}
