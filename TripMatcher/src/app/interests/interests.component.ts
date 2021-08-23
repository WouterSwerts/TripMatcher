import { Component, OnInit } from '@angular/core';

import { DatabaseService } from '../database.service';

import { FilterService } from '../filter.service';

@Component({
  selector: 'app-interests',
  templateUrl: './interests.component.html',
  styleUrls: ['./interests.component.css']
})
export class InterestsComponent implements OnInit {

  constructor(public database: DatabaseService, public filter: FilterService) { }

  apiTags1: any;
  apiTags2: any;
  apiTags3: any;
  apiTags4: any;
  apiTags5: any;
  apiTags6: any;
  apiTags7: any;
  apiTags8: any;
  apiTags9: any;

  sessionUserID = sessionStorage.getItem('userID');

  test = "testOK";
  testniet ="testNOK";

  arrayActivities: any = [];

  arrayPersonalActivities: any = [];

  apiActivities: any;

  SuggestionsTripsUser: any;

  selectedTags() {
    for (let activity of this.apiActivities.activity) {
      this.arrayActivities.push(activity["Category_name"]);
    }
  
    for (let activityP of this.SuggestionsTripsUser.category_id) {
      this.arrayPersonalActivities.push(activityP["Category_name"]);
    }
  
    for (let i = 0; i < this.arrayActivities.length; i++) {
  
      if (this.arrayActivities.includes(this.arrayPersonalActivities[i])) {
        const id = document.getElementById(this.arrayPersonalActivities[i]);
  
        if (id != undefined) {
  
          id.classList.add("tagActive");
        }
      
      } else {
        
      }
  }
  
  }

  ngOnInit(): void {

    this.database.getQuestionTags(1).subscribe((data) => {
      this.apiTags1 = data;
    })
    this.database.getQuestionTags(2).subscribe((data) => {
      this.apiTags2 = data;
    })
    this.database.getQuestionTags(3).subscribe((data) => {
      this.apiTags3 = data;
    })
    this.database.getQuestionTags(4).subscribe((data) => {
      this.apiTags4 = data;
    })
    this.database.getQuestionTags(5).subscribe((data) => {
      this.apiTags5 = data;
    })
    this.database.getQuestionTags(6).subscribe((data) => {
      this.apiTags6 = data;
    })
    this.database.getQuestionTags(7).subscribe((data) => {
      this.apiTags7 = data;
    })
    this.database.getQuestionTags(8).subscribe((data) => {
      this.apiTags8 = data;
    })
    this.database.getQuestionTags(9).subscribe((data) => {
      this.apiTags9 = data;
    })

    this.database.getMenuActivities().subscribe((data) => {
      this.apiActivities = data;
    })

    this.filter.filterSuggestionsUser(this.sessionUserID);

   
    this.database.getSelectedTagsInterests(this.sessionUserID).subscribe((data) => {
      this.SuggestionsTripsUser = data
      })


      // this.selectedTags();

    

  }

clickedTagsToUserCategoryTable(category: any) {

  this.database.addTagsToUser({"User_id":this.sessionUserID, "Category_id":category}).subscribe(result=>console.log(result));

  this.selectedTags();



}


}
