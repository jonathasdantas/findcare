import { Injectable } from '@angular/core';
import { User, ApiService } from "app/shared";
import { Observable } from "rxjs/Observable";

@Injectable()
export class UserService {

  private path: string = 'users';

  constructor(private _service: ApiService) { }

  getUsers(): Observable<User []> {
    return this._service.get(this.path);
  }
}
