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

### TwoHands < User

- aboutme: ```text```
- location: ```string```
- phone: ```string```
- education: ```string```
- skills: ```Skill []```
  - Swinmming, Homework & tutoring, Cooking, Infants/Babies
- specific_skills: ```Skill []```
  - Infants/Babies, Toddlers, Preschool, Kids with allergies
- qualifications: ```Qualification []```
  - Driver License, CPR certificate, First Aid certificate, etc
- extras: ```Skill []```
  - Pets, Non-smoker, etc
- languages: ```Language []```
- avaliability: ```Avaliability []```
- references: ```UserReference []```
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
- specific: ```boolean```
- extra: ```boolean```

### Skill Group

- name: ```string```

### Experience

- range: ```string```
  - No Experience, Less then 6 months, 1 year, 2 years, 3 years, 4 years, 5+ years

### Qualification

- name: ```string```
- date: ```string``` (2hands json)

### UserReference

- user: ```User```
- text: ```text```

### UserReview

- user: ```User```
- rating: ```number```

### Schedule

- begin: ```Date```
- end: ```Date```
- user: User
- twoHands: User

## Endpoints

| Method   | Endpoint         | Functionality     |
| -------- | ---------------- | ----------------- |
| POST     | /register        | User Register     |
| GET      | /helpers         | Helper Search     |
| GET      | /helpers/:id     | Helper Search     |
| POST     | /helpers         | Helper Register   |
| PUT      | /helpers/:id     | Helper Register   |
| DELETE   | /helpers/:id     | Helper Register   |