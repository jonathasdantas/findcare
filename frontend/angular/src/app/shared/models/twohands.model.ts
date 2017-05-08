import { User } from "app/shared/models/user.model";
import { Skill } from "app/shared/models/skill.model";
import { Qualification } from "app/shared/models/qualification.model";
import { Language } from "app/shared/models/language.model";
import { Avaliability } from "app/shared/models/avaliability.model";
import { UserReference } from "app/shared/models/user-reference.model";
import { UserReview } from "app/shared/models/user-review.model";
import { Schedule } from "app/shared/models/schedule.model";

/**
 * Helper Model
 * 
 * Author: jonathasdantas
 */
export class TwoHands extends User {
  aboutme: string;
  location: string;
  phone: string;
  education: string;
  skills: Skill [];
  specificSkills: Skill [];
  qualifications: Qualification [];
  extras: Skill [];
  languages: Language [];
  avaliability: Avaliability;
  references: UserReference [];
  reviews: UserReview [];
  schedule: Schedule [];
}
