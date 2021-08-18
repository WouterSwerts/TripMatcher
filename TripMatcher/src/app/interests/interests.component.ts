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

  arrayPersonalActivities = ["City", "Adventure"];

  apiActivities: any;

  ngOnInit(): void {

    

    this.database.getQuestionTags(1).subscribe((data) => {
      this.apiTags1 = data;
      // console.log(this.apiTags1.Qtags.Category_name.Category_id);
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

    this.filter.filterSuggestionsUser(3);


 

    // if (this.apiTags1.Qtags.Category_name.Category_id == 3) {
    //   console.log("test gelukt");
    // };

    // if (this.apiTags1.Qtags.Categroy_id == 1) {
    //   console.log("test ok" + this.apiTags1.Qtags.Categroy_id);
    // } else {
    //   console.log("test NIET ok" + this.apiTags1.Qtags.Categroy_id);
    // }

    // for (let i = 0; i < this.apiTags1.lenght; i++) {
    //   this.array.push(this.apiTags1.Qtags);
    //   console.log(this.array);
    // }

    


  }

clickedTagsToUserCategoryTable(category: any) {

  this.database.addTagsToUser({"User_id":this.sessionUserID, "Category_id":category}).subscribe(result=>console.log(result));

  // if (this.apiTags1.Qtags.Categroy_id == 1) {
  //   console.log("test ok " + this.apiTags1.Qtags.Category_name.Category_id);
  // } else {
  //   console.log("test NIET ok " + this.apiTags1.Qtags.Category_name.Category_id);
  // }

  // for (let i = 0; i < this.apiTags1.length; i++) {
    for (let activity of this.apiActivities.activity) {
    this.arrayActivities.push(activity["Category_name"]);
  }
  console.log("All: "+this.arrayActivities);

  // for (let item of this.filter.apiSuggestions.trip) {
  //   this.arrayPersonalActivities.push(item.tripTags["Category_name"]);
    
  // }

  // console.log("Personal: "+this.arrayPersonalActivities);

for (let i = 0; i < this.arrayActivities.length; i++) {

  if (this.arrayActivities.includes(this.arrayPersonalActivities[i])) {
    const id = document.getElementsByClassName(this.arrayPersonalActivities[i]);
    // const id2 = angular.element( document.querySelector( '#some-id' ) );
    
    console.log("Filter: "+this.arrayPersonalActivities[i]);
  } else {
    
  }
}
  
  

  

}



}