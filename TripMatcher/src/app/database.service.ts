import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DatabaseService {
  extralijst = [];

  // Get from DB
  baseUrl = "http://localhost/TripMatcher/TripMatcher/API's/api.php";
  tripsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiTrips.php";
  tagsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiTags.php";
  tripsCountryUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiTripCountry.php";
  filterCategoryUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiFilterCategory.php";
  menuActivitiesUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiMenuActivities.php";
  questionTagsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiQuestionTags.php";
  suggestionsTripsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiSuggestionsTrips.php";
  selectedTagsInterestsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiSelectedTagsInterests.php";

  // Post to DB
  registrationUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiPost.php";
  addTagsToUserUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiTagsToUser.php"

  // Delete from DB

  deleteTagInterestsUrl = "http://localhost/TripMatcher/TripMatcher/API's/apiDeleteTagsInterests.php";

  constructor(private http: HttpClient) { }

  // Delete from DB
  deleteItem(data: any): Observable <any> {
    return this.http.delete(`${this.deleteTagInterestsUrl}?Category_name=${data}`);
  }


    // Post to DB
  postItem(data: object): Observable<any> {
    return this.http.post(this.registrationUrl, data);
  }

  addTagsToUser(data: object): Observable <any>{ 
    return this.http.post(this.addTagsToUserUrl, data);
  }




   // Get from DB
  getItem(login: string): Observable<any> {
    return this.http.get(`${this.baseUrl}?user=${login}`);
  }

  getTrips(): Observable<any> {
    return this.http.get(this.tripsUrl);
  }

  getTags(id: any): Observable <any> {
    return this.http.get(`${this.tagsUrl}?trip_id=${id}`);
  }

  getTripsCountry(country: string): Observable <any> {
    return this.http.get(`${this.tripsCountryUrl}?countryName=${country}`);
  }

  filterCategory(categoryName: string): Observable <any> {
    return this.http.get(`${this.filterCategoryUrl}?categoryName=${categoryName}`);
  }

  getMenuActivities(): Observable <any> {
    return this.http.get(this.menuActivitiesUrl);
  }

  getQuestionTags(questionID: any): Observable <any> {
    return this.http.get(`${this.questionTagsUrl}?questionID=${questionID}`);
  }

  getSuggestionsTripsUser(userID: any): Observable <any> {
    return this.http.get(`${this.suggestionsTripsUrl}?userID=${userID}`);
  }

  getSelectedTagsInterests(userID: any): Observable <any> {
    return this.http.get(`${this.selectedTagsInterestsUrl}?userID=${userID}`);
  }




}
