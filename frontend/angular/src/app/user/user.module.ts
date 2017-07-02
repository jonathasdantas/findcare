import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UserService } from "app/user/user.service";
import { Routes, RouterModule } from "@angular/router";
import { UserListComponent } from "app/user/user-list/user-list.component";
import { ApiService } from "app/shared";

const userRoutes: Routes = [
  {
    path: 'users',
    component: UserListComponent
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(userRoutes),
    CommonModule
  ],
  declarations: [
    UserListComponent
  ],
  providers: [
    ApiService,
    UserService
  ]
})
export class UserModule { }
