import { BaseModel } from "app/shared/models/base.model";

/**
 * Amount of experience for each Skill
 * 
 * @export
 * @class SkillExperience
 * @extends {BaseModel}
 */
export class SkillExperience extends BaseModel {
  amount: string;
}
