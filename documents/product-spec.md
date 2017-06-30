# Find Care Specification

## Main Concept

- Register
  - To ask for Help (User Register Screen - [**SC01**](#user-register))
  - To be a Helper (Helper Register Screen - [**SC02**](#helper-register))
- Find someone to help you with any activity (Helper Search Screen - [**SC03**](#helper-search))
  - Language Teacher
  - Caregiver
  - Baby Sitter
  - Plumber
  - Personal Chef
  - Etc

## Screens

### User Register

- SC01

### Helper Register

- SC02
  - Enable second step of User Register - [**SC01**](#user-register)

### Helper Search

- SC03

## Entities

### User

- name: ```string```
- email: ```string```
- token: ```string```
- password_digest: ```string```
- active: ```boolean```
- blocked: ```boolean```
- admin: ```boolean```
- views: ```integer```
- date_of_birth: ```date```
- suspended_at: ```datetime```
- suspended_till: ```datetime```
- first_seen_at: ```datetime```
- last_seen_at: ```datetime```
- last_emailed_at: ```datetime```
- locale: ```string```
- references: ```UserReference []```
- reviews: ```UserReview []```

### Helper < User

- aboutme: ```text```
- objectives: ```string```
- location: ```string```
- phone: ```string```
- education_level: ```EducationLevel```
- education_field: ```EducationField```
- education_place: ```string```
- skills: ```Skill []``` NxM (HelperSkill)
  - Web Developer, Product Manager
- specific_skills: ```Skill []``` NxM (HelperSkill - where specific = true)
  - Java, C#, Ruby, Ruby on Rails
- qualifications: ```Qualification []``` NxM (HelperQualification)
  - Certificates
- extras: ```Skill []``` NxM (HelperSkill - where extra = true)
  - Pets, Non-smoker, etc
- languages: ```Language []``` NxM (HelperLanguage)
- avaliability: ```Avaliability```
- schedule: ```Schedule []```

### Education Level

- name: ```string```
  - Doctoral or Equivalent, Master or Equivalent, Bachelor or Equivalent, Etc

### Education Field

- name: ```string```
  - Computer Science, Information Technology, Business

### Avaliability

- name: ```string```
  - Full-time, Part-time, Weekends, Occasional, etc

### Language

- name: ```string```
- country: ```string```

### Language Level

- name: ```string```
  - Beginner, Elementary, Intermadiate, Advanced, Fluent, Native

### HelperLanguage

- level: ```LanguageLevel```

### Skill

- name: ```string```
- group: ```SkillGroup```
  - Home, Engineer, General, etc
- specific: ```boolean```
- extra: ```boolean```

### Skill Group

- name: ```string```

### HelperSkill

- experience: ```Experience```

### Experience

- range: ```string```
  - No Experience, Less than 6 months, 1 year, 2 years, 3 years, 4 years, 5+ years

### Qualification

- name: ```string```

### Helper Qualification (API)

- issue_date: ```string```

### UserReference (API)

- user: ```User```
- text: ```text```

### UserReview (API)

- user: ```User```
- rating: ```number```

### Schedule (API)

- begin: ```datetime```
- end: ```datetime```
- user: User
- helper: User

## Endpoints

| Method   | Endpoint         | Functionality     |
| -------- | ---------------- | ----------------- |
| GET      | /users           | Users List        |
| GET      | /users/:id       | Users Search      |
| POST     | /users           | Users Register    |
| PUT      | /users/:id       | Users Register    |
| DELETE   | /users/:id       | Users Register    |
| GET      | /helpers         | Helper List       |
| GET      | /helpers/:id     | Helper Search     |
| POST     | /helpers         | Helper Register   |
| PUT      | /helpers/:id     | Helper Register   |
| DELETE   | /helpers/:id     | Helper Register   |