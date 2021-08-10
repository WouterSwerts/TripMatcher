import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CredentialsService {

  constructor() { }

  userEmail = localStorage.getItem('userEmail');
  userName = localStorage.getItem('userName');
}
