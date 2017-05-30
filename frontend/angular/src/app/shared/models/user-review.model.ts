import { BaseModel } from "app/shared/models/base.model";
import { User } from "app/shared/models/user.model";

/**
 * User's review for a Helper
 * 
 * @export
 * @class UserReview
 * @extends {BaseModel}
 */
export class UserReview extends BaseModel {
  user: User;
  rating: number;
}
