import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

import { TopersonalpageService } from '../topersonalpage.service';

import { OverlayComponent } from '../overlay/overlay.component';



@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginFormulier = new FormGroup({
    Lemail: new FormControl(),
    Lpassword: new FormControl()
  })
  apiLogin: any;

  users = [];

  // userEmail = sessionStorage.getItem('userEmail');

  constructor(public databaseService: DatabaseService, public topersonalpage: TopersonalpageService, public overlay: OverlayComponent) { }

  ngOnInit(): void {

  }

  submitForm() {
    this.databaseService.getItem(this.loginFormulier.controls.Lemail.value).subscribe((data) => {
      this.apiLogin = data;

      if (this.apiLogin.email == this.loginFormulier.controls.Lemail.value && this.apiLogin.password == this.loginFormulier.controls.Lpassword.value) {
        
        this.overlay.closeOverlay();
        localStorage.setItem('userEmail', this.apiLogin.email);
        localStorage.setItem('userName', this.apiLogin.name);
        this.topersonalpage.toPersonalPage();
        
      } else {
        console.log("fout");
      }
    })
  }

}
