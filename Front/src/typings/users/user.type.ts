export interface IRegisterUser {
  firstName: string; // Ime korisnika
  lastName: string; // Prezime korisnika
  driversLicense: string; // Broj vozačke dozvole
  email: string; // Email korisnika
  phoneNo: string; // Broj telefona korisnika
  password: string; // Lozinka korisnika
  confirmPassword: string; // Potvrda lozinke
}
