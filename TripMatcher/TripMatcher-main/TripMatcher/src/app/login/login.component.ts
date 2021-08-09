import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginFormulier = new FormGroup({
    login: new FormControl(),
    password: new FormControl()
  })
  apiLogin: any;
  ready = false;

  users = [];

  constructor(public databaseService: DatabaseService) { }

  ngOnInit(): void {

  }

  loginUserInput = this.databaseService.getItem(this.loginFormulier.controls.login.value).subscribe((data) => {this.apiLogin = data;});
  // loginUserInput2 = this.apiLogin.password;
  test = "test";

  submitForm() {
    this.databaseService.getItem(this.loginFormulier.controls.login.value).subscribe((data) => {
      this.apiLogin = data;

      if (this.apiLogin.login == this.loginFormulier.controls.login.value && this.apiLogin.password == this.loginFormulier.controls.password.value) {
        console.log("correct")
      this.ready = true;
      } else {
        console.log("fout");
      }
    })
  }


}