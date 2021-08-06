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

  constructor(private http: HttpClient) { }

  getItem(login: string): Observable<any> {
    return this.http.get(`${this.baseUrl}?user=${login}`);
  }

  postItem(data: object): Observable<any> {
    return this.http.post(this.registrationUrl, data);
  }
}
