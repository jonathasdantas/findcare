# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default User
User.create([
  name: 'Admin',
  email: 'admin@admin.com',
  password: '123123',
  date_of_birth: '2017-01-01'
])

# Avaliabilities
Avaliability.create([
  { name: 'Full-time' },
  { name: 'Part-time' },
  { name: 'Weekends' },
  { name: 'Occasional' }
])

# Education Levels
EducationLevel.create([
  { name: 'Doctoral or Equivalent' },
  { name: 'Master or Equivalent' },
  { name: 'Bachelor or Equivalent' }
])

# http://heimshelp.education.gov.au/sites/heimshelp/resources/pages/field-of-education-types
# Education Fields
EducationField.create([
  { name: 'Mathematical Sciences' },
  { name: 'Physics and Astronomy' },
  { name: 'Chemical Sciences' },
  { name: 'Medical Science' },
  { name: 'Computer Science' },
  { name: 'Information Systems' },
  { name: 'Architecture and Building' },
  { name: 'Agriculture, Environmental and Related Studies' }
])

# Language Levels
LanguageLevel.create([
  { name: 'Beginner' },
  { name: 'Elementary' },
  { name: 'Intermadiate' },
  { name: 'Advanced' },
  { name: 'Fluent' },
  { name: 'Native' }
])

# Languages
Language.create([
  { name: 'Portuguese', country: 'Brazil' },
  { name: 'English', country: 'United States' },
  { name: 'Spanish', country: 'Spain' },
  { name: 'French', country: 'France' }
])

# Skill Groups
SkillGroup.create([
  { name: 'Home' },
  { name: 'Engineer' },
  { name: 'General' }
])

# Skills
Skill.create([
  { name: 'Web Developer', skill_group_id: 2, specific: false, extra: false },
  { name: 'Product Manager', skill_group_id: 2, specific: false, extra: false },
  { name: 'Java', skill_group_id: 2, specific: true, extra: false },
  { name: 'C#', skill_group_id: 2, specific: true, extra: false },
  { name: 'Ruby', skill_group_id: 2, specific: true, extra: false },
  { name: 'Pets', skill_group_id: 3, specific: false, extra: true },
  { name: 'Non-smoker', skill_group_id: 3, specific: false, extra: true }
])

# Experiences
Experience.create([
  { range: 'No Experience' },
  { range: 'Less than 6 months' },
  { range: '1 year' },
  { range: '2 years' },
  { range: '3 years' },
  { range: '4 years' },
  { range: 'More than 5 years' }
])

# Qualifications
Qualification.create([
  { name: 'PMBoK Certificate' },
  { name: 'IELTS 7' },
  { name: 'Oracle Certificate' },
  { name: 'Excel Certificate' }
])