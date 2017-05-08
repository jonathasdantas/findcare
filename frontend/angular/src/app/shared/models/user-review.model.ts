import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * User review to a Helper
 * 
 * Author: jonathasdantas
 */
export class UserReview extends BaseModel {
  user: User;
  rating: number;
}
