import { BaseModel } from "app/shared/models/base.model";
import { SkillExperience } from "app/shared/models/skill-experience.model";
import { SkillGroup } from "app/shared/models/skill-group.model";

/**
 * Skills of the Helper
 * 
 * @export
 * @class Skill
 * @extends {BaseModel}
 */
export class Skill extends BaseModel {
  name: string;
  experience: SkillExperience;
  group: SkillGroup;
  specific: boolean;
  extra: boolean;
}
