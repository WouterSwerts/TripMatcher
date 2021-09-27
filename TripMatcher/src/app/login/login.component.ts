import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

import { TopersonalpageService } from '../topersonalpage.service';

import { OverlayComponent } from '../overlay/overlay.component';

import { OpenOverlayService } from '../open-overlay.service';

// import { NavbarComponent } from '../navbar/navbar.component';



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

  constructor(public databaseService: DatabaseService, public topersonalpage: TopersonalpageService, public overlay: OverlayComponent, public openOverlayService: OpenOverlayService) { }

  ngOnInit(): void {

  }

  submitForm() {
    this.databaseService.getItem(this.loginFormulier.controls.Lemail.value).subscribe((data) => {
      this.apiLogin = data;

      if (this.apiLogin.user[0].Email == this.loginFormulier.controls.Lemail.value && this.apiLogin.user[0].Password == this.loginFormulier.controls.Lpassword.value) {
        this.overlay.closeOverlay();
        sessionStorage.setItem('userEmail', this.apiLogin.user[0].Email);
        sessionStorage.setItem('userName', this.apiLogin.user[0].Name);
        sessionStorage.setItem('userID', this.apiLogin.user[0].id);
        this.topersonalpage.toPersonalPage();
        // this.navbar.ngOnInit();

        
        
        
      } else {
        console.log("fout", this.apiLogin.user[0].Name, this.apiLogin.Password, this.apiLogin.Email);
      }
    })
    // window.location.reload();
    // .then(() => {
    //   window.location.reload();
    // });
  }

  goToRegister() {
    this.overlay.closeOverlay();
    this.openOverlayService.changeOverlayDisplay();
    this.openOverlayService.loginComponent = false;
    this.openOverlayService.registerComponent = true;
  }

}
