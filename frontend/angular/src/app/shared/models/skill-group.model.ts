import { BaseModel } from "app/shared/models/base.model";

/**
 * Group skills by field: home, engineer, general, etc
 * 
 * @export
 * @class SkillGroup
 * @extends {BaseModel}
 */
export class SkillGroup extends BaseModel {
  name: string;
}
