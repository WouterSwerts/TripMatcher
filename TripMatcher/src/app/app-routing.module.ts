import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomepageComponent } from './homepage/homepage.component';
import { LoginComponent } from './login/login.component';
import { PersonalPageComponent } from './personal-page/personal-page.component';
import { TripsComponent } from './trips/trips.component';

const routes: Routes = [
  {path: "", component: HomepageComponent},
  {path: "personalPage", component: PersonalPageComponent},
  {path: "loginPage", component: LoginComponent},
  {path: "Trips", component: TripsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
