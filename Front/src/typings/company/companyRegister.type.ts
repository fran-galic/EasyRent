export interface IRegisterCompany {
  name: string; // ime kompanije
  email: string; // email kompanije
  phone: string; // broj telefona kompanije
  HQaddress: string; // HQ adresa
  TIN: string; // Tax identification number
  workingHours: {
    // radno vrijeme HQ-a
    mon: { from: number; to: number };
    tue: { from: number; to: number };
    wen: { from: number; to: number };
    thu: { from: number; to: number };
    fri: { from: number; to: number };
    sat: { from: number; to: number };
    sun: { from: number; to: number };
  };
  password: string; // lozinka kompanije
  password_confirm: string; // potvrda lozinke
}
