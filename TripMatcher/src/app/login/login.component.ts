import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

import { TopersonalpageService } from '../topersonalpage.service';



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
  ready = false;

  loginCorrect = false;

  users = [];

  constructor(public databaseService: DatabaseService, public topersonalpage: TopersonalpageService) { }

  ngOnInit(): void {

  }

  // loginUserInput = this.databaseService.getItem(this.loginFormulier.controls.Lemail.value).subscribe((data) => {this.apiLogin = data;});
  // loginUserInput2 = this.apiLogin.password;
  test = "test";

  submitForm() {
    this.databaseService.getItem(this.loginFormulier.controls.Lemail.value).subscribe((data) => {
      this.apiLogin = data;

      if (this.apiLogin.email == this.loginFormulier.controls.Lemail.value && this.apiLogin.password == this.loginFormulier.controls.Lpassword.value) {
        // console.log("correct!! GVD");
        // console.log("api: "+this.apiLogin.password);
        // console.log("form: "+this.loginFormulier.controls.Lpassword.value);
        this.loginCorrect = true;
        this.ready = true;
        this.topersonalpage.test();
        // this.router.navigate(['app-personal-page']);
      } else {
        // console.log("fout");
        // console.log("api: "+this.apiLogin.password);
        // console.log("form: "+this.loginFormulier.controls.Lpassword.value);
        this.loginCorrect = false;
      }
    })
  }


  // let dialogRef = dialog.open(YourDialog, {
  //   data: { name: 'austin' },
  // });


}
