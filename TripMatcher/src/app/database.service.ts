import { Injectable } from '@angular/core';

import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DatabaseService {
  extralijst = [];
  baseUrl = "http://localhost/TripMatcher/TripMatcher/api.php";
  registrationUrl = "http://localhost/TripMatcher/TripMatcher/apiPost.php";
  tripsUrl = "http://localhost/TripMatcher/TripMatcher/apiTrips.php";
  tagsUrl = "http://localhost/TripMatcher/TripMatcher/apiTags.php";
  tripsCountryUrl = "http://localhost/TripMatcher/TripMatcher/apiTripCountry.php";
  filterCategoryUrl = "http://localhost/TripMatcher/TripMatcher/apiFilterCategory.php";
  menuActivitiesUrl = "http://localhost/TripMatcher/TripMatcher/apiMenuActivities.php";

  constructor(private http: HttpClient) { }


  getItem(login: string): Observable<any> {
    return this.http.get(`${this.baseUrl}?user=${login}`);
  }

  postItem(data: object): Observable<any> {
    return this.http.post(this.registrationUrl, data);
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




}
