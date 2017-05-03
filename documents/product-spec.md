# Find Care Specification

## Main Concept

- ...

## Entities

### User

- first_name: ```string```
- last_name: ```string```
- email: ```string```
- active: ```boolean```
- password: ```string```
- password_confirmation: ```string```
- token: ```string```
- created_at: ```datetime```
- updated_at: ```datetime```
- first_seen_at: ```datetime```
- last_seen_at: ```datetime```
- date_of_birth: ```date```
- locale: ```string```

### 2Hands < User

- location: ```string```
- skills: ```json```
  - Swinmming, Homework & tutoring, Cooking, Infants/Babies
- specific_skills: ```json```
  - Infants/Babies, Toddlers, Preschool, Kids with allergies
- qualifications: ```json```
  - Driver License, CPR certificate, First Aid certificate, etc
- extras: ```json```
  - Pets, Non-smoker, etc
- languages: ```json```
- avaliability: ```json```
- aboutme: ```text```
- phone: ```string```
- education: ```string```
- references: ```Reference []```
- reviews: ```Review []```
- schedule: ```Schedule []```

### Avaliability

- name: ```string```
  - Full-time, Part-time, Weekends, Occasional, etc

### Language

- name: ```string```
- level: ```Language Level``` (2hands json)
- country: ```string```

## Language Level

- name: ```string```
  - Beginner, Elementary, Intermadiate, Advanced, Fluent, Native

### Skill

- name: ```string```
- group: ```SkillGroup```
  - Home, Engineer, General, etc
- experience: ```Experience``` (2hands json)

### Skill Group

- name: ```string```

### Experience

- range: ```string```
  - No Experience, Less then 6 months, 1 year, 2 years, 3 years, 4 years, 5+ years

### Qualification

- name: ```string```
- date: ```string``` (2hands json)

### Reference

- user: ```User```
- text: ```text```