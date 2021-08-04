import { Component, OnInit } from '@angular/core';

import { FormGroup, FormControl } from '@angular/forms';

import { DatabaseService } from '../database.service';

@Component({
  selector: 'app-registration-form',
  templateUrl: './registration-form.component.html',
  styleUrls: ['./registration-form.component.css']
})
export class RegistrationFormComponent implements OnInit {
  registratieFormulier = new FormGroup({
    Rlogin: new FormControl(),
    Rpassword: new FormControl()
  })

  submitRegistration() {
    this.databank.postItem({"login":"burcu", "password":"test"}).subscribe(result=>console.log(result));



  }


  constructor(public databank: DatabaseService) { }

  ngOnInit(): void {
  }

}
