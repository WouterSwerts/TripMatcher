import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CredentialsService {

  constructor() { }

  userEmail = sessionStorage.getItem('userEmail');
  userName = sessionStorage.getItem('userName');
}
