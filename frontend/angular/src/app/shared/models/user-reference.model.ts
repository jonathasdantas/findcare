import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * User reference to a Helper
 * 
 * Author: jonathasdantas
 */
export class UserReference extends BaseModel {
  user: User[];
  text: string;
}
