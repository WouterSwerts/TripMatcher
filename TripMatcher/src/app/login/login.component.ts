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
  apiposts: any;
  ready = false;

  users = [];

  constructor(public databaseService: DatabaseService) { }

  ngOnInit(): void {
    // this.loginFormulier = new FormGroup({
    //   login: new FormControl(),
    //   password: new FormControl()
    // })

    // this.databaseService.getItem("test").subscribe((data) => {
    //   this.apiposts = data;
    //   this.ready = true;
    // })

    // this.databaseService.getLijst().subscribe((data) => {
    //   this.users = data;
    // })
  }

  submitForm() {
    this.databaseService.getItem(this.loginFormulier.controls.login.value).subscribe((data) => {
      this.apiposts = data;
      this.ready = true;
    })
    // alert("Gegevens ontvangen van " + this.loginFormulier.controls.login.value + " je wachtwoord is " + this.loginFormulier.controls.password.value);
  }

}
