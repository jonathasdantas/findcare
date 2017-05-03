import { BaseModel } from "app/shared/models/base.model";

export class User extends BaseModel {
  first_name: string;
  last_name: string;
  email: string;
  username:string;
  token: string;
  locale: string;
  date_of_birth: Date;
}
