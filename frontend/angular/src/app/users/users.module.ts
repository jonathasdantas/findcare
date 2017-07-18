import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UsersService } from "app/users/users.service";
import { Routes, RouterModule } from "@angular/router";
import { UserListComponent } from "app/users/user-list/user-list.component";
import { ApiService } from "app/shared";
import { UsersComponent } from "app/users/users.component";

const userRoutes: Routes = [
  {
    path: 'users',
    component: UsersComponent,
    children: [
      {
        path: '',
        component: UserListComponent

      },
      {
        path: 'register',
        component: UserListComponent
      }
    ]
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(userRoutes),
    CommonModule
  ],
  declarations: [
    UserListComponent,
    UsersComponent
  ],
  providers: [
    ApiService,
    UsersService
  ]
})
export class UsersModule { }
