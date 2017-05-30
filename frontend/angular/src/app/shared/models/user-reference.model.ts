import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * User reference for a Helper
 * 
 * @export
 * @class UserReference
 * @extends {BaseModel}
 */
export class UserReference extends BaseModel {
  user: User[];
  text: string;
}
