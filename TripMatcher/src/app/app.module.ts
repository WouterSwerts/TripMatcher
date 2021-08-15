import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './login/login.component';

import { ReactiveFormsModule } from '@angular/forms';

import { HttpClientModule } from '@angular/common/http';
import { PersonalPageComponent } from './personal-page/personal-page.component';
import { RegistrationFormComponent } from './registration-form/registration-form.component';
import { NavbarComponent } from './navbar/navbar.component';
import { HeroComponent } from './hero/hero.component';
import { MainFilterComponent } from './main-filter/main-filter.component';
import { FooterComponent } from './footer/footer.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { MatSliderModule } from '@angular/material/slider';

import {MatDialogModule, MAT_DIALOG_DEFAULT_OPTIONS} from '@angular/material/dialog';
import { OverlayComponent } from './overlay/overlay.component';
import { DisclaimerComponent } from './disclaimer/disclaimer.component';
import { HomepageComponent } from './homepage/homepage.component';
import { TripsComponent } from './trips/trips.component';
import { InterestsComponent } from './interests/interests.component';
import { SuggestionsComponent } from './suggestions/suggestions.component'


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    PersonalPageComponent,
    RegistrationFormComponent,
    NavbarComponent,
    HeroComponent,
    MainFilterComponent,
    FooterComponent,
    OverlayComponent,
    DisclaimerComponent,
    HomepageComponent,
    TripsComponent,
    InterestsComponent,
    SuggestionsComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ReactiveFormsModule,
    HttpClientModule,
    BrowserAnimationsModule,
    MatSliderModule,
    MatDialogModule
  ],
  providers: [
    {provide: MAT_DIALOG_DEFAULT_OPTIONS, useValue: {hasBackdrop: false}}
  ],
  bootstrap: [AppComponent],
  entryComponents: [LoginComponent]
})
export class AppModule { }
