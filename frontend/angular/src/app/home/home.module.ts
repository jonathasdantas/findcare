import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HomeComponent } from './home.component';

import { Routes, RouterModule } from "@angular/router";
import { HomeSearchComponent } from './home-search/home-search.component';

const homeRoutes: Routes = [
  {
    path: '',
    component: HomeComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(homeRoutes),
    CommonModule
  ],
  declarations: [
    HomeComponent,
    HomeSearchComponent
  ]
})
export class HomeModule { }
